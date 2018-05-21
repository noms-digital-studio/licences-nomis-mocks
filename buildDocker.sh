#!/usr/bin/env bash

./gradlew build
docker build -t nomismocks .

# To run within Docker:
# docker run -d -p 9090:9090 --name nomismocks nomismocks