#!/bin/bash
#Настройки
source settings.sh

docker manifest create \
    $REPOSITORY:$TAG_NEW \
    --amend $IMAGE_AMD64 \
    --amend $IMAGE_ARMHF

docker manifest push $REPOSITORY:$TAG_NEW