#!/bin/bash

#Variable declaration
counter=1

for_easy_mode=EASY
for_hard_mode=HARD

for_easy_attempt=9
for_hard_attempt=5

secret_number=10


#Start
echo "THIS IS A GUESSING GAME; USER IS TO GUESS A NUMBER BETWEEN 1 to 10."
sleep 3
echo

#Recieve user input (on type of game mode)
read -sp 'CHOOSE USER MODE (EASY/HARD) "TYPE AND PRESS ENTER" : ' user_input
echo
read -sp 'ENTER NAME: ' name
echo
echo

#Text transform user input to uppercase
uppercase="${user_input^^}"
name_upper="${name^^}"

#User mode confirmation message
echo "USER MODE SELECTED: $uppercase"
echo "WELCOME $name_upper, LET'S BEGIN!"
echo

while [[ $counter -le 9 && $uppercase == $for_easy_mode ]]; do
	echo "YOU HAVE $for_easy_attempt ATTEMPTS REMAINING"
	echo
	read -p 'MAKE A GUESS: ' user_guess
	if [ $user_guess -eq $secret_number ];then
		echo "CONGRATULATIONS $name_upper! YOU GUESSED THE RIGHT NUMBER"
		break
	else
		echo "YOUR GUESS IS WRONG, TRY AGAIN: "
		((for_easy_attempt--))
	fi

	((counter++))
done

if [ $counter -gt 10 ];then
	echo "YOU HAVE USED UP YOUR GUESSES"
fi

while [[ $counter -le 5 && $uppercase == $for_hard_mode ]]; do
	echo "YOU HAVE $for_hard_attempt ATTEMPTS REMAINING"
	echo
	read -p 'MAKE A GUESS: ' user_hard_guess
	if [ $user_hard_guess -eq $secret_number ];then
		echo "CONGRATULATIONS $name_upper! YOU GUESSED THE RIGHT NUMBER"
		break
	else
		echo "YOUR GUESS IS WRONG, TRY AGAIN: "
		((for_hard_attempt--))
	fi
	((counter++))
done

if [ $counter -gt 6 ];then
	echo "YOU HAVE USED UP YOUR GUESSES"
fi
