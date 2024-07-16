#! /bin/bash

num1=20
num2=5

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

# we can do like this too, for the some function just using deferent method

# echo $(expr num1 + num2 )
# echo $(expr num1 - num2 )
# echo $(expr num1 \* num2 )
# echo $(expr num1 / num2 )
# echo $(expr num1 % num2 )
