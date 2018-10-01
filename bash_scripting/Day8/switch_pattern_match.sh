#!/bin/bash

read -p "Enter any number between 0-9 or a-z" num

case ${num} in
	[0-9]) echo "given input is a number" ;;
	[a-z]) echo "given input is in small case letters";;
	#[A-Z]) echo "given input is in capital case letters";;

	*) echo "invalid input";;

esac 




