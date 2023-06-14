#!/usr/bin/bash

#Declarations
current_year=2023

#User-Input Section
read -sp "Please Enter Your Birth Year: " birth_year
echo
age=$((current_year - birth_year))
echo "You were born in the year $birth_year"
sleep 2
echo "If that is true, you should be.."
echo
sleep 3
echo "Calculating..."
sleep 3
#Conditionals
if [[ $birth_year -le $current_year ]]; then
echo "$age years old"
else 
echo "Are you an alien?"
fi
#End
