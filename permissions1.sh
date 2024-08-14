#! /usr/bin/bash
 
#is_number() {

#if [[ "$1" =~ ^[0-2]+$ ]]; then
#	return 0
#else
#	return 1
#fi
#}
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


                         ################# User Permission ####################






		
		
		
		####################################################
			

		*)
		########## Close UseR Or Group 
			"Error please try again"
			;;
	esac

	;;
  

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
