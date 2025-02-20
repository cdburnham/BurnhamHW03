#!/bin/bash

# Script functionalities:
#	Sets clock frequency of BBB
#	Displays BBB clock info
#	Creates variables for file locations, and a count of the number of items in the PWD.
#	Echos variables to the user's terminal

# Arguments:
#	No arguments required to run this script.

# Usage:
#	Execute the script using "./mySetup.sh"
#	Or, add to $PATH variable and call as an executable

sudo cpufreq-set -f 600Mhz
cpufreq-info
location= "/home/debian"
echo "$location"
items= ls -a $PWD | wc -w
echo "$items"
