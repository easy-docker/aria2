#!/bin/sh
if [ ! -f /aria2/conf/aria2.conf ]; then
	mkdir -p /aria2/conf
	cp /aria2.conf /aria2/conf/aria2.conf
	if [ $SECRET ]; then
		echo "rpc-secret=${SECRET}" >> /aria2/conf/aria2.conf
	fi
	touch /aria2/conf/save-session.list
fi
if [ ! -f /aria2/down/logs.txt ]; then
	mkdir -p /aria2/down
	touch /aria2/down/logs.txt
fi
aria2c --conf-path=/aria2/conf/aria2.conf --log=/aria2/down/logs.txt
