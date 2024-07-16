#! /bin/bash

age=50

# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
# then 
#     echo "valid age"
# else
#     echo "age not valid"
# fi

if [ $age -gt 18 -a $age -lt 30 ]
then
    echo "valid age using and : -a"
else
    echo "age not valid using and : -a"
fi

# we can use this code too
# all of code here is  deferent but for somthing same


# if [[ $age -gt 18 && $age -lt 30 ]]
# then
#     echo "valid age using and : [[ && ]]"
# else
#     echo "age not valid using and : [[ && ]]"
# fi
