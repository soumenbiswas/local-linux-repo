#!/bin/bash


read -p "Enter a number: " number

echo "The number entered by the user is : ${number}"

if [ "${number}" -eq 0 ]
then 
	echo "The number entered by the user is ZERO"
	
	elif [ "${number}" -lt 0 ]
	then
		echo "your number is -ve"
	
else
	echo "your number is +ve"

fi


