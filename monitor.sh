#!/bin/bash

export SSLKEYLOGFILE=/home/$USER/$FOLDER/sslkeys
/usr/bin/firefox &
sudo tcpdump -i enp0s3 host $HOSTNAME -w capture.pcap -G 600 -C 1



#Line 1: is how you start any scripting file with the "She bang"
#Line 3, we are exporting the SSL Key Log file to the desired folder in the home/$USER, to whatever folder you created. Make sure this directory made under the user has rwx.
#Line 4, is the prompt to start your web browser, in this example I have firefox, we then use "&" to execute this prompt and the one that follows on line 5.
#Line5, this script is running on a VM using Ubuntu for for the interface option -i, I used the local network, but you can scan all interfaceses prior using -D when using tcpdump.
#So the network it is scanning is subject to change and you can go under the Network settings in the Virtual Box, network setting option.
#This basic script can be used to log the captured data packets from whatever website desired, logging packets either every 10 minutes or every 1MB (with options listed below).
#The option -G, specifies the time in seconds. Option -C, specifies the size of the files in millions of bytes(above 1=1,000,000 or 1MB).
#host option is simple as after you prompt the desired IP. -w option, tells where to write and send the captured files from the tcpdump in form of pcap files. This file(s) can 
#be opened in Wireshark to further examine.
