#!/bin/bash

clear

x="hi.txt.py.sh"

#to get the out-put that will only be 'hi' with longest match

echo "${x%%.*}"
#output:hi


#to get the output that will be 'sh' with the longest match

echo "${x##*.}"
#output:sh
