FROM ubuntu:14.04
MAINTAINER llun<null@llun.me>
RUN apt-get update && \
    apt-get install -y curl sudo vim cifs-utils && \
    curl https://downloads.plex.tv/plex-media-server/0.9.15.6.1714-7be11e1/plexmediaserver_0.9.15.6.1714-7be11e1_amd64.deb -o /tmp/plexmediaserver_0.9.15.6.1714-7be11e1_amd64.deb && \
    dpkg -i /tmp/plexmediaserver_0.9.15.6.1714-7be11e1_amd64.deb && \
    mkdir /plex && chown plex:plex /plex
ADD config /etc/default/plexmediaserver
EXPOSE 1900 3005 32400 32410 32412 32413 32414 32469
CMD sudo -u plex -E sh -c /usr/sbin/start_pms
