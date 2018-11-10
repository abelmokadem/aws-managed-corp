#!/usr/bin/env bash

set -e

echo "Watching files '**/*.yaml' for changes"

npx onchange --initial '**/*.{sh,yaml}' -- \
    npx prettier \
        --write \
        --print-width 80 \
        --prose-wrap always \
        '**/*.{sh,yaml}'