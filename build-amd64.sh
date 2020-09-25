#!/bin/bash
#Настройки
source settings.sh

docker build \
    --tag $IMAGE_AMD64 \
    --file Dockerfile