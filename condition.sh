#!/bin/bash
# NUMBER=$1
# if [ $NUMBER -lt 10 ]; then 
#     echo "Given number $NUMBER is less than 10"
# elif [ $NUMBER -eq 10 ]; then
#     echo "Given number $NUMBER is equal than 10"
# else
#      echo "Given number is greater than 10"
# fi

NUMBER=$1
if [ $(($NUMBER % 2)) -eq 0 ]; then 
    echo "Given number $NUMBER is even number"
else
    echo "Given number $NUMBER is odd number"
fi