#!/bin/bash
INFO_FILE=info.txt

hostname=$(hostname)
cpus=$(getconf _NPROCESSORS_ONLN)
memory=$(totalk=$(awk '/^MemTotal:/{print $2}' /proc/meminfo) ; echo $totalk)
disk_size=$(df -h --total | command grep total | head -c-3 && echo '')

echo Hostname: $hostname > $INFO_FILE
echo CPU count: $cpus >> $INFO_FILE
echo Total RAM: $memory >> $INFO_FILE
echo Disk $disk_size >> $INFO_FILE
