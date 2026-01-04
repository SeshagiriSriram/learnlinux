#!/bin/bash
export OLDDIR=$PWD
export DIR=$PWD
display_menu() {
clear 
cowsay -f tux   "Welcome to Linux!"
echo; echo
echo -e "\e[38;5;82m \t01. Compression"
echo -e "\e[38;5;176m \t02. Misc. File Utilities"
echo -e "\e[38;5;214m \t03. Unix Permissions" 
echo; echo; echo  
echo -e -n "\e[0m \tPress any key to continue...." 
read key 
MENU_CHOICE="$key" 
}

# --- Functions for each command explanation ---
explain_compression() { 
	clear 
	echo Compression is required for deployment and minimizing the size of files and folders
	cowsay -f tux   "tar is the defacto standard - gzip/gunzip and zip/unzip work but may need additional SW installation" 
}
explain_misc() {
	clear 
    echo "utilities like head and tail allow you to examine parts of the file (esp. large files very effectively" 
    cowsay -f tux   "head/tail -> used to examine large log files" 
}
explain_permissions() {
	clear 
    echo "Base permissions cover what users can and cannot do with files and directories" 
    cowsay -f tux   "chown, chgrp, chmod are very commonly used to grant or deny permissions"
}
quit_program() {
    clear
    echo "Exiting simulator..."
    exit 0
}
# --- Dispatcher function ---
handle_choice() {
    case "$1" in
	1) explain_compression;;     
        2) explain_misc ;;
        3) explain_permissions ;;
        *) quit_program ;;
    esac
}
# --- Main loop ---
#while true; do
    display_menu 
    handle_choice "$MENU_CHOICE"
    while true; do 
    echo -ne "\e[0m \tEnter your command: "
    read key
    if [ "$key" == "quit" ]; then
        #break
        exit 0 
    else
    	if [ "$key" == "refresh" ]; then
    		display_menu 
    		handle_choice "$MENU_CHOICE"
		continue
	else
         source ./runcommand.sh "$key" "$DIR" "$OLDDIR"  
	fi 
        # Call runcommand.sh for actual execution
        # Also handle teaching explanations
    fi
    done 
#done
