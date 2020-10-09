#!/bin/bash
: '
this si rubblish
this si rubblish
this si rubblish
this si rubblish
this si rubblish
this si rubblish '		#all of this is commented

cat << welcome 			#welcome is a delimiter.
Welcome to BASH
welcome

echo "Good morning everyone"


#count=10
######################################### IF loop#####################
# if [ $count -eq 10 -o $count -lt 10 ]
# then
# {
# 	echo "I am happy"
# }
# else
# 	{
# 		echo "slepep man"
# 	}
# fi



############################################  WHile loop  ###################
# while [[ $count -ge 0 ]]; do
# 	echo "$count"
# 	count=$((count-1 ))
# done
# echo -e "\n"


############################################  FOR loop  #################

# for (( i = 5; i < 10; i++ )); do
# 	echo "*"
# done

# echo -e "\n"

#############################################  For in  #########################

# for i in {10..20..2};do
# 	if [[ i -eq 14 ]]; then
# 		continue
# 	fi
# 	if [[ i -eq 20 ]]; then
# 		break
# 	fi
# 	echo $i
# done

############################################# INPUT  ###########################
# echo -e "\n"
# echo $1 $2 $3		#input some value as 3 arguments when executing the command.

############################################## ARRAY DEC #########################

# arr=($@)			#set the length of input as number of elements given as a input.


# echo ${arr[2]}		

# echo $#				#output the length of array


############################################### OUTPUT file line ##################

# while read line
# do
# 	echo $line
# done < "/root/bash_learning/youtube_bash/hello_bash.sh"

########################################## COmmand output to a file / error to another file ##

#ls -al 1>valid.txt 2>error.txt

########################################## PIPING script o/p to another ###############

# echo -e "\n"

# message="Good evening Mr.Bond"

# export message       #making the message variable available to all.

# ./secondscript.sh

############################################## STRING COMPARISON #######################
# echo "enter a string:"
# read st1				#store the input as st1


# echo "enter a second string:"
# read st2				#store the input as st2


# echo "the first string is $st1"
# echo "the second string is $st2"

# if [ "$st1" == "$st2" ]; then
# 	echo "strig is equal"
# else
# 		echo "string is not equal"
# fi


# echo ${st1^}				#first letter uppercase
# echo ${st1^^}				#Full upper case

########################################################  path variable  ########

# File_name="/root/bash_learning/youtube_bash/hello_bash.sh"

# cat $File_name

#########################################################  ARRAY  #################

# car=( "james" "aston" "martini" )

# echo "${car[2]}"
# echo "${!car[$@]}"
# echo "${#car[$@]}"		#length of an array

######################################################### FUNCTION ###############

# function my_function()
# {
# 	echo "My first function is $1"
# }

# my_function spectre

########################################################### Files and dir #############

# echo "enter the name of the directory:"
# read directory

# if [[ -d $directory ]]; then
# 	cd $directory
# 	touch test1
# fi

# if [[ -f test1 ]]; then
# 	echo "File exists"
# fi

################################################################ Reading from a file  ##########
###############problem
# echo "Enter the file name to read:"
# read filename

# if [[ -f $filename ]]; then
# 	while [[ IFS='' ]]; do
# 		read -r line
# 		 echo '$line'
# 		#statements
# 	done < $filename
# else
# 	echo "File doesn't exists"
# 	#statements
# fi

################################################################sending a email#################

##install ssmtp 
## alter the /etc/ssmtp/ssmtp.conf


################################################################# Curl download a file#####################

# url="http://ovh.net/files/1Mb.dat"

# curl $url > testimage

################################################################  PRofessional menus #############

# select car in maruthi toyota volvo rover skoda
# do
# 	echo "the list of cars are $car"
# done

###############################################################  OUTPUT in waiting time/detect keys ###########

# echo "Enter any key:"

# while [[ True ]]; do
# 	read -t 3 -n 1
# 	if [[ $? = 0 ]]; then
# 		echo " The script is terminated."
# 		exit 

# 	else
# 			echo "No key is entered"
# 	fi
# done

################################################################ FIle monitoring inotify ############
# download inotify-tools

# mkdir -p /temp/newfolder		#creating a file to be monitored.can be a existing a file as well.
# inotifywait -m /temp/newfolder

################################################################## GREP #########################################

# echo "Enter filnane to search text from"
# read filename

# if [[ -f $filename ]]; then
# 	echo "enter the text to search:"
# 	read word
# 	grep -i -v $word $filename 		# -i for case insensitivity, -n line number, -c count number of occurence.
# else 										#-v -output all lines without the word
# 	echo "File doesn't exist."
# fi

###################################################################  AWK  #################################
# awk is a scripting language on its own.

# echo "enter the filename to print from awk"
# read filename

# if [[ -f $filename ]]
# then 
# 	awk '/windows/{print $2}' $filename 	#print the second argurment from the lines containing windows init.
# 										#
# else
# 	echo "$filename doesn't exist"
# fi

###################################################################  SED  ##############################

# SED is used to manipulate files, searching,find and replace, insertion or deletion.

# echo "enter the filename to substitute using SED"
# read filename

# if [[ -f $filename ]]
# then 
# 	sed 's/i/I/g' $filename  > modified.txt #s-substitute i-find i I- replace with I, g- all i's. -i flag - to make changes and save in the current file itself.
# else
# 	echo "$filename doesn't exist."
# fi

##################################################################  Debug bash scripts ######################################

#bash -x ./hello_bash

####################################################################