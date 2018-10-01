#!/bin/bash

read -p "Enter your httpd request(start/stop): " usr_req



#usr_req=$1

echo "The user request is: ${usr_req}"


status=`systemctl status httpd | awk 'NR==3 { print $2 }'`

echo "Current status of httpd serive is:  ${status}"



if [ "$status" == "inactive" ]
then
	if [ "${usr_req}" == "start" ]
	then 
		echo "httpd service is going to start"
		systemctl start httpd
		echo "httpd service is started now"
	fi
fi



if [ "$status" == "active" ]
then

	if [ "${usr_req}" == "stop" ]
	then
		echo "httpd service is going to stop"
		systemctl stop httpd
		echo "httpd service is stopped now"
	fi
fi




