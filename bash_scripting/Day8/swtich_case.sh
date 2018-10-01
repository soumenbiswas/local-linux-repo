#!/bin/bash


echo " enter any number from (1-3) or (a-c)"
read -p "Enter any number or letter" usr_input

case ${usr_input} in

	1) echo "one";;
	2) echo "two";;
	3) echo "three";;

	a) echo "letter";;
	b) echo "letter";;
	c) echo "letter";;

	*) echo "invalid option entered";;

esac
