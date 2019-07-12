FROM ruby:2.6.2

RUN gem install foreman

WORKDIR /usr/src/app

COPY . .
RUN bundle install
CMD ["foreman", "start"]
