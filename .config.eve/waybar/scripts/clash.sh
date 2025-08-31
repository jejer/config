#!/bin/bash
#set -x

ENABLED=🌐
DISABLED=🔴

on() {
	~/Downloads/clash-for-linux/start.sh > /dev/null 2>&1
}

off() {
	~/Downloads/clash-for-linux/shutdown.sh > /dev/null 2>&1
}

if ss -tnulp|grep -q 7890; then
	true
else
	on
fi

if ss -tnulp|grep -q 7890; then
	echo $ENABLED;
else
	echo $DISABLED;
fi

