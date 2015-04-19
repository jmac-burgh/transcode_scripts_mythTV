#!/bin/bash

export PATH=/bin:/usr/bin:/usr/sbin


#
#  script to update my xbmc video libs remotely
#

xbmcUserName="kodi" # xbmc username
xbmcPassword="apollo13" # xbmc password
#xbmcIpAddress="192.168.0.16" # ip address of the machine that is running xbmc
xbmc_hosts=$1

xbmcPort="8080" # the port that xbmc is listening on



#
# check hosts file input
#

if [ "$#" -ne 1 ] || [ ! -f $xbmc_hosts ]; then
	echo Please make sure you entered in a valid xbmc host file
	exit 1
fi

cat $xbmc_hosts|while read xbmcIpAddress; do
#	echo $xbmcIpAddress;echo;echo

	/usr/bin/curl --data-binary '{ "jsonrpc": "2.0", "method": "VideoLibrary.Scan", "id": "mybash"}' -H 'content-type: application/json;' $xbmcUserName:$xbmcPassword@$xbmcIpAddress:$xbmcPort/jsonrpc

done

#
# lines that can be used to automate xbmc video library refresh to automatically add/delete items in video library using json
# add any xbmc clients with a video library in the variable definition section above then uncomment lines below
#

# clean the xbmc video library if any links were removed
#if [ "$linkDeleted" == "true" ]; then
#    curl --data-binary '{ "jsonrpc": "2.0", "method": "VideoLibrary.Clean", "id": "mybash"}' -H 'content-type: application/json;' $xbmcUserName:$xbmcPassword@$xbmcIpAddress:$xbmcPort/jsonrpc
#    $(log $logFile "library clean request issued to xbmc")
#    $(log $logFile "sleeping for 3 minutes while library is cleaned")
#    sleep 3m
#fi


# update xbmc video library if any hard links were added.
#if [ "$hardLinkCreated" == "true" ]; then
#if [ "$hardLinkCreated" == "$hardLinkCreated" ]; then
#    curl --data-binary '{ "jsonrpc": "2.0", "method": "VideoLibrary.Scan", "id": "mybash"}' -H 'content-type: application/json;' $xbmcUserName:$xbmcPassword@$xbmcIpAddress:$xbmcPort/jsonrpc
#    $(log $logFile "library scan request issued to xbmc")
#    $(log $logFile "sleeping for 1 minute while library scans")
#    sleep 1m
#fi

