#! /bin/bash


a=0
while [ "$a" -lt 10 ]
do
   echo "index $a"
   a=`expr $a + 1`
done

# another example
echo
echo

a=0
while [ "$a" -lt 10 ]
do 
   b="$a"
   while [ "$b" -ge 0 ]
   do
     echo -n "$b"
     b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done
