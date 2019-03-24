FROM golang:1.11-alpine
MAINTAINER JaeGerW2016 

ENV GLIDE_VERSION 0.13.2
ENV REFLEXGLIDE https://github.com/Masterminds/glide/releases/download/v${GLIDE_VERSION}/glide-v${GLIDE_VERSION}-linux-amd64.tar.gz

RUN apk update && \
    apk add --no-cache ca-certificates git curl git coreutils && \
    rm /var/cache/apk/*

RUN curl -fsSL "$REFLEXGLIDE" -o glide.tar.gz && \
    tar -zxf glide.tar.gz && \
    mv linux-amd64/glide /usr/bin/ && \
    rm linux-amd64 -r && \
    rm glide.tar.gz
