#!/bin/bash

# start Squid process
/usr/sbin/named -f -u bind -4
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start bind: $status"
  exit $status
fi

BIND_LOG=/var/log/query.log

# Wait for log and tail for container output
while /bin/true; do
  if [ -f $BIND_LOG ]; then
    tail -f $BIND_LOG
    break
  fi
done

# Keep container running.
while /bin/true; do
  sleep 60
done