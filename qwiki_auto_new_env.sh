#!/bin/bash

# Copyright 2019 Joe Huang Personal
#
# Licensed under the XXX
#
#
#

# 1. Create Service Account
export PROJECT_ID=$(gcloud config get-value project)

gcloud iam service-accounts create qwiklab \
    --display-name qwiklab-$(date +%F)

# 2. Binding SA as Project Owner
cloud projects add-iam-policy-binding $PROJECT_ID \
    --member serviceAccount:qwiklab@$PROJECT_ID.iam.gserviceaccount.com \
    --role roles/owner
# 3. Export JWT as a file

  gcloud iam service-accounts keys create ~/$PROJECT_ID+key.json \
    --iam-account qwiklab@${PROJECT_ID}.iam.gserviceaccount.com

    export GOOGLE_APPLICATION_CREDENTIALS="/home/${USER}/key-$(date +%F).json"

# 4. Local laptop Using
    export MY_REGION=us-central1
    export MY_ZONE=asia-east1
    export LAB_PROJECT=

    gcloud config set compute/region $MY_REGION
    gcloud config set compute/zone $MY_ZONE
    gcloud config set project $LAB_PROJECT

    gcloud auth activate-service-account --key-file ~/Downloads/$LAB_PROJECT.json

