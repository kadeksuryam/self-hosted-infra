#!/bin/bash

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "${scriptDir}" || exit 1

if [ ! -f public-age-keys.yaml ]; then
    echo "public-age-keys.yaml not found!"
    exit 1
fi

read_public_keys() {
    python3 -c "
import yaml

keys_dict = yaml.safe_load(open('public-age-keys.yaml'))

keys_arr = []
for entry in keys_dict['public_keys']:
    keys_arr.append(entry['key'])

print(','.join(keys_arr))
"
}

PUBLIC_KEYS=$(read_public_keys)

export SOPS_AGE_RECIPIENTS=$PUBLIC_KEYS

out_filename=$(basename -- "$1" .yaml).enc.yaml

sops --encrypt --input-type yaml --output-type yaml --age ${SOPS_AGE_RECIPIENTS} $1 > $out_filename
