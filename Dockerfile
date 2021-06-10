FROM quay.io/cybozu/golang:1.16-focal as builder

WORKDIR /
COPY . .
RUN make build

FROM quay.io/cybozu/ubuntu:20.04

ARG DUMB_INIT_VERSION=1.2.2

RUN curl -sSLf -o /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION}_amd64 \
	&& chmod +x /usr/local/bin/dumb-init

COPY --from=builder /go-sleep /usr/local/bin

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["/usr/local/bin/go-sleep"]
