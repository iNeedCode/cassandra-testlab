
## Cassandra Local Test Lab




### Docker

#### Startup test cassandra cluster
> docker-compose up

#### cqlsh
> docker exec -it \`docker-compose ps -q | sed -n '1p'\` cqlsh

#### Nodetool
- Run `nodetool info` on host 1
> docker exec \`docker-compose ps -q | sed -n '1p'\` nodetool info

- Run `nodetool status` on host 2
> docker exec \`docker-compose ps -q | sed -n '2p'\` nodetool status





### Vagrant 
**Not yet implemented**
- vagrant init puppetlabs/centos-6.6-64-nocm
- extract cassandra in the ./src dir
- install jdk RPM located in ./src
- in conf/cassandra.yaml, uncomment:

    data_file_directories:
         - /var/lib/cassandra/data
    commitlog_directory: /var/lib/cassandra/commitlog

- create /var/lib/cassandra/data, and /var/lib/cassandra/commitlog.  chown -R vagrant.vagrant /var/lib/cassandra





