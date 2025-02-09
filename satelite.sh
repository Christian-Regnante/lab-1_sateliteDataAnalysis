#!/bin/bash

students=satelite_records
data=analyzed_data
mkdir $data/$students
sort -t, -k3 -n -r raw_data/satelite_temperature_data.csv | uniq | head -10 > $data/$students/highest_temp.csv
grep Angola raw_data/satelite_temperature_data.csv | sort -t, -k4 -n -r | awk -F, '!seen[$4]' > $data/$students/humidity_data_Angola.csv

