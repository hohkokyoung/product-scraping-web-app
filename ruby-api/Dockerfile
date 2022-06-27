FROM ruby

WORKDIR /home/backend

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs

RUN bundle install

ENTRYPOINT [ "/bin/bash" ]