FROM alpine

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN apk add --no-cache aria2

ADD start.sh /start.sh
ADD aria2.conf /aria2.conf

RUN chmod +x /start.sh

WORKDIR /

VOLUME ["/aria2"]

EXPOSE 6800

CMD ["/start.sh"]