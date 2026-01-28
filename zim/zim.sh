#!/bin/bash
#

URL = $1
NAME = $2
DESC = $3
PROXY_PORT = $4
PROXY_ADDRESS = $5
if [ -n $URL -a -n $NAME -a -n $DESC]
then
  if [-n $PROXY_PORT -a -z $PROXY_ADDRESS]
  then
    PROXY_ADDRESS="172.17.0.1"
  fi
  mkdir output
  docker run -v ./output:/output -it -e http_proxy="http://$PROXY_ADDRESS:$PROXY_PORT" -e https_proxy="http://$PROXY_ADDRESS:$PROXY_PORT" -e HTTP_PROXY="http://$PROXY_ADDRESS:$PROXY_PORT" -e HTTPS_PROXY="http://$PROXY_ADDRESS:$PROXY_PORT" ghcr.io/openzim/zimit zimit --description "$DESC"  --depth 3  --seeds "$URL" --name "$NAME"
  
else
  echo "Wrong Usage:"
  echo "bash zim.sh url name decription proxyport(optional) proxyaddress(optional)"
fi
