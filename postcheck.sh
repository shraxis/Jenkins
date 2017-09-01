#!/bin/bash
USERID=$Postcheck_Username
/bin/egrep  -i "^${USERID}:" /etc/passwd
if [ $? -eq 0 ]; then
   echo "User $USERID created succesfully in /etc/passwd"
else
	
	echo "User $USERID creation failed in /etc/passwd"
fi