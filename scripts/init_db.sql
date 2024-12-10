SELECT pg_tde_add_key_provider_file('file','/tmp/pgkeyring');
SELECT pg_tde_set_principal_key('my-principal-key','file');

CREATE USER sbtest WITH PASSWORD 'pass';
CREATE DATABASE sbtest;

GRANT ALL PRIVILEGES ON DATABASE sbtest to sbtest;

