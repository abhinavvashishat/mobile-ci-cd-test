#!/bin/bash

USER=abhinav.vashishat
APP=Developer
TEAM_APP='abhinav.vashishat/Developer'
appcenter build branches show -b master
while read line; do
Build_Id='echo $line'
if [ "$Buid_Id" != "Succeeded" ]; then
for i in {id=Build_Id} #downloads data from builds #1 - #10
do
   #eval appcenter build download --id "$Build_id" --app $TEAM_APP --type "logs"    
   eval appcenter build download --id "$Build_Id" --app $TEAM_APP --type "build" #uncomment to download app packages
   #eval appcenter build download --id "$Build_id" --app $TEAM_APP --type "symbols" #uncomment to download symbols
done  
else
    Build Failed
fi
done
