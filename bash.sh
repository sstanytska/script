#!/bin/bash

echo "Please enter the option "
echo "1 - studying"
echo "2 - working"
echo "2 - vocation"
read -p "> " direction

read -p "Please enter What are you doing now?": " number

#echo "$direction $number "

if [ $direction -eq 1 ]
then 
	echo "You are studying now!"
if [ $direction -eq 2 ]
then 
	echo "You are working hard!"

if [$direction -eq 3 ]
then 
    echo "You are on vocation! Just smile :)"
eclse
	echo "Error! Please chose 1 for North and 2 for South"
fi 