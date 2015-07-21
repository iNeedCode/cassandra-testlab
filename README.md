



- vagrant init puppetlabs/centos-6.6-64-nocm
- extract cassandra in the ./src dir
- install jdk RPM located in ./src
- in conf/cassandra.yaml, uncomment:

    data_file_directories:
         - /var/lib/cassandra/data
    commitlog_directory: /var/lib/cassandra/commitlog

- create /var/lib/cassandra/data, and /var/lib/cassandra/commitlog.  chown -R vagrant.vagrant /var/lib/cassandra





