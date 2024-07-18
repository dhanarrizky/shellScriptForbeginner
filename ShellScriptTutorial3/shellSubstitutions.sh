#! /bin/bash

a=10
echo -e "Value of a is $a \n"

# ============================================
# The following escape sequences which can be used in echo command -

# Escape & Description

# \\ => backslash
# \a => alert (BEL)
# \b => backspace
# \c => suppress trailing newline
# \f => form feed
# \n => new line
# \r => carriage return
# \t => horzontal tab
# \v => vertical tab

# =====================================================

# Form & Description

# ${var}          => Subtitute the value of var.
# ${var:-word}    => If var is null or unst, word is subsituted for var. The value of var does not change
# ${var:=word}    => if var is null or unset, var is set to the value of word
# ${var:?message} => if var is null or unset, message is printed to stadard error. This checks that variables are set correctly. 
# ${var:+word}    => If var is set, word is subtituted for var. The value of var does not change

#!/bin/sh

echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"

echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"

unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"

var="Prefix"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"

echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"

# result
# Variable is not set
# 1 - Value of var is 
# Variable is not set
# 2 - Value of var is Variable is not set

# 3 - Value of var is 
# This is default value
# 4 - Value of var is Prefix
# Prefix
# 5 - Value of var is Prefix
