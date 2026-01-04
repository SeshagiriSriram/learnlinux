#!/usr/bin/env bash 
clear
echo; echo
echo -e "\e[38;5;214m***** CODE  \e[0m"  
echo 'echo $c | tr "\n" " " |' "sed 's/\\([ \t]\\)\\1*/\\1/g'"
echo; echo
c="This is a very long 
line 
with new lines 
and extra        space and 



empty lines" 
echo -e "\e[38;5;82mOriginal Line\e[0m"  
echo "$c" 
echo; echo
echo -e "\e[38;5;214mResult after translation: \e[0m"  
#echo $c | tr "\n" " "  | sed 's/\([ \t\n]\)\1*/\1/g'
echo $c | tr "\n" " "  | sed 's/\([ \t]\)\1*/\1/g'
echo; echo
