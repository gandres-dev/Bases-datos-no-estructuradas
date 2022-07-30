
Creamos una imagane con el nombre puesto en image y contenedroes
docker-compose up

Si existe ya una imagen no lo volvera a reconstruir por lo que tenemos indicarle explicitamente
docker-compose up --build


Una vez creado debemos ver indicarle cuales van a ser parte del cluster, pueden
verse solamente entre ello.
Lo haremo en el momento de conectarnos
> docker exec -it 04-clustering_redis_cliente_1 bash

Con WORKDIR en dockerfiles le indicamos que cree esa carpeta y que es nuestro
working directory.

Para concer ips ejecutamos el script
> docker exec -it 04-clustering_redis_cliente_1 bash
$ bash hosts2ip.sh


Con esto le indicamos que crea un cluster y que haga una replica por cada nodo,
es decir 3 master y 3 esclavos
redis-cli --cluster create 172.28.0.6:6379 172.28.0.2:6379 172.28.0.7:6379 172.28.0.8:6379 172.28.0.4:6379 172.28.0.3:6379 --cluster-replicas 1

Una vez la configuracion de clsuter, solo faltaria conectar al cluster con:
Eligimos cualquier nodo del cluster1
redis-cli -c -h redis_cluster1 -p 6379





Notas
redis_cluster.config
Commentar 
# bind 127.0.0.1 para no solo eschuche en localhost 
Poner 
protecetd-mode no 
