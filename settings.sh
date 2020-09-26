#!/bin/bash

#---------------------------------------------------------------------
# Settings
#---------------------------------------------------------------------

#Название проекта
#https://github.com/chatlamin/sendemail
NAME=sendemail
#Репозиторий
#https://hub.docker.com/r/chatlamin/sendemail/tags
REPOSITORY=chatlamin/$NAME
#Тэг стабильного образа
TAG_STABLE=latest
#Архитектура armhf
export ARCH_ARMHF=armhf
#Архитектура amd64
export ARCH_AMD64=amd64
#Образ стабильный
IMAGE_STABLE=$REPOSITORY:$TAG_STABLE
#Имя контейнера
CONTAINER_NAME=$NAME

#--------------------------------------------------------------------
#End settings
#--------------------------------------------------------------------
