#!/usr/bin/env bash

myfunc()
{
	echo "I was called as : $*" 
	x=2
}

### Main script

echo "Script was called with $*"
x=1
echo "x is $x"
myfunc 1 2 3
echo "x is $x"

