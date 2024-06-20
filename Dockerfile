FROM ruby:2.5
WORKDIR /usr/src/app/
COPY Gemfile /usr/src/app/
RUN bundle install
ADD http_server.rb /usr/src/app/
EXPOSE 80
CMD ["ruby", "/usr/src/app/http_server.rb"]
