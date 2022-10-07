#!/usr/local/bin/bash

tar Oxvzf data/ghcnd_all.tar.gz  | grep "PRCP" | gsplit -l 1000000 --filter 'gzip >  data/temp/$FILE.gz'

code/read_split_dly_files.R 

rm -rf data/temp

