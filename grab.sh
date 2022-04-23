#!/bin/bash
while :
do
#Set title text to green
tput setaf 2;
#Output title text
echo "Utomhustemperatur"
#Add a space for fancies
echo ""
#Set output value color to cyan
tput setaf 6;
#Grab the HTML table and pick out the desired value.
curl --silent https://<path to HTML table> | grep -A 1 <row> | grep -A 2 center | sed  's/.*center">//;s/<.td>.//'
#Have a nap for 5 minutes
sleep 5m
#Do that loop thing
done
