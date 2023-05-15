#!/bin/bash

getUserName(){
    read -p "Hello! What is your name? " name
    echo "Nice to meet you" $name"!"
    echo -e "\nThis is python! Say hello python!"
    python3 sayHello.py $name
}

userMenu() {
    echo -e "1. Name"
    echo -e "2. Random number game"
    echo -e "3. Python"
    echo -e "4. Exit"

    while [ "$choice" != "4" ]; do
    read -p "Enter your choice: " choice
    
    if [ $choice -eq 1 ]; then
        echo "My name is Cayson"
    fi
    if [ $choice -eq 2 ]; then
        randomNumberGuessing
    fi
    if [ $choice -eq 3 ]; then
        getUserName
    fi

    done
}

randomNumberGuessing(){
    secret_number=$((RANDOM % 100 + 1))

    echo "Welcome to the number guessing game!"

    while true; do
        read -p "Guess a number between 1 and 100: " guess

        # Check if the input is a valid number
        if [[ ! $guess =~ ^[0-9]+$ ]]; then
            echo "Invalid input. Please enter a valid number."
            continue
        fi

        # Compare the guess with the secret number
        if (( guess < secret_number )); then
            echo "Too low! Try again."
        elif (( guess > secret_number )); then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed the correct number."
            break
        fi
    done

    echo "Thank you for playing the game!"
}

userMenu
