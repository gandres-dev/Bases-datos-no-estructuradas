FROM ubuntu:focal

RUN apt-get update \
    && apt-get install -y wget openjdk-11-jdk \
    && wget https://neo4j.com/artifact.php?name=neo4j-community-4.2.6-unix.tar.gz \
    && tar -xzf artifact.php?name=neo4j-community-4.2.6-unix.tar.gz \
    && rm artifact.php?name=neo4j-community-4.2.6-unix.tar.gz \
    && apt-get remove -y wget \
    && apt-get autoremove -y \
    && apt-get clean

ENV PATH="/neo4j-community-4.2.6/bin:${PATH}"
COPY neo4j.conf /neo4j-community-4.2.6/conf/

WORKDIR /neo4j

ENTRYPOINT ["bash"]
