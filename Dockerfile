FROM ruby:3.1.2-alpine as base
RUN #apk add --update build-base openssl-dev


RUN apk add --update build-base \
    bash openssh-client git \
    postgresql-dev libpq libpq-dev \
    mysql sqlite-dev openssl-dev mariadb-dev
RUN gem install bundler --no-document

WORKDIR /app
COPY Gemfile* /app/

RUN bundler install

COPY . /app

CMD rackup