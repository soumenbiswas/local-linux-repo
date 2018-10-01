#!/bin/bash


clear

function add_numbers
{

	sum=$(( $1+ $2 ))
	echo "${sum}"

}

#add_numbers 4 5


result=`add_numbers 4 5`

echo "${result}"



