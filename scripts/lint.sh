#!/usr/bin/env bash

set -e

npx prettier \
    --list-different \
    --print-width 80 \
    --prose-wrap always \
    '**/*.{sh,yaml}'

aws cloudformation validate-template \
    --region eu-west-1 \
    --template-body file://stacks/config-rule.yaml
