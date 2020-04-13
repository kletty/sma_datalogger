/* 
 * sample1.c 
 * 
 * To compile sample use: 
 *   
 *    gcc sample1.c -I../../include/ -I../../smalib -I../../libs -o sample1 -lyasdimaster
 *
 *       or
 *
 *    gcc sample1.c -Isdk/inc -o sample1 -lyasdimaster
 */
#include "libyasdimaster.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>
#include <unistd.h>
#include <string.h>
#include <sys/stat.h>
#include <dirent.h>
#include <sys/types.h>
#include <dirent.h>

#define Simulation

int main(void)
{
   // DATA must be set by user!
   char ExpectedNumberOfDevices = 4;   //How many devices are connected 
   double MaxPacValues[] = {10000.0, 10000.0, 7000.0, 7000.0}; //Maximum Power of the devices
   long measIntervalSec = 300;         //How often the values shall be requested 300 = every 5 min.
   long HourWhenEmailIsSend = 21;      //At what time the email conaining the daily statistics shall be send (21 = 9pm)
   char DailyMailReceivers[] = " "; //Mail addresses the daily mail should be sent to separated by spaces i.e."receiver1@mail.com receiver2@mail.com"
   // End of DATA that must be set by user
   
   int countOfUsableDevices = 0;
   int i;
   DWORD channelHandle=0;  /* channel handle             */
   DWORD SerNr[ExpectedNumberOfDevices];          /* Serial number of 1. Device */ 
   DWORD DeviceHandle[ExpectedNumberOfDevices]; /* place for 10 device ID's   */
   int ires=0;             /* result code                */
   DWORD dwBDC=0;          /* BusDriverCount             */
   char valuetext[17];     /* channel text value         */
   
   //Measurement data
   double PacValues[ExpectedNumberOfDevices];
   double PowerValues[ExpectedNumberOfDevices];
   
   time_t curTime, nextMeasTime;
   const struct tm *my_date_time;
   const struct tm *nextMeasDate;
   char my_date_time_string[22];
   char nextMeasTimeString[22];
   char DataPath[] = "/home/pi/data/";
   char DataFilename[50];
   
   char CsvFilename[50];
   char MailFilename[50];
   char PlotFilename[50];

   char octavecall[150];
   char sendEmailcall[150];
   char copyFileCall[150];
   
   char tempMeasString[20];
   _Bool flagForEmailSend = false;
   
   
   FILE *measurementFilePointer;
   _Bool newFileStarting = false;
	
	#ifdef Simulation
   PowerValues[0] = rand();
   PowerValues[1] = rand();
   PowerValues[2] = rand();
   PowerValues[3] = rand();
   #endif
   
   //Check id basic datat dir exists
   DIR* dirp = opendir(DataPath);
   if( dirp == NULL ) {
      printf( "Please create basic folder for measurement data: " );
      printf(DataPath);
      printf( "\n" );
    }

   printf("Init yasdi master...\n");
   yasdiMasterInitialize("./yasdi.ini",&dwBDC); 
   
   printf("Set all available YASDI bus drivers online...\n");
   for(i=0; i < dwBDC; i++)
   {
      yasdiMasterSetDriverOnline( i );
   }
   if (0==dwBDC)
   {
       printf("Warning: No YASDI driver was found.\n");
   }
   
   // Search devices and check result
   printf("Start an device detection (searching %d devices)...\n", ExpectedNumberOfDevices);
   #ifndef Simulation
   ires = DoStartDeviceDetection(ExpectedNumberOfDevices, true); 
   #endif
   if(ires == YE_NOT_ALL_DEVS_FOUND)
   {
      printf("Warning: Not all devices were found.\n");
   }
   else if(ires == YE_DEV_DETECT_IN_PROGRESS)
   {
      printf("Warning: Another device detection is already running.\n");
   }
   else
   {
      printf("Success! Found all %d devices!\n", ExpectedNumberOfDevices);
   }
   
   // Get the device handles
   printf("Get all available devices...\n");
   countOfUsableDevices = GetDeviceHandles(DeviceHandle, ExpectedNumberOfDevices );
   #ifdef Simulation
   countOfUsableDevices = ExpectedNumberOfDevices; 
   DeviceHandle[0] = 0;
   DeviceHandle[1] = 0;
   DeviceHandle[2] = 0;
   DeviceHandle[3] = 0;
   #endif
   
   printf("There are %d usable devices...\n", countOfUsableDevices);
   
   // Get serial numbers
   for(i = 0; i < countOfUsableDevices; i++)
   {
      ires = GetDeviceSN( DeviceHandle[i], &SerNr[i]);
      #ifdef Simulation
      ires = YE_OK; 
      SerNr[0] = 123;
      SerNr[1] = 234;
      SerNr[2] = 345;
      SerNr[3] = 456;
      #endif
      if(ires != YE_OK)
      {
         printf("Device %d did not send a valid serial number!\n", i);
      }
      else
      {
         printf("Device %d has serial number: %d.\n", i, SerNr[i]);
      }
   }
   // After init get time and check when next meas shall be done
   curTime = time(0);
   nextMeasTime = (curTime/measIntervalSec) * measIntervalSec + measIntervalSec;
   
   while(1)
   {
      curTime = time(0);
      my_date_time = localtime(&curTime);
      strftime(my_date_time_string, sizeof(my_date_time_string), "%d.%m.%Y %H:%M:%S", my_date_time);
      nextMeasDate = localtime(&nextMeasTime);
      strftime(nextMeasTimeString, sizeof(nextMeasTimeString), "%d.%m.%Y %H:%M:%S", nextMeasDate);
      printf("\nCurrent Time: ");
      printf(my_date_time_string);
      printf("\nNext Meas Time: ");
      printf(nextMeasTimeString);
      printf("\nWait for next meas time...");
      while(curTime < nextMeasTime)
      {
         sleep(1);
         curTime = time(0);
         printf(".");
         fflush(stdout);
      }

      #ifndef Simulation
      // Get current values of each device
      for(i = 0; i < countOfUsableDevices; i++)
      {

         channelHandle = FindChannelName(DeviceHandle[i], "Pac");
         if(channelHandle == 0)
         {
            printf("Device %d has can't deliver a Pac-Value\n", i);
         }
         else
         {
            ires = GetChannelValue(channelHandle,    /* chan. handle */
                             DeviceHandle[i],  /* dev. handle  */
                             &PacValues[i],    /* value        */ 
                             valuetext,        /* txt value    */           
                             16,               /* text value size */  
                             5 );              /* value age    */ 
            printf("Current Pac-Value of the device with SN: %d is %lf\n", SerNr[i], PacValues[i]);
         }
      }
      #endif
      #ifdef Simulation
      PacValues[0] = rand() % 10000;
      PacValues[1] = rand() % 10000;
      PacValues[2] = rand() % 7000;
      PacValues[3] = rand() % 7000;
      
      PowerValues[0] = PowerValues[0] + (PacValues[0]/60);
      PowerValues[1] = PowerValues[1] + (PacValues[1]/60);
      PowerValues[2] = PowerValues[2] + (PacValues[2]/60);
      PowerValues[3] = PowerValues[3] + (PacValues[3]/60);
      #endif
      
      // Save Values to Files
      strcpy(DataFilename, DataPath);

      //check if year folder exists
      strftime(tempMeasString, sizeof(tempMeasString), "%Y/", nextMeasDate);
      strcat(DataFilename, tempMeasString);
      printf( "\n" );
      printf(DataFilename);
      printf( "\n" );
      dirp = opendir(DataFilename);
      if( dirp == NULL ) {
         printf( "Create year folder..." );
         mkdir(DataFilename, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
         printf( "\n" );
       }
      
      //check if month folder exists
      strftime(tempMeasString, sizeof(tempMeasString), "%m/", nextMeasDate);
      strcat(DataFilename, tempMeasString);
      printf(DataFilename);
      printf( "\n" );
      dirp = opendir(DataFilename);
      if( dirp == NULL ) {
         printf( "Create month folder..." );
         mkdir(DataFilename, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
         printf( "\n" );
       }
      
      strftime(tempMeasString, sizeof(tempMeasString), "%d", nextMeasDate);
      strcat(DataFilename, tempMeasString);
      printf( "\n" );
      
      strcpy(CsvFilename, DataFilename);
      strcat(CsvFilename, ".csv");
      printf(CsvFilename);
      printf( "\n" );
      
      strcpy(PlotFilename, DataFilename);
      strcat(PlotFilename, ".png");
      printf(PlotFilename);
      printf( "\n" );
      
      strcpy(MailFilename, DataFilename);
      strcat(MailFilename, ".txt");
      printf(MailFilename);
      printf( "\n" );
      

      
      strcpy(octavecall, "octave /home/pi/sma_datalogger/daystat.m ");
      strcat(octavecall, CsvFilename);
      strcat(octavecall, " ");
      strcat(octavecall, PlotFilename);
      strcat(octavecall, " ");
      strcat(octavecall, MailFilename);
      printf(octavecall);
      printf( "\n"); 
      
      // Open file and write
      printf("\nPlot will be called by: ");
      printf(octavecall);
      printf( "\n"); 
      
      
      
      //Check if new file is startet
      if( access( CsvFilename, F_OK ) != -1 ) 
      {
         newFileStarting = false;
      } 
      else {
         newFileStarting = true;
      }
      
      measurementFilePointer = fopen(CsvFilename,"a");
      // If new file write header
      if(newFileStarting)
      {
         fprintf(measurementFilePointer, "Time\tTimestamp");
         for(i = 0; i < countOfUsableDevices; i++)
         {
            fprintf(measurementFilePointer, "\tSerNr\tPac\tPow");
         }
         fprintf(measurementFilePointer, "\r\n");
      }
      
      strftime(tempMeasString, sizeof(tempMeasString), "%H:%M", nextMeasDate);
      fprintf(measurementFilePointer, tempMeasString);
      double hoursToday = nextMeasDate->tm_hour + (nextMeasDate->tm_min*(1.0/60.0)) + (nextMeasDate->tm_sec*(1.0/3600.0));
      fprintf(measurementFilePointer, "\t%f", hoursToday);
      
      for(i = 0; i < countOfUsableDevices; i++)
      {
         fprintf(measurementFilePointer, "\t%d\t%f\t%f",SerNr[i], PacValues[i], PowerValues[i]);
      }
      fprintf(measurementFilePointer, "\r\n");
      fclose(measurementFilePointer);
      
      // Update statistics and graphs
      system(octavecall);
      
      strcpy(copyFileCall, "cp ");
      strcat(copyFileCall, PlotFilename);
      strcat(copyFileCall, " /var/www/html/Graphs/");
      strftime(tempMeasString, sizeof(tempMeasString), "%Y%m%d.png", nextMeasDate);
      strcat(copyFileCall, tempMeasString);
      
      printf("\n");
      printf(copyFileCall);
      printf("\n");
      system(copyFileCall);
      
      // Write current Power for live view
      measurementFilePointer = fopen("/home/pi/data/curentValues.csv","w");
      strftime(tempMeasString, sizeof(tempMeasString), "%d.%m.%Y %H:%M:%S", nextMeasDate);
      fprintf(measurementFilePointer, tempMeasString);
      for(i = 0; i < countOfUsableDevices; i++)
      {
         fprintf(measurementFilePointer, "\t%.0f\t%.0f", PacValues[i], (PacValues[i]/MaxPacValues[i])*100.0);
      }
      fclose(measurementFilePointer);
      system("cp /home/pi/data/curentValues.csv /var/www/html/curentValues.csv");
      
      
      //Send mail
      if(nextMeasDate->tm_hour < HourWhenEmailIsSend)
      {
         flagForEmailSend = false;
      }
      else if(flagForEmailSend == false)
      {
         strcpy(sendEmailcall, "mutt -a ");
         strcat(sendEmailcall, PlotFilename);
         strcat(sendEmailcall, " -s \"Photovoltaik Tagesreport\" -- ");
         strcat(sendEmailcall, DailyMailReceivers);
         strcat(sendEmailcall, " < ");
         strcat(sendEmailcall, MailFilename);
         system(sendEmailcall);

         printf("\n");
         printf(sendEmailcall);
         printf("\n");
         flagForEmailSend = true;
      }
      
      nextMeasTime = nextMeasTime + measIntervalSec;
   }
   
   /* go ahead with requesting other channel values... */ 
   printf("Shutting down YASDI...\n");
   yasdiMasterShutdown( );
   
   return (0);
} /* main */


