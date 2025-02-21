# Script functionality:
#	Sums the first three numbers
#	Executes subtractMachine.sh using the sum as arg1, and this script's arg4 as arg2 in the subbtractMachine.sh script.

# Script arguments:
#	Arg1: the first number (integer)
#	Arg2: the second number (integer)
#	Arg3: the third number (integer)
#	Arg4: the fourth number (integer)

# Script invocation:
#	Run the script using: ./threeAmigos.sh <num1> <num2> <num3> <num4>

# Ensure the script is run with exactly four arguments
if [ "$#" -ne 4 ]; then
	echo "Script was given $# arguments, but requires four."
	exit 1
fi

sum=$(( $1 + $2 + $3 ))

../Problem3/subtractMachine.sh $sum $4
