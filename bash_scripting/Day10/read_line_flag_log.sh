#!/bin/bash

clear

Flag="False"
while read line
do
 	version=`echo $line | awk '{ print $2 }'`
	#sleep 1

	if [ "$version" == "2.7.15" ]
	then
		echo -e "\033[1;32mThe version we are looking for is 2.7.15 and is available\033[0m" >>flag.log
		echo "!!you have a correct version!!"
		Flag="true"
	fi


done<test.txt


if [ "${Flag}" == "False" ]
then
	echo -e "\033[1;31mThe required version is not availiable in the file\033[0m" >>flag.log
	echo -e "!you dont have a correct vesion!"
fi
 
