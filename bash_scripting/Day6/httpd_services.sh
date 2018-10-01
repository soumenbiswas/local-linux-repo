#!/bin/bash


if [ $# -eq 1 ] 
then         
	if [ "${1}" == "start" -o "${1}" == "stop" ]
	then
		echo "!! You have passed correct argument !!"
	else
		echo "Pass a correct argement <start/stop>"
		exit
	fi
else
	echo "You have to pass one command line argument"
        echo "run the shell script like ${0} <start/stop>"         
	echo "Try again please!"         
	exit
fi




httpd_status=`systemctl status httpd | awk 'NR==3 { print  $2 }'`
echo "Present httpd status is : ${httpd_status}"


usr_req=$1
echo "User want to ${usr_req} httpd service"


if [ "${httpd_status}" == "inactive" -a "${usr_req}" == "start" ]
then 
	echo "we are going to start httpd serivce"
	systemctl start httpd
	sleep 3
	echo "httpd serive is now running"
	
	elif [ "${httpd_status}" == "active" -a "${usr_req}" == "start" ] 
	then
		sleep 2
		echo "Service is already running, no action is required!"
	
	elif [ "${httpd_status}" == 'active' -a "${usr_req}" == 'stop' ]
	then

		echo "we are going to stop httpd serivce"
		systemctl stop httpd
		sleep 3
		echo "httpd serive is now stopped"

	
	elif [ "${httpd_status}" == 'inactive' -a "${usr_req}" == 'stop' ]
	then
		sleep 2
		echo "service is already stopped, no action is required!"


fi	 
