FROM debian:trixie
LABEL maintainer="gradientskier <gradientskier@gmail.com>"

RUN apt-get update && apt-get -y upgrade && \
apt install -y nginx libnginx-mod-http-image-filter libnginx-mod-http-geoip libnginx-mod-http-xslt-filter libnginx-mod-http-js libnginx-mod-stream libnginx-mod-stream-geoip

RUN mkdir /etc/nginx/stream.conf.d

ADD nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
