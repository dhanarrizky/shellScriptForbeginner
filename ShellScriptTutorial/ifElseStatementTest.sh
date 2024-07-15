#! /bin/bash

# this code for checking, dir is exist or not

echo -e "Entr the name of the file : \c"
read file_name

if [ -d $file_name ] 
then
   echo "$file_name found"
else
   echo "$file_name not found"
fi
