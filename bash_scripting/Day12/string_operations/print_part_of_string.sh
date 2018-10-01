#!/bin/bash

clear
read -p "Enter your path: " path

for each_file in `ls ${path}`
do
	#to echo list of the files that are present in each_file
	#echo "${each_file}"
	
	
	#to delete starting part of the names:
	#echo "${each_file#*.}"

	#to delete the ending part of the file:
	echo "${each_file%.*}"

done
