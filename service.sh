#!/bin/bash
#set -x
services="obs"
for i in $services
do
temp=`sudo service $i status`
if [ $? -ne 0 ]
then
echo "$i service is stopped please take some action"
fi
done
