#!/bin/bash

# Simple scrit to modify the URI for all scripts in this directory to 
# map to your TrueFort appliance ID

# usage: ./localizer.sh https://FQDN:port
# 	 ./localizer.sh https://tfdemo1.us.truefort.net:8090

if [ -z "$1" ]
then
	echo "Incorrect number of parameters"
	exit 1
fi

parse $1 to make sure it conforms to spec https://URI:port

for file in `pwd`
	if $file = this file; ignore
	us ls not pwd to create list
for
 all other files replace static URL ith $1

error handling
	no $1
	$1 doesn't parse
	permissions on files
