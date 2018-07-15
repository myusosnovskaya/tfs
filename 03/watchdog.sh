#!/bin/bash

LOG_OUTPUT=/root/httpd_start.log
HTTPD_PATH=/home/user17/src/homework/materials/class03/src/tinyhttpd/tinyhttpd/httpd

while true; do
	HTTPD_ENTRIES=`ps aux | grep httpd | wc -l`
	
	if [ $HTTPD_ENTRIES -eq 1 ]; then
		echo -n `date "+%D,%R"` >> $LOG_OUTPUT
		echo " httpd was not running, starting..." >> $LOG_OUTPUT
		exec $HTTPD_PATH &
	fi

	sleep 1
done
