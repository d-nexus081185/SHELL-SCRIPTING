#!/bin/bash

#Start
echo "SIMPLE NAIRA/DOLLAR CONVERTER"

#Declare base_currency
base_naira=NGN
base_dollar=USD

#Get user input
read -p 'What currency do you want to convert(USD/NGN):  ' quote_currency

uppercase="${quote_currency^^}"

#Compare user input to base currency
if [[ $uppercase == $base_naira ]]; then
	base=745
	echo "You are about to convert NGN to USD"
	sleep 2
	read -p 'Enter amount: ' naira
	result=$((naira/base))
	echo "The exchange rate is: $result"
else
	echo "You are about to convert USD to NGN"
	sleep 2
	read -p 'Enter amount: ' dollar
	result=$((dollar * 745))
	echo "The exchange rate is: $result"
fi

#end
