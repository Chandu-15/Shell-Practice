#!/bin/bash
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then 
    echo "script is failed please run it with root access"
    exit 1
fi

validation() {
    if [ $1 -ne 0 ]; then
        echo "$2 installation got failed..."
    else 
        echo "$2 installation completed successfully"
    fi
}

dnf install mysql-server -y 
validation $? "MYSQL"

dnf install python -y 
validation $? "python"