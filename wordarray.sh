#!/usr/bin/env bash
distributions=("Ubuntu Fedora Manjaro Arch EndeavourOS Garuda")
for distro in $distributions
do 
if [[ "${distro}" == "Arch" ]]
 #if [ "${distro}" = "Arch" ]
 then 
	#continue 
	break 
 fi 
 echo $distro
 # break and continue
done
