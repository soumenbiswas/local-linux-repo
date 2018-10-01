#!/bin/bash

clear

function add_numbers
{

	#retuening the value in the fucntion
	sum=$(( $1 + $2 ))
	echo "The sum is : ${sum}"
	


}

#we can send the values directly to the function
#add_numbers 4 5

#here the direct calculation is inserted into the variable reasult

result=`add_number 4 5`

echo "${result}"
