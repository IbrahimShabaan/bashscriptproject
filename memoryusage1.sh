#! /usr/bin/bash
echo " Use Choose Memory Usage Monitring "
echo " Press 1 ==> to choose Memory Usage Statics "
echo " Press 2 ==> to choose Avaliable Memory , Used Memory , Free Memory "


read number
## Open Memory Process
case $number in 
	1)	
		ps aux | awk '{print $1, $2, $4}'
		;;
	2)
    	        free -h | awk 'NR==1,NR==2{print $3, $2, $6}'
		;;
	*)
		;;
esac
## close Memory Process
