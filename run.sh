#!/bin/bash

#---------------------------------------------------------------------
# Settings
#---------------------------------------------------------------------

#Основные настройки
source settings.sh

#Настройки почты
MAIL_FROM='отправитель@gmail.com'
MAIL_TO='адресат@gmail.com'
MAIL_NAME='backup mysql'
MAIL_BODY="ERROR"
MAIL_SMTP='smtp.gmail.com:587'
MAIL_LOGIN='mylogin@gmail.com'
MAIL_PASS='mypassword'

#--------------------------------------------------------------------
#End settings
#--------------------------------------------------------------------

docker run --rm \
    $IMAGE_REPOSITORY_NEW \
    sendemail \
    -o tls=yes \
    -f $MAIL_FROM \
    -t $MAIL_TO \
    -s $MAIL_SMTP \
    -xu $MAIL_LOGIN \
    -xp $MAIL_PASS \
    -u "$MAIL_NAME" \
    -m "$MAIL_BODY"