#!/bin/bash

echo "Checking port 8080."
if [ $(sudo netstat -ntulp | grep -c 8080) -eq 1 ]; then
    echo "The port is occupied. Killing the process."
    if [ $(which lsof | grep -c usr/bin/lsof) -eq 0 ]; then
        echo "Downloading the required package."
        sudo apt install lsof
    fi
    sudo kill -9 `sudo lsof -t -i:8080`
fi

echo "Running the application."
java -jar *.jar &>/dev/null &
sleep 20

echo "Checking if the application is working."
if [ $(sudo netstat -ntulp | grep -c java) -eq 1 ]; then
    echo "The application is running!"
else
    echo "The application is not running!"
    exit 1
fi
