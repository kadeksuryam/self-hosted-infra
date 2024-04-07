#!/bin/bash

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "${scriptDir}" || exit 1

export SOPS_AGE_KEY_FILE=private-age-key.txt

out_filename=$(basename -- "$1" .enc.yaml).yaml
sops --decrypt --input-type yaml --output-type yaml $1 > $out_filename
