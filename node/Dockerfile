FROM node:16-buster
WORKDIR /

ARG DUMB_INIT_VERSION=1.2.2
RUN curl -sSLf -o /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION}_amd64 \
	&& chmod +x /usr/local/bin/dumb-init

COPY . .

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["node", "index.js"]
