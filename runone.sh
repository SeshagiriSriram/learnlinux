#!/bin/bash
export OLDDIR=$PWD
export DIR=$PWD
display_menu() {
clear 
cowsay -f tux   "Welcome to Linux!"
echo; echo
echo -e "\e[38;5;82m \t01. ls"
echo -e "\e[38;5;176m \t02. cd and pwd commands"
echo -e "\e[38;5;214m \t03. cat, touch and vi(m) commands" 
echo -e "\e[34;40m \t04. mkdir, rmdir, rm, cp and mv commands" 
echo -e "\e[38;5;82m \t05. sort, grep and find commands" 
echo; echo; echo  
echo -e -n "\e[0m \tPress any key to continue...." 
read key 
MENU_CHOICE="$key" 
}

# --- Functions for each command explanation ---
explain_ls() { 
	clear 
	echo The ls command is used to list files and directories. 
	cowsay -f tux   "Files are like papers, directories are like folders!" 
}
explain_pwd_cd() {
	clear 
    echo "pwd command is used to print the current working directory."
    echo "cd is used to navigate directories."
    cowsay -f tux   "By default, all users have a HOME directory and cd ~ or cd will move you back here."
}
explain_files() {
	clear 
    echo "Files are created/modified using touch/vi and displayed using cat"
    cowsay -f tux   "touch either creates an empty file otherwise it will modify the file access/modified time"
}
explain_mkdir() {
	clear 
    echo "Files are further manipulated using mkdir, rndir, rm, cp and mv commands"
    cowsay -f tux   "CAUTION: rmdir and rm remove files and directories with no chance of undeletion. Use at your own risk" 
}
explain_others() {
	clear 
    echo "Other commands incude sort, grep and find. Other powerful tools include awk and sed" 
    cowsay -f tux   "These are powerful utilities - these are your friends in automation"
}
quit_program() {
    clear
    echo "Exiting simulator..."
    exit 0
}
# --- Dispatcher function ---
handle_choice() {
    case "$1" in
	1) explain_ls;;     
        2) explain_pwd_cd ;;
        3) explain_files ;;
	4) explain_mkdir;;
	5) explain_others;;
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
