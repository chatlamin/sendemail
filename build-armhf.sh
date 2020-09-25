#!/bin/bash
#Настройки
source settings.sh

docker build \
    --tag $IMAGE_ARMHF \
    --file Dockerfile.armhf