#!/bin/bash

getUserName(){
    read -p "Hello! What is your name? " name
    echo "Nice to meet you" $name"!"
    echo -e "\nThis is python! Say hello python!"
    python3 sayHello.py $name
}

userMenu() {
    echo -e "1. Name"
    echo -e "2. My other name"
    echo -e "3. Python"
    echo -e "4. Exit"

    while [ "$choice" != "4" ]; do
    read -p "Enter your choice: " choice
    
    if [ $choice -eq 1 ]; then
        echo "My name is Cayson"
    fi
    if [ $choice -eq 2 ]; then
        echo "My other name is Bob"
    fi
    if [ $choice -eq 3 ]; then
        getUserName
    fi

    done
}

userMenu