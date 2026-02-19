#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

log_folder="/var/log/shell-script"
script_name=$(echo $0 | cut -d "." -f1)
log_file="$log_folder/$script_name.log"
mkdir -p $log_folder
echo "script execution started at: $(date)" | tee -a $log_file

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then 
    echo -e "$R script is failed please run it with root access $N" | tee -a $log_file 
    exit 1
fi

validation() {
    if [ $1 -ne 0 ]; then
        echo -e "$R $2 installation got failed...$N" | tee -a $log_file 
    else 
        echo -e "$G $2 installation completed successfully....$N" | tee -a $log_file 
    fi
}

dnf list installed mysql &>>$log_file
if [ $? -ne 0 ]; then 
    dnf install mysql-server -y &>>$log_file
    validation $? "MYSQL"
else 
    echo -e "$Y MYSQL already exists.... Skipping....$N" | tee -a $log_file 
fi

dnf list installed python &>>$log_file
if [ $? -ne 0 ]; then
    dnf install python -y &>>$log_file
    validation $? "python"
else 
    echo "$Y Python already exists.... Skipping.....$N" | tee -a $log_file 
fi
echo "script execution ended at: $(date)" | tee -a $log_file
