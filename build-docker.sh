#!/bin/bash

docker build -t gymmanager:latest .
if [ "$?" == 0 ]; then
    docker-compose up -d
fi