#!/bin/bash
set -e

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