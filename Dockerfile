FROM mhart/alpine-node

MAINTAINER Office L

# about textlint. see: https://textlint.github.io/
# see: https://github.com/textlint/textlint/wiki/Collection-of-textlint-rule

ENV TEXTLINT_PLUGINS \
    textlint-rule-no-todo \
    textlint-rule-preset-ja-spacing \
    textlint-rule-preset-ja-technical-writing \ 
    textlint-rule-prh \
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
