#!/bin/sh
list=`wget -qO- https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all_ip.txt|awk NF|sed ":a;N;s/\n/,/g;ta"`
if [[ "x$list" == "x" ]]; then
    echo error;
    exit;
fi
confile=/aria2/conf/aria2.conf
lastfile=/aria2/conf/lasttrackers
lastlist=`cat $lastfile`
if [[ "x$list" != "x$lastlist" ]]; then
    echo $list > $lastfile
    if [ -z "`grep "bt-tracker=" $confile`" ]; then
        sed -i '$a bt-tracker='${list} $confile
        echo add......
    else
        sed -i "s@bt-tracker=.*@bt-tracker=$list@g" $confile
        echo update......
    fi
    /aria2.sh restart
else
    echo same
fi
