#!/bin/bash

# Script functionalities:
#	Creates directory under PWD using ARG1 as name.
#	Creates directory inside above-mentioned directory using ARG2 as name.
#	Creates a Hello World text file under second-mentioned directory using ARG3 as name.
#	Creates a softlink from PWD to second-mentioned directory using ARG4 as name.
#	Displays the actions being taken

mkdir "$PWD/$1"
echo Creating directory named $ARG1
mkdir "$PWD/$1/$2"
echo Creating directory named $ARG2 under $ARG1
echo "Hello World!">"$PWD/$1/$2/$3"
echo Creating Hello World message under $ARG2 directory
ln -s "$PWD/$1/$2" "$PWD/$4"
echo Creating link from PWD to $ARG2
