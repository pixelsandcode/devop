#!/bin/bash

set -e

gcloud auth activate-service-account --key-file=client-secret.json
gcloud builds submit --config cloudbuild.yml .
