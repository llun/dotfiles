FROM debian
MAINTAINER Maythee Anegboonlap <null@llun.in.th>

ADD backport.list /etc/apt/source.list.d
RUN apt-get update && apt-get install -y --no-install-recommends \
  docker.io vim aptitude 

