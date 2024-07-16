#! /bin/bash

# all of code here have some function
# all of whose code just for explanation we can use all of those syntax to do some jobs using "or" logical opration

age=50

if [ $age -lt 18 ] || [ $age -gt 50 ]
then
   echo "valid age for do something harder"
else
   echo "age not valid for do somthing harder"
fi

# if [ $age -lt 18 -o $age -gt 50 ]
# then
#    echo "valid age for do somthing harder"
# else
#    echo "age not valid for do something harder"
# fi

# if [ $age -lt 18 || $age -gt 50 ]]
# then
#    echo "valid age for do something harder"
# else
#    echo "age nto valid for do something harder"
# fi
