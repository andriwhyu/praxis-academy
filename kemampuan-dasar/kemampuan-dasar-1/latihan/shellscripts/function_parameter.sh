#!/bin/bash

function Rectangle_Area()
{
	#(( area=$1*$2 ))
	area=$(($1 * $2))
	echo "Area is : $area"
}

Rectangle_Area 10 40