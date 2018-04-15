FROM ruby:2.4.2

RUN apt-get update -qq && \
    apt-get install -y \
      build-essential \
      libpq-dev \
      nodejs

WORKDIR /home/graphql-ruby-demo

COPY Gemfile .
COPY Gemfile.lock .

RUN gem install bundler && \
    bundle install
