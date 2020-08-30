#!/bin/bash

echo -n IP:
read -s ip
echo

echo -n Username:
read -s username
echo

echo -n Password:
read -s password
echo

lftp -e "mirror -R . jar" -u $username,$password $ip
