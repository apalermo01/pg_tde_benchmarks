#!/bin/bash 

echo "running script $1"
sysbench \
  --db-driver=pgsql \
  --report-interval=2 \
  --pgsql-host=5432 \
  --pgsql-user=sbtest \
  --pgsql-password=pass \
  --pgsql-db=sbtest \
  $1 \
  run
