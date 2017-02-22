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


## Preset installed

* textlint-rule-preset-ja-technical-writing

    * textlint-rule-ja-no-abusage
    * textlint-rule-ja-no-mixed-period
    * textlint-rule-ja-no-successive-word
    * textlint-rule-ja-no-weak-phrase
    * textlint-rule-max-comma
    * textlint-rule-max-kanji-continuous-len
    * textlint-rule-max-ten
    * textlint-rule-no-double-negative-ja
    * textlint-rule-no-doubled-conjunction
    * textlint-rule-no-doubled-conjunctive-particle-ga
    * textlint-rule-no-doubled-joshi
    * textlint-rule-no-dropping-the-ra
    * textlint-rule-no-exclamation-question-mark
    * textlint-rule-no-hankaku-kana
    * textlint-rule-no-mix-dearu-desumasu
    * textlint-rule-no-nfd
    * textlint-rule-preset-jtf-style
    * textlint-rule-sentence-length

* textlint-rule-preset-ja-spacing

    * textlint-rule-ja-nakaguro-or-halfwidth-space-between-katakana
    * textlint-rule-ja-no-space-around-parentheses
    * textlint-rule-ja-no-space-between-full-width
    * textlint-rule-ja-space-between-half-and-full-width
    * textlint-rule-ja-space-after-exclamation
    * textlint-rule-ja-space-after-question
    * textlint-rule-ja-space-around-code

