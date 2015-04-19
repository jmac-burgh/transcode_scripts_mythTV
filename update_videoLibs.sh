#!/bin/bash

export PATH=/bin:/usr/bin:/usr/sbin


#
#  script to update my xbmc video libs remotely
#

xbmcUserName="kodi" # xbmc username
xbmcPassword="your password" # xbmc password
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
