#!/usr/bin/env bash

runs=0
while true 
do 
	runs="$(expr $runs + 1)"
	./ex3.sh &>> ex3_out.log
	if [[ $? -ne 0 ]]; then
		break
	fi
done

echo "ex3.sh runs $runs times."
