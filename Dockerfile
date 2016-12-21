from ruby:2.3-slim

# install packages

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  libpq-dev

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . ./

EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b", "0.0.0.0"]