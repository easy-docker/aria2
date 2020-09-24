#!/bin/sh
if [ ! -f /aria2/conf/aria2.conf ]; then
	mkdir -p /aria2/conf
	cp /aria2.conf /aria2/conf/aria2.conf
	if [ $SECRET ]; then
		echo "rpc-secret=${SECRET}" >> /aria2/conf/aria2.conf
	fi
	touch /aria2/conf/save-session.list
    touch /aria2/conf/lasttrackers
fi
if [ ! -f /aria2/down/logs.txt ]; then
	mkdir -p /aria2/down
    touch /aria2/down/logs.txt
fi
while [[ true ]]; do
    runing=`ps|grep aria2c|grep -v grep |wc -l`;
    if [[ "x$runing" == "x1" ]]; then
        if [[ "x$UPTRACKER" == "x1" ]]; then
            /trackers.sh;
        fi
    else
        echo start;
        /aria2.sh start;
    fi
    sleep 86400;
done
