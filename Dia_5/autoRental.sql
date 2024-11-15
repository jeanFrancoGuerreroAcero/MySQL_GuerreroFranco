create database AutoRenta;

use AutoRenta;

create table sucursales(
	id int primary key,
    ciudad varchar(30),
    telefono_fijo int,
    celular int(15),
    correo_electronico varchar(100)
);

create table clientes(
	id int primary key,
    cedula int,
    nombre varchar(50),
    correo_electronico varchar(100),
    direccion varchar(30),
    residencia varchar(30),
    celular int(15)
);

create table empleado(
	id int primary key,
    cedula int,
    nombre varchar(50),
    apellido varchar(50),
    celular int(15),
    correo_electronico varchar(100),
    ciudad_residencia varchar(50),
    id_sucursal int,
    foreign key (id_sucursal) references sucursales(id)
);

create table vehiculos(
	id int primary key,
    placa varchar(15),
    tipo_vehiculo varchar(20),
    modelo varchar(20),
    puertas int,
    capacidad int,
    sunroof varchar(10),
    motor varchar(50),
    color varchar(50)
);

create table descuento(
	id int primary key,
    valor_alquiler_semanal int,
    valor_alquiler_dia int,
    porcentaje_descuento decimal(12.2),
    total int
);

create table alquileres(
	id int primary key,
    id_vehiculo int,
    id_cliente int,
    id_empleado int,
    id_sucursal int,
    id_descuento int, 
    foreign key(id_vehiculo) references vehiculos(id),
    foreign key(id_cliente) references clientes(id),
    foreign key(id_empleado) references empleado(id),
    foreign key(id_sucursal) references sucursales(id),
    foreign key(id_descuento) references descuento(id),
    fecha_entrada varchar(20),
    fecha_salida varchar(20),
    valor_cotisado int,
    fecha_esparada varchar(20)
);

INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico)  VALUES
(1, 'Bogotá', 601234567, 3101234567, 'sucursal1@rentacar.com'),
(2, 'Medellín', 604987654, 3112345678, 'sucursal2@rentacar.com'),
(3, 'Cali', 602456789, 3151234567, 'sucursal3@rentacar.com'),
(4, 'Barranquilla', 605123456, 3172345678, 'sucursal4@rentacar.com'),
(5, 'Cartagena', 605987654, 3183456789, 'sucursal5@rentacar.com'),
(6, 'Pereira', 606234567, 3194567890, 'sucursal6@rentacar.com'),
(7, 'Santa Marta', 605876543, 3205678901, 'sucursal7@rentacar.com'),
(8, 'Bucaramanga', 607234567, 3216789012, 'sucursal8@rentacar.com'),
(9, 'Cúcuta', 607765432, 3227890123, 'sucursal9@rentacar.com'),
(10, 'Armenia', 608234567, 3238901234, 'sucursal10@rentacar.com'),
(11, 'Bogotá', 601234567, 3101234567, 'bogota@rentacar.com'),
(12, 'Medellín', 604876543, 3112345678, 'medellin@rentacar.com'),
(13, 'Cali', 602234567, 3123456789, 'cali@rentacar.com'),
(14, 'Barranquilla', 605345678, 3134567890, 'barranquilla@rentacar.com'),
(15, 'Cartagena', 605876543, 3145678901, 'cartagena@rentacar.com'),
(16, 'Pereira', 606123456, 3156789012, 'pereira@rentacar.com'),
(17, 'Santa Marta', 607234567, 3167890123, 'santamarta@rentacar.com'),
(18, 'Bucaramanga', 608345678, 3178901234, 'bucaramanga@rentacar.com'),
(19, 'Cúcuta', 609456789, 3189012345, 'cucuta@rentacar.com'),
(20, 'Armenia', 610567890, 3190123456, 'armenia@rentacar.com');



