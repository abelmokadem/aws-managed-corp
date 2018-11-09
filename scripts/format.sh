#!/usr/bin/env bash


set -e

echo "Installing onchange and prettier"

npm i -g onchange prettier

echo "Watching files '**/*.yaml' for changes"

npx onchange --initial '**/*.yaml' -- \
    npx prettier \
        --write \
        --print-width 80 \
        --prose-wrap always \
        '**/*.yaml'