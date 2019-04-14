#!/bin/sh
sed 
	-e "s~#MINUTE#~${MINUTE}~" \
	-e "s~#HOUR#~${HOUR}~" \
	/etc/anacrontab.temp > /etc/anacrontab
