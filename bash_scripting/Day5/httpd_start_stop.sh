#!/bin/bash

if [ $# -ne 1 ]
then
	echo "You have to pass one command line argument"
	echo "run the shell script like ${0} <start/stop>"
	echo "Try again please!"
	exit
fi



httpd_status=`systemctl status httpd | awk 'NR==3 { print  $2 }'`

echo "current of httpd : ${httpd_status}"

#read -p "Enter input (start/stop)" usr_req

usr_req="${1}"

echo "User want to ${usr_req} httpd service"


if [ "$usr_req" == "start" ]
then 
	systemctl start httpd
	echo "The httpd serive is started"

fi

if [ "$usr_req" == "stop" ]
then
	systemctl stop httpd
	echo "The httpd serive is stopped"

fi






