ARG ALPINE_VERSION=3.13

FROM alpine:${ALPINE_VERSION}
RUN apk add --no-cache \
    iproute2 \
    wireguard-tools
COPY . /
VOLUME /secret
ENTRYPOINT ["/entrypoint.sh"]

