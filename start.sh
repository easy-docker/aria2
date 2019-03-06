#!/bin/sh
if [ ! -f /aria2/conf/aria2.conf ]; then
	mkdir /aria2/conf
	mkdir /aria2/down
	cp /aria2.conf /aria2/conf/aria2.conf
	if [ $SECRET ]; then
		echo "rpc-secret=${SECRET}" >> /aria2/conf/aria2.conf
	fi
    touch /aria2/conf/save-session.list
    touch /aria2/logs.txt
fi
aria2c --conf-path=/aria2/conf/aria2.conf --log=/aria2/logs.txt
