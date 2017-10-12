FROM  alpine:latest
LABEL maintainer=jon@jaggersoft.com

RUN apk --update --no-cache add \
    openssl ca-certificates \
    ruby ruby-io-console ruby-dev ruby-irb ruby-bundler ruby-bigdecimal \
    bash tzdata

RUN apk add --update --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ tini
ENTRYPOINT [ "/sbin/tini", "--" ]

RUN echo 'gem: --no-document' > ~/.gemrc
COPY Gemfile /app/
WORKDIR /app

RUN apk --update add --virtual build-dependencies build-base \
  && bundle install && gem clean \
  && apk del build-dependencies \
  && rm -vrf /var/cache/apk/*

RUN export RACK_ENV='production'

WORKDIR /app

COPY . /app

ARG PORT
EXPOSE ${PORT}

ENV PORT=${PORT}
CMD [ "./up.sh" ]
