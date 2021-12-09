#!/bin/bash
set -e
echo "Running...."

API_WEB=false
HOSTING=false
API_DEPLOY=true
SHA=123
TITLE=can
HOOK="https://discord.com/api/webhooks/909939146238341181/btXG0UeWa7XljQRd3TOdBt9D4ezDB6C3K2h5yv9nVTeTab6mKE6ht1DS4erfSZEPEfcR"

curl --request POST \
  --url $HOOK \
  --header 'Content-Type: application/json' \
  --data '{
  "embeds": [
    {
      "title": "'$TITLE'",
      "fields": [
        {
          "name": "SHA",
          "value": "'$SHA'"
        },
        {
          "name": "Api Web",
          "value": "'$API_WEB'"
        },
        {
          "name": "Api Deploy",
          "value": "'$API_DEPLOY'"
        },
        {
          "name": "Hosting",
          "value": "'$HOSTING'"
        }
      ]
    }
  ]
}'
