FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.1

RUN gem install http_status_checker --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["http_status_checker"]
CMD ["--help"]
