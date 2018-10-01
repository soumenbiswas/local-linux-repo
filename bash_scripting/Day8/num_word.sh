#!/bin/bash

read -p "Enter any number in between (0-5)" num

if [ "${num}" -gt -1 -a "${num}" -le 6 ]
then
	echo "The number is in range"
	
	if [ "${num}" -eq 0 ]
	then
		echo "input number is zero"
	
		elif [ "${num}" -eq 1 ]
		then
		echo "input number is one"
	
		elif [ "${num}" -eq 2 ]
		then
		echo "input number is two"
	
		elif [ "${num}" -eq 3 ]
		then
		echo "input number is three"
	
		elif [ "${num}" -eq 4 ]
		then
		echo "input number is four"

		elif [ "${num}" -eq 5 ]
		then
		echo "input number is five"

	fi
else
	echo "The number is out of range"



fi

