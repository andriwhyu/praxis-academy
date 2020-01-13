#!/bin/bash

for args in "$@"
do
	index=$(echo $args | cut -f1 -d=)
	val=$(echo $args | cut -f2 -d=)
	
	case $index in
	X)
	x=$val ;;
	Y)
	y=$val ;;
	*)
	esac
done
((result=x+y))
echo "total= $result"
