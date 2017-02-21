# Docker textlint

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)

Dockerfile to build a container image containing [textlint](https://textlint.github.io/).

## usage

    git clone
    cd dtl
    sudo docker build --rm -t officel/dtl .

    sudo docker run --rm -it -v `pwd`:/docs officel/dtl misc/*

    sudo docker run --rm -it -v `pwd`:/docs officel/dtl -f pretty-error misc/*

## Check?

    sudo docker run --entrypoint="" officel/dtl node --version
    sudo docker run --entrypoint="" officel/dtl npm --version
    sudo docker run --rm -it --entrypoint="" officel/dtl /bin/ash


