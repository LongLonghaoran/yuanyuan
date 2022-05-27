FROM ruby:3.0.0
RUN mkdir /app
COPY Gemfile Gemfile.lock /app/
WORKDIR /app
RUN bundle install
ENV RAILS_ENV=production
ENV WEB_CONCURRENCY=2
ENV YUANYUAN_HOST="eddy.money.com"
COPY . /app/
RUN rake db:migrate
RUN rails assets:precompile
CMD ["puma", "-C", "config/puma/production.rb"]
