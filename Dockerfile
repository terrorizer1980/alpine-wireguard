ARG ALPINE_VERSION=3.13

FROM alpine:${ALPINE_VERSION}
RUN apk add --no-cache \
    iproute2 \
    wireguard-tools
ENTRYPOINT [ "wg-quick", "up" ]
CMD [ "wg0" ]


