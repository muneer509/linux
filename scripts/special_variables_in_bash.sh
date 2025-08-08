#!/bin/bash
echo "all veriables passed to the script: $@"
echo "Number of variables passed to the script:$#"
echo " Script name is: $0"
echo " Current working directory is: $PWD"
echo "home directory of a current user: $HOME"
echo "PID of the script excuting now: $$"
sleep 100 &
echo " Process ID of last background command: $!"