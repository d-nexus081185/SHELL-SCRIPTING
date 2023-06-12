#!/usr/bin/bash
echo "TO ACCESS YOUR DASHBOARD, ENTER USERNAME & DEFAULT PASSWORD"

echo "Enter Your Desired User Name"
read -p "Enter Your Username: " user_name
echo "Enter Default Password provided by the ADMIN"
password_number=12345
read -sp "Enter Your Default Password: " default_password
echo
if [ "$default_password" -eq "$password_number" ]; then
echo "Password match found. Please change your password."
read -sp "Please Change Your Password: " new_password
echo
echo "Password Changed Successfully" 
else
echo "Wrong Default Password Entered!"
read -p "Enter Correct Default Password: " default_password1
echo "ACCESS DENIED!! Contact the ADMIN for the Default Password!"
fi
