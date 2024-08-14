#! /usr/bin/bash
echo " Please Choose Number From 1 to 3  "
echo " Press ==> 1 to Choose File Managment "
echo " Press ==> 2 to Choose System Informantion "
echo " Press ==> 3 to Choose Report "
read menu
####### Open Menu ####
case $menu in
	1)
		echo " You Choose File Managment "
	echo " Press ==> 0  to back "	
	echo " Press ==> 1  to choose File/Directory Functions "
	echo " Press ==> 2  to choose Search Functions  "
	echo " Press ==> 3  to choose Permissions Managment "
	echo " Press ==> 4  to choose Backup and Restore Functions "
	## open filemangment
	read filemangment
	case $filemangment in
		0)
			echo "back"
			;;
		1)
			echo "You Choose File/Directory Functions "
			################################### File Directory ######
                      
read -p "Hello, What is Your Name?  " name
echo "Hello Dear $name "
echo "What do you Need $name ?"
read -p " Create / Copy / Move / Rename / Delete  " functions 
functions2=$(echo "$functions" | tr '[:upper:]' '[:lower:]')
case $functions2 in
	create)
		echo "you Choose Create "
		read -p "Do you want to create Folder Or File  " folderorfile
		folderorfile2=$(echo "$folderorfile" | tr '[:upper:]' '[:lower:]')
		if [ "$folderorfile2" == "file" ] || [ "$folderorfile2" == "folder" ]; then
		echo "You Choose :  $folderorfile2 "	
		read -p "Please Enter Name of $folderorfile2 "  filename
		if [ "$folderorfile2" == "file" ]; then
			touch "$filename"
			echo "The File is Create Succesfully "
		elif
			[ "$folderorfile2" == "folder" ]; then
			mkdir "$filename"
			echo "The Folder Is Create Succesfully "
		else
			echo "Error Please Try Again "
		fi
	else
		echo "Error Please Try Again"
		fi
		;;


	copy)
		echo "You Choose Copy "
		read -p "Do you want to Copy Folder Or File  " folderorfile
		folderorfile2=$(echo "$folderorfile" | tr '[:upper:]' '[:lower:]')
		if [ "$folderorfile2" == "file" ] || [ "$folderorfile2" == "folder" ]; then
		echo "You Choose :  $folderorfile2 "	
		read -p "Please Enter Name of $folderorfile2 "  filename
		if [ "$folderorfile2" == "file" ] && [ -f "$filename" ]; then
		       	cp "$filename" "$filename.copy"
			echo "The File is Copy Succesfully "
		elif
			[ "$folderorfile2" == "folder" ] && [ -d "$filename" ]; then
			cp -r "$filename" "$filename.copy"
			echo "The Folder is Copy Succefully "
		else
			echo "Error Please Try Again "
		fi
	else
		echo "Error Please Try Again"
		fi
		
		;;
       move)    	
		echo "You Choose Move "
		read -p "Do you want to Move Folder Or File  " folderorfile
		folderorfile2=$(echo "$folderorfile" | tr '[:upper:]' '[:lower:]')
		if [ "$folderorfile2" == "file" ] || [ "$folderorfile2" == "folder" ]; then
		echo "You Choose :  $folderorfile2 "	
		read -p "Please Enter Name of $folderorfile2 "  filename
		read -p "Please Enter Path Name " pathname
		if [ "$folderorfile2" == "file" ] && [ -f "$filename" ]; then
		       	mv "$filename" "$pathname"
			echo "The File is Move Succesfully "
		elif
			[ "$folderorfile2" == "folder" ] && [ -d "$filename" ]; then
			mv  "$filename" "$pathname"
			echo "The Folder is Move Succefully "
		else
			echo "Error Please Try Again "
		fi
	else
		echo "Error Please Try Again"
		fi
		;;


	rename) 
		echo " you Choose Rename"
		read -p "Do you want to Rename Folder Or File  " folderorfile
		folderorfile2=$(echo "$folderorfile" | tr '[:upper:]' '[:lower:]')
		if [ "$folderorfile2" == "file" ] || [ "$folderorfile2" == "folder" ]; then
		echo "You Choose :  $folderorfile2 "
	# input = rename // current path = file name // new name??	
		read -p "Please Enter Name of $folderorfile2 "  filename
		read -p "Please Enter New Name : " newname
		if [ "$folderorfile2" == "file" ] && [ -f "$filename" ]; then
		       	mv "$filename" "$newname"
			echo "The File is Rename Succesfully "
		elif
			[ "$folderorfile2" == "folder" ] && [ -d "$filename" ]; then
			mv  "$filename" "$newname"
			echo "The Folder is Rename Succefully "
		else
			echo "Error Please Try Again "
		fi
	else
		echo "Error Please Try Again"
		fi

		;;
	delete)
		echo "you Choose Delete"
		read -p "Do you want to Delete Folder Or File  " folderorfile
		folderorfile2=$(echo "$folderorfile" | tr '[:upper:]' '[:lower:]')
		if [ "$folderorfile2" == "file" ] || [ "$folderorfile2" == "folder" ]; then
		echo "You Choose :  $folderorfile2 "	
		read -p "Please Enter Name of $folderorfile2 "  filename
		if [ "$folderorfile2" == "file" ]; then
			rm "$filename"
			echo "The File is Delete Succesfully "
		elif
			[ "$folderorfile2" == "folder" ]; then
			rm -r "$filename"
			echo "The Folder Is Delete Succesfully "
		else
			echo "Error Please Try Again "
		fi
	else
		echo "Error Please Try Again"
		fi
		;;

	*) 
		echo "error"
		;;
	esac



			######### Close File Directory Functions 
			;;
		2)
			echo " You Choose Search Functions "
			#################### Search Function
			is_number() {

if [[ "$1" =~ ^[0-4]+$ ]]; then
	return 0
else
	return 1
fi
}
echo  " What kind of Search do  you need?  "
echo " Press ==> 1 : Search by Name "
echo " Press ==> 2 : Search by Type "
echo " Press ==> 3 : Search by Modification Time "
echo " Press ==> 4 : Search by Size "
while true; do
read -p " Enter the Number From 1 to 4  Please " searchtype

