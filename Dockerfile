FROM cassandra:latest



RUN sed -i -e 's/^LOCAL_JMX=yes.*/LOCAL_JMX=no/g' "$CASSANDRA_CONFIG/cassandra-env.sh"
RUN sed -i -e 's/.*jmxremote.authenticate=true.*//g' "$CASSANDRA_CONFIG/cassandra-env.sh"
RUN sed -i -e 's/.*jmxremote.password.file=.*//g' "$CASSANDRA_CONFIG/cassandra-env.sh"



