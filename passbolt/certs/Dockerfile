FROM alpine:latest

RUN apk add --no-cache openssl

WORKDIR /etc/ssl/certs

COPY passbolt.crt /etc/ssl/certs/
COPY passbolt.key /etc/ssl/private/