FROM ruby:2.5.3

ENV APP_PATH=/app

WORKDIR ${APP_PATH}

RUN apt-get update && apt-get install -y build-essential libpq-dev postgresql-client

COPY Gemfile Gemfile.lock ${APP_PATH}/
RUN bundle install
COPY . /app
