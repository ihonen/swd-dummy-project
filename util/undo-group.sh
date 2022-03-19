#!/usr/bin/bash

# This script undoes an entire group of scripts. Swd seems to have a bug that
# prevents doing this natively.

# PARAMETERS:

# $1: The name of the group as recognized by swd (i.e. the path of the group
#     directory relative to $SWD_ROOT).

set -e
set -u

cd "$(dirname $0)/../scripts"

for SCRIPT in `ls -d "$1"/*.swd`; do
    if [ "$(basename $SCRIPT)" != "group.swd" ]; then
        swd --undo="${SCRIPT%.*}"
    fi
done
