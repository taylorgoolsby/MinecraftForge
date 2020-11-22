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

chmod -R 755 depo/

lftp -e "mirror -R depo jar" -u $username,$password $ip
