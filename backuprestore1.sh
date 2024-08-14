#! /usr/bin/bash
echo " You Choose Backup and Restore "
echo " Press ==> 1 to Choose Backup "
echo " Press ==> 2 to Choose Restore "
read backuprestore
## Open Backup Or  Restore
case $backuprestore in
	1)
		echo " You Choose Backup "
		echo " Enter Path of File/Directory "
		read path
		echo " Please choose type of Backup "
                echo " Press ==> 1 to Choose tar type "
                echo " Press ==> 2 to Choose gzip type "
                echo " Press ==> 3 to Choose xz type "
		read type
		## Open Type of backup
		case $type in 
			1)
				echo " You Choose tar type "
				tar -cvf archive.tar $path
				echo " File Archived by tar "
				;;
			2)
				echo " You Choose gzip type "
			        gzip $path	
                               ##tar -zcvf archive.tar.gz $path
				echo " File Archived by gzip "
				;;
			3)
				echo " You Choose xz type "
				xz $path
				echo " File Archived by xz type "
				;;
			*)
				;;
		esac
		######## Close type of Backup
		;;
		## copy 1
	2)
		echo " You Choose Restore "
	        echo " Enter Path of File/Directory "
		read path
      	        echo " Please choose type of Restore "
                echo " Press ==> 1 to Choose tar type "
                echo " Press ==> 2 to Choose gzip type "
                echo " Press ==> 3 to Choose xz type "
	        read type
		## Open Type of restore
		case $type in 
			1)
				echo " You Choose tar type "
				tar -xvf archive.tar $path
				echo " File Restore by tar "
				;;
			2)
				echo " You Choose gzip type "
			        gzip -d $path.gz
                               ##tar -zcvf archive.tar.gz $path
				echo " File Restore by gzip "
				;;
			3)
				echo " You Choose xz type "
				xz -d -v $path.xz
				echo " File Restore by xz type "
				;;
			*)
				;;
		esac
		######## Close type of Restore
		;;

	*)
		;;
esac
##copy2
#### Close Backup or Restore 
