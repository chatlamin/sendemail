#!/bin/bash
#Настройки
source settings.sh

docker manifest create \
    chatlamin/$REPOSITORY:$TAG_NEW \
    --amend $IMAGE_AMD64 \
    --amend $IMAGE_ARMFH

docker manifest push chatlamin/$REPOSITORY:$TAG_NEW