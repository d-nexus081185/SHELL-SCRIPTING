#!/bin/bash

#Start

#Declare global variables for the script
user_upgrade=UPGRADE
#user_update=UPDATE

#To get user input for the option available
read -p "Do you want to perform system update or upgrade:  " user_input

#Transform userinput return to uppercase
uppercase="${user_input^^}"

echo "System will $uppercase Shortly, Please Hold."
sleep 4

#Comparing the userinput with the global declared variable
if [[ $uppercase == $user_upgrade ]];then
	sleep 2
	echo "Running System Upgrade"
	#echo "Password@123"|
	sudo apt upgrade -y
	echo "System Upgrade Completed Successfully"
else
	sleep 2
	echo "Running System Update"
	#echo "Password@123"|
	sudo apt update
	echo "System Update Completed Successfully"
fi
#End
