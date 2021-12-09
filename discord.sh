#!/bin/bash

echo "Running...."

curl --request POST \
--url $HOOK \
--header 'Content-Type: application/json' \
--data '{
 "embeds": [
   {
     "title": "Deployment Status",
     "fields": [
       {
         "name": "Sha",
         "value": ${NAME},
       },
       {
         "name": "Api Web",
         "value": "https://vsk.me/",
       },
       {
         "name": "Api DeployExit code",
         "value": "0",
       },
       {
         "name": "Hosting",
         "value": "true"
       }
     ]
   }
 ]
}'
