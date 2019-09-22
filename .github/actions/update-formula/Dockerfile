FROM ruby:2.6-alpine
RUN apk add --update git openssh coreutils
RUN gem install bundler

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY entrypoint.rb entrypoint.sh refined-github-safari.rb.erb /
ENTRYPOINT ["/entrypoint.sh"]
