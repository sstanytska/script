#!/bin/bash


export FILE=$(cat listofusers.txt)

for i in $FILE
do
useradd "$i"
mkdir /home/"$i"/.ssh ;
cp -rf authorized_keys /home/"$i"/.ssh/ ;
echo "$i ALL=(ALL) NOPASSWD: ALL " >> /etc/sudoers ;
done 