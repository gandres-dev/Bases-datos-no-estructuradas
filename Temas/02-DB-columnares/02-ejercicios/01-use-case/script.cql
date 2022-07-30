-- Partion key
-- La idea de casandra para el diseño es tener la información de los queries
-- dentro de la misma partion, esto hacer que las parationes seran rapidas
-- data relacionada en la misma paricion

-- Smaller partions best for quey performances

-- Ideal world
-- One query = Reads one partition
-- Partiion is the most atomict unit


-- Schema for Cassandra needs to be designed with quey patterns in mind.

-- Es una mala idea agregar caracteristicas y cosas en la aplicacion
-- que involucren queries despues del diseño  preliminar del esquema.


-- La mejor manera de usar Cassandra
-- Es definir  el conjunto de queries que vamos a necesitar y luego
-- diseñar el modelo en base estas queries

-- Cluster key
-- Dada una partion all the data is gonna be sorted by the clustering key
CREATE TABLE simple_temperature (
country text,
city text,
time_created timestamp,
temperature float,
PRIMARY KEY ((country, city), time_created));

-- Esta ordenada por time_created (clustering key)



CREATE KEYSPACE weather_demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE weather_demo;

-- Idea de este diseño
-- Partion key es country por lo que por cada country sera un nodo nuevo
-- en nuestro cluster. Si recuperamos USA estamos haciendo al nodo USA y 
-- obtendremos todos los usarios que pertences a ese nodo

CREATE TABLE temperature_by_country (
country text,
city text,
weather_station text,
temperature float,
time_created timestamp,
PRIMARY KEY (country, city, weather_station, time_created));

SELECT * FROM temperature_by_country;

-- Consulta: Obtener la temperatura por country
SELECT * FROM temperature_by_country WHERE country='USA';

-- Tu no puede hacer un where weather_station='A' o otro campo
-- Es necesario especificar la partion key 
SELECT * FROM temperature_by_country WHERE weather_station='A';




