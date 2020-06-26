#!/bin/bash

HELLO="whats up"

echo '${HELLO}'

for word in "${HELLO}"; do
    echo $word;
done

HELLO2="$(echo ${HELLO})"

echo "${HELLO2}"
    
SCRIPT_DIRECTORY="$(cd "$(dirname "${0}")"; echo $(pwd))"
SCRIPT_NAME=$(basename $0)
echo $SCRIPT_NAME
echo $SCRIPT_DIRECTORY
