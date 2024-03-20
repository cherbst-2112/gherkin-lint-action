FROM node:12-alpine

RUN apk update \
    && apk --no-cache add bash jq

COPY .gherkin-lintrc /root/

COPY run-gherkin-lint /usr/bin/
