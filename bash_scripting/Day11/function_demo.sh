#!/bin/bash

<< mycom

step1: check required OS
step2: check mount points
step3: download softwares
step4: install

mycom


function req_os
{
	echo "This is to check required os"
}


function mount_points
{         
	echo "This is to check mount points" 
}


function download_software
{         
	echo "This is to check download software" 
}


function install
{         
	echo "This is to check install" 
}


echo "Now i am calling a function"
sleep 2
req_os
echo "one function is executed"

echo "Now i am calling a function" 
sleep 2
mount_points 
echo "one function is executed"
sleep 2

echo "Now i am calling a function" 
sleep 2 
download_software 
echo "one function is executed" 
sleep 2


echo "Now i am calling a function" 
sleep 2 
install 
echo "one function is executed" 
sleep 2













