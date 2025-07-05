#!/bin/bash

SCRIPT_DIR=$(realpath $(dirname $0))

cd $SCRIPT_DIR
docker run -it --rm \
    -v $(realpath $SCRIPT_DIR/..):/home/$(id -un)/simnet-gem5 \
    -w /home/$(id -un)/simnet-gem5 \
    $(id -un)/simnet-gem5-dev
cd - > /dev/null