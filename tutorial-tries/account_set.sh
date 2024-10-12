#!/usr/bin/env bash

adduser()
{
	USER=$1
	PWD=$2
	shift ; shift
	COMMENT=$@
	useradd -c "$COMMENT" $USER
	if [ [ "$?" -ne 0 ] ]; then
		echo "Useradd failed"
		return 1
	fi
	passwd $USER $PWD
	if [ [ "$?" -ne 0] ]; then
		echo "Setting password failed"
		return 2
	fi
	echo "Added user $USER ($COMMENT) with pass $PWD"
}

## Main script starts here

adduser bob letmein Bob Holness from Blockbusters
ADDUSER_RETURN_CODE=$?
if [ [ "$ADDUSER_RETURN_CODE" -eq "1" ] ]; then
	echo "Something went wrong with useradd"
elif [ [ "$ADDUSER_RETURN_CODE" -eq "2" ] ]; then
	echo "Something went wrong with passwd"
else
	echo "Bob Holness added to the system."
fi
