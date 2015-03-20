FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y haproxy
RUN update-rc.d -f haproxy remove

EXPOSE 80
ADD haproxy.cfg /srv/haproxy.cfg

CMD /usr/sbin/haproxy -f /srv/haproxy.cfg
