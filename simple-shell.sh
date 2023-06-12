#!/usr/bin/bash
echo "TO ACCESS YOUR DASHBOARD, ENTER USERNAME & DEFAULT PASSWORD"

sleep 2

read -p "Enter Your Desired Username: " user_name
echo "Enter Default Password provided by the ADMIN"
password_number=12345
read -sp "Enter Your Default Password: " default_password
echo 
echo "Welcome $user_name, Default Password matched. Please change your password"

sleep 3

if [ "$default_password" -eq "$password_number" ]; then

read -sp "Please Enter New Password: " new_password
echo
read -sp "Please Confirm New Password: " confirm_password
echo
fi
	if [ "$new_password" -eq "$confirm_password" ]; then
	echo "Congratulations! Password changed was successful"
	else
	echo "Wrong Confirmation Password Entered!"
	sleep 2
	echo "ACCESS DENIED!!! Contact the ADMIN."
	fi
