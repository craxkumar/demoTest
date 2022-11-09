FROM ruby:2.7.0

RUN apt-get update -qq \
&& apt-get install -y nodejs

ADD . /workDir
WORKDIR /workDir

RUN gem install bundler
RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]