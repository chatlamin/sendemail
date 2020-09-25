#!/bin/bash

#Название проекта
#https://github.com/chatlamin/sendemail
NAME=sendemail
#Репозиторий
#https://hub.docker.com/r/chatlamin/sendemail/tags
REPOSITORY=chatlamin/sendemail
#Архитектура armhf
ARCH_ARMHF=armhf
#Архитектура amd64
ARCH_ADM64=amd64
#Тэг образа старый
TAG_OLD=latest
#Тэг образа новый
TAG_NEW=latest



#Образ итоговый armhf
IMAGE_ARMHF=chatlamin/$NAME-$ARCH_ARMFH:$TAG_NEW
#Образ итоговый adm64
IMAGE_AMD64=chatlamin/$NAME-$ARCH_AMD64:$TAG_NEW
#Образ репозитория старый
IMAGE_REPOSITORY_OLD=$REPOSITORY:$TAG_OLD
#Образ репозитория новый
export IMAGE_REPOSITORY_NEW=$REPOSITORY:$TAG_NEW
#Имя контейнера
CONTAINER_NAME=$NAME