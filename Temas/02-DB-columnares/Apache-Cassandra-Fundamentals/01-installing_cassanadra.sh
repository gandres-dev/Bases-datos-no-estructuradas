#! /bin/bash

# Necitaremos de maquina virtual de java
export JAVA_HOME="/usr/lib/jvm/default-java"

# Descargamos  tar de cassandra
wget https://archive.apache.org/dist/cassandra/4.0.0/apache-cassandra-4.0.0-bin.tar.gz

# Extraemos el archivo
tar -xzf apache-cassandra-4.0.0-bin.tar.gz

# Movemos el programa en /usr/share
mv apache-cassandra-4.0.0 /usr/share/cassandra
# Eliminamos el tar
rm apache-cassandra-4.0.0-bin.tar.gz

# Exportamos la ubicacion del programa
export PATH="$PATH:/usr/share/cassandra/bin:/usr/share/cassandra/tools/bin"

