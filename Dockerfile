FROM ruby:2.7.5-slim-buster

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN apt-get update
RUN apt-get install -y --no-install-recommends curl sudo
RUN apt-get install -y --no-install-recommends git g++ libpq-dev libsqlite3-dev libtool make shared-mime-info ruby-mimemagic ruby-nio4r automake autoconf ruby-dev libev-dev python3 libc-dev libxml2-dev libxslt-dev sqlite3 yarn tzdata postgresql
RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -
RUN sudo apt-get install -y nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update
RUN sudo apt-get install -y --no-install-recommends yarn

RUN gem install rails -v 6.1.5 --no-document
ADD . $APP_HOME