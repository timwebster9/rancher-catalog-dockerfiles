#!/bin/bash

# start Squid process
squid -f /data/squid.conf
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start squid: $status"
  exit $status
fi

SQUID_LOG=/var/log/squid/access.log

# Wait for log and tail for container output
while /bin/true; do
  if [ -f $SQUID_LOG ]; then
    tail -f $SQUID_LOG
    break
  fi
done

# Keep container running.
while /bin/true; do
  sleep 60
done