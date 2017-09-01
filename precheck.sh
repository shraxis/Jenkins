#!/bin/bash
USERID=$Username
/bin/egrep  -i "^${USERID}:" /etc/passwd
#getent passwd $USERID
if [ $? -eq 0 ]; then
   echo "User $USERID exists in /etc/passwd"
   exit 1
else 
   echo "User $USERID does not exists in /etc/passwd"
   echo "Username=$Username" > param.txt
fi
