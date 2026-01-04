#!/bin/bash
# First argument is the command string passed from the loop
#cmd="$1"
# Forward the command to the real ls
# Use eval so flags like -l or -a are honored
#eval "$cmd"

cmd="$1"
args=($cmd)
#args=(${cmd//~/})
OLDDIR=${OLDDIR:-$PWD} 
DIR=${DIR:-$PWD} 

# Expand ~ manually
for i in "${!args[@]}"; do
    if [[ ${args[$i]} == "~" ]]; then
        args[$i]="$HOME"
    fi
done


case "${args[0]}" in
    cd)
	#echo "args ==> ${args[@]}"
        # Run cd in a subshell, then show the directory
        if [ -z "${args[1]}" ]; then
            # No argument → default to HOME
	    OLDDIR=$DIR
            (cd ~; pwd)
	    DIR=$HOME 
        else
	    if [ "${args[1]}" == "-" ]; then 
		tmp=$DIR 
            	(cd "${OLDDIR}" 2>/dev/null && pwd) || echo "No such directory: ${args[1]}"
		DIR=$OLDDIR 
		OLDDIR=$tmp
	    else 
		OLDDIR=$DIR
            	(cd "${args[1]}" 2>/dev/null && pwd) || echo "No such directory: ${args[1]}"
		DIR="${args[1]}" 
	    fi 
        fi
        ;;
    *)
         eval "$cmd"
        ;;
esac
