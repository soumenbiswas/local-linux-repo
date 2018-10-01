#!/bin/bash

clear


while read line
do
 	version=`echo $line | awk '{ print $2 }'`
	#sleep 1

	if [ "${version}" == "2.7.15" ]
	then
		echo "!!you have a correct version!!"
		echo -e "\033[1;32mThe version we are searching is 2.7.15: PRESENT \033[0m" >>if.log
		break

	else
		echo " The version we are searching is not in the file"
		echo -e "\033[1;31mThe version we are searching is 2.7.15: ABSENT \033[0m" >>if.log
		
		#exit
	fi


done<abc.txt
