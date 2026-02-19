#!/bin/bash
Start_time=$(date + %s)
sleep 10&
end_time=$(date + %s)
total_time=$(($end_time-$Start_time))
echo "Script executed in $total_time seconds"
