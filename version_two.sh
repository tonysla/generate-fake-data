#!/bin/bash

# create variables to generate name, address & both
# generate fake names
fake_name=$(faker name -r 100)
# generate fake address
fake_address=$(faker address -r 100)
# create fake name & address
name_address=$(faker profile name,address -r 100)

# loop through fake_name variable to 
# sort names in rows
for nome in "$fake_name"
do
      echo "$nome" > name.txt
      echo "$nome" > name.csv
done

# same as above
for adr in "$fake_address"
do
      echo "$adr" > address.txt
      echo "$adr" > address.csv
done

# same as the first & second loop
# it just uses brackets and quotes when 
# writing the files.
for adr in "$name_address"
do
      echo "$adr" > name_address.txt
      echo "$adr" > name_address.csv
done

