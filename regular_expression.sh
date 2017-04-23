#!/bin/bash

# Easy way to generate fake data and save them as txt or csv
echo $(paste <(faker name -r 100) <(faker address -r 100)) > name-address.txt

# use regular expression below and 
# Extract only the state initials from the txt file above
while read line 
do

state=$(echo $line | egrep -o ',?/*[A-Z]{2}+')
# print variable state to see result
echo $state
# save variable state as a txt or csv file
echo "$state" > states.txt
echo "$state" > states.csv

done < name-address.txt
