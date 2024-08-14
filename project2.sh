#! /usr/bin/bash

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


