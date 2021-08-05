FROM ghcr.io/jochenvg/alpine:master
RUN apk add --no-cache \
    iproute2 \
    wireguard-tools
ENTRYPOINT [ "wg-quick", "up" ]
CMD [ "wg0" ]


