#!/bin/bash

clear
my_data="This is shell scripting"

echo "${my_data}"
echo "now we are changing the word shell to python"
sleep 2
echo "${my_data/shell/python}"




