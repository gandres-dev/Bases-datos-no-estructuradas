FROM ubuntu:focal

RUN apt-get update \
    && apt-get install -y wget libcurl4 openssl \
    && wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu2004-5.0.6.tgz \
    && tar -xzf mongodb-linux-x86_64-ubuntu2004-5.0.6.tgz \
    && cd mongodb-linux-x86_64-ubuntu2004-5.0.6/ \
    && cp bin/* /usr/local/bin/ \
    && cd .. \
    && rm mongodb-linux-x86_64-ubuntu2004-5.0.6.tgz \
    && rm -r mongodb-linux-x86_64-ubuntu2004-5.0.6/ \
    && mkdir -p /data/db \
    && apt-get remove -y wget \
    && apt-get autoremove -y \
    && apt-get clean

WORKDIR /mongo

ENTRYPOINT ["bash"]

VOLUME /data
