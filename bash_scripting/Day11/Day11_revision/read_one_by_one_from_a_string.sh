#!/bin/bash

clear

#the values will be printed one by one; each time the for loop will execute

<< mycom1

for each in 23 4 95 123 145
do

	echo "${each}"


done

mycom1

#if we want to print the values in echo each time the loop runs 

<< mycom2

for each in for each in 23 4 95 123 145
do          
	echo "hello hi"   
done

mycom2


#if we want to print both of them together than

for each in 23 4 95 123 145 
do         
	echo "hello hi"
	echo "now the variable value is : ${each}" 
done

