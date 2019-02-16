#!/bin/bash

PROJECT_ID = devop-231723

set -e

gcloud auth activate-service-account --key-file=client-secret.json
gcloud config set project $PROJECT_ID
gcloud builds submit --config cloudbuild.yml .
