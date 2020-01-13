#!/bin/bash

function greeting() {
	str="Hello, $name"
	echo $str
}

echo -n "Enter your name: "
read name

val=$(greeting)
echo "Return value of the function is $val"
