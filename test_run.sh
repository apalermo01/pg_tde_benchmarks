#!/bin/bash 

echo "running script $1"
sysbench \
  --db-driver=pgsql \
  --report-interval=2 \
  --pgsql-port=5432 \
  --pgsql-user=sbtest \
  --pgsql-password=pass \
  --pgsql-db=sbtest \
  --threads=2 \
  --oltp-tables-count=4 \
  --oltp-table-size=100 \
  $1 \
  prepare

sysbench \
  --db-driver=pgsql \
  --report-interval=2 \
  --pgsql-port=5432 \
  --pgsql-user=sbtest \
  --pgsql-password=pass \
  --pgsql-db=sbtest \
  --threads=2 \
  --oltp-tables-count=4 \
  --oltp-table-size=100 \
  $1 \
  run
