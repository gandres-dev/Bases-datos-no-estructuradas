
Una vez creado nuestra arquitectura con docker-compose, lo que haremos ahora es
conectarnos con el cliente entrando al conedor y corriendo redis-cli 

Le debemos que indicar la direccion ip del otro contenedor donde esta
corriendo el servidor, una ventaja de docker-compose es que al crear los
contenedore le asocia su direccion con su nombre, por lo que podemos utilizarlo
sin tener que poner su id (Habra algunos casos que si)

> redis -h redis_servidor 

Podria surgir este anuncio al querer contectar al servidor redis del contenedor 
DENIED Redis is running in protected mode because protected mode is enabled,
no bind address was specified, no authentication password is requested to clients.
In this mode connections are only accepted from the loopback interface. 
If you want to connect from external computers to Redis you may adopt one
of the following solutions: 1) Just disable protected mode sending the command 
'CONFIG SET protected-mode no' from the loopback interface by connecting to Redis
from the same host the server is running, however MAKE SURE Redis is not publicly
accessible from internet if you do so. Use CONFIG REWRITE to make this change permanent.
2) Alternatively you can just disable the protected mode by editing the Redis configuration file,
and setting the protected mode option to 'no', and then restarting the server.
3) If you started the server manually just for testing, restart it with the '--protected-mode no' option. 4)
Setup a bind address or an authentication password.
NOTE: You only need to do one of the above things in order for the server to start accepting connections from the outside.

Lo que debemos hacer es modificar nuestro Dockerfile y configurar con
--protected-mode no 
en el entrypoint



