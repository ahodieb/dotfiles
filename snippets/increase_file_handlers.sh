#!/usr/bin/env bash

# Increase the amount of max open files
# Usually needed for nodjs!! :D
echo "kern.maxfiles=20480" >> /etc/sysctl.conf
echo "kern.maxfilesperproc=18000" >> /etc/sysctl.conf
