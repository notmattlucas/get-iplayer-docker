#!/bin/bash

echo $1

set -e

# Refresh catalog and log to stdout
get_iplayer "$1"

ids=`get_iplayer --type=radio "$1" | grep -P "^[0-9]+:" | cut -d ':' -f 1`

for id in $ids
do
    echo $id
    get_iplayer --get $id
done
