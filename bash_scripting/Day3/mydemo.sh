#!/bin/bash

x=10
readonly x

readonly y=20

echo "the value of x is: ${x}"
echo "the value of y is: ${y}"

echo " The below value is for z which is not defined in the script is : ${z}"

#echo "${z}"

#read a
read -p "Enter the value for a : " a
echo "the value of a is which is input by user: ${a}"
