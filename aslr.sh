#!/bin/sh

if [ "$1" = "" ]; then
	echo "Usage: aslr.sh --enable"
	echo "Usage: aslr.sh --disable"
elif [ "$1" = "--enable" ]; then
	echo 2 | sudo tee /proc/sys/kernel/randomize_va_space
	echo "ASLR enabled"
elif [ "$1" = "--disable" ]; then
	echo 0 | sudo tee /proc/sys/kernel/randomize_va_space
	echo "ASLR disabled"
else
	echo "Wrong argument"
	echo "Usage: aslr.sh --enable"
	echo "Usage: aslr.sh --disable"
fi
