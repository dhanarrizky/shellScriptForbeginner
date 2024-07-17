#! /bin/bash

# case using between

echo -e "Entry one character for looking for : "
read value

case $value in
	[a-b] ) # that's mean between
	    echo "User entered $value between a to b" ;;
	[A-B] )
	    echo "User entered $value between A to B" ;;
	[1-9] )
	    echo "User entered $value between 1 to 9" ;;
	? )
	    echo "User entered $value special character" ;;
	*  ) # it's mean like else on another language
	    echo "Unknow input" ;; 
esac


# another example

# read -p "Enter a single character: " char

# case $char in
#     [[:lower:]])
#         echo "You entered a lowercase letter."
#         ;;
#     [[:upper:]])
#         echo "You entered an uppercase letter."
#         ;;
#     [[:digit:]])
#         echo "You entered a digit."
#         ;;
#     ?)
#         echo "You entered a single character that is not a letter or digit."
#         ;;
#     *)
#         echo "You entered more than one character."
#         ;;
# esac
