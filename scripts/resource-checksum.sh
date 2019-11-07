#!/bin/bash

if [[ -z ${2} ]]; then
  ALGO="384"
else
  ALGO="${2}"
fi

echo "sha${ALGO}-$(curl ${1} | shasum -a ${ALGO} | awk '{print $1}' | xxd -r -p | base64)"
