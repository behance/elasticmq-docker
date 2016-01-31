# ElasticMQ-Docker

Containerized [ElasticMQ](https://github.com/adamw/elasticmq)
Used for dev environments that [integrate with AWS SQS](http://labs.encoded.io/2013/02/03/testing-amazon-sqs-locally-with-elasticmq/)

By default, the run script for this container will attempt to parse the IP of the docker bridge that the container is attached to and place it into the REST config.

When connecting via a local host on a non Linux machine, the queue url returned will be incorrect.  To work correctly on these systems it's necessary to provide the ip provided by boot2docker/docker-machine as a NODE_HOST environment variable.  This will be used in place of the docker bridge IP.

[Docker Hub](https://hub.docker.com/r/tddmonkey/elasticmq/)
