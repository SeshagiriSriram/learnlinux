#!/bin/bash 
export OLDDIR=$PWD
export DIR=$PWD
display_menu() {
clear 
cowsay -f tux   "Welcome to Linux!"
echo; echo
echo -e "\e[38;5;82m \t01. Basic Commands" 
echo -e "\e[38;5;176m \t02. File Manipulation and Permissions" 
echo -e "\e[38;5;214m \t03. Process Management, System and Network Commands" 
echo -e "\e[34;40m \t04. Piping, Redirection & Scripting in Bash" 
echo; echo; echo  
echo -e -n "\e[0m \tPress any key to continue ..."
read key 
MENU_CHOICE="$key" 
}

# --- Main loop ---
while true; do
    display_menu 
     case "$key" in 
	1) ./runone.sh;; 
	2) ./runtwo.sh;; 
	3) ./runthree.sh;; 
	4) ./runfour.sh;; 
	[qQ][uU][iI][tT]) echo; exit 0;; 
	*) echo "invalid key choice - enter either 1, 2, 3, 4 or quit" 
   esac 
done 

