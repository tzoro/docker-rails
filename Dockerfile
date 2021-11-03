FROM 2.7.4-alpine3.13

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN apk add --update --no-cache shared-mime-info
RUN apk add git build-base ruby-dev linux-headers libc-dev libxml2-dev libxslt-dev sqlite-dev nodejs-current yarn tzdata postgresql-dev imagemagick6 imagemagick6-c++ imagemagick6-dev imagemagick6-libs ruby-rmagick

RUN gem install rails -v 6.1.3 --no-document
ADD . $APP_HOME