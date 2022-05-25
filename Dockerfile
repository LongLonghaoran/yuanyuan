FROM ruby:3.0.0
RUN mkdir /app
COPY Gemfile Gemfile.lock /app/
WORKDIR /app
RUN bundle install
COPY app /app/app
COPY config /app/config
COPY bin /app/bin
COPY db /app/db
COPY lib /app/lib
COPY config.ru /app/config.ru
COPY public /app/public
COPY vendor /app/vendor

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]