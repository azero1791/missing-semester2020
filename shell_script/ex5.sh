#!/usr/bin/env bash

path=$1

find "$path" -type f -name "*" | xargs -d '\n' ls -t -l
