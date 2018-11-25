FROM alpine:3.8

RUN apk --update --no-cache add ca-certificates openssh-client

RUN mkdir -p /root/.ssh \
    && chmod 0700 /root/.ssh

ENTRYPOINT ["ssh"]
