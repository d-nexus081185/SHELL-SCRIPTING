#!/bin/bash

# Read the input from the user
read -p "Enter text: " input

# Convert the input to uppercase using parameter expansion
uppercase="${input^^}"

# Print the uppercase text
echo "Uppercase: $uppercase"

