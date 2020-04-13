#!/bin/bash
#Script that starts the datalogger
cd /home/pi/sma_datenlogger/yasdi/projects/datalogger/build-gcc/
export LD_LIBRARY_PATH=.
./datalogger
