#!/bin/bash

# --- 1. User-defined variables ---
# Declare and assign values to variables
MY_STRING="Hello, Shell Scripting!"
MY_NUMBER=42
TODAY_DATE=$(date) # Command substitution: stores the output of a command

# Access and print the variables
echo "--- User Variables ---"
echo "My string variable is: $MY_STRING"
echo "My number variable is: $MY_NUMBER"
echo "Today's date and time is: $TODAY_DATE"

# Reassign a variable
MY_STRING="Variables make scripts flexible."
echo "My updated string variable is: $MY_STRING"

# Using variables with other commands
SAMPLE_DIR=/etc
echo "Listing contents of $SAMPLE_DIR:"
ls -l "$SAMPLE_DIR" | head -n 5 # Use double quotes for safety

# --- 2. User Input ---
echo "--- User Input ---"
echo -n "Enter your name: "
read USER_NAME # Read user input into the USER_NAME variable
echo "Hello, $USER_NAME! Welcome to the script."

# --- 3. Arithmetic Operations ---
# Use $(()) for arithmetic calculations
NUM1=10
NUM2=5
SUM=$(($NUM1 + $NUM2))
echo "--- Arithmetic ---"
echo "$NUM1 + $NUM2 = $SUM"

# --- 4. Built-in/Special Variables ---
echo "--- Special Variables ---"
echo "The name of this script is: $0"
echo "The Process ID (PID) of this script is: $$"
echo "The exit status of the last command (echo command above) was: $?"
echo "Your username is: $USER"
echo "Your home directory is: $HOME"


