#!/usr/bin/env bash
echo "Start RabbitMQ and Zapkin Servers"
docker-compose up -d
sleep 10
echo "Some time Zapkin doesnt start properly, make sure it is up"
docker-compose up -d --scale zipkin=1
sleep 10
echo "Start config server"
nohup java -jar ./config-server/target/config-server-0.0.1-SNAPSHOT.jar &
sleep 10
echo "Start registry"
nohup java -jar ./registry/target/registry-0.0.1-SNAPSHOT.jar &
sleep 10
echo "Start employee-api"
nohup java -jar ./employee-api/target/employee-api-0.0.1-SNAPSHOT.jar &
echo "Start payroll-api"
nohup java -jar ./payroll-api/target/payroll-api-0.0.1-SNAPSHOT.jar &
echo "Start report-api"
nohup java -jar ./report-api/target/report-api-0.0.1-SNAPSHOT.jar &
echo "Start mail-client"
nohup java -jar ./mail-client/target/mail-client-0.0.1-SNAPSHOT.jar &
sleep 20
echo "Start Gateway"
nohup java -jar ./gateway/target/gateway-0.0.1-SNAPSHOT.jar &
sleep 10
echo "All services are up"