#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then 
    echo "$R script is failed please run it with root access $N"
    exit 1
fi

validation() {
    if [ $1 -ne 0 ]; then
        echo "$R $2 installation got failed...$N"
    else 
        echo "$G $2 installation completed successfully....$N"
    fi
}

dnf install mysql-server -y 
validation $? "MYSQL"

dnf install python -y 
validation $? "python"