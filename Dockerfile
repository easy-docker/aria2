FROM alpine

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add 'aria2=1.35.0-r0'

ADD aria2.sh /aria2.sh
ADD start.sh /start.sh
ADD trackers.sh /trackers.sh
ADD aria2.conf /aria2.conf

RUN chmod +x /aria2.sh && \
    chmod +x /start.sh && \
    chmod +x /trackers.sh

WORKDIR /

ENV UPTRACKER 0

VOLUME ["/aria2"]

EXPOSE 6800

CMD ["/start.sh"]
