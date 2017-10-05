# etcd-compose
A docker compose file used to demonstrate how etcd can be deployed in swarm

## Start a cluster of 3 etcd with swarm.  
This assumes docker swarm installed.
    make run

## Stop the cluster
This assumes docker swarm installed.
    make stop

## Tail all 3 etcd logs and 
    make log
## Stop tailling the logs 
    make killog
