#!/bin/bash

mkdir /run/sendsigs.omit.d &
/etc/init.d/rpcbind start &
/usr/bin/ganesha.nfsd -f /etc/ganesha/ganesha.conf -L /var/log/ganesha/ganesha.log -N NIV_DEBUG -F | tee /var/log/ganesha.log
