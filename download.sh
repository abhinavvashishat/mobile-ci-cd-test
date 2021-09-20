#!/bin/bash
set -x
USER=abhinav.vashishat
APP=Developer
TEAM_APP='abhinav.vashishat/Developer'
appcenter build branches show -b master
while read -r line; do
echo "Text read from file: $line"
done < "$Build ID"
#if [ "$Buid ID" != "Succeeded" ]; then
for i in {$Buid ID} #downloads data from builds #1 - #10
do
   #eval appcenter build download --id "$Build_id" --app $TEAM_APP --type "logs"    
   eval appcenter build download --id "$Build ID" --app $TEAM_APP --type "build" #uncomment to download app packages
   #eval appcenter build download --id "$Build_id" --app $TEAM_APP --type "symbols" #uncomment to download symbols
done  
#else
    Build Failed
#fi
#done
