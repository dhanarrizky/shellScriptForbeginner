#! /bin/bash

#echo $1 $2 $3 '> echo $1, $2, $3'

#echo $0 $1 $2 $3 '> echo $1, $2, $3'

#result
# if i call this code with command like this, the result'll be lke this :
# ./passArgu.sh Tom Hollan hihi

#reslt => using $0
#./passArgu.sh Tom Hollan hihi

#result => without $0
# Tom Hollan hihi


# =========================================================================

echo $0 $1 $2 $3 '> echo $0 $1 $2 $3'

args=("$@") #insert into array
echo ${args[0]} ${args[1]} ${args[2]}
