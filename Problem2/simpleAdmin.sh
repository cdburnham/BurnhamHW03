#!/bin/bash

# Script functionalities:
#	Creates directory under PWD using ARG1 as name.
#	Creates directory inside above-mentioned directory using ARG2 as name.
#	Creates a Hello World text file under second-mentioned directory using ARG3 as name.
#	Creates a softlink from PWD to second-mentioned directory using ARG4 as name.
#	Displays the actions being taken as the script is running.
# Script arguments:
#	1. Dir1 directory name
#	2. Dir2 directory name
#	3. Message text file name
#	4. Softlink to Dir2 name
# Script invocation:
#	Utilize ./simpleAdmin.sh to run the script from the Problem2 directory.

mkdir "$PWD/$1"
echo Creating directory named $1
mkdir "$PWD/$1/$2"
echo Creating directory named $2 under $1
echo "Hello World!">"$PWD/$1/$2/$3"
echo Creating Hello World message under $2 directory
ln -s "$PWD/$1/$2" "$PWD/$4"
echo Creating link from PWD to $2