case $searchtype in
	1)
		echo "You Choose Search by Name "
                read -p "Enter the Directory to Search " searchdir
		read -p "Please Enter File Name  " filename
		find "$searchdir" -type f -name "$filename" | while read -r file; do
		echo "File Is found  $filename : $file "
	done
	;;
  




	2)
		echo "You Choose Search by Type "
                read -p "Enter the Directory to Search " searchdir
		read -p "Please Enter File Type  " filetype
		find "$searchdir" -type f -name "*$filetype" | while read -r file; do
		echo "File type is   $filetype : $file "
	done
		;;


	3)
	        echo "You Choose Search by Modification Time "
                read -p "Enter the Directory to Search " searchdir
		read -p "Please Enter Number of Days  " filetime
		find "$searchdir" -type f -mtime -"$filetime" | while read -r file; do
		echo "File modified last  $filetime : $file "
	done
		;;

	4)
		echo "You Choose Search By Size "
                read -p "Enter the Directory to Search " searchdir
		read -p "Please Enter File Size  " filesize
		find "$searchdir" -type f -size "$filesize" | while read -r file; do
		echo "Files Size  :   $filesize : $file "
	done
		;;

	*)
	
		echo " Error "
		;;

esac
done

			
			


			#### Close search function
			;;
		3)
			echo " You Choose Permissions Managment "
	############### Permission Managment 	
                        echo  " You Choose Permission Managment   "
                        echo "Do You Want File Permission Or Owner Permissions ? "
                        echo " Press ==> 0 : to Back "
                        echo " Press ==> 1 : File Permission  "
                        echo " Press ==> 2 : Owner Permission  "
#while true; do
                        read -p " Enter the Number From 0 to 2  Please " number
########## OPen File Or Owner   ########
          case $number in
	1)
		echo "You Choose File Permission "
               ## read -p "Enter the Directory file " searchdir
	##	read -p "Please Enter File Name  " filename
		echo  " Do you Want User Permission Or Group Permission ?" 
		echo " Press 1 ==> to Choose User Permission "
		echo " Press 2 ==> to Choose Group Permission " 
		read userorgroup
		
	##	find "$searchdir" -type f -name "$filename" | while read -r file; do
	##	echo "File Is found  $filename : $file "
	##done
	# Open User Or Group In FIle Per
	case $userorgroup in
		1)
			echo "You Choose User Permission "
			read -p " Please Enter Path File/Directory " pathfileorfolder
			echo " Press 1 ==> to Read Permission "
			echo " press 2 ==> to Write Permission "
	                echo " Press 3 ==> to Execute  Permission "
	                echo " Press 4 ==> to Write and Execute Permission "
	                echo " Press 5 ==> to Write and Read Permission "
	                echo " Press 6 ==> to Execute and Read Permission "
	                echo " Press 7 ==> to Write Read Excute Permission "
                        read typepermission
			echo  " Add Permission Or Remove Permission " 
			echo " Press 1 ==> to Add"
			echo " Press 2 ==> Remove "
			read addorremove
			###### open add or remove per

			case $addorremove in
				1)
					echo "add"
		##### open add per 
                        case $typepermission in
				 1)
					 echo "You Choose Add Read Permission  " 
					 chmod u+r "$pathfileorfolder"
					 ;;
					 ##copy1
		 ##copy1
				 2)
                                         echo "You Choose Add Write Permission  " 
					 chmod u+w "$pathfileorfolder"
					 ;;
				 3)

	                                 echo "You Choose Add Execute Permission  " 
				         chmod u+x "$pathfileorfolder"
					 ;;
				 4)
                                         echo "You Choose Add Write and Execute Permission  " 
					 chmod u+wx "$pathfileorfolder"
					 ;;
				 5)
	                                 echo "You Choose Add Read and Write Permission  " 
				         chmod u+rw
					 ;;
				 6)

		                         echo "You Choose Add Read and Execute Permission  " 
			                 chmod u+rx "$pathfileorfolder"
					 ;;
				 7)
                                         echo "You Choose Add Full Access Permission  " 
					 chmod u+rwx "$pathfileorfolder"
					 ;;
				 *)
					 echo "Error" 
					 ;;
			 esac
			 ############## close add per 

