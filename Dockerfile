# An edge-based alpine which installs bash and adds the testing repository
FROM alpine:edge

MAINTAINER Nathan Toone "nathan@toonetown.com"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --no-cache bash

# Add the docker_pipe command (which is super helpful)
ADD https://gist.githubusercontent.com/toonetown/cbb006b81e3e54eccbec301af9dbf7bf/raw   /usr/local/bin/docker_pipe
RUN chmod 755 /usr/local/bin/docker_pipe

CMD [ "/bin/bash" ]
