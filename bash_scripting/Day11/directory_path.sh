#!/bin/bash

clear

read -p "Enter your path: " path

for each in `ls ${path}`



do
  	echo "${each}"
	
	if [ -d  == ${each} ]
	then
		echo "${each} : this is a directory"
	else
		echo "${each} : this is a file"
	fi

done






<< abc

	if [ -d "${each}" ]
	then
		echo "${each}  : is a file"
	else
		echo "${each}  : is a directory"
	fi


done

abc
