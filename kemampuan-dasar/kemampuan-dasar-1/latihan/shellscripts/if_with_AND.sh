#!/bin/bash
echo "Enter username"
read userName
echo "Enter password"
read password
if [[ ( $userName == "admin" && $password == "secret" ) ]];
then
	echo "valid user"
else
	echo "invalid user"
fi
