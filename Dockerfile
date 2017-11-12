FROM alpine:3.5

LABEL maintainer=danielmoi

RUN apk add --update \
  neovim \
  git \
  curl \
  editorconfig \
  bash

WORKDIR /root

CMD ["/root"]
