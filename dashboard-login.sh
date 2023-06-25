#!/bin/bash

admin_username=admin
admin_password=12345

echo "Enter Default Username and Password"
read -p 'Username: ' usr_name
read -sp 'Password: ' usr_password
echo

echo "Hold on while your default password is confirmed"
sleep 3

if [[ $usr_name == $admin_username && $usr_password == $admin_password ]]; then
    echo "Default password matched. Please change your Username and Password"
    read -p 'Enter New Username: ' new_username
    echo "Welcome $new_username! Please change your Password"
    sleep 2
    read -sp 'Enter New Password: ' new_password
    echo
    read -sp 'Confirm New Password: ' con_password
    echo
    echo "$new_username, Username and Password have been successfully changed."
    sleep 2
    echo "Redirecting $new_username to the dashboard"
else
    echo "Password Mismatch! Try again"
    read -p 'Username: ' usr_name2
    read -sp 'Password: ' usr_password2
    echo
    sleep 2
if [[ $usr_name2==$admin_username && $usr_password2==$admin_password ]];then
      echo "Default password matched. Please change your Username and Password"
      read -p 'Enter New Username: ' new_username
      echo "Welcome $new_username! Please change your Password"
      sleep 2
      read -sp 'Enter New Password: ' new_password
      echo
      read -sp 'Confirm New Password: ' con_password
      echo
echo "$new_username, Username and Password have been successfully changed."
      sleep 2
      echo "Redirecting $new_username to the dashboard"
    else
        echo "Access Denied! Contact the admin for support"
    fi
fi

