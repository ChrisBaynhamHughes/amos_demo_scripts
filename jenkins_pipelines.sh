#!/usr/bin/env bash

## Setup up the pipeline builds
oc project cicd
oc new-build https://github.com/ChrisBaynhamHughes/prometeo --strategy=pipeline --name="prometeo-pipeline"
sleep 30
oc new-build https://github.com/ChrisBaynhamHughes/prometeo_web --strategy=pipeline --name="prometeoweb-pipeline"
