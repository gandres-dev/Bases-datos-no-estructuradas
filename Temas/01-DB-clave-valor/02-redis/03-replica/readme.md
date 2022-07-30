Para replicar hacia un nodo, podemos hacer lo indidicando a que nodo se
mandaran las copias al momento de ejecutar
> redis-server --protected-mode no --replicaof ipnodo puerto

Es procted-mode no porque las conexeciones vienene de otros contenedores (que
al final simular diferentes maquinas de diferentes lugares)

Esta canfiguracion podemos lograrlo modificando el el docker-compose con
command que agrega más argumetno al entrypoint


Podemos conectarnos a la replica como al servidor, diferencia esta que en la
replica solo es posible modo lectura y en el servidor escritura/lectura.

Entrando al contenedor del cliente
docker exec --it redis_cliente_1 bash

Conectarno a la replica 
$ redis-cli -h redis_replica

Conectarnos al servidor 
$ redis-cli -h redis_servidor



