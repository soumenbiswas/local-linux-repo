#!/bin/bash
path="test_file1.txt"

if [ -d ${path} ]
then
	echo "This is a directory"
else
	echo "This is a file"
fi




