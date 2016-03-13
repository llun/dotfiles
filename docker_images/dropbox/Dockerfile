FROM debian:jessie
MAINTAINER llun<null@llun.me>
WORKDIR /opt/dropbox
RUN mkdir -p /opt/dropbox/data && \
    rm -r /root && \
    ln -s /opt/dropbox/data /root
ADD ./dropbox.tgz /opt/dropbox/
EXPOSE 17500
CMD /opt/dropbox/.dropbox-dist/dropboxd > /var/log/dropbox
