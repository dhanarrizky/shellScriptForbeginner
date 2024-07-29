#! /bin/bash
data="test.txt"
output1="true.txt"
output2="false.txt"
> $output1
> $output2

while read inp
do
    # echo 
    # echo $inp
    if [ $inp = "true" ]
    then
        # echo "true"
        echo $inp >> $output1
    else
        echo $inp >> $output2
        # echo
    fi
done < $data