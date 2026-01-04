#!/bin/bash 
clear; 
echo -e '
\e[38;5;214m******** CODE \e[0m
declare -A colors
colors[apple]="red"
colors[banana]="yellow"\e[0m
echo -ne "\e[38;5;82mArray Keys: \e[0m"  
echo "${!colors[@]}"  
echo -ne "\e[38;5;214mArray contents: \e[0m"  
echo "${colors[@]}"  
echo -ne "\e[38;5;82mArray Count: \e[0m"  
echo "${#colors[@]}"  
for key in "${!colors[@]}" 
do 
	printf "Color of %s = %s\n" $key "${colors[$key]}"
done 
\e[0m
\e[38;5;82m******** Output \e[0m'
declare -A colors
colors[apple]="red"
colors[banana]="yellow"
echo -ne "\e[38;5;82mArray Keys: \e[0m"  
echo "${!colors[@]}"  
echo -ne "\e[38;5;214mArray contents: \e[0m"  
echo "${colors[@]}"  
echo -ne "\e[38;5;82mArray Count: \e[0m"  
echo "${#colors[@]}"  
for key in "${!colors[@]}" 
do 
	printf "Color of %s = %s\n" $key "${colors[$key]}"
done 
echo; echo

