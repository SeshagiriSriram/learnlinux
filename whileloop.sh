#!/bin/bash
clear
echo;echo; 
echo -e '\e[38;5;214m
**** CODE 
	i=1
	x=10 
	while [[  $i -le $x  ]]
	do 	
		echo $i 
		(( i=i+1 ))
	done\e[0m

**** Output


'
i=1; x=10; while [[  $i -le $x  ]];  do echo $i ; (( i=i+1 )); done
echo;echo; 
