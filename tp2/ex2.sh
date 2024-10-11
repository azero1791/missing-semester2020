#!/usr/bin/bash
path=""
marco() {
	path=$(pwd)
	echo "save current path: $path" || exit
}

polo() {
	echo "change to path where marco is runned"
	cd "$path" || exit
}
