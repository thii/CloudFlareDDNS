#!/bin/sh

IP=`curl -s http://icanhazip.com`
OLD_IP=`cat ./currentip.txt`

if [ "$IP" = "$OLD_IP" ] 
then
  echo "Public IP has not changed."
else
  curl https://www.cloudflare.com/api_json.html \
    -d 'a=rec_edit' \
    -d 'tkn=YOUR_CLOUDFLARE_API' \
    -d 'email=YOUR_CLOUDFLARE_EMAIL' \
    -d 'z=ZONE_NAME' \
    -d 'id=RECORD_ID' \
    -d 'type=RECORD_TYPE' \
    -d 'name=RECORD_NAME' \
    -d 'ttl=1' \
    -d "content=$IP"

  echo $IP > ./currentip.txt
fi
