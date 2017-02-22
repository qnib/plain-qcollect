#!/bin/bash



if [ -f /etc/docker-hostname ];then
    if [ $(tail -n1 /etc/docker-hostname |grep -c =) -eq 1 ];then
	source /etc/docker-hostname
        export QCOLLECT_HOSTNAME=${hostname}
    else
        export QCOLLECT_HOSTNAME=$(cat /etc/docker-hostname)
    fi
else
    export QCOLLECT_HOSTNAME=${QCOLLECT_HOSTNAME-${HOSTNAME}}
fi

/usr/bin/qcollect -c /etc/qcollect/qcollect.conf
