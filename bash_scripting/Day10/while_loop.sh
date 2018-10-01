#!/bin/bash

i=0
while [ $i -le 10 ] 
do         
	if [ $i -eq 5 ]
	then                 
		echo "The value of i is : $i"                 
		
		#if we use continue the loop will run infinitely within this condition 5 
		#continue
		
		#if we use break, the loop will be breaked 
		#and it will execute the echo "This is out of the loop"
		break            


		#if we use exit, after the execution the entire program will be terminated.
		#and this will not execute the echo "This is out of the loop"
		#exit
	fi          
	i=$(( i+1 ))         
	sleep 1   
done  
echo "This is out of the loop"
