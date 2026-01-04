#!/usr/bin/env bash 
myArray=("red" "green" "blue" "black" "cyan")

clear
echo; echo; echo; 
echo -e "\e[38;5;82mArray Keys\e[0m"  
echo "${!myArray[@]}"  
echo -e "\e[38;5;214mArray contents\e[0m"  
echo "${myArray[@]}"  
echo -e "\e[38;5;82mArray Count\e[0m"  
echo "${#myArray[@]}"  
echo; echo; 
echo -e "\e[38;5;214mUsing for loops to iterate thorugh \e[0m"  
for str in "${myArray[@]}" 
do
  echo $str
done
echo; echo; 

