CREATE DATABASE migrupoT2;  -- crear una base de datos

USE migrupoT2; -- utilizar mi base de datos

CREATE TABLE vehiculos(
VIN INT PRIMARY KEY AUTO_INCREMENT,
marca VARCHAR(50) NOT NULL,
modelo VARCHAR(30) NOT NULL,
Año INT NOT NULL,
color VARCHAR(20) NOT NULL,
Tipo_combustible VARCHAR(30) NOT NULL,
Estado VARCHAR(30) NOT NULL
);

DESCRIBE vehiculos;

CREATE TABLE mantenimiento(
ID_MANTENIMIENTO INT PRIMARY KEY AUTO_INCREMENT,
Tipo_SERVICIO VARCHAR(30) NOT NULL,
VIN INT NOT NULL,
FOREIGN KEY (VIN) REFERENCES vehiculos(VIN)
);

CREATE TABLE vehiculos_clientes(
ID_VEHICULOS_CLIENTES INT PRIMARY KEY AUTO_INCREMENT,
ID_vehiculos INT NOT NULL,
ID_clientes INT NOT NULL,
FOREIGN KEY (ID_vehiculos) REFERENCES vehiculos(VIN),
FOREIGN KEY (ID_clientes) REFERENCES vehiculos(VIN)
);

CREATE TABLE clientes(
ID_clientes INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50) NOT NULL,
telefono INT NOT NULL,
correo_electronico VARCHAR(100) NOT NULL,
direccion VARCHAR(30) NOT NULL
);

CREATE TABLE clientes_VENDEDORES(
clientes_VENDEDORES INT PRIMARY KEY AUTO_INCREMENT,
numero_empleado INT NOT NULL,
ID_clientes INT NOT NULL,
FOREIGN KEY (numero_empleado) REFERENCES vendedores(numero_empleado),
FOREIGN KEY (ID_clientes) REFERENCES clientes(ID_clientes)
);

CREATE TABLE vendedores(
numero_empleado INT PRIMARY KEY AUTO_INCREMENT,
fecha_contratacion VARCHAR(20),
Nombre VARCHAR(40),
ID_ventas INT NOT NULL,
FOREIGN KEY (ID_venta) REFERENCES clientes(ID_venta)
);

CREATE TABLE vendedores_clientes(
ID_vendedores_clientes INT PRIMARY KEY AUTO_INCREMENT,
ID_ventas INT NOT NULL,
numero_empleado INT NOT NULL,
FOREIGN KEY (ID_ventas) REFERENCES ventas(ID_ventas),
FOREIGN KEY (numero_empleado) REFERENCES vendedores(numero_empleado)
);

CREATE TABLE ventas(
ID_ventas INT PRIMARY KEY AUTO_INCREMENT,
fecha_venta VARCHAR(20),
total_transaccion INT NOT NULL,
metodo_pago VARCHAR(30)
);

CREATE TABLE realciones_requisitos(
realciones_requisitos INT PRIMARY KEY AUTO_INCREMENT,
VIN INT NOT NULL,
ID_venta INT NOT NULL,
FOREIGN KEY (VIN) REFERENCES vehiculos(VIN),
FOREIGN KEY (ID_venta) REFERENCES ventas(ID_venta)
)

