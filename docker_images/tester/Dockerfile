FROM debian:latest
MAINTAINER Maythee Anegboonlap<null@llun.me>
WORKDIR /opt/tester

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

ADD node-v5.9.0-linux-x64.tar.xz /tmp

RUN apt-get update\
  && apt-get install -y locales aptitude vim build-essential curl ssh git \
  libcairo2-dev libjpeg-dev libpango1.0-dev libgif-dev build-essential g++\
  && locale-gen en_US.UTF-8\
  && cp -r /tmp/node-v5.9.0-linux-x64/* /usr/local\
