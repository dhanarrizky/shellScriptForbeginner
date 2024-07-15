#! /bin/bash

#syntax for if else statement
#if [ condition ]
#then
#   statement
#fi


# ===========================

count=10

if [ $count -eq 10 ]
then
   echo " statement is true"
fi


# =============== Opration ======================
# Integer Comparison

# -eq --> is equal to                 --> if ["$a" -eq "$b"]
# -ne --> is not equal to             --> if ["$a" -ne "$b"]
# -gt --> is greater than             --> if ["$a" -gt "$b"]
# -ge --> is greater than of equal to --> if ["$a" -ge "$b"]
# -lt --> is less than                --> if ["$a" -lt "$b"]
# -le --> is less then or equal to    -->  if ["$a" -le "$b"]

# <  --> is less than                --> (("$a" < "$b"))
# <= --> is less than or equal to    --> (("$a" <= "$b"))
# >  --> is greater than             --> (("$a" > "$b"))
# >= --> is greater than or equal to --> (("$a" >= "$b"))


#String Comparison

# =  --> is equal to                                  --> if ["$a" = "$b"]
# == --> is equal to                                  --> if ["$a" == "$b"]
# != --> is not equal to                              --> if ["$a" != "$b"]
# <  --> is less than, in ASCII alphabetical order    --> if [[ "$a" < "$b" ]]
# >  --> is greater than, in ASCII alphabetical order --> if [[ "$a" > "$b" ]]
# -z --> string is null, that is, has zero length


# Ex No Two
if [ 9 == 10 ]
then
   echo "same"
else
   echo "deferent"
fi
