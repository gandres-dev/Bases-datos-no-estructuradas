FROM ubuntu:focal

RUN apt-get update \
    && apt-get install -y wget python openjdk-8-jdk \
    && wget https://dlcdn.apache.org/cassandra/4.0.3/apache-cassandra-4.0.3-bin.tar.gz \
    && tar -xzf apache-cassandra-4.0.3-bin.tar.gz \
    && rm apache-cassandra-4.0.3-bin.tar.gz \
    && apt-get remove -y wget python \
    && apt-get autoremove -y \
    && apt-get clean

ENV PATH="/apache-cassandra-4.0.3/bin:${PATH}"

WORKDIR /cassandra

ENTRYPOINT ["bash"]

VOLUME /source
