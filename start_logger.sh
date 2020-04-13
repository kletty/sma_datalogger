#!/bin/bash
#Script that starts the datalogger
cd /home/pi/sma_datalogger/yasdi/projects/datalogger/build-gcc/
export LD_LIBRARY_PATH=.
./datalogger
