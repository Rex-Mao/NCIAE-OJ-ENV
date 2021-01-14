#!/bin/bash

current_opt_path=`pwd`
chmod +x ./install-docker.sh
bash ./install-docker.sh
cd ./docker/nciae-online-judge/images
docker docker build -f nacos-server.dockerfile -t nacos-server-rs:0.0.1.SNAPSHOT . 
docker pull mysql:5.7.23
dokcer pull redis:5.0
docker pull rocketmqinc/rocketmq-namesrv:4.5.0-alpine
docker pull rocketmqinc/rocketmq-broker:4.5.0-alpine
# docker pull apacherocketmq/rocketmq:4.5.0
docker pull dockersamples/visualizer:stable
cd $current_opt_path
