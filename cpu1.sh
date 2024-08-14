#! /usr/bin/bash
echo " Use Choose Cpu Usage Monitring "
echo " Press 1 ==> to choose CPU Usage Statics "
echo " Press 2 ==> to choose Current CPU Percentege "
read number
## Open CPU Process
case $number in 
	1)
		mpstat
		;;
	2)
		ps aux | awk '{print $1, $2, $3, $11}'
	       ## htop | awk '/[0-9]/ {print $1, $2, $9}' 
		;;
	*)
		;;
esac
## close CPU Process
