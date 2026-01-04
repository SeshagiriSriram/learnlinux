#!/bin/bash
export OLDDIR=$PWD
export DIR=$PWD
display_menu() {
clear 
cowsay -f tux   "Welcome to Linux!"
echo; echo
echo -e "\e[38;5;82m \t01. Variables and Arrays"
echo -e "\e[38;5;176m \t02. Conditions and Looping" 
echo -e "\e[38;5;214m \t03. Topics for further study" 
echo; echo; echo  
echo -e -n "\e[0m \tPress any key to continue...." 
read key 
MENU_CHOICE="$key" 
}

# --- Functions for each command explanation ---
explain_vars() { 
	clear 
	cowsay -f tux   "Variables are place holders for data. They can be either scalar or arrays" 
}
explain_conditions_loops() {
	clear 
    cowsay -f tux   "BASH provides basic conditions and looping based on conditions. These include : if, test, select, while, for, until among others" 
}
explain_adv_topics() {
	clear 
    cowsay -f tux   "Piping, redirection, quotes and using command outputs" 
}
quit_program() {
    clear
    echo "Exiting simulator..."
    exit 0
}
# --- Dispatcher function ---
handle_choice() {
    case "$1" in
	1) explain_vars;;     
        2) explain_conditions_loops ;;
        3) explain_adv_topics ;;
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
