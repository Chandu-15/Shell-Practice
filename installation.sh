#!/bin/bash
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then 
    echo "script is failed please run it with root access"
    exit 1
fi
dnf install mysql-server -y 
if [ $? -ne 0 ]; then
    echo "Mysql installation got failed..."
else 
    echo "Mysql installation completed successfully"

dnf install python -y 
if [ $? -ne 0 ]; then
    echo "python installation got failed..."
else 
    echo "python installation completed successfully"

