#!/bin/bash

#---------------------------------------------------------------------
# Settings
#---------------------------------------------------------------------

source settings.sh

#--------------------------------------------------------------------
#End settings
#--------------------------------------------------------------------

docker run --rm \
    $IMAGE_STABLE \
    sendemail \
    --help
