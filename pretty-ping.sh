#!/bin/bash
RED='\033[0;31m'
green='\033[0;32m'
RIP=    







echo "IP to ping"
read IP
while :
do
	
	if ping $IP -c 3 -w 15 |grep -q "100% packet loss"; then
		clear
		echo "$IP is currently"
		echo -ne "${RED} 
		
	              ██████      
		  ████      ████  
		  ██          ██  
		██              ██
		██    DEAD      ██
		██              ██
		  ██          ██  
		  ████      ████  
		      ██████\r"
	else
		clear
		echo "$IP is currently"
		echo -ne "${green} 
		
	              ██████      
		  ████      ████  
		  ██          ██  
		██              ██
		██    ALIVE     ██
		██              ██
		  ██          ██  
		  ████      ████  
		      ██████\r"
	fi

done
