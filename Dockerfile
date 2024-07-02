FROM ruby:2.7

# Set the working directory
WORKDIR /usr/src/app

# Copy Gemfile and Gemfile.lock
COPY Gemfile /usr/src/app/

# Install dependencies
RUN bundle install

# Copy the rest of the application code
COPY . /usr/src/app/

# Specify the command to run on container start
CMD ["ruby", "http_server.rb"]
