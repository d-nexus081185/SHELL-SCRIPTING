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
echo "Login successful! Please change your Password"
sleep 2
#open "https://google.com"
else
echo "Access denied! Login failed."
break
fi
read -sp "Change Pasword: " new_password
echo
read -sp "Confirm Password: " confirm_password
echo
echo
if [[ $new_password == $confirm_password ]]; then
echo "Password successfully changed, Check email for login details"
else
echo "Password mismatched, Conatct system Admin"
fi
