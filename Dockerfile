FROM       ubuntu:14.04
MAINTAINER Behance RE

RUN sudo apt-get update && apt-get install default-jre -y

ADD  https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-0.8.8.jar /elasticmq/elasticmq-0.0.8.jar
ADD  elasticmq.conf /elasticmq/elasticmq.conf
ADD  run /elasticmq/run
RUN  chmod +x /elasticmq/run

EXPOSE 9324

ENTRYPOINT ["/elasticmq/run"]
CMD        []
