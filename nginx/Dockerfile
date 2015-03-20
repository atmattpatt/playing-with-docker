FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y nginx
RUN update-rc.d -f nginx remove

EXPOSE 8080
ADD nginx.conf /srv/nginx.conf

CMD /usr/sbin/nginx -c /srv/nginx.conf
