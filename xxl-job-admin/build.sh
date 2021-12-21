#!/bin/bash

image_tag=`date "+%Y%m%d%H%M%S"`
#xxl:2.3.0
image_name="47.100.207.207:8089/akso/xxljobadmin:$image_tag"

docker build -t $image_name .

docker login -u ci -p 1qaz2WSX 47.101.131.6:8089
docker push $image_name

echo $image_name

#execute
