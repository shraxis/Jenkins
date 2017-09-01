#!/bin/bash
echo $User_name
sudo useradd $User_name
echo "Moving for postcheck"
echo "postcheck_name=$User_name" > PostCheck.txt

