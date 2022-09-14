#!/bin/bash

echo build image xxl-job-admin
pwd

# 到父工程目录
cd ..
pwd

echo mvn clean
mvn clean

echo mvn install
mvn install

#回到项目目录
cd xxl-job-admin
pwd

echo 创建 xxl-job-admin 镜像包
image_tag=`date "+%Y%m%d%H%M%S"`
image_name="172.29.250.56:8089/akso/xxljobadmin:$image_tag"

docker build -t $image_name .

echo push $image_name
docker login -u ci -p 1qaz2WSX 172.29.250.56:8089
docker push $image_name

echo $image_name

