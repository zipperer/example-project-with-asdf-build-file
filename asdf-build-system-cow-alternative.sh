#!/bin/bash

SCRIPT_DIRECTORY="$(cd "$(dirname "${0}")"; echo $(pwd))"

ASDF_FILENAME='cow.asd'

ASDF_FILENAME_FULL_PATH="${SCRIPT_DIRECTORY}/${ASDF_FILENAME}"

ASDF_LOAD_SYSTEM_COMMAND='(asdf:load-system :cow)'

DATE=$(date "+%Y-%m-%d-%H-%M-%S")

TARGET_EXECUTABLE_FILENAME="cow-executable-hello-${DATE}"

TARGET_EXECUTABLE_PATHNAME="#P\"${TARGET_EXECUTABLE_FILENAME}\""

CREATE_EXECUTABLE_COMMAND="(sb-ext:save-lisp-and-die ${TARGET_EXECUTABLE_PATHNAME} :toplevel (function hello) :executable t)"

sbcl --load "${ASDF_FILENAME_FULL_PATH}" \
     --eval "${ASDF_LOAD_SYSTEM_COMMAND}" \
     --eval "${CREATE_EXECUTABLE_COMMAND}"

chmod +x ${TARGET_EXECUTABLE_FILENAME}
