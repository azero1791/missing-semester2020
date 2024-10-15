#!/usr/bin/env bash

echo "longest boot time:"
### get longest boot time 
journalctl | grep ".*Startup finished in.*" | sed -E "s/.*= (.*)s\.$/\1/" | sed -E "s/.*in.*//" | sort | tail -n1

echo "shortest boot time:"
### get shortest boot time
journalctl | grep ".*Startup finished in.*" | sed -E "s/.*= (.*)s\.$/\1/" | sed -E "s/.*in.*//" | grep "[^\n]" | sort | tail -n1 

echo "average boot time:"
### get average boot time
journalctl | grep ".*Startup finished in.*" | sed -E "s/.*= (.*)s\.$/\1/" | sed -E "s/.*in.*//" | grep "[^\n]" | tail -n10 | sort | paste -sd+ | bc -l | awk 'END {print $1/10}' 


echo "mediun boot time:"
journalctl | grep ".*Startup finished in.*" | sed -E "s/.*= (.*)s\.$/\1/" | sed -E "s/.*in.*//" | grep "[^\n]" | tail -n10 | sort | paste -sd" " | awk '{print ($5+$6)/2}' 
