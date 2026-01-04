#!/usr/bin/env bash 

set -o nounset 
set -o noclobber; 
export LC_ALL=C; 
#export PATH=
readonly MYSELF="$(readlink -f $0)"
readonly MYPATH="${MYSELF/*}"

strraw='value with $special chars
/etc/*' 

g() {
    echo "Today is : $(date)"

    ARGS="$*"
    echo "Raw ARGS: $ARGS"

    ARRAY=("$@")
    echo "ARGS as array: ${ARRAY[@]}"

    LEN="${#ARRAY[@]}"
    echo "Number of ARGS: $LEN"

    echo "Raw String : " $strraw
    echo "Raw String : " "$strraw"
}

g TEST CODE "ABC" 
#typeset -i intVal=3
#printf "%000d\n" "$intVal"

