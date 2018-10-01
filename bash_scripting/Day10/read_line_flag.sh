#!/bin/bash

clear

Flag="False"
while read line
do
 	version=`echo $line | awk '{ print $2 }'`
	sleep 1

	if [ "$version" == "2.7.15" ]
	then
		echo "The version we are looking for is 2.7.15"
		echo "!!you have a correct version!!"
		Flag="true"
		break

	#elif
		#echo " The version we are searching is not in the file"
		
	fi


done<test.txt


if [ "${Flag}" == "False" ]
then
	echo "The required version is not availiable in the file"
fi

