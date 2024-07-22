#! /bin/bash

read inp1
read inp2
read inp3

arr=($inp1 $inp2 $inp3)
test=0
newTest=0

i=0
while [ $i -lt 3 ]
do
   j=0
   while [ $j -lt 3 ]
   do
      if [ ${arr[j]} -eq ${arr[i]} ]
      then
        newTest=`expr $newTest + 1`
      fi

      if [ $newTest -gt $test ]
      then
         test=$newTest
      fi
      j=`expr $j + 1`
   done

   newTest=0
   i=`expr $i + 1`
done

if [ $test -eq 3 ]
then
   echo "EQUILATERAL"
elif [ $test -eq 2 ]
then
   echo "ISOSCELES"
else
   echo "SCALENE"
fi

