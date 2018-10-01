#!/bin/bash


clear
i=0
while [ $i -le 10 ]
do
	echo "$i"
	i=$(( i+1 ))
done

echo "================================================="

i=20
until [ $i -le 10 ]
do
	echo "$i"
	i=$(( i-1 ))
done




