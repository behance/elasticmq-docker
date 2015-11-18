# ElasticMQ-Docker

Containerized [ElasticMQ](https://github.com/adamw/elasticmq)
Used for dev environments that [integrate with AWS SQS](http://labs.encoded.io/2013/02/03/testing-amazon-sqs-locally-with-elasticmq/)

By default, the run script for this container will attempt to parse the IP of the docker bridge that the container is attached to and place it into the REST config. You **can** override it by just passing in an IP/address, however this is not recommended.

[Docker Hub](https://registry.hub.docker.com/u/behance/elasticmq-docker)
