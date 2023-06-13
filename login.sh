#!/usr/bin/bash

#Declaration of the default username and password
default_username=admin
default_password=12345

#User input section
read -p "Username: " username
read -sp "Password: " password
echo
read -p "Email: " email

#Compare the user input and declared variables
if [[ $username == $default_username && $password == $default_password ]]; then
echo "Login successful! Please change your Password"
sleep 2
#open "https://google.com"
else
echo "Access denied! Login failed."
fi
read -sp "Change Pasword: " new_password
echo
read -sp "Confirm Password: " confirm_password
echo
echo
if [[ $new_password == $confirm_password ]]; then
echo "Password successfully changed, Check email for login details"
#echo "$message" | username=$default_username password=$new_password -s "$email"
else
echo "Password Mismatch! Access Denied, contact the Admin" 
fi
