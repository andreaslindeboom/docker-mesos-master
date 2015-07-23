FROM ubuntu:trusty

ENV UPDATED_AT 2015-07-23 10:54

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
    echo deb http://repos.mesosphere.io/ubuntu trusty main > /etc/apt/sources.list.d/mesosphere.list && \
    apt-get update && \
    apt-get -y install mesos

ENV MESOS_WORK_DIR /tmp/mesos

CMD [ "/usr/sbin/mesos-master" ]

