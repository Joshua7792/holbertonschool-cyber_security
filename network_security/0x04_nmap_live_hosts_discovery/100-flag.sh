#!/bin/bash
# Script to scan UDP ports 200-300, detect service versions, and extract the flag

# Perform the UDP scan with version detection
sudo nmap -sV -p200-300 --open 10.42.250.32 | grep -i "udp" | grep -i "version" > 100-flag.txt