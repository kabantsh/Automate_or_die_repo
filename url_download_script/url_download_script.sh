


myfile='../Automate_or_die_Linkedin_catalog.txt'
touch $myfile
outputfile='output_download_url_script.txt'
touch $myfile


# to show how many lines in the mac address file
mylines=`wc -l $myfile | awk '{print $1}'`
echo "__$mylines__"
        echo -e "\n\n============++++++==============|> This folder has $mylines lines <|============++++++==============\n\n"



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

         split
        my_url=`cat  $myfile | head -$i | tail -1`
#        set -x
        sleep 1
          # core command
        #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	 cat ../Automate_or_die_Linkedin_catalog.txt | grep -B1 -E 'https:\/\/[^ "]+$'
        #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
         if [ $? == '0'  ]
         then
                mac_is_up
                echo -e "$my_url\tThis device is starting now" >> $outputfile
        else
               echo -e "\n\n\n\nInvalid Syntax\n\n\n\n"
        fi

#        set +x
 done
