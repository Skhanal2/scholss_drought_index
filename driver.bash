#!/usr/bin/env/bash

# get all of the daily data from all weather station and generate list of station
bash code/get_ghcnd_data.bash ghcnd_all.tar.gz
bash code/get_chnd_all_files.bash

#get listing all types of data found at each station
bash code/get_ghcnd_data.bash ghcnd-inventory.txt

#get metadata for all station
bash code/get_ghcnd_data.bash ghcnd-stations.txt

