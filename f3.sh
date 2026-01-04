#!/bin/bash 
clear
echo;echo; 
echo -e '\e[38;5;214m
**** CODE 
for (( i=1; i<=10; i++ )) 
do
	echo $i 
done
\e[0m
**** Output

'

for (( i=1; i<=10; i++ )) 
do
	echo $i 
done 

echo;echo; 
