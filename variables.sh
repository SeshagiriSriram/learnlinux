#!/usr/bin/env bash 
clear; 
echo; echo; echo; 
echo This is a basic example of a variable
x=Sriram 
echo  "X => $x" 
echo ...................... 
read -s key 
echo This is an example of a variable being string or number
x=Sriram 
echo  "X => $x" 
x=1
echo  "X => $x" 
echo ...................... 
read -s key 
echo This is a basic example of a variable being a string 
x=1
echo "X => $x" 
echo 'now we are doing x=$x+1' 
#x=${x}+1 
x+=1 
echo "X => $x" 
echo ...................... 
read -s key 
echo This is a basic example of a variable being a string but being used as a number 
x=1
echo "X => $x" 
echo 'now we are doing x=$x+1' 
(( x++ )) 
echo "X => $x" 
echo ...................... 
read -s key 
echo; echo
