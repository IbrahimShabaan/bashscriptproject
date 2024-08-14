#! /usr/bin/bash
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

