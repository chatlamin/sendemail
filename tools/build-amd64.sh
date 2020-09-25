#!/bin/bash
#Настройки
source ../settings.sh

#latest
docker build \
    --tag $IMAGE_AMD64_MASTER \
    --file ../Dockerfile .

#new version
docker build \
    --tag $IMAGE_AMD64 \
    --file ../Dockerfile .