INSERT INTO clientes (id, cedula, nombre, correo_electronico, direccion, residencia, celular) VALUES
(1, 1001234567, 'Juan Pérez', 'juan.perez@gmail.com', 'Calle 123', 'Bogotá', 3101234567),
(2, 1009876543, 'María Gómez', 'maria.gomez@gmail.com', 'Calle 456', 'Medellín', 3112345678),
(3, 1005647382, 'Carlos López', 'carlos.lopez@yahoo.com', 'Calle 789', 'Cali', 3151234567),
(4, 1012345678, 'Ana Rodríguez', 'ana.rodriguez@hotmail.com', 'Carrera 12', 'Barranquilla', 3172345678),
(5, 1018765432, 'Luis Martínez', 'luis.martinez@outlook.com', 'Avenida 8', 'Cartagena', 3183456789),
(6, 1023456789, 'Sofía Sánchez', 'sofia.sanchez@gmail.com', 'Calle 10', 'Pereira', 3194567890),
(7, 1034567890, 'Pedro Ruiz', 'pedro.ruiz@yahoo.com', 'Carrera 15', 'Santa Marta', 3205678901),
(8, 1045678901, 'Laura Díaz', 'laura.diaz@gmail.com', 'Calle 25', 'Bucaramanga', 3216789012),
(9, 1056789012, 'José Torres', 'jose.torres@hotmail.com', 'Carrera 20', 'Cúcuta', 3227890123),
(10, 1067890123, 'Elena Herrera', 'elena.herrera@outlook.com', 'Avenida 5', 'Armenia', 3238901234),
(11, 1002345678, 'Juan Pérez', 'juan.perez@gmail.com', 'Calle 123', 'Bogotá', 3101234567),
(12, 1003456789, 'María Gómez', 'maria.gomez@gmail.com', 'Calle 456', 'Medellín', 3112345678),
(13, 1004567890, 'Carlos López', 'carlos.lopez@yahoo.com', 'Carrera 789', 'Cali', 3123456789),
(14, 1005678901, 'Ana Rodríguez', 'ana.rodriguez@gmail.com', 'Calle 10', 'Barranquilla', 3134567890),
(15, 1006789012, 'Luis Martínez', 'luis.martinez@gmail.com', 'Avenida 20', 'Cartagena', 3145678901),
(16, 1007890123, 'Sofía Sánchez', 'sofia.sanchez@yahoo.com', 'Calle 30', 'Pereira', 3156789012),
(17, 1008901234, 'Pedro Ruiz', 'pedro.ruiz@gmail.com', 'Carrera 40', 'Santa Marta', 3167890123),
(18, 1012345678, 'Laura Díaz', 'laura.diaz@gmail.com', 'Calle 50', 'Bucaramanga', 3178901234),
(19, 1013456789, 'José Torres', 'jose.torres@yahoo.com', 'Carrera 60', 'Cúcuta', 3189012345),
(20, 1014567890, 'Elena Herrera', 'elena.herrera@gmail.com', 'Avenida 70', 'Armenia', 3190123456);


INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES
(1, 2001234567, 'Andrés', 'Martínez', 3101112233, 'andres.martinez@rentacar.com', 'Bogotá', 1),
(2, 2002345678, 'Clara', 'Gómez', 3111122334, 'clara.gomez@rentacar.com', 'Medellín', 2),
(3, 2003456789, 'Raúl', 'López', 3152233445, 'raul.lopez@rentacar.com', 'Cali', 3),
(4, 2004567890, 'Sofía', 'Rivas', 3173344556, 'sofia.rivas@rentacar.com', 'Barranquilla', 4),
(5, 2005678901, 'Ricardo', 'García', 3184455667, 'ricardo.garcia@rentacar.com', 'Cartagena', 5),
(6, 2006789012, 'Felipe', 'Torres', 3195566778, 'felipe.torres@rentacar.com', 'Pereira', 6),
(7, 2007890123, 'Patricia', 'Vega', 3206677889, 'patricia.vega@rentacar.com', 'Santa Marta', 7),
(8, 2008901234, 'Manuel', 'Cruz', 3217788990, 'manuel.cruz@rentacar.com', 'Bucaramanga', 8),
(9, 2009012345, 'Beatriz', 'Sánchez', 3228899001, 'beatriz.sanchez@rentacar.com', 'Cúcuta', 9),
(10, 2010123456, 'Javier', 'Mora', 3239900112, 'javier.mora@rentacar.com', 'Armenia', 10);


INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES
(1, 'ABC123', 'Sedán', 'Toyota Corolla', 4, 5, 'Sí', '1.8L', 'Blanco'),
(2, 'DEF456', 'SUV', 'Ford Escape', 5, 7, 'No', '2.5L', 'Negro'),
(3, 'GHI789', 'Camioneta', 'Chevrolet S10', 2, 4, 'Sí', '3.0L', 'Azul'),
(4, 'JKL012', 'Hatchback', 'Volkswagen Polo', 4, 5, 'No', '1.6L', 'Rojo'),
(5, 'MNO345', 'Sedán', 'Honda Civic', 4, 5, 'Sí', '1.5L', 'Gris'),
(6, 'PQR678', 'SUV', 'Mazda CX-5', 5, 5, 'Sí', '2.0L', 'Verde'),
(7, 'STU901', 'Deportivo', 'Chevrolet Camaro', 2, 2, 'Sí', '6.2L', 'Amarillo'),
(8, 'VWX234', 'Camioneta', 'Nissan Frontier', 2, 4, 'No', '2.8L', 'Blanco'),
(9, 'YZA567', 'Sedán', 'BMW 320i', 4, 5, 'Sí', '2.0L', 'Negro'),
(10, 'BCD890', 'SUV', 'Hyundai Tucson', 5, 7, 'Sí', '2.4L', 'Plata'),
(11, 2002345678, 'Andrés', 'Martínez', 3101112233, 'andres.martinez@rentacar.com', 'Bogotá', 1),
(12, 2003456789, 'Clara', 'Gómez', 3112223344, 'clara.gomez@rentacar.com', 'Medellín', 2),
(13, 2004567890, 'Raúl', 'López', 3123334455, 'raul.lopez@rentacar.com', 'Cali', 3),
(14, 2005678901, 'Sofía', 'Rivas', 3134445566, 'sofia.rivas@rentacar.com', 'Barranquilla', 4),
(15, 2006789012, 'Ricardo', 'García', 3145556677, 'ricardo.garcia@rentacar.com', 'Cartagena', 5),
(16, 2007890123, 'Felipe', 'Torres', 3156667788, 'felipe.torres@rentacar.com', 'Pereira', 6),
(17, 2008901234, 'Patricia', 'Vega', 3167778899, 'patricia.vega@rentacar.com', 'Santa Marta', 7),
(18, 2009012345, 'Manuel', 'Cruz', 3178889900, 'manuel.cruz@rentacar.com', 'Bucaramanga', 8),
(19, 2010123456, 'Beatriz', 'Sánchez', 3189991001, 'beatriz.sanchez@rentacar.com', 'Cúcuta', 9),
(20, 2011234567, 'Javier', 'Mora', 3191011122, 'javier.mora@rentacar.com', 'Armenia', 10);



INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES
(1, 70000, 12000, 0.10, 108000),
(2, 80000, 15000, 0.15, 127500),
(3, 75000, 13000, 0.05, 123500),
(4, 85000, 16000, 0.20, 136000),
(5, 90000, 17000, 0.12, 150000),
(6, 95000, 18000, 0.18, 154000),
(7, 60000, 11000, 0.10, 99000),
(8, 95000, 19000, 0.15, 161500),
(9, 92000, 18000, 0.25, 167000),
(10, 88000, 16000, 0.10, 146000),
(11, 70000, 12000, 0.10, 108000),
(12, 80000, 15000, 0.15, 127500),
(13, 75000, 13000, 0.05, 123500),
(14, 85000, 16000, 0.20, 136000),
(15, 90000, 17000, 0.12, 150000),
(16, 95000, 18000, 0.18, 154000),
(17, 60000, 11000, 0.10, 99000),
(18, 95000, 19000, 0.15, 161500),
(19, 92000, 18000, 0.25, 167000),
(20, 88000, 16000, 0.10, 146000);


INSERT INTO alquileres (id, id_vehiculo, id_cliente, id_empleado, id_sucursal, id_descuento, fecha_entrada, fecha_salida, valor_cotisado, fecha_esparada) VALUES
(1, 1, 1, 1, 1, 1, '2024-10-01', '2024-10-05', 60000, '2024-10-06'),
(2, 2, 2, 2, 2, 2, '2024-10-02', '2024-10-07', 75000, '2024-10-06'),
(1, 1, 1, 1, 1, 1, '2024-10-01', '2024-10-05', 60000, '2024-10-06'),
(2, 2, 2, 2, 2, 2, '2024-10-02', '2024-10-07', 75000, '2024-10-08'),
(3, 3, 3, 3, 3, 3, '2024-10-02', '2024-10-07', 75000, '2024-10-06');


