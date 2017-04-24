#!/bin/bash

# store 100 fake names & addresses into 
# name_address variable
name_address=$(faker profile name,address -r 100)

# for loop variable name_address
# save the result as txt & csv file 
for adr in "$name_address"
do
  echo "$adr" > name_address.txt
  echo "$adr" > name_address.csv
done

# use regular expression below on the 
# name-address.txt file created above.
while read line 
do
  # Extract only the names, address from the txt file above &
  # get rid of curly brackets and the first comma 
  initials=$(echo $line | cut -d " " -f 2,3,5,6,7,8,9,10,11,12 | 
              sed "s/}//" | sed "s/,//")
  echo $initials
  echo "$initials" >> states.txt
done < name_address.txt

