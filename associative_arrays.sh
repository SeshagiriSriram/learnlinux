#!/bin/bash 
declare -A colors

colors[apple]="red"
colors[banana]="yellow"

clear; 
echo; echo; echo; 
echo -e "\e[38;5;82mArray Keys\e[0m"  
echo "${!colors[@]}"  
echo -e "\e[38;5;214mArray contents\e[0m"  
echo "${colors[@]}"  
echo -e "\e[38;5;82mArray Count\e[0m"  
echo "${#colors[@]}"  
echo; echo; echo; 

