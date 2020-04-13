#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo apt-get install php libapache2-mod-php -y
sudo apt-get install cmake -y
sudo apt-get install openjdk-8-jre -y
sudo apt-get install octave -y
sudo apt-get install msmtp msmtp-mta mailutils -y
sudo apt-get -y install mutt -y

sudo usermod -a -G dialout pi
chmod +x start_logger.sh

sudo cp smadatalogger.service /etc/systemd/system/smadatalogger.service
sudo chmod 644 /etc/systemd/system/smadatalogger.service
sudo systemctl daemon-reload
sudo systemctl enable smadatalogger.service

cd /home/pi/sma_datalogger/yasdi/projects/generic-cmake
cmake .
make

cd /home/pi/sma_datalogger/yasdi/projects/datalogger/build-gcc
cmake ..
make 

mkdir /home/pi/data

sudo chown -R pi:pi /var/www
sudo cp -r /home/pi/sma_datalogger/html /var/www/