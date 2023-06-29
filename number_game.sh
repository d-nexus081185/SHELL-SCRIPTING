#!/bin/bash

number_of_counter=1

#The Secret Number
secret_number=63

#Start
echo "Welcome to the number guessing game!"
sleep 2
echo "In this game, you will choose a number between 1 and 100"
sleep 2
#Difficulty mode
valid_easy=EASY
valid_hard=HARD

#Remaining attempts in each mode
remaining_mode_easy=10
remaining_mode_hard=5

read -p 'First, Choose a difficulty Level (Easy/Hard): ' user_input

#Transform user input to uppercase
uppercase="${user_input^^}"

echo "User difficulty level is set to: $uppercase!"
sleep 2
echo "lets begin!"
sleep 2
while [[ $number_of_counter -le 10 && $uppercase == $valid_easy ]]
do
	echo "You have $remaining_mode_easy guess attempts"
	read -p 'Guess a number: ' easy_guess
	if [ $easy_guess -eq $secret_number ]; then
		echo "Congratulations! you guessed the correct number"
		break
	else
		echo "Incorrect guess, Try again: "
		((remaining_mode_easy--))
	fi
	((number_of_counter++))
	
done
if [ $number_of_counter -gt 10 ];then
	echo "You have run out of number of guesses in easy mode"
fi
while [[ $number_of_counter -le 5 && $uppercase == $valid_hard ]]
do
	echo "You have $remaining_mode_hard guess attempts"
	read -p 'Guess a number: ' hard_guess
	if [ $hard_guess -eq $secret_number ]; then
		echo "Congratulations! you guessed the correct number"
		break
	else
		echo "Incorrect guess, Try again: "
		((remaining_mode_hard--))
	fi
	((number_of_counter++))
done

if [ $number_of_counter -gt 5 ]; then
	echo "You have run out of number of guesses in hard mode"
fi