################################# Type Add  Permission ###################################
					;;
				##copy2
	##copy2
				2)
					echo "remove"
                                        case $typepermission in
				 1)
					 echo "You Choose Remove Read Permission  " 
					 chmod u-r "$pathfileorfolder"
					 ;;
				 2)
                                         echo "You Choose Remove Write Permission  " 
					 chmod u-w "$pathfileorfolder"
					 ;;
				 3)

	                                 echo "You Choose Remove Execute Permission  " 
				         chmod u-x "$pathfileorfolder"
					 ;;
				 4)
                                         echo "You Choose Remove Write and Execute Permission  " 
					 chmod u-wx "$pathfileorfolder"
					 ;;
				 5)
	                                 echo "You Choose Remove Read and Write Permission  " 
				         chmod u-rw
					 ;;
				 6)

		                         echo "You Choose Remove Read and Execute Permission  " 
			                 chmod u-rx "$pathfileorfolder"
					 ;;
				 7)
                                         echo "You Choose Remove Full Access Permission  " 
					 chmod u-rwx "$pathfileorfolder"
					 ;;
				 *)
					 echo "Error" 
					 ;;
			 esac
 ################# cloese remove per
			 ############## Remove Permission
					;;
					##copy3
	##copy3
				*)
					echo "Error"
					;;

					##### close add or remove
			esac
			################# Add Or Remove ###########
                        		;;



                         ################# User Permission ####################



########### open group per 
		2)
			echo "You Choose Group Permission "
		################################################
			read -p " Please Enter Path File/Directory " pathfileorfolder
			echo " Press 1 ==> to Read Permission "
			echo " press 2 ==> to Write Permission "
	                echo " Press 3 ==> to Execute  Permission "
	                echo " Press 4 ==> to Write and Execute Permission "
	                echo " Press 5 ==> to Write and Read Permission "
	                echo " Press 6 ==> to Execute and Read Permission "
	                echo " Press 7 ==> to Write Read Excute Permission "
                        read typepermission
			echo  " Add Permission Or Remove Permission " 
			echo " Press 1 ==> to Add"
			echo " Press 2 ==> Remove "
			read addorremove
                      ##open  add or remove per 
			case $addorremove in
				1)
					echo "add"
					#### open add per
                        case $typepermission in
				### open type add per
				 1)
					 echo "You Choose Add Read Permission  " 
					 chmod g+r "$pathfileorfolder"
					 ;;
				 2)
                                         echo "You Choose Add Write Permission  " 
					 chmod g+w "$pathfileorfolder"
					 ;;
					 #### copy 4
	 #### copy 4
				 3)

	                                 echo "You Choose Add Execute Permission  " 
				         chmod g+x "$pathfileorfolder"
					 ;;
				 4)
                                         echo "You Choose Add Write and Execute Permission  " 
					 chmod g+wx "$pathfileorfolder"
					 ;;
				 5)
	                                 echo "You Choose Add Read and Write Permission  " 
				         chmod g+rw
					 ;;
				 6)

		                         echo "You Choose Add Read and Execute Permission  " 
			                 chmod g+rx "$pathfileorfolder"
					 ;;
				 7)
                                         echo "You Choose Add Full Access Permission  " 
					 chmod g+rwx "$pathfileorfolder"
					 ;;
				 *)
					 echo "Error" 
					 ;;
			 esac
			 ################# close type add per

