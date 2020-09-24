#!/usr/bin/env bash
echo "Killing Java Process"
pkill -f java.*employee-api-0.0.1-SNAPSHOT.jar
pkill -f java.*payroll-api-0.0.1-SNAPSHOT.jar
pkill -f java.*report-api-0.0.1-SNAPSHOT.jar
pkill -f java.*mail-client-0.0.1-SNAPSHOT.jar
pkill -f java.*gateway-0.0.1-SNAPSHOT.jar
pkill -f java.*registry-0.0.1-SNAPSHOT.jar
pkill -f java.*config-server-0.0.1-SNAPSHOT.jar
echo "Stopping docker services RabbitMQ and Zapkin"
docker-compose down
