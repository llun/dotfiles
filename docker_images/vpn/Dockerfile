FROM debian:latest
MAINTAINER Maythee Anegboonlap <null@llun.me>

ADD server.conf /etc/openvpn/
ADD client.conf /etc/openvpn/

RUN apt-get update && \
  apt-get -y install apt-utils easy-rsa liblzo2-2 libpkcs11-helper1 opensc opensc-pkcs11\
  openvpn 

EXPOSE 22

