#!/bin/bash
echo "allow all arguments passed to the script:$@"
echo "allow all arguments passed to the script:$*"
echo "script_name:$0"
echo "CURRENT DIRECTORY:$PWD"
echo "user of the script:$USER"
echo "home directory of user:$HOME"
echo "PID for current script:$$"
sleep 10&
echo "PID for last executed script:$!"