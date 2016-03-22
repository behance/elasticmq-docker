#!/bin/bash

CONTAINER_ID=$(hostname)
BRIDGE=$(cat /etc/hosts|grep $CONTAINER_ID|cut -s -f1)
if [[ ! -z $1 ]]; then BRIDGE=$1; fi

CONFIG=$(cat <<EOF
// https://github.com/adamw/elasticmq#installation-stand-alone
include classpath("application.conf")

// What is the outside visible address of this ElasticMQ node (used by rest-sqs)
node-address {
    protocol = http
    // this is specifically for docker
    host = $BRIDGE
    port = 9324
    context-path = ""
}

rest-sqs {
    enabled = true
    bind-port = 9324
    bind-hostname = "0.0.0.0"
    // Possible values: relaxed, strict
    sqs-limits = relaxed
}
EOF
)

echo -e "$CONFIG" > /elasticmq/elasticmq.conf
echo "Wrote config to /elasticmq/elasticmq.conf:"
cat  /elasticmq/elasticmq.conf
echo "============================================"

java -jar -Dconfig.file=/elasticmq/elasticmq.conf /elasticmq/elasticmq.jar
