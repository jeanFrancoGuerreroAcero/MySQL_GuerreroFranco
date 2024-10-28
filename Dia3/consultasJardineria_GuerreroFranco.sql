CREATE DATABASE jardineria;

USE jardineria;

CREATE TABLE oficina(
	codigo_oficina VARCHAR(10) PRIMARY KEY NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    region  VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    linea_direccion1 VARCHAR(50) NOT NULL,
    linea_direccion2 VARCHAR(50) NOT NULL
);

CREATE TABLE gama_producto(
	gama VARCHAR(50) NOT NULL,
    descripcion_texto TEXT,
    descripcion_html TEXT,
    imagen VARCHAR(250) NOT NULL
);
    
    