FROM ruby:2.7.8

WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
CMD ["bundle", "exec", "rubocop-daemon", "start", "--no-daemon", "--binding", "0.0.0.0", "--port", "3001"]
