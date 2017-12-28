#!/bin/bash
dirName="keys"
if [ -d "$dirName" ]; then
  rm -rf $dirName
fi

mkdir -p $dirName

dockerStatus=`docker inspect ansibleServer1 --format='{{.State.Status}}'`

if [ "$dockerStatus" != "running" ]; then
  docker restart ansibleServer1
fi

sleep 2
docker exec ansibleServer1 bash -c "cat ~/.ssh/id_rsa.pub" >> keys/id_rsa.pub
