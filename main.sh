#!/bin/bash

getUserName(){
    read -p "Hello! What is your name? " name
    echo "Nice to meet you" $name "!"
}

sayHelloPython(){
    echo "This is python! Say hello python!"
    python3 sayHello.py $name
}
getUserName
sayHelloPython