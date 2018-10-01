#!/bin/bash

clear
function display
{
	echo "hi"
	echo "bye"

	#this is the value of x and y returned to the display function
	echo "${x}"
	echo "${y}"
}

x=3
y=4

display $x $y


#and this is command line argument that will be printed

echo "========================"
echo "$1"
echo "$2"

