#!/usr/bin/bash

#Declaration of the default username and password
default_username=admin
default_password=12345

#User input section
read -p "Username: " username
read -sp "Password: " password
echo

#Compare the user input and declared variables
if [[ $username == $default_username && $password == $default_password ]]; then
echo "Login successful! Redirecting to website"
sleep 2
open "https://google.com"
else
echo "Access denied! Login failed."
fi

