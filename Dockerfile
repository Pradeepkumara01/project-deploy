FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /usr/src/app/
COPY Gemfile Gemfile.lock /usr/src/app/
RUN bundle install
COPY . /usr/src/app/
RUN bundle exec rake assets:precompile
EXPOSE 80
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "80"]
