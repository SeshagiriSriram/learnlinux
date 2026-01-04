#!/bin/bash 
clear
echo;echo; 
echo -e '\e[38;5;214m
**** CODE 
rm wait*.sh 
if ./getcode.sh 
then 
	echo "getcode.sh ran sucessfully" 
	ls -la wai*.sh 
	rm wait*.sh 
fi 

if [[ $(./getcode.sh) ]]  
then 
	echo "getcode.sh ran sucessfully" 
	ls -la wai*.sh 
	rm wait*.sh 
fi 
rm wait*.sh 
\e[0m
**** Output
'

rm -f wait*.sh 
if ./getcode.sh 
then 
	echo -e "\e[38;5;82m getcode.sh ran sucessfully\e[0m" 
	ls -la wai*.sh 
	rm -f wait*.sh 
fi 

if [[ $(./getcode.sh) ]]  
then 
	echo "getcode.sh ran sucessfully" 
	ls -la wai*.sh 
	rm -f wait*.sh 
else 
	echo -e '\e[38;5;214m Failed to run code\e[0m' 
	ls -la wai*.sh 
	rm -f wait*.sh 
fi 
rm -f wait*.sh 

echo;echo; 
