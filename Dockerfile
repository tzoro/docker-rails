FROM 2.7.4-alpine3.13

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN apk add --update shared-mime-info
RUN apk add --no-cache git build-base ruby-dev linux-headers libc-dev libxml2-dev libxslt-dev sqlite-dev nodejs-current yarn tzdata postgresql-dev imagemagick-dev

RUN gem install rails -v 6.1.3 --no-document
ADD . $APP_HOME