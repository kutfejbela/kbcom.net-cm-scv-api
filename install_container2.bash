#!/bin/bash

GLOBAL_FOLDER_CONTAINER="container2"
GLOBAL_FILE_BASH="/bin/bash"

mkdir -p "$GLOBAL_FOLDER_CONTAINER"

GLOBAL_LIST_BASH="$(ldd $GLOBAL_FILE_BASH | egrep -o '/lib.*\.[0-9]')"
for GLOBAL_STRING_BASH in $GLOBAL_LIST_BASH
 do cp  --parents -v "$GLOBAL_STRING_BASH" "${GLOBAL_FOLDER_CONTAINER}"
done

cp  --parents -v "$GLOBAL_FILE_BASH" "${GLOBAL_FOLDER_CONTAINER}"

fakechroot fakeroot chroot container2 bash
