#!/bin/bash 
# Source - https://stackoverflow.com/a
# Posted by MrPotatoHead
# Retrieved 2025-11-25, License - CC BY-SA 4.0
clear
echo -e '\e[38;5;214m
**** CODE 
a=04; b=4
printf "method 1: "; 
if [ $a != $b ]; then printf "not equal"; else printf "equal"; fi; printf "\n"
printf "method 2: "; 
if [ "$a" != "$b" ]; then printf "not equal"; else printf "equal"; fi; printf "\n"
printf "method 3: "; 
if [ $a -ne $b ]; then printf "not equal"; else printf "equal"; fi; printf "\n"
printf "method 4: "; 
if [ "$a" -ne "$b" ]; then printf "not equal"; else printf "equal"; fi; printf "\n"
printf "method 5: "; 
if (( a != b )); then printf "not equal"; else printf "equal"; fi; printf "\n"\e[0m
**** Output'
a=04
b=4
printf "method 1: "; if [ $a != $b ]; then printf "not equal"; else printf "equal"; fi; printf "\n"
printf "method 2: "; if [ "$a" != "$b" ]; then printf "not equal"; else printf "equal"; fi; printf "\n"
printf "method 3: "; if [ $a -ne $b ]; then printf "not equal"; else printf "equal"; fi; printf "\n"
printf "method 4: "; if [ "$a" -ne "$b" ]; then printf "not equal"; else printf "equal"; fi; printf "\n"
printf "method 5: "; if (( a != b )); then printf "not equal"; else printf "equal"; fi; printf "\n"
echo;echo; 
