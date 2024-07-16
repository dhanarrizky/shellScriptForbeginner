#! /bin/bash

# case expression in
#	pattren1 )
#	     statements ;;
#	pattern2 )
#	     statements ;;
#	...
# esac

# real code
vehicle=$1

case $vehicle in
	"car" )
	   echo "Rent of $vehicle is 100 dollar" ;;
	"van" )
	   echo "Rent of $vehicle is 80 dollar" ;;
	"bicyclle" )
	   echo "Rent of $vehicle is 5 dollar" ;;
	"truck" )
	   echo "Rent of $vehicle is 150 dollar" ;;
	* )
	   echo "Unknow vehicle" ;;
esac


# for call this code
# ./caseStatement.sh van 
# or
# ./caseStatement.sh car
