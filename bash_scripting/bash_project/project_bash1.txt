#!/bin/bash

clear

function my_date
{
	today_date=`date`
	
	echo "--------------------------------------------------"
	echo "${today_date}"
	echo "--------------------------------------------------"
}

function main_menu
{

	echo "           MAIN MENU"
	echo "--------------------------------------------------"
	echo "1. Operating system info"
	echo "2. Hostname and dns info"
	echo "3. Network info"
	echo "4. Who is online"
	echo "5. Last logged in user"
	echo "6. Free and used memory info"
	echo "7. Exit"
	echo "--------------------------------------------------"


}


function operating_system
{

	os_info=`cat /etc/os-release | awk -F '=' 'NR==1 { print $2 }'`
	version_info=`cat /etc/os-release | awk -F '=' 'NR==2 { print $2 }'`
	dist_id=`cat /etc/os-release | awk -F '=' 'NR==3 { print $2 }'`
	version_id=`cat /etc/os-release | awk -F '=' 'NR==5 { print $2 }'`
	echo "-------------------------------------------------"
	echo "        OPERATING SYSTEM INFO          "
	echo "-------------------------------------------------"
	echo "Operating System  :  ${os_info}"
	echo "Version of OS     :  ${version_info}"
	echo "Distribution ID	  :  ${dist_id}"
	echo "Version ID	  :  ${version_id}"
	echo "--------------------------------------------------"

}

function host_dns
{

	host_name=`hostname`
	dns_name=`cat /etc/resolv.conf | awk 'NR==3 { print  $2 }'`
	echo "--------------------------------------------------"
        echo "        HOST-NAME & DNS INFO          "         
	echo "--------------------------------------------------"
	echo "Host Name         :  ${host_name}"
	echo "DNS Name          :  ${dns_name}"	
	echo "--------------------------------------------------"



}

function network_info
{

	ip_address=`ifconfig | awk 'NR==2 { print $2 }'`
	dest_gate_gmask_head=`netstat -nr | awk 'NR==2 { print $1"     " $2 "           "$3}'`
	netstat_1=`netstat -nr | awk 'NR==3 { print $1"         " $2 "       "$3}'`
	netstat_2=`netstat -nr | awk 'NR==4 { print $1"    " $2 "            "$3}'`
	echo "---------------------------------------------------"
	echo "        Network INFO                     "         
	echo "---------------------------------------------------"         
	echo "IP Address         :  ${ip_address}"
	echo "---------------------------------------------------"
	echo "${dest_gate_gmask_head}"
	echo "${netstat_1}"
	echo "${netstat_2}"
	echo "---------------------------------------------------"


}


function online_users
{
	#usr_info_1=`who | awk 'NR==1{ print $1 "   " $2 "   "$3 "   " $ 4 "   " $5}'`
	#echo "${usr_info_1}"

	echo "---------------------------------------------------"
	echo "        Who is online                    "         
	echo "---------------------------------------------------"


	usr_details=`w`
	echo "${usr_details}"
	echo "--------------------------------------------------"
	



}


function last_logins
{


	echo "---------------------------------------------------"          
	echo "        Last logged-in User Details                    "          
	echo "---------------------------------------------------"
	
	
	last_log=`last`
	echo "USERS  : SYSTEM-INFO  : IP-ADDRESS  :       DATE:         L-TIME: T-TIME" 
	echo "--------------------------------------------------------------------------" 
	echo "${last_log} "
	echo "--------------------------------------------------"

}



function memory
{

	 echo "---------------------------------------------------"
         echo "        Memory Details                    "
         echo "---------------------------------------------------"

	total_ram=`free | awk 'NR ==2 { print $2 }'`
	free_ram=`free | awk 'NR ==2 { print $4 }'`
	used_ram=`free | awk 'NR ==2 { print $3 }'`
	shared_ram=`free | awk 'NR ==2 { print $5 }'`
	buf_cache=`free | awk 'NR ==2 { print $6 }'`	

	echo "Total RAM    :    ${total_ram}"
	echo "Free RAM     :    ${free_ram}"
	echo "Used RAM     :    ${used_ram}"
	echo "shared RAM   :    ${shared_ram}"
	echo "Buffer/Cache :    ${buf_cache}"
	echo "--------------------------------------------------"
	

}

function exit_pro
{

	echo "!! Thanks for using the prograrm,the program is exiting !!"
	echo "!! HAVE A NICE DAY AHEAD !!" 
	echo "--------------------------------------------------"
	sleep 2
	exit


}

#starting of main program

my_date
main_menu


read -p "Enter your choice between (1-7): " usr_input

case ${usr_input} in

	1) operating_system
		;;
	2) host_dns
		;;
	3) network_info
		;;
	4) online_users
		;;
	5) last_logins
		;;
	6) memory
		;;
	7) exit_pro
		;;
	*) echo "invalid option"
esac


