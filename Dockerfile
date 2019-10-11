FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y build-essential apt-utils

# for postgres
RUN apt-get install -y libpq-dev

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# for a JS runtime
RUN apt-get install -y nodejs

# Yarn Package Management
RUN apt-get install -y yarn

# up-to-date bundler
RUN gem install bundler

ENV APP_HOME /whispr
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

ADD . $APP_HOME

ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"

COPY ./.docker/docker-entrypoint.sh $APP_HOME/
RUN chmod +x $APP_HOME/docker-entrypoint.sh
ENTRYPOINT ["./docker-entrypoint.sh"]
