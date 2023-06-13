#!/bin/bash

# Default password
default_password="12345"

# Function to prompt user for new password
prompt_password() {
    read -sp "Enter new password: " new_password
    echo
    read -sp "Confirm new password: " confirm_password
    echo
}

# Function to validate password complexity
validate_password() {
    local password="$1"

    # Check for minimum length of 6 characters
    if [[ ${#password} -lt 6 ]]; then
        echo "Password should be at least 6 characters long."
        return 1
    fi

    # Add more complexity checks as needed, such as uppercase, lowercase, digits, special characters

    return 0
}

# Function to authenticate user
authenticate_user() {
    local username="$1"
    local password="$2"

    # Check if the default password is being used
    if [[ "$password" == "$default_password" ]]; then
        echo "Welcome, $username! It appears you are using the default password."
        prompt_password

        # Validate the new password
        if validate_password "$new_password"; then
            # Update the password and store it securely
            echo "$username:$new_password" | chpasswd --encrypted
            echo "Password changed successfully."
        else
            echo "Password change failed. Please try again with a stronger password."
        fi
    else
        # Authenticate against the stored password
        if echo "$username:$password" | chpasswd --encrypted --status; then
            echo "Authentication successful. Welcome, $username!"
        else
            echo "Authentication failed. Please try again."
        fi
    fi
}

# Prompt for username and password
read -p "Username: " username
read -sp "Password: " password
echo

# Authenticate the user
authenticate_user "$username" "$password"

