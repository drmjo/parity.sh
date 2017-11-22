#!/bin/bash

docker run --rm \
    --name parity \
    -v `pwd`/fs:/home/parity/.local/share/io.parity.ethereum \
    -v `pwd`/config.toml:/home/parity/.local/share/io.parity.ethereum/config.toml \
    -p 127.0.0.1:8180:8180 \
    -p 127.0.0.1:8545:8545 \
    -p 127.0.0.1:8546:8546 \
    mjo/parity:stable-release $@
