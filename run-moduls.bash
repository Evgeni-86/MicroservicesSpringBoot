#!/bin/bash

echo "Запуск сервиса product-composite-service..."
cd microservices/product-composite-service
mvn spring-boot:run &
cd ../../

echo "Запуск сервиса product-service..."
cd microservices/product-service
mvn spring-boot:run &
cd ../../

echo "Запуск сервиса recommendation-service..."
cd microservices/recommendation-service
mvn spring-boot:run &
cd ../../

echo "Запуск сервиса review-service..."
cd microservices/review-service
mvn spring-boot:run &
cd ../../

wait
echo "Все сервисы запущены."