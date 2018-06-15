#!/bin/bash

#Usage: 
#Initial_Processing.sh <Input_filename> <Output_filename>
#To strip the comma inside of quotes, take only certain columns:
cat $1 | \
awk -F'"' -v OFS='' '{ for (i=2; i<=NF; i+=2) gsub(",", "", $i) } 1' | \
cut -d, -f-6,9-16,18-19,21-22 | \
sed s'/\$//g' > $2