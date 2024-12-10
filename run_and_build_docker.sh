#!/bin/bash
echo "stopping existing container"
sudo docker stop test-run && sudo docker rm test-run 
echo "rebuilding container"
sudo docker build . -t test
echo "running container"
sudo docker run --name test-run -e POSTGRES_PASSWORD=pass -d test
echo "pausing for a few seconds while postgres starts"
sleep 5
echo "initializing pg_tde and sysbench"
sudo docker exec -i test-run bash < scripts/init_db.sh
echo "restarting the container"
sudo docker restart test-run
echo "container read!"
echo "run docker exec -it test-run bash to enter the container and run test"
