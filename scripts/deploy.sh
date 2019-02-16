#!/bin/bash

set -e

gcloud auth activate-service-account --key-file=client-secret.json
gcloud config set project devop-231723
gcloud builds submit --config cloudbuild.yml .
