# #! /bin/bash

# read var

# index=0
# num=0
# while [ $index -lt $var ]
# do
#     read inp
#     num=`expr $num + $inp`
#     index=`expr $index + 1`
# done

# echo $(echo "scale=3; $num/$var" | bc)

read input
x=0
i=0
while [[ $i -lt $input ]]
do
    read num
    x=$((x+num))
    i=$((i+1))
done
echo $(printf %.3f $(echo "scale=4;$x/$input"|bc -l))