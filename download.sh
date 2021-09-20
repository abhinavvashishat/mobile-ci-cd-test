#!/bin/bash

USER=abhinav.vashishat
APP=Developer
#appcenter build branches show=$Status
TEAM_APP='abhinav.vashishat/Developer'
if [ "$Status" != "Succeeded" ]; then
for i in {1} #downloads data from builds #1 - #10
do
   #eval appcenter build download --id "$i" --app $TEAM_APP --type "logs"    
   eval appcenter build download --id "$i" --app $TEAM_APP --type "build" #uncomment to download app packages
   #eval appcenter build download --id "$i" --app $TEAM_APP --type "symbols" #uncomment to download symbols
done   
else
    Build Failed
fi
