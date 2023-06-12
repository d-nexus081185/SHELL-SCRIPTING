#!/usr/bin/bash
echo "TO ACCESS YOUR DASHBOARD, ENTER USERNAME & DEFAULT PASSWORD"

sleep 2

read -p "Enter Your Desired Username: " user_name
echo "Enter Default Password provided by the ADMIN"
password_number=12345
read -sp "Enter Your Default Password: " default_password
echo

sleep 3

if [ "$default_password" -eq "$password_number" ]; then
echo "Password match found. Please change your password."
read -sp "Please Change Your Password: " new_password
echo
echo "Password Changed Successfully"
else
echo "Wrong Default Password Entered"
sleep 2
echo "ACCESS DENIED!!! Contact the ADMIN!!!"
fi
