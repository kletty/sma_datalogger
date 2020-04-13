clear; 
close all; 
clc;

args = argv();


numberOfDevices = 4;

Data =  dlmread(args{1}, "\t", 2, 1);

TimeofDay = Data(:,1);
SerialNumbers = [Data(1,2) Data(1,5) Data(1,8) Data(1,11)];
Pel = [Data(:,3) Data(:,6) Data(:,9) Data(:,12)];
Pow = [Data(:,4) Data(:,7) Data(:,10) Data(:,13)];


index = 1;
PowerBefore = [Pow(1,:)];

plottime = 0.5:1:24;

for hourend = 1:24
  while((TimeofDay(index)<hourend) && (index<length(TimeofDay)))
    index = index+1;
  endwhile
  PowerEnd = [Pow(index,:)];
  plotpower(hourend,:) = PowerEnd - PowerBefore;
  PowerBefore = PowerEnd;
endfor

bar(plottime,plotpower,'stacked');
title('Erträge');
xlabel('Uhrzeit');
ylabel('Stundenertrag [Wh]');
h=legend(num2str(SerialNumbers(1),'%u '), num2str(SerialNumbers(2),'%u '), num2str(SerialNumbers(3),'%u '), num2str(SerialNumbers(4),'%u '));
set (h, "fontsize", 16) 
grid on;
xticks=([1:1:24]);
set(gca,'xtick',xticks, "fontsize", 16);
xlim([6 20]);
print(args{2}, '-dpngcairo', '-S1200,900')

fid = fopen (args{3}, "w");
fputs (fid, "Report der Logdatei: ");
fputs (fid, args{1});
fputs (fid, "\nMaximale Einspeiseleistung: ");
fputs (fid, num2str(max(sum(Pel,2))));
fclose (fid);