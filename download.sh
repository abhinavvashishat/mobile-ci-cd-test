#!/bin/bash

USER=abhinav.vashishat
APP=Developer
TEAM_APP='abhinav.vashishat/Developer'
BUILD=appcenter build branches show -b master
if [ "$BUILD" != "Succeeded" ]; then
for i in {$BUILD} #downloads data from builds #1 - #10
do
   #eval appcenter build download --id "$Build id" --app $TEAM_APP --type "logs"    
   eval appcenter build download --id "$BUILD" --app $TEAM_APP --type "build" #uncomment to download app packages
   #eval appcenter build download --id "$Build id" --app $TEAM_APP --type "symbols" #uncomment to download symbols
done   
else
    Build Failed
fi
