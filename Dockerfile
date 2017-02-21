FROM mhart/alpine-node

MAINTAINER Office L

# about textlint. see: https://textlint.github.io/
# see: https://github.com/textlint/textlint/wiki/Collection-of-textlint-rule

ENV TEXTLINT_PLUGINS \
    textlint-rule-ja-no-abusage \
    textlint-rule-ja-no-mixed-period \
    textlint-rule-ja-no-weak-phrase \
    textlint-rule-max-comma \
    textlint-rule-max-kanji-continuous-len \
    textlint-rule-max-ten \
    textlint-rule-no-double-negative-ja \
    textlint-rule-no-doubled-conjunction \
    textlint-rule-no-doubled-conjunctive-particle-ga \
    textlint-rule-no-doubled-joshi \
    textlint-rule-no-dropping-the-ra \
    textlint-rule-no-exclamation-question-mark \
    textlint-rule-no-hankaku-kana \
    textlint-rule-no-mix-dearu-desumasu \
    textlint-rule-no-nfd \
    textlint-rule-no-todo \
    textlint-rule-preset-ja-spacing \
    textlint-rule-preset-ja-technical-writing \ 
    textlint-rule-preset-jtf-style \
    textlint-rule-prh \
    textlint-rule-sentence-length \
    textlint-rule-spellcheck-tech-word \
    \
    textlint-plugin-html


RUN npm install -g textlint $TEXTLINT_PLUGINS 

WORKDIR /docs

# Samples
COPY .textlintrc /
COPY prh.yml /

ENTRYPOINT ["textlint"]

CMD ["-h"]
