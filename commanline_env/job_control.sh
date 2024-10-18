#!/usr/bin/env bash
pidwait()
{
	while kill -0 "$1"
	do
		sleep 1
	done
	ls
}

sleep 60 &
pidwait "$(pgrep --full "sleep 60")"
