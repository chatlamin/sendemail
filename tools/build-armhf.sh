#!/bin/bash
#Настройки
source ../settings.sh

#latest
docker build \
    --tag $IMAGE_ARMHF_MASTER \
    --file ../Dockerfile.armhf .

#new version
docker build \
    --tag $IMAGE_ARMHF \
    --file ../Dockerfile.armhf .
