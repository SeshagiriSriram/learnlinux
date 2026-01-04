#!/bin/bash 
clear
echo;echo; 
echo -e "\e[38;5;214m**** CODE 
isNumber() {
	# Define a number to being with an optional +/- 
	# Followed by numbers that can have a decimal point
	re='^[+-]?[0-9]+([.][0-9]+)?$' ; 
	# match our parameter to this pattern
	if ! [[ \$1 =~ \$re ]] ; then
 		  echo \"error: \$1 is not a number\" >&2
		  return 1
	fi
	echo \"OK: \$1 is a number\" 
	return 0 
} 
sample code: isNumber "sriram", isNumber 3.0, isNumber -2, etc.... 
\e[0m
**** Output"
isNumber() {
	re='^[+-]?[0-9]+([.][0-9]+)?$' ; 
	if ! [[ $1 =~ $re ]] ; then
 		  echo "error: $1 is not a number" >&2
		  return 1
	fi
	echo "OK: $1 is a number" 
	return 0 
} 

isNumber "sriram" 
isNumber 3 
isNumber 3.1416 
isNumber -0.2345
isNumber "Test is Working fine??"
echo;echo; 

