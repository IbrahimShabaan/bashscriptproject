#! /usr/bin/bash
echo " Use Choose Disk Space Usage Monitring "
echo " Press 1 ==> to choose Disk Space Usage Statics "
echo " Press 2 ==> to choose Total Disk Space "
echo " Press 3 ==> to choose Used Space of File/Directory "
echo " Press 4 ==> to choose Avaliable Space of File/Directory "

total_space=$(df -h --total | grep 'total' | awk '{print $2}')

read number
## Open Disk Space Process
case $number in 
	1)	
		df -k
		;;
	2)
    	       echo " The Total Disk Space is : $total_space"
		;;
	3)
		echo " Please Enter File or Directory "
		read path
		echo " The Used Space of File/Directory is : "
		du -sh $path
		;;
	4)
		echo " Please Enter File or Directory "
		read path
		echo " Avaliable Space of File/Directory Is : "
		df -h $path | awk 'NR==2 {print $4}'

		;;
	*)
		echo " Error Please Try Again "
		;;
esac
## close Disk Space Process
