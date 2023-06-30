#!/bin/bash

#Variable declaration

user_attempt=1

for_easy_mode=EASY
for_hard_mode=HARD

for_easy_attempt=9
for_easy_hard=5

secret_number=10


#Start

#Introduce the game to user(s)
echo "THIS GAME IS A GUESSING GAME; USER IS REQUIRED TO GUESS A NUMBER BETWEEN 1-10."
sleep 3
echo

#Recieve user input (on type of game mode)
read -p 'WHAT USER MODE WILL YOU CHOOSE TO PLAY IN (EASY/HARD) "TYPE AND PRESS ENTER" : ' user_input
echo
read -p 'ENTER NAME: ' name
echo

#Text transform user input to uppercase
uppercase="${user_input^^}"
name_upper="${name^^}"

#User mode confirmation message
echo "USER MODE SELECTED: $uppercase"
echo "USER NAME: $name_upper"
echo

while [[ $user_attempt -le 9 && $uppercase == $for_easy_mode ]]
do
	echo "YOU HAVE $for_easy_attempt ATTEMPTS REMAINING"
	echo
	read -p 'MAKE A GUESS: ' easy_guess
	if [ $easy_guess -eq $secret_number ]; then
		echo "CONGRATULATIONS $name_upper! YOU GUESSED THE RIGHT NUMBER"
		break
	else
		echo "YOUR GUESS IS WRONG, TRY AGAIN: "
		((for_easy_attempt--))
	fi
	((user_attempt++))
done

if [ $user_attempt -gt 9 ]; then
	echo "YOU HAVE USED UP YOUR GUESSES, PRESS CTRL+Z AND ./NUMBER_GAME.SH TO RESTART THE GAME"
fi

while [[ $user_attempt -le 5 && $uppercase == $for_hard_mode ]]
do
	echo "YOU HAVE $for_hard_attempt ATTEMPTS REMAINING"
	echo
	read -p 'MAKE A GUESS: ' hard_guess
	if [ $hard_guess -eq $sceret_number ]; then
		echo "CONGRATULATIONS $name_upper! YOU GUESSED THE RIGHT NUMBER"
		break
	else
		echo "YOUR GUESS IS WRONG, TRY AGAIN: "
		((for_hard_attempt--))
	fi
	((user_attempt++))
done

if [ $user_attempt -gt 5 ]; then
	echo "YOU HAVE USED UP YOUR GUESSES, PRESS CTRL+Z AND ./NUMBER_GAME.SH TO RESTART THE GAME"
fi





























		
