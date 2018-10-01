#!/bin/bash


i=0
while [ $i -le 10 ]
do 

	echo "$i"
	i=$(( i+1 ))

done

echo "==========================="


x=20
until [ $x -eq 10 ]
do
	echo "$x"
	x=$(( x-1 )) 
done




