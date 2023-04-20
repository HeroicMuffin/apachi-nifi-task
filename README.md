# apachi-nifi-task


-DOCKER CONTAINER-

#Docker is the only prerequisite to running this container.

The steps:

#Pull and run the container, set a volume, password and dump file (Alternatively can be run with mysql-db-init.sh script)

1. docker run --name mysql-for-nifi -e MYSQL_ROOT_PASSWORD=1234 -v $PWD/dump:/docker-entrypoint-initdb.d  \
-v $PWD/mysql-connector-java-8.0.22.jar:/drivers/mysql-connector-java-8.0.22.jar -d mysql/mysql-server:latest

#Enter the container in order to make adjustments
2. docker exec -it mysql-for-nifi bash

#Enter username and password for mysql
3. mysql -uroot -p1234

#Set permisions for root user to access from every adress
3. UPDATE mysql.user SET host='%' WHERE user='root';

4. FLUSH PRIVILEGES;


-RUNNING NIFI TEMPLATES-

1. Run the templates provided in your Nifi interface

2. Change relative path in GetFile, PutFile and DBCPConnectionPool processes 

3. Change IP/PORT for your MySQL container, should be different.
