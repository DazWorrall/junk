#!/bin/bash

if [[ "${SLEEP:-0}" -gt 0 ]]; then
    echo "Sleeping for ${SLEEP} seconds..."
    sleep ${SLEEP}
fi

if [[ "$BUILDKITE_RETRY_COUNT" -gt 0 ]]; then
    echo "Success!"
    exit 0
fi
echo "Fail :("
exit 75
