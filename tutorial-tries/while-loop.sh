#!/usr/bin/env bash
INPUT_STRING=hello
while [ $INPUT_STRING != "bye" ]
do
	echo "Please type something in (bye to quit)"
	read -r INPUT_STRING
	echo "You typed: $INPUT_STRING"
done
