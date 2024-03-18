


#MYCWD="`pwd`"
myfile='../Automate_or_die_Linkedin_catalog.txt'
touch $myfile
outputfile='output_download_url_script.txt'
touch $myfile


# to show how many lines in the mac address file
mylines=`wc -l $myfile | awk '{print $1}'`
echo "__$mylines__"
        echo -e "\n\n============++++++==============|> This file has $mylines lines <|============++++++==============\n\n"



# function to split the file
split() {
        echo -e "\n\n%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n\n"
}
#To know which how many lines in the shell
for_index=`wc -l $myfile | awk '{print $1}'`
START=1
END=$for_index

for i in $(eval echo "{$START..$END}")
 do

##	 set -x
         split
        my_url=`cat  $myfile | grep -B1 -E 'https:\/\/[^ "]+$' | head -$i | tail -1`
        sleep 1
        # core command
        #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#	 cat ../Automate_or_die_Linkedin_catalog.txt | grep -B1 -E 'https:\/\/[^ "]+$'
	echo $my_url
	if my_url == ""
	then
		#return 0
		exit
	else
		continue 
	fi
        #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#        set +x
 done
