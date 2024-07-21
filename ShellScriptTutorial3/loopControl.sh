#! /bin/bash

# we will use 2 statements that are used to control shell loops-
# 1. The break statement
# 2. The continue statement

# don't do like a infinite loop
# for example

# a=10
# until [ $a -lt 10 ]
# do
#     echo $a
#     a=`expr $a + 1`
# done

# that's code will make a loop forever because a is always greater than or equal to 10
# and it is never less than 10



a=0
while [ $a -lt 10 ]
do
    echo $a
    if [ $a -eq 5 ]
    then
        break
    fi
    
    a=`expr $a + 1`
done

echo
echo


NUMS="1 2 3 4 5 6 7 8 9 10"

for NUM in $NUMS
do
    # we can do like this too
    # Q=`expr $NUM % 2`
    # if [ $Q -eq 0 ]
    
    if [ $NUM -eq 5 ]
    then
        echo "it's 5 number"
        continue
    fi
    echo $NUM
done
