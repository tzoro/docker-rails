FROM ruby:2.7-alpine

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN apk add --update --no-cache build-base ruby-dev linux-headers libc-dev libxml2-dev libxslt-dev sqlite-dev nodejs-current yarn tzdata postgresql-dev imagemagick
RUN apk add --no-cache git
RUN gem install rails -v 6.1.0 --no-document
ADD . $APP_HOME