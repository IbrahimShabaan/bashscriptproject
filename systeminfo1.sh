#! /usr/bin/bash
osfunction() {
echo " Operating System information is : "
uname -a
}
hostnamefunction() {
echo " Host Name Is : "
hostname
}
uptimefunction() {
echo " System Uptime : "
uptime
}
datetimefunction() {
echo " Date time is : "
date
}
echo " Please Select The Information you want to display  "
echo " Press 1 ==> Operating System "
echo " Press 2 ==> Host Name "
echo " Press 3 ==> Uptime "
echo " Press 4 ==> Date Time "
read -p " Please Enter Number From 1 to 4 : " choice
case $choice in
	1)
		osfunction
		;;
	2)
		hostnamefunction
		;;
	3)
		uptimefunction
		;;
	4)
		datetimefunction
		;;
	*)
		echo " Error , Please Enter Number From 1 to 4 "
		;;
esac
### copy sysinfo
