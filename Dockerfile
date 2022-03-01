FROM ruby:2.7.1-alpine as Builder

RUN apk add --update --no-cache \
    build-base \
    postgresql-dev \
    git \
    tzdata \
    yarn

WORKDIR /app

COPY Gemfile /app/
RUN bundle install
RUN yarn install --check-files

COPY . /app/

FROM ruby:2.7.1-alpine as Final

RUN apk add --update --no-cache \
    build-base \
    postgresql-dev \
    git \
    tzdata \
    yarn

COPY --from=Builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=Builder /app/ /app/

WORKDIR /app

CMD ["rails", "server", "-b", "0.0.0.0"]