#!/bin/bash

echo "Hostname:" 
hostname

echo "Operating System:" 
lsb_release -d

echo "System Uptime:" 
uptime

echo "Kernel Version:" 
uname -r

echo "CPU Info:" 
lscpu | grep "Model name"

echo "Memory Info:" 
free -h

echo "Network Info:"
ip addr show | grep "inet" 
ip addr show | grep "link/ether"

echo "Filesystem Utilization:"
df -h

echo "Last 5 Errors in Syslog:"
grep -i "error" /var/log/syslog | tail -n 5
