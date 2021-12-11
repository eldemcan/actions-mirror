#!/bin/bash
set -e


HOOK=https://discord.com/api/webhooks/909939146238341181/btXG0UeWa7XljQRd3TOdBt9D4ezDB6C3K2h5yv9nVTeTab6mKE6ht1DS4erfSZEPEfcR
API_WEB=false
HOSTING=true
API_DEPLOY=true
SHA=1234
TITLE="Automatic dss"

if [ "$MANUAL" == true ]; then
curl --request POST \
  --url $HOOK \
  --header 'Content-Type: application/json' \
  --data '{
  "embeds": [
    {
      "title": "'"${TITLE}"'",
      "fields": [
        {
          "name": "Release Tag",
          "value": "'$RELEASE_TAG'"
        },
        {
          "name": "Service",
          "value": "'$SERVICE'"
        },
        {
          "name": "Environment",
          "value": "'$ENVIRONMENT'"
        },
        {
          "name": "Ansible Tag",
          "value": "'$ANSIBLE_TAG'"
        },
        {
          "name": "Success?",
          "value": "'$OUTCOME'"
        }
      ]
    }
  ]
}'
else
curl --request POST \
  --url $HOOK \
  --header 'Content-Type: application/json' \
  --data '{
  "embeds": [
    {
      "title": "'"${TITLE}"'",
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
    }]
}'
fi