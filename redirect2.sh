#!/bin/bash 
clear
echo;echo; 
echo -e '\e[38;5;214m
**** CODE 
if [[ $(./getcode.sh 2>&1) ]]; then echo "All fine"; else echo "failed"; fi
\e[0m
**** Output'
rm -f wai*.sh 
ls -la wai*.sh
echo -n "Enter any key to proceed...." 
read -s key 
if [[ $(./getcode.sh 2>&1) ]]; 
	then 
		echo -e '\e[38;5;82mAll OK\e[0m'
       	else
		echo -e '\e[38;5;214mFailed\e[0m'
fi
ls -la wai*.sh
rm -f wai*.sh 
echo;echo; 
