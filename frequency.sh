#!/usr/bin/env bash
clear
echo; echo
echo -e "\e[38;5;214m***** CODE  \e[0m"  
echo "cat hamlet_TXT_FolgerShakespeare.txt | tr -cs '[:alpha:]' '\n' | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr" 
echo; echo
cat hamlet_TXT_FolgerShakespeare.txt | tr -cs '[:alpha:]' '\n' | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr 
#echo "My Args: " "$*" 
#echo "Count of my args: $#" 
#echo "Was I successful ? $?" 
