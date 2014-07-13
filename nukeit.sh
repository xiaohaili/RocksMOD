#!/bin/bash

###
# nukeit.sh : remove '.rocks-release' from the first partition of
#             each disk on the compute node
#
# Rev. 1  2014/7/11  hl
# prototype
###

for mp in $(cat /proc/mounts | egrep -v "proc|sysfs|devtmpfs|devpts|tmpfs|usbfs|autofs|^none|^sunrpc|^[0-9a-zA-Z.]*:" | awk '{print $2}' | sort | uniq); do
	rm -f "$mp/.rocks-release";
done
