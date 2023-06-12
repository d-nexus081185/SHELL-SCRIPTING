#!/usr/bin/bash
echo "TO ACCESS YOUR DASHBOARD, ENTER USERNAME & PASSWORD"

read -p "Enter Your Username: " user_name
password_number=12345
read -sp "Enter Your Password: " user_password
echo
if [ "$user_password" -eq "$password_number" ]; then
echo "Password match found. Please change your password."
read -sp "Please Change Your Password: " new_password
echo
echo "Password Changed Successfully" 
else
echo "Password does not match"
fi
