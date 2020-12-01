#!/bin/sh
USERNAME="root"
PASSWORD="root"
SERVER="localhost"
 
# local directory to pickup Sql file
FILE="/.Files/Database/"
 
# remote server directory to upload backup
BACKUPDIR="Files/Zen/Database/"
 
# login to remote server
ftp -n -i $SERVER <<EOF
user $USERNAME $PASSWORD
cd $BACKUPDIR
mput $FILE/*.sql
quit
EOF
