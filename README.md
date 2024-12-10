# pg_tde_benchmarks
performance benchmarking for the pg_tde extrension from Percona

# Requirements

All you should need to run this project is docker in a linux environment. However I haven't verified this in a clean VM yet.

# Building the project

0. Start the docker daemon (I need to do this on Endeavour OS but you shouldn't have to run this if you use something like ubuntu)
```
sudo systemctl start docker
```

1. Update the submodules
```
git submodule update --init --recursive
```

2. Run the build script
```
bash run_and_build_docker.sh
```

this script does a few things:
- stops and removes the container if it's already running
- re-builds the container 
- starts the container 
- set up the pg_tde extension 
- set up sysbench 
- restart the containe

3. Enter into the container 
```
sudo docker exec -it test-run bash
```

4. Run the proof-of-concept script 
```
bash test_run.sh sysbench/bulk_insert.lua
```
