#!/bin/bash
set -eux

# This script automatically sets up the self-updating demo pipeline so you can begin experimenting
fly --target=concourse login --concourse-url=http://localhost:8080 --username=test --password=test
fly --target=concourse set-pipeline --pipeline=config-pipeline-foo --config=config-pipeline-foo.yml --load-vars-from params-foo.yml 
fly --target=concourse unpause-pipeline --pipeline=config-pipeline-foo

