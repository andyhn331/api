#!/bin/bash

# Simple scrit to modify the URI for all scripts in this directory to 
# map to your TrueFort appliance ID

# usage: ./localizer.sh FQDN port
# 	 ./localizer.sh tfdemo2.us.truefort.net 8090


if [ -z "$2" ]
then
	echo "Incorrect number of parameters, requires FQDN PORT"
	exit 1
fi

echo $1
echo $2
mkdir old

# is it resolvable
if nslookup $1 1> /dev/null ; then
	echo "host $1 resolves"
else
	echo "$1 does not resolve"
	exit 1
fi

for file in `ls | egrep -v "README|localizer|old"`
do
	echo parsing $file
	sed "s/tfdemo2.us.truefort.net:8090/$1:$2/g" $file >$file.local
	mv $file ./old/$file
done

