#!/bin/bash
#
#  Author: André Costa
#  Date: 2019-03-07
#
#  https://www.linkedin.com/in/a-l-costa

if ! docker container ls --all | grep -q pyspark-server; then
    docker run -it --name=pyspark-server --hostname pyspark-server -p 8888:8888 \
    -p 8020:8020 -p 8042:8042 -p 8088:8088 \
    -p 8008:8008 --entrypoint=/root/start_basic_services.sh alcosta/pyspark-hive:beta.1.0
elif ! docker container ls | grep -q pyspark-server; then
    docker start -i pyspark-server
else
    echo "spark-server is already running!"
fi
ls
