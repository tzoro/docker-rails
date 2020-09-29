FROM ruby:2.7-alpine

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN apk add --update --no-cache build-base ruby-dev linux-headers libc-dev libxml2-dev libxslt-dev sqlite-dev nodejs-current yarn tzdata
RUN gem install rails --no-document
ADD . $APP_HOME