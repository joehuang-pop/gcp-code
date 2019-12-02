#!/bin/bash

# Copyright 2019 Joe Huang Personal
#
# Licensed under the XXX
#
#
#

# 4. Local laptop Using
    export MY_REGION=us-central1
    export MY_ZONE=asia-east1
    export LAB_PROJECT=123

    gcloud config set compute/region $MY_REGION
    gcloud config set compute/zone $MY_ZONE
    gcloud config set project $LAB_PROJECT

    gcloud auth activate-service-account --key-file ~/Downloads/$LAB_PROJECT.json

# 5. Check Env
    gcloud config list
    gcloud auth list

