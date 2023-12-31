#!/bin/sh -ex

echo -e "${INPUT_KEY}" > KEY_FILE

chmod 600 KEY_FILE

scp -o StrictHostKeyChecking=no \
    -i KEY_FILE \
    -r \
    -p \
    "${INPUT_FROM}" \
    "${INPUT_USER}"@"${INPUT_HOST}":"${INPUT_TO}"