################################# Type Add  Permission ###################################
					;;
					####### open rem per 
				2)
					echo "remove"
					############# open type of rem per
                                        case $typepermission in
				 1)
					 echo "You Choose Remove Read Permission  " 
					 chmod g-r "$pathfileorfolder"
					 ;;
				 2)
                                         echo "You Choose Remove Write Permission  " 
					 chmod g-w "$pathfileorfolder"
					 ;;
				 3)

	                                 echo "You Choose Remove Execute Permission  " 
				         chmod g-x "$pathfileorfolder"
					 ;;
					#### copy5
	#### copy5
				 4)
                                         echo "You Choose Remove Write and Execute Permission  " 
					 chmod g-wx "$pathfileorfolder"
					 ;;
				 5)
	                                 echo "You Choose Remove Read and Write Permission  " 
				         chmod g-rw
					 ;;
				 6)

		                         echo "You Choose Remove Read and Execute Permission  " 
			                 chmod g-rx "$pathfileorfolder"
					 ;;
				 7)
                                         echo "You Choose Remove Full Access Permission  " 
					 chmod g-rwx "$pathfileorfolder"
					 ;;
				 *)
					 echo "Error" 
					 ;;
			 esac
 
			 ############## Remove type  Permission
					;;
				*)
					echo "Error"
					;;
			esac
			############## close  REMOVE PER
			################# Add Or Remove ###########
                        		;;
 ######copy6
 ######copy6


                         ################# User Permission ####################






		
		
		
		####################################################
			

		*)
		########## Close UseR Or Group 
			"Error please try again"
			;;
	esac

	;;
  

### copy 7

### copy 7


	2)
		echo "You Choose Owner Permission  "
              echo " Press 1 ==> to change User Permission "
	      echo " Press 2 ==> to Change Group Permission "
	      read usergroupowner
	      case $usergroupowner in
		      1)
			      echo "You Choose Change User Owner Permission " 
			      echo "please enter path of File/Directory "
			      read path
			      echo " Please Enter New Owner "
			      read owner
			      sudo chown $owner "$path"
			      echo " Changed Successfully"
			      ;;
		      2)
			      echo " You Choose Change Group Owner Permission "
			      echo " Please Enter path of file /Directory "
			      read path
			      echo " Enter New Group Owner "
			      read owner
			      sudo chown :$owner "$path"
			      echo " Changed Successfully "
			      ;;

		      *)
			      echo " Error Owner Permission"
			      ;;
	      esac
	      ;;
esac
### copy 8

			############ Close Permission Managment
			
			;;

		4)
			echo " You Choose Backup and Restore Functions "
		################## Backup and Restore 
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






		############# Close backup and restore	
			;;
		*)
			echo " Error "
			;;
	esac
	
	## close file/dir  mangment
	
		;;
	2)
		echo " You Choose System Information "
	        echo " Press ==> 1 to choose System Information Display "
		echo " Press ==> 2 to choose Disk Space Monitoring "
		echo " Press ==> 3 to choose Memory Usage Monitoring "
		echo " Press ==> 4 to choose CPU Usage Monitoring"
		########## open Sysem Info 
		read systeminfo
		case $systeminfo in
			1)
				echo " You Choose System Info Display "
				##### System info
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

				## close system info
				;;
			2)
				echo " You Choose Disk Space Monitoring "
			
			############ Disk Space 
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






			## Disk Space 
			
				;;
			3)
				echo " You choose Memory Usage Monitoring "
				## Memory Usage 
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



				## close Memory usage 
				
				;;
			4)
				echo " You Choose CPU Usage Monitoring "
				## CPU usage
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


				##close cpu usage
				;;
			*)
				echo "Eroor "
				;;
		esac




### close System Info
		





		;;
	3)
		echo " You Choose Report "

		##### Report
# Define the output file path
OUTPUT_FILE="/home/report.txt"

# Get current date and time
DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')

# Collect system metrics
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/., *\([0-9.]\)%* id.*/\1/" | awk '{print 100 - $1}')
MEMORY_TOTAL=$(free -h | grep Mem: | awk '{print $2}')
MEMORY_USED=$(free -h | grep Mem: | awk '{print $3}')
MEMORY_FREE=$(free -h | grep Mem: | awk '{print $4}')
DISK_TOTAL=$(df -h / | grep / | awk '{print $2}')
DISK_USED=$(df -h / | grep / | awk '{print $3}')
DISK_FREE=$(df -h / | grep / | awk '{print $4}')


# Create the summary report
echo "System Metrics Report" > "$OUTPUT_FILE"
echo "Date and Time: $DATE_TIME" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "CPU Usage: $CPU_USAGE%" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "Memory Usage:" >> "$OUTPUT_FILE"
echo "  Total: $MEMORY_TOTAL" >> "$OUTPUT_FILE"
echo "  Used: $MEMORY_USED" >> "$OUTPUT_FILE"
echo "  Free: $MEMORY_FREE" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "Disk Usage:" >> "$OUTPUT_FILE"
echo "  Total: $DISK_TOTAL" >> "$OUTPUT_FILE"
echo "  Used: $DISK_USED" >> "$OUTPUT_FILE"
echo "  Free: $DISK_FREE" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "Report saved to $OUTPUT_FILE"



		## close Report

		;;
	*)
		echo " Error Please Choose Number from 1 to 3 "
		;;
esac
##### Close Menu 
