#!/usr/bin/bash

#Declarations
current_year=2023
echo "-----------------------"
echo "ZOBI AGE PREDICTOR APP"
echo "-----------------------"
echo
#User-Input Section
read -sp "Please Enter Your Birth Year: " birth_year
echo
echo "Hey! No secrets here! You were born in the year $birth_year"
sleep 2
echo "If that is true, you should be.."
sleep 3
echo
echo "Thinking..."
sleep 3

age=$((current_year - birth_year))

#Conditionals
if [[ $birth_year -le $current_year ]]; then
echo "$age years old"
else 
echo "Are you an alien?"
fi
#End
