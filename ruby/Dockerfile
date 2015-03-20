FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y ruby ruby-dev build-essential g++
RUN gem install bundler

EXPOSE 9000
ADD src /srv/ruby

RUN mkdir /srv/ruby/pids
RUN chmod a+w /srv/ruby/pids

WORKDIR /srv/ruby
RUN bundle install
CMD bundle exec unicorn -c /srv/ruby/config/unicorn.rb
