FROM debian:latest
MAINTAINER Maythee Anegboonlap<null@llun.me>
WORKDIR /opt/ride

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ADD ride /opt/ride
ADD env /opt/ride/.env
ADD node-v5.9.0-linux-x64.tar.xz /tmp

RUN apt-get update\
  && apt-get -y install locales libcairo2 libjpeg62-turbo libpango-1.0-0 libgif4\
  && locale-gen en_US.UTF-8\
  && cp -r /tmp/node-v5.9.0-linux-x64/* /usr/local\
  && node sync.js

EXPOSE 3000
CMD node server.js
