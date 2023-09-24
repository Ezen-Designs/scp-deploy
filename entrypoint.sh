#!/bin/sh -e

echo -e "${INPUT_KEY}" > KEY_FILE

chmod 600 KEY_FILE

scp -o StrictHostKeyChecking=no \
    -i KEY_FILE \
    -r \
    "${INPUT_FROM}" \
    "${INPUT_USER}@${INPUT_HOST}:${INPUT_TO}" \
    "${INPUT_CMD}"


    