# Docker textlint

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)

Dockerfile to build a container image containing [textlint](https://textlint.github.io/).

## tl;dr

* `docker pull officel/dtl`
* ``alias textlint='docker run --rm -it -v `pwd`:/docs officel/dtl'`` to .bashrc (or something)
* `cd your/docs/` .textlintrc on dir
* `textlint *`
* That's all

## usage

    git clone git@github.com:officel/dtl.git
    cd dtl
    docker build --rm -t officel/dtl .

    docker run --rm -it -v `pwd`:/docs officel/dtl misc/misc/preset-ja-technical-writing.md

    # OK, Not have rules, textlint do not anything
    # see sample rules and set. ls -l .textlintrc*

    # preset-ja-technical-writing

    docker run --rm -it -v `pwd`:/docs officel/dtl --config .textlintrc_preset-ja-technical-writing misc/preset-ja-technical-writing.md
    docker run --rm -it -v `pwd`:/docs officel/dtl --config .textlintrc_preset-ja-technical-writing -f pretty-error misc/preset-ja-technical-writing.md

    # preset-jtf-style(fix me)

    docker run --rm -it -v `pwd`:/docs officel/dtl --config .textlintrc_preset-jtf-style misc/preset-jtf-style.md
    docker run --rm -it -v `pwd`:/docs officel/dtl --config .textlintrc_preset-jtf-style -f pretty-error misc/preset-jtf-style.md
    docker run --rm -it -v `pwd`:/docs officel/dtl --config .textlintrc_preset-jtf-style --fix misc/preset-jtf-style.md


## Check?

    docker run --entrypoint="" officel/dtl node --version
    docker run --entrypoint="" officel/dtl npm --version
    docker run --rm -it --entrypoint="/bin/ash" -v `pwd`:/docs officel/dtl

## Samples

    docker run --rm -it --entrypoint="cat" -v `pwd`:/docs officel/dtl /.textlintrc_preset-ja-technical-writing
    docker run --rm -it --entrypoint="cat" -v `pwd`:/docs officel/dtl /prh.yml


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
    * textlint-rule-sentence-length

* textlint-rule-preset-JTF-style

* textlint-rule-preset-ja-spacing

    * textlint-rule-ja-nakaguro-or-halfwidth-space-between-katakana
    * textlint-rule-ja-no-space-around-parentheses
    * textlint-rule-ja-no-space-between-full-width
    * textlint-rule-ja-space-between-half-and-full-width
    * textlint-rule-ja-space-after-exclamation
    * textlint-rule-ja-space-after-question
    * textlint-rule-ja-space-around-code

