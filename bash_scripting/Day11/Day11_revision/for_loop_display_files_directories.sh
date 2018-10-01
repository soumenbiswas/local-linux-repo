#!/bin/bash

clear

read -p "Enter your path: " path

#this line will display the files in the path that we will provide
<< mycom1
ls ${path}
mycom1


for each in `ls ${path}`
do
	if [ -d ${each} ]
	then
		echo "${each} : This is a directory"
		echo "=============================="
	else
		echo "${each} : is a file"
		echo "=============================="

	fi



done

