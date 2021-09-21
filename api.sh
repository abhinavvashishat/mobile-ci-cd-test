#!bin/bash
sleep 20m
LatestbuildNumber=$(curl -X GET "https://api.appcenter.ms/v0.1/apps/abhinav.vashishat/Developer/branches/master/builds" -H  "accept: application/json" -H  "X-API-Token: 086b12763dddd7061b55e9e58b6a3b38f200d899" |jq -r '.[0].buildNumber') 
echo $LatestbuildNumber
appcenter build download --id "$LatestbuildNumber" --app abhinav.vashishat/Developer --type "build"
