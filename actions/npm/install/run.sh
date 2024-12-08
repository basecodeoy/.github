#!/usr/bin/env bash

workingDirectory="${NPM_INSTALL_WORKING_DIRECTORY}"

if [[ ! -d ${workingDirectory} ]]; then
    echo "::error::The value for the \"working-directory\" input needs to be an existing directory. The directory \"${workingDirectory}\" does not exist."

    exit 1
fi

cd "${workingDirectory}" || exit 1

npm ci --no-progress --no-audit --no-fund

exit $?
