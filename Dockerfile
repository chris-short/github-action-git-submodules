FROM quay.io/chrisshort/git:latest

LABEL "com.github.actions.name"="Git Submodules Init"
LABEL "com.github.actions.description"="I think it's wild that that I just built a container to run git as a GitHub Action."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="orange"
LABEL "repository"="https://github.com/chris-short/github-action-git-submodules"
LABEL "homepage"="https://github.com/chris-short"
LABEL "maintainer"="Chris Short <chris@chrisshort.net>"

RUN set -x \
      && rm -rf public || exit 0 \
      && git submodule sync --recursive \
      && git submodule update --init --recursive

ENTRYPOINT [ "git" ]
CMD [ "--help" ]
