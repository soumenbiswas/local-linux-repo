#!/bin/bash

function read_path
{
	read -p "Enter your git-tar.gz file location: " git_path
}

function valid_path_or_not
{

	if [ ! -e "${git_path}"]
	then 
		echo "Please verify your entered path"
		echo "!!And try again !!"
		exit 1
	fi

}

function find_tar_gz
{

	tar_gz_y=`echo "${git_path##*.}"`

}

function extract_file
{

	if [ "${tar_gz_y}" == "gz" ]
	then
		echo "Please wait noe we are extracting your tar.gz file"
		sleep 2
		#untar
		tar -xvzf ${git_path}
	elif [ "${tar_gz_y}" == "tar" ]
	then
		echo "Please wait, now we are extracting your tar ball"

	else
		echo "Already you have entered a untar file"


	fi
}














