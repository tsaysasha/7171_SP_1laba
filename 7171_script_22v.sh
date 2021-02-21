#!/bin/bash

echo "user_name: Tsay Alexander Evgenevich"
echo "program_name: 1_laba_system_programming_22v"
echo "description: This task was completed according to 22 options"

while true; do
    read -p "If you want information about the file, enter Y, if you want to end N: " yn
    case $yn in
        [Yy]* ) read -p "Enter path to file: " path
		if [ -f $path ]; then 
		    stat --printf "\nlast access time: %x\ntime of last change: %y\nindex descriptor change time: %z\n\n" $path
		else 
		    echo "The path is specified incorrectly, or the file was not found"
		fi;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

