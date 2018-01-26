#!/bin/bash

if [[ -f "$BUILDKITE_ENV_FILE" ]]; then
    echo "Found env file! ${BUILDKITE_ENV_FILE}"
    cat "$BUILDKITE_ENV_FILE"
else
    echo "No file found, var was: ${BUILDKITE_ENV_FILE:-unset}"
    exit 1
fi
