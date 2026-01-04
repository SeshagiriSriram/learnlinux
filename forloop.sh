#!/bin/bash 
clear
echo;echo; 
echo -e '\e[38;5;214m
**** CODE 
for i in shakespeare "raja gosnell" "salman Khan"
do 
	case $i in  
		shakespeare) echo "Author $i";;  
		raja*) echo "Director $i" ;; 
       		sal*) echo "Actor $i" ;;  
	esac 
done\e[0m

**** Output


'

for i in shakespeare "raja gosnell" "salman Khan"; do case $i in  shakespeare) echo "Author $i";;  raja*) echo "Director $i" ;;  sal*) echo "Actor $i" ;;  esac; done
echo;echo; 
