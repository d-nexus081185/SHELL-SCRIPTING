#!/usr/bin/bash

#Declarations
current_year=2023

#User-Input Section
read -p "Birth Year: " birth_year
age=$((current_year - birth_year))

#Conditionals
if [[ $birth_year -le $current_year ]]; then
echo "You are $age years old"
else 
echo "Are you an alien?"
fi
#End
