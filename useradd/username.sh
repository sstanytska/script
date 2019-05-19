#!/usr/bin/env bash
 read -p "Please enter a username:" user

useradd $username

read -p "Please enter a  password for $username:" password
echo "passwd" | passwd $username --stdin