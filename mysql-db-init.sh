#!/bin/bash

docker run --name mysql-for-nifi -e MYSQL_ROOT_PASSWORD=1234 -v $PWD/dump:/docker-entrypoint-initdb.d -v $PWD/mysql-connector-java-8.0.22.jar:/drivers/mysql-connector-java-8.0.22.jar -d mysql/mysql-server:latest

docker exec -it mysql-for-nifi bash

