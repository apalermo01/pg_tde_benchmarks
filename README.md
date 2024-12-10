# pg_tde_benchmarks
performance benchmarking for the pg_tde extrension from Percona


# Building the project

Update the submodules
```
git submodule update --init --recursive
```

```
sudo docker build -t test .
```

```
sudo docker run --name test-run -e POSTGRES_PASSWORD=pass -d test
```

```
sudo docker exec -it test-run psql -U postgres
```

```
sudo docker exec -it test-run bash
```

Set up the extension:

```
psql -U postgres 
SELECT pg_tde_add_key_provider_file('file','/tmp/pgkeyring');
SELECT pg_tde_set_principal_key('my-principal-key','file');
```

Set up sysbench (https://dinfratechsource.wordpress.com/2021/05/14/postgresql-performance-benchmark-using-sysbench/)

Then restart the docker container

```
sudo docker restart test-run
```
