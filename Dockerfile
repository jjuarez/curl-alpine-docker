FROM alpine:3.10.3@sha256:c19173c5ada610a5989151111163d28a67368362762534d8a8121ce95cf2bd5a
LABEL \
  org.label-schema.-maintainer="javier.juarez@gmail.com" \
  org.label-schema.name="curl" \
  org.label-schema.description="The minimal curl image based on alpine 3.10" \
  org.label-schema.url="https://github.com/jjuarez/curl-alpine-docker" \
  org.label-schema.docker.Dockerfile="Dockerfile"


ENV CURL_VERSION 7.66.0-r0

RUN apk add --no-cache \
    ca-certificates \
    nghttp2-libs \
    openssl \
    curl=${CURL_VERSION}

ENTRYPOINT ["/usr/bin/curl"]
CMD ["-h"]
