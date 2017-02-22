# Docker textlint

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)

Dockerfile to build a container image containing [textlint](https://textlint.github.io/).

## usage

    git clone
    cd dtl
    sudo docker build --rm -t officel/dtl .

    sudo docker run --rm -it -v `pwd`:/docs officel/dtl misc/test01.md
    sudo docker run --rm -it -v `pwd`:/docs officel/dtl -f pretty-error misc/test01.md

    sudo docker run --rm -it -v `pwd`:/docs officel/dtl --fix --dry-run --format diff misc/test01.md

    sudo docker run --rm -it -v `pwd`:/docs officel/dtl -f pretty-error misc/*

## Check?

    sudo docker run --entrypoint="" officel/dtl node --version
    sudo docker run --entrypoint="" officel/dtl npm --version
    sudo docker run --rm -it --entrypoint="/bin/ash" -v `pwd`:/docs officel/dtl

## Samples

    sudo docker run --rm -it --entrypoint="cat" -v `pwd`:/docs officel/dtl /.textlintrc
    sudo docker run --rm -it --entrypoint="cat" -v `pwd`:/docs officel/dtl /prh.yml


## Not installed plugins (sorry, not for me)

* no-exclamation-question-mark

