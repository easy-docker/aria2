#!/bin/sh
case "$1" in
    start)
        echo "Starting aria2c"
        aria2c --conf-path=/aria2/conf/aria2.conf --log=/aria2/down/logs.txt &
        ;;
    restart)
        killall aria2c &>/dev/null
        sleep 3
        aria2c --conf-path=/aria2/conf/aria2.conf --log=/aria2/down/logs.txt &
        ;;
    *)
        echo "Usage: /aria2.sh {start|restart}"
        exit 1
        ;;
esac
exit;
