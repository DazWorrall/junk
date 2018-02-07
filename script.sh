#!/bin/bash

if [[ "$BUILDKITE_RETRY_COUNT" -gt 0 ]]; then
    echo "Success!"
    exit 0
fi
echo "Fail :("
exit 75
