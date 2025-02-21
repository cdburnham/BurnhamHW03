#!/bin/bash

# Script functionality:
#	Subtracts smaller of two arguments from larger one to print the difference to stdout.
#	Counts down (printing each step down) from the difference to 1.
# Script arguments:
#	Arg1: the first number (int) of two
#	Arg2: the second number (int) of two
# Script invocation:
#	Utilize the script by calling ./subtractMachine.sh from the Problem3 directory.

if [ "$#" -ne 2 ]; then
	echo "The script requires two arguments but was given $#."
	exit 1
fi

if [ "$1" -gt "$2" ]; then
	difference=$(( $1 - $2 ))
else
	difference=$(( $2 - $1 ))
fi

echo "The difference is $difference."
echo -e "Counting down...\n"

for (( i=difference; i>=1; i-- )); do
	echo -e "$i\n"
done


