#!/bin/bash

#Variable declaration
counter=1

for_easy_mode=EASY
for_hard_mode=HARD

for_easy_attempt=9
for_hard_attempt=5

secret_number=10


#Start

#Introduce the game to user(s)
echo "THIS GAME IS A GUESSING GAME; USER IS REQUIRED TO GUESS A NUMBER BETWEEN 1-10."
sleep 3
echo

#Recieve user input (on type of game mode)
read -sp 'WHAT USER MODE WILL YOU CHOOSE TO PLAY IN (EASY/HARD) "TYPE AND PRESS ENTER" : ' user_input
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

while [[ $counter -le 10 && $uppercase == $for_easy_mode ]]
do
	echo "YOU HAVE $for_easy_attempt ATTEMPTS REMAINING"
	echo
	read -p 'MAKE A GUESS: ' user_guess

	#while [[ $easy_guess -eq 0 && $easy_guess -gt 10 ]]
	#do
		#echo "YOUR GUESS IS OUT OF GUESS RANGE"
		#read -p 'MAKE A GUESS: ' easy_guess
	#done
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
	break
fi

while [[ $counter -le 5 && $uppercase == $for_hard_mode ]]
do
	echo "YOU HAVE $for_hard_attempt ATTEMPTS REMAINING"
	echo
	read -p 'MAKE A GUESS: ' user_hard_guess
	if [ $user_hard_guess -eq $sceret_number ];then
		echo "CONGRATULATIONS $name_upper! YOU GUESSED THE RIGHT NUMBER"
		break
	else
		echo "YOUR GUESS IS WRONG, TRY AGAIN: "
		((for_hard_attempt--))
	fi
	((counter++))
done

if [ $counter -gt 5 ];then
	echo "YOU HAVE USED UP YOUR GUESSES"
	break
fi





























		
