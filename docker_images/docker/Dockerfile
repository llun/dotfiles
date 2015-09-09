FROM debian
MAINTAINER Maythee Anegboonlap <null@llun.in.th>

RUN echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y --no-install-recommends \
  docker.io vim aptitude apt-utils wget
RUN wget https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz -O /tmp/go.tgz
RUN tar zxf /tmp/go.tgz

