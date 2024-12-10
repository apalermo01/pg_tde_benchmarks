psql \
  -U postgres \
  --dbname=postgres \
  --echo-all \
  --file=scripts/init_db.sql

psql \
  -U postgres \
  --dbname=sbtest \
  --echo-all \
  --file=scripts/init_sbtest.sql

echo 'host sbtest sbtest 127.0.0.1:5432 md5' >> /var/lib/postgresql/data/pg_hba.conf

