# ElasticMQ-Docker

Containerized [ElasticMQ](https://github.com/adamw/elasticmq)
Used for dev environments that [integrate with AWS SQS](http://labs.encoded.io/2013/02/03/testing-amazon-sqs-locally-with-elasticmq/)

By default, the run script for this container will attempt to parse the IP of the docker bridge that the container is attached to and place it into the REST config.

When connecting via a local host on a non Linux machine, the queue url returned will be incorrect.  To work correctly on these systems it's necessary to provide the ip provided by boot2docker/docker-machine as a NODE_HOST environment variable.  This will be used in place of the docker bridge IP. If you are using port mapping and the host port is not the same as ElasticMq (9324), you will also need to override the NODE_PORT environment variable so that it matches the mapped port on your host. Example below:
```
docker run -e NODE_HOST=`docker-machine ip default` -e NODE_PORT=8000 -p 8000:9324 tddmonkey/elasticmq
```

[Docker Hub](https://hub.docker.com/r/tddmonkey/elasticmq/)

# Change Log

**2018-01-31**
* Updated to latest ElasticMq (0.13.8)
* Added `BIND_PORT` environment var to run script, overriding REST server port

**2016-12-01**

* Upgraded to latest ElasticMq (0.11.1)
* Ability to use `custom.conf` override