#!/bin/bash

mkdir -p /etc/qcollect/conf.d
cat /opt/qnib/qcollect/etc/OpenTSDB.conf \
  |sed -e "s/QCOLLECT_OPENTSDB_PORT/${QCOLLECT_OPENTSDB_PORT}/" \
  > /etc/qcollect/conf.d/OpenTSDB.conf
