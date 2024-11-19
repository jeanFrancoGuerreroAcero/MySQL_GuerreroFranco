drop database if exists AutoRenta;
create database AutoRenta;

use AutoRenta;

create table sucursales(
	id int primary key,
    ciudad varchar(30),
    telefono_fijo int,
    celular int(30),
    correo_electronico varchar(100)
);

create table clientes(
	id int primary key,
    cedula int,
    nombre varchar(50),
    correo_electronico varchar(100),
    direccion varchar(30),
    residencia varchar(30),
    celular int
);

create table empleado(
	id int primary key,
    cedula int,
    nombre varchar(50),
    apellido varchar(50),
    celular varchar(15),
    correo_electronico varchar(100),
    ciudad_residencia varchar(50),
    id_sucursal int,
    foreign key (id_sucursal) references sucursales(id)
);

create table vehiculos(
	id int primary key,
    placa varchar(15),
    tipo_vehiculo varchar(20),
    modelo varchar(30),
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


INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES
(1, 'Madrid', 912345678, 600123456, 'madrid@sucursales.com'),
(2, 'Barcelona', 933456789, 600987654, 'barcelona@sucursales.com'),
(3, 'Valencia', 961234567, 600111222, 'valencia@sucursales.com'),
(4, 'Sevilla', 954123456, 600333444, 'sevilla@sucursales.com'),
(5, 'Bilbao', 944567890, 600555666, 'bilbao@sucursales.com'),
(6, 'Zaragoza', 976234567, 600777888, 'zaragoza@sucursales.com'),
(7, 'Murcia', 968234567, 600999000, 'murcia@sucursales.com'),
(8, 'Malaga', 952345678, 600111223, 'malaga@sucursales.com'),
(9, 'Alicante', 965123456, 600444555, 'alicante@sucursales.com'),
(10, 'Córdoba', 957234567, 600666777, 'cordoba@sucursales.com'),
(11, 'Madrid', 912345679, 600223344, 'madrid2@sucursales.com'),
(12, 'Barcelona', 933456780, 600223455, 'barcelona2@sucursales.com'),
(13, 'Valencia', 961234568, 600223466, 'valencia2@sucursales.com'),
(14, 'Sevilla', 954123457, 600223477, 'sevilla2@sucursales.com'),
(15, 'Bilbao', 944567891, 600223488, 'bilbao2@sucursales.com'),
(16, 'Zaragoza', 976234568, 600223499, 'zaragoza2@sucursales.com'),
(17, 'Murcia', 968234568, 600223500, 'murcia2@sucursales.com'),
(18, 'Malaga', 952345679, 600223511, 'malaga2@sucursales.com'),
(19, 'Alicante', 965123457, 600223522, 'alicante2@sucursales.com'),
(20, 'Córdoba', 957234568, 600223533, 'cordoba2@sucursales.com'),
(21, 'Madrid', 912345680, 600223544, 'madrid3@sucursales.com'),
(22, 'Barcelona', 933456781, 600223555, 'barcelona3@sucursales.com'),
(23, 'Valencia', 961234569, 600223566, 'valencia3@sucursales.com'),
(24, 'Sevilla', 954123458, 600223577, 'sevilla3@sucursales.com'),
(25, 'Bilbao', 944567892, 600223588, 'bilbao3@sucursales.com'),
(26, 'Zaragoza', 976234569, 600223599, 'zaragoza3@sucursales.com'),
(27, 'Murcia', 968234569, 600223600, 'murcia3@sucursales.com'),
(28, 'Malaga', 952345680, 600223611, 'malaga3@sucursales.com'),
(29, 'Alicante', 965123458, 600223622, 'alicante3@sucursales.com'),
(30, 'Córdoba', 957234569, 600223633, 'cordoba3@sucursales.com'),
(31, 'Madrid', 912345681, 600223644, 'madrid4@sucursales.com'),
(32, 'Barcelona', 933456782, 600223655, 'barcelona4@sucursales.com'),
(33, 'Valencia', 961234570, 600223666, 'valencia4@sucursales.com'),
(34, 'Sevilla', 954123459, 600223677, 'sevilla4@sucursales.com'),
(35, 'Bilbao', 944567893, 600223688, 'bilbao4@sucursales.com'),
(36, 'Zaragoza', 976234570, 600223699, 'zaragoza4@sucursales.com'),
(37, 'Murcia', 968234570, 600223700, 'murcia4@sucursales.com'),
(38, 'Malaga', 952345681, 600223711, 'malaga4@sucursales.com'),
(39, 'Alicante', 965123459, 600223722, 'alicante4@sucursales.com'),
(40, 'Córdoba', 957234570, 600223733, 'cordoba4@sucursales.com'),
(41, 'Madrid', 912345682, 600223744, 'madrid5@sucursales.com'),
(42, 'Barcelona', 933456783, 600223755, 'barcelona5@sucursales.com'),
(43, 'Valencia', 961234571, 600223766, 'valencia5@sucursales.com'),
(44, 'Sevilla', 954123460, 600223777, 'sevilla5@sucursales.com'),
(45, 'Bilbao', 944567894, 600223788, 'bilbao5@sucursales.com'),
(46, 'Zaragoza', 976234571, 600223799, 'zaragoza5@sucursales.com'),
(47, 'Murcia', 968234571, 600223800, 'murcia5@sucursales.com'),
(48, 'Malaga', 952345682, 600223811, 'malaga5@sucursales.com'),
(49, 'Alicante', 965123460, 600223822, 'alicante5@sucursales.com'),
(50, 'Córdoba', 957234571, 600223833, 'cordoba5@sucursales.com'),
(51, 'Madrid', 912345683, 600223844, 'madrid6@sucursales.com'),
(52, 'Barcelona', 933456784, 600223855, 'barcelona6@sucursales.com'),
(53, 'Valencia', 961234572, 600223866, 'valencia6@sucursales.com'),
(54, 'Sevilla', 954123461, 600223877, 'sevilla6@sucursales.com'),
(55, 'Bilbao', 944567895, 600223888, 'bilbao6@sucursales.com'),
(56, 'Zaragoza', 976234572, 600223899, 'zaragoza6@sucursales.com'),
(57, 'Murcia', 968234572, 600223900, 'murcia6@sucursales.com'),
(58, 'Malaga', 952345683, 600223911, 'malaga6@sucursales.com'),
(59, 'Alicante', 965123461, 600223922, 'alicante6@sucursales.com'),
(60, 'Córdoba', 957234572, 600223933, 'cordoba6@sucursales.com'),
(61, 'Madrid', 912345684, 600223944, 'madrid7@sucursales.com'),
(62, 'Barcelona', 933456785, 600223955, 'barcelona7@sucursales.com'),
(63, 'Valencia', 961234573, 600223966, 'valencia7@sucursales.com'),
(64, 'Sevilla', 954123462, 600223977, 'sevilla7@sucursales.com'),
(65, 'Bilbao', 944567896, 600223988, 'bilbao7@sucursales.com'),
(66, 'Zaragoza', 976234573, 600223999, 'zaragoza7@sucursales.com'),
(67, 'Murcia', 968234573, 600224000, 'murcia7@sucursales.com'),
(68, 'Malaga', 952345684, 600224011, 'malaga7@sucursales.com'),
(69, 'Alicante', 965123462, 600224022, 'alicante7@sucursales.com'),
(70, 'Córdoba', 957234573, 600224033, 'cordoba7@sucursales.com'),
(71, 'Madrid', 912345685, 600224044, 'madrid8@sucursales.com'),
(72, 'Barcelona', 933456786, 600224055, 'barcelona8@sucursales.com'),
(73, 'Valencia', 961234574, 600224066, 'valencia8@sucursales.com'),
(74, 'Sevilla', 954123463, 600224077, 'sevilla8@sucursales.com'),
(75, 'Bilbao', 944567897, 600224088, 'bilbao8@sucursales.com'),
(76, 'Zaragoza', 976234575, 600224099, 'zaragoza8@sucursales.com'),
(77, 'Murcia', 968234574, 600224100, 'murcia8@sucursales.com'),
(78, 'Malaga', 952345685, 600224111, 'malaga8@sucursales.com'),
(79, 'Alicante', 965123463, 600224122, 'alicante8@sucursales.com'),
(80, 'Córdoba', 957234574, 600224133, 'cordoba8@sucursales.com'),
(81, 'Madrid', 912345686, 600224144, 'madrid9@sucursales.com'),
(82, 'Barcelona', 933456787, 600224155, 'barcelona9@sucursales.com'),
(83, 'Valencia', 961234575, 600224166, 'valencia9@sucursales.com'),
(84, 'Sevilla', 954123464, 600224177, 'sevilla9@sucursales.com'),
(85, 'Bilbao', 944567898, 600224188, 'bilbao9@sucursales.com'),
(86, 'Zaragoza', 976234575, 600224199, 'zaragoza9@sucursales.com'),
(87, 'Murcia', 968234575, 600224200, 'murcia9@sucursales.com'),
(88, 'Malaga', 952345686, 600224211, 'malaga9@sucursales.com'),
(89, 'Alicante', 965123464, 600224222, 'alicante9@sucursales.com'),
(90, 'Córdoba', 957234575, 600224233, 'cordoba9@sucursales.com'),
(91, 'Madrid', 912345687, 600224244, 'madrid10@sucursales.com'),
(92, 'Barcelona', 933456788, 600224255, 'barcelona10@sucursales.com'),
(93, 'Valencia', 961234576, 600224266, 'valencia10@sucursales.com'),
(94, 'Sevilla', 954123465, 600224277, 'sevilla10@sucursales.com'),
(95, 'Bilbao', 944567899, 600224288, 'bilbao10@sucursales.com'),
(96, 'Zaragoza', 976234576, 600224299, 'zaragoza10@sucursales.com'),
(97, 'Murcia', 968234576, 600224300, 'murcia10@sucursales.com'),
(98, 'Malaga', 952345687, 600224311, 'malaga10@sucursales.com'),
(99, 'Alicante', 965123465, 600224322, 'alicante10@sucursales.com'),
(100, 'Córdoba', 957234576, 600224333, 'cordoba10@sucursales.com');


INSERT INTO clientes (id, cedula, nombre, correo_electronico, direccion, residencia, celular) VALUES
(1, 12345678, 'Juan Pérez', 'juan.perez@mail.com', 'Calle Falsa 123', 'Madrid', 600112233),
(2, 23456789, 'Ana López', 'ana.lopez@mail.com', 'Avenida del Sol 456', 'Barcelona', 600223344),
(3, 34567890, 'Carlos García', 'carlos.garcia@mail.com', 'Calle Larga 789', 'Valencia', 600334455),
(4, 45678901, 'María Fernández', 'maria.fernandez@mail.com', 'Calle del Mar 321', 'Sevilla', 600445566),
(5, 56789012, 'Pedro Ruiz', 'pedro.ruiz@mail.com', 'Plaza Mayor 654', 'Bilbao', 600556677),
(6, 67890123, 'Lucía Sánchez', 'lucia.sanchez@mail.com', 'Calle de la Luna 987', 'Zaragoza', 600667788),
(7, 78901234, 'Antonio Díaz', 'antonio.diaz@mail.com', 'Calle Real 159', 'Murcia', 600778899),
(8, 89012345, 'Sara Martín', 'sara.martin@mail.com', 'Calle de los Pinos 258', 'Malaga', 600889900),
(9, 90123456, 'José González', 'jose.gonzalez@mail.com', 'Avenida del Sol 654', 'Alicante', 600990011),
(10, 11223344, 'Laura Pérez', 'laura.perez@mail.com', 'Calle Central 321', 'Córdoba', 600123456),
(11, 22334455, 'Luis Gómez', 'luis.gomez@mail.com', 'Calle 1 123', 'Madrid', 600234567),
(12, 33445566, 'David Romero', 'david.romero@mail.com', 'Calle Mayor 789', 'Barcelona', 600345678),
(13, 44556677, 'Marta Ruiz', 'marta.ruiz@mail.com', 'Avenida Libertad 456', 'Valencia', 600456789),
(14, 55667788, 'Pedro González', 'pedro.gonzalez@mail.com', 'Calle del Sol 123', 'Sevilla', 600567890),
(15, 66778899, 'Esther López', 'esther.lopez@mail.com', 'Calle Primavera 654', 'Bilbao', 600678901),
(16, 77889900, 'Carlos Martín', 'carlos.martin@mail.com', 'Calle Luna 987', 'Zaragoza', 600789012),
(17, 88990011, 'Raquel Sánchez', 'raquel.sanchez@mail.com', 'Plaza de la Reina 321', 'Murcia', 600890123),
(18, 99001122, 'José Antonio Pérez', 'jose.antonio.perez@mail.com', 'Calle del Mar 159', 'Malaga', 600901234),
(19, 10111213, 'Alba Díaz', 'alba.diaz@mail.com', 'Calle Río 258', 'Alicante', 600112345),
(20, 11223314, 'Julio Fernández', 'julio.fernandez@mail.com', 'Calle Central 789', 'Córdoba', 600223456),
(21, 22334466, 'Beatriz Romero', 'beatriz.romero@mail.com', 'Avenida de la Paz 456', 'Madrid', 600334567),
(22, 33445577, 'Javier Ruiz', 'javier.ruiz@mail.com', 'Calle Sur 123', 'Barcelona', 600445678),
(23, 44556688, 'Antonio González', 'antonio.gonzalez@mail.com', 'Plaza del Sol 654', 'Valencia', 600556789),
(24, 55667799, 'Sandra López', 'sandra.lopez@mail.com', 'Calle del Carmen 987', 'Sevilla', 600667890),
(25, 66778800, 'Pablo García', 'pablo.garcia@mail.com', 'Calle Alfonso 321', 'Bilbao', 600778901),
(26, 77889911, 'Alberto Sánchez', 'alberto.sanchez@mail.com', 'Calle Estrella 123', 'Zaragoza', 600889012),
(27, 88990022, 'Raquel Pérez', 'raquel.perez@mail.com', 'Avenida Nuevo 654', 'Murcia', 600990123),
(28, 99001133, 'Miguel Ángel Díaz', 'miguel.angel.diaz@mail.com', 'Calle del Sol 987', 'Malaga', 600112456),
(29, 10111214, 'Carmen Martín', 'carmen.martin@mail.com', 'Calle Paz 258', 'Alicante', 600223567),
(30, 11223315, 'Fernando Ruiz', 'fernando.ruiz@mail.com', 'Avenida Libertad 123', 'Córdoba', 600334678),
(31, 22334477, 'Pablo Fernández', 'pablo.fernandez@mail.com', 'Plaza Mayor 789', 'Madrid', 600445789),
(32, 33445588, 'Laura Romero', 'laura.romero@mail.com', 'Calle Real 321', 'Barcelona', 600556890),
(33, 44556699, 'Antonio Martín', 'antonio.martin@mail.com', 'Calle Libertad 654', 'Valencia', 600667901),
(34, 55667700, 'Julio Sánchez', 'julio.sanchez@mail.com', 'Avenida 123', 'Sevilla', 600778012),
(35, 66778811, 'David Fernández', 'david.fernandez@mail.com', 'Calle del Mar 987', 'Bilbao', 600889123),
(36, 77889922, 'Sandra Ruiz', 'sandra.ruiz@mail.com', 'Plaza de la Reina 321', 'Zaragoza', 600990234),
(37, 88990033, 'Beatriz Pérez', 'beatriz.perez@mail.com', 'Calle de la Paz 654', 'Murcia', 600112567),
(38, 99001144, 'Fernando González', 'fernando.gonzalez@mail.com', 'Calle Río 123', 'Malaga', 600223678),
(39, 10111215, 'María Sánchez', 'maria.sanchez@mail.com', 'Calle Pino 258', 'Alicante', 600334789),
(40, 11223316, 'Luis Pérez', 'luis.perez@mail.com', 'Avenida Sol 789', 'Córdoba', 600445890),
(41, 22334488, 'Sonia López', 'sonia.lopez@mail.com', 'Calle 1 123', 'Madrid', 600556901),
(42, 33445599, 'Pedro Romero', 'pedro.romero@mail.com', 'Plaza Central 456', 'Barcelona', 600667012),
(43, 44556600, 'Alba Sánchez', 'alba.sanchez@mail.com', 'Calle Pinos 789', 'Valencia', 600778123),
(44, 55667711, 'José Díaz', 'jose.diaz@mail.com', 'Calle Sol 123', 'Sevilla', 600889234),
(45, 66778822, 'David Martín', 'david.martin@mail.com', 'Avenida Real 654', 'Bilbao', 600990345),
(46, 77889933, 'Laura Fernández', 'laura.fernandez@mail.com', 'Calle Alfonso 987', 'Zaragoza', 600112678),
(47, 88990044, 'Miguel Pérez', 'miguel.perez@mail.com', 'Plaza Mayor 321', 'Murcia', 600223789),
(48, 99001155, 'Carlos Sánchez', 'carlos.sanchez@mail.com', 'Calle Reina 654', 'Malaga', 600334890),
(49, 10111216, 'Patricia Romero', 'patricia.romero@mail.com', 'Avenida Libertad 123', 'Alicante', 600445901),
(50, 11223317, 'Sara González', 'sara.gonzalez@mail.com', 'Plaza del Sol 789', 'Córdoba', 600556012),
(51, 22334499, 'Carlos Ruiz', 'carlos.ruiz@mail.com', 'Calle Central 123', 'Madrid', 600667123),
(52, 33445600, 'Antonio Pérez', 'antonio.perez@mail.com', 'Calle Real 456', 'Barcelona', 600778234),
(53, 44556711, 'María Fernández', 'maria.fernandez@mail.com', 'Avenida del Sol 789', 'Valencia', 600889345),
(54, 55667822, 'Fernando Martín', 'fernando.martin@mail.com', 'Calle del Mar 321', 'Sevilla', 600990456),
(55, 66778933, 'Pablo Romero', 'pablo.romero@mail.com', 'Plaza Mayor 654', 'Bilbao', 600112789),
(56, 77890044, 'Esther Ruiz', 'esther.ruiz@mail.com', 'Calle de la Paz 987', 'Zaragoza', 600223890),
(57, 88901155, 'Raúl Sánchez', 'raul.sanchez@mail.com', 'Avenida Real 123', 'Murcia', 600334901),
(58, 99012266, 'Ana González', 'ana.gonzalez@mail.com', 'Plaza del Sol 789', 'Malaga', 600445012),
(59, 10112377, 'Luis Fernández', 'luis.fernandez@mail.com', 'Calle Río 258', 'Alicante', 600556123),
(60, 11223488, 'Beatriz Pérez', 'beatriz.perez@mail.com', 'Avenida Sol 321', 'Córdoba', 600667234),
(61, 22334599, 'José Ruiz', 'jose.ruiz@mail.com', 'Calle Luna 654', 'Madrid', 600778345),
(62, 33445700, 'Juan Sánchez', 'juan.sanchez@mail.com', 'Calle Real 789', 'Barcelona', 600889456),
(63, 44556811, 'Patricia González', 'patricia.gonzalez@mail.com', 'Avenida de la Paz 123', 'Valencia', 600990567),
(64, 55667922, 'Miguel Díaz', 'miguel.diaz@mail.com', 'Calle del Sol 321', 'Sevilla', 600112678),
(65, 66779033, 'Carmen Fernández', 'carmen.fernandez@mail.com', 'Plaza Central 654', 'Bilbao', 600223789),
(66, 77890144, 'Raquel Ruiz', 'raquel.ruiz@mail.com', 'Calle 1 123', 'Zaragoza', 600334890),
(67, 88901255, 'José Antonio López', 'jose.antonio.lopez@mail.com', 'Calle Mayor 456', 'Murcia', 600445901),
(68, 99012366, 'Marta Sánchez', 'marta.sanchez@mail.com', 'Calle Real 789', 'Malaga', 600556012),
(69, 10113477, 'Juan Gómez', 'juan.gomez@mail.com', 'Calle del Mar 321', 'Alicante', 600667123),
(70, 11224588, 'Esteban Ruiz', 'esteban.ruiz@mail.com', 'Calle de la Paz 987', 'Córdoba', 600778234),
(71, 22335699, 'José Martínez', 'jose.martinez@mail.com', 'Avenida Libertad 123', 'Madrid', 600889345),
(72, 33446700, 'Laura González', 'laura.gonzalez@mail.com', 'Calle del Sol 789', 'Barcelona', 600990456),
(73, 44557811, 'Carlos Pérez', 'carlos.perez@mail.com', 'Calle Río 258', 'Valencia', 600112567),
(74, 55668922, 'Alba López', 'alba.lopez@mail.com', 'Plaza del Sol 654', 'Sevilla', 600223678),
(75, 66779033, 'David Sánchez', 'david.sanchez@mail.com', 'Avenida del Sol 123', 'Bilbao', 600334789),
(76, 77890144, 'José Antonio Fernández', 'jose.antonio.fernandez@mail.com', 'Plaza Central 789', 'Zaragoza', 600445890),
(77, 88901255, 'Carmen Díaz', 'carmen.diaz@mail.com', 'Calle Real 321', 'Murcia', 600556901),
(78, 99012366, 'Esther López', 'esther.lopez@mail.com', 'Avenida Libertad 654', 'Malaga', 600667012),
(79, 10113477, 'Pedro Sánchez', 'pedro.sanchez@mail.com', 'Calle 1 123', 'Alicante', 600778123),
(80, 11224588, 'Juan Romero', 'juan.romero@mail.com', 'Plaza Mayor 456', 'Córdoba', 600889234),
(81, 22335699, 'Patricia Fernández', 'patricia.fernandez@mail.com', 'Calle del Sol 789', 'Madrid', 600990345),
(82, 33446700, 'Carlos Ruiz', 'carlos.ruiz@mail.com', 'Avenida del Sol 123', 'Barcelona', 600112456),
(83, 44557811, 'Miguel Gómez', 'miguel.gomez@mail.com', 'Calle Río 258', 'Valencia', 600223567),
(84, 55668922, 'Carmen Pérez', 'carmen.perez@mail.com', 'Plaza Central 654', 'Sevilla', 600334678),
(85, 66779033, 'Antonio Sánchez', 'antonio.sanchez@mail.com', 'Calle de la Paz 987', 'Bilbao', 600445789),
(86, 77890144, 'Sandra Martín', 'sandra.martin@mail.com', 'Calle Real 321', 'Zaragoza', 600556890),
(87, 88901255, 'Beatriz Gómez', 'beatriz.gomez@mail.com', 'Calle Mayor 456', 'Murcia', 600667901),
(88, 99012366, 'Alba Romero', 'alba.romero@mail.com', 'Avenida Libertad 123', 'Malaga', 600778012),
(89, 10113477, 'José González', 'jose.gonzalez@mail.com', 'Calle del Mar 321', 'Alicante', 600889123),
(90, 11224588, 'Laura Fernández', 'laura.fernandez@mail.com', 'Calle Real 789', 'Córdoba', 600990234),
(91, 22335699, 'Raúl Pérez', 'raul.perez@mail.com', 'Avenida de la Paz 654', 'Madrid', 600112345),
(92, 33446700, 'Esteban Sánchez', 'esteban.sanchez@mail.com', 'Calle del Sol 321', 'Barcelona', 600223456),
(93, 44557811, 'David Romero', 'david.romero@mail.com', 'Plaza Mayor 456', 'Valencia', 600334567),
(94, 55668922, 'Patricia González', 'patricia.gonzalez@mail.com', 'Calle Río 258', 'Sevilla', 600445678),
(95, 66779033, 'Antonio Pérez', 'antonio.perez@mail.com', 'Calle Luna 123', 'Bilbao', 600556789),
(96, 77890144, 'Carmen Díaz', 'carmen.diaz@mail.com', 'Calle del Sol 789', 'Zaragoza', 600667890),
(97, 88901255, 'José Antonio Romero', 'jose.antonio.romero@mail.com', 'Avenida de la Paz 123', 'Murcia', 600778901),
(98, 99012366, 'Sandra González', 'sandra.gonzalez@mail.com', 'Plaza Mayor 789', 'Malaga', 600889012),
(99, 10113477, 'Juan López', 'juan.lopez@mail.com', 'Calle Central 456', 'Alicante', 600990123),
(100, 11224588, 'Beatriz Romero', 'beatriz.romero@mail.com', 'Calle Luna 321', 'Córdoba', 600112234);

INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES
(1, 101234567, 'Carlos', 'González', '3001234567', 'carlos.gonzalez@empresa.com', 'Bogotá', 1),
(2, 102345678, 'Ana', 'Martínez', '3002345678', 'ana.martinez@empresa.com', 'Medellín', 2),
(3, 103456789, 'Luis', 'Pérez', '3003456789', 'luis.perez@empresa.com', 'Cali', 3),
(4, 104567890, 'Marta', 'Rodríguez', '3004567890', 'marta.rodriguez@empresa.com', 'Barranquilla', 1),
(5, 105678901, 'Pedro', 'Ramírez', '3005678901', 'pedro.ramirez@empresa.com', 'Cartagena', 2),
(6, 106789012, 'Laura', 'Hernández', '3006789012', 'laura.hernandez@empresa.com', 'Bucaramanga', 3),
(7, 107890123, 'José', 'López', '3007890123', 'jose.lopez@empresa.com', 'Pereira', 1),
(8, 108901234, 'Sofía', 'Gómez', '3008901234', 'sofia.gomez@empresa.com', 'Santa Marta', 2),
(9, 109012345, 'Ricardo', 'Díaz', '3009012345', 'ricardo.diaz@empresa.com', 'Cúcuta', 3),
(10, 110123456, 'Isabel', 'Fernández', '3000123456', 'isabel.fernandez@empresa.com', 'Armenia', 1),
(11, 111234567, 'David', 'Martínez', '3011234567', 'david.martinez@empresa.com', 'Ibagué', 2),
(12, 112345678, 'Raquel', 'Vásquez', '3012345678', 'raquel.vasquez@empresa.com', 'Neiva', 3),
(13, 113456789, 'Andrés', 'Castro', '3013456789', 'andres.castro@empresa.com', 'Manizales', 1),
(14, 114567890, 'Patricia', 'Sánchez', '3014567890', 'patricia.sanchez@empresa.com', 'Pasto', 2),
(15, 115678901, 'Ricardo', 'Gómez', '3015678901', 'ricardo.gomez@empresa.com', 'Tunja', 3),
(16, 116789012, 'Beatriz', 'Torres', '3016789012', 'beatriz.torres@empresa.com', 'Villavicencio', 1),
(17, 117890123, 'Eugenio', 'Moreno', '3017890123', 'eugenio.moreno@empresa.com', 'Quibdó', 2),
(18, 118901234, 'Julia', 'Hernández', '3018901234', 'julia.hernandez@empresa.com', 'Popayán', 3),
(19, 119012345, 'Oscar', 'Ramírez', '3019012345', 'oscar.ramirez@empresa.com', 'Riohacha', 1),
(20, 120123456, 'Carolina', 'Salazar', '3020123456', 'carolina.salazar@empresa.com', 'Pereira', 2),
(21, 121234567, 'Mónica', 'González', '3021234567', 'monica.gonzalez@empresa.com', 'Bucaramanga', 3),
(22, 122345678, 'Fernando', 'Gómez', '3022345678', 'fernando.gomez@empresa.com', 'Medellín', 1),
(23, 123456789, 'Sandra', 'Lopez', '3023456789', 'sandra.lopez@empresa.com', 'Cali', 2),
(24, 124567890, 'Álvaro', 'Pérez', '3024567890', 'alvaro.perez@empresa.com', 'Barranquilla', 3),
(25, 125678901, 'Juan', 'Hernández', '3025678901', 'juan.hernandez@empresa.com', 'Cartagena', 1),
(26, 126789012, 'Gloria', 'Martínez', '3026789012', 'gloria.martinez@empresa.com', 'Bogotá', 2),
(27, 127890123, 'Carlos', 'Rodríguez', '3027890123', 'carlos.rodriguez@empresa.com', 'Medellín', 3),
(28, 128901234, 'Elsa', 'Sánchez', '3028901234', 'elsa.sanchez@empresa.com', 'Cali', 1),
(29, 129012345, 'Victor', 'Ramírez', '3029012345', 'victor.ramirez@empresa.com', 'Barranquilla', 2),
(30, 130123456, 'Martín', 'Torres', '3030123456', 'martin.torres@empresa.com', 'Santa Marta', 3),
(31, 131234567, 'José', 'Díaz', '3031234567', 'jose.diaz@empresa.com', 'Pereira', 1),
(32, 132345678, 'Rocío', 'López', '3032345678', 'rocio.lopez@empresa.com', 'Tunja', 2),
(33, 133456789, 'Daniela', 'Pérez', '3033456789', 'daniela.perez@empresa.com', 'Manizales', 3),
(34, 134567890, 'José', 'Martínez', '3034567890', 'jose.martinez@empresa.com', 'Neiva', 1),
(35, 135678901, 'Miriam', 'Gómez', '3035678901', 'miriam.gomez@empresa.com', 'Popayán', 2),
(36, 136789012, 'Carlos', 'González', '3036789012', 'carlos.gonzalez@empresa.com', 'Ibagué', 3),
(37, 137890123, 'Patricia', 'Ramírez', '3037890123', 'patricia.ramirez@empresa.com', 'Cúcuta', 1),
(38, 138901234, 'Antonio', 'Rodríguez', '3038901234', 'antonio.rodriguez@empresa.com', 'Cartagena', 2),
(39, 139012345, 'Claudia', 'Vásquez', '3039012345', 'claudia.vasquez@empresa.com', 'Villavicencio', 3),
(40, 140123456, 'Jorge', 'Castro', '3040123456', 'jorge.castro@empresa.com', 'Santa Marta', 1),
(41, 141234567, 'Mariana', 'Martínez', '3041234567', 'mariana.martinez@empresa.com', 'Pasto', 2),
(42, 142345678, 'Felipe', 'Gómez', '3042345678', 'felipe.gomez@empresa.com', 'Pereira', 3),
(43, 143456789, 'Juliana', 'Hernández', '3043456789', 'juliana.hernandez@empresa.com', 'Neiva', 1),
(44, 144567890, 'Daniel', 'López', '3044567890', 'daniel.lopez@empresa.com', 'Bucaramanga', 2),
(45, 145678901, 'Elena', 'Sánchez', '3045678901', 'elena.sanchez@empresa.com', 'Cali', 3),
(46, 146789012, 'Marcos', 'Ramírez', '3046789012', 'marcos.ramirez@empresa.com', 'Barranquilla', 1),
(47, 147890123, 'Julia', 'Vásquez', '3047890123', 'julia.vasquez@empresa.com', 'Medellín', 2),
(48, 148901234, 'Carlos', 'Martínez', '3048901234', 'carlos.martinez@empresa.com', 'Popayán', 3),
(49, 149012345, 'Verónica', 'Sánchez', '3049012345', 'veronica.sanchez@empresa.com', 'Cúcuta', 1),
(50, 150123456, 'Santiago', 'Torres', '3050123456', 'santiago.torres@empresa.com', 'Bucaramanga', 2),
(51, 151234567, 'Lucía', 'Ramírez', '3051234567', 'lucia.ramirez@empresa.com', 'Medellín', 3),
(52, 152345678, 'Pablo', 'Pérez', '3052345678', 'pablo.perez@empresa.com', 'Bogotá', 1),
(53, 153456789, 'Gabriela', 'González', '3053456789', 'gabriela.gonzalez@empresa.com', 'Ibagué', 2),
(54, 154567890, 'José', 'Hernández', '3054567890', 'jose.hernandez@empresa.com', 'Cúcuta', 3),
(55, 155678901, 'Raúl', 'Gómez', '3055678901', 'raul.gomez@empresa.com', 'Villavicencio', 1),
(56, 156789012, 'Lina', 'Rodríguez', '3056789012', 'lina.rodriguez@empresa.com', 'Cali', 2),
(57, 157890123, 'Carlos', 'Pérez', '3057890123', 'carlos.perez@empresa.com', 'Medellín', 3),
(58, 158901234, 'Ricardo', 'Castro', '3058901234', 'ricardo.castro@empresa.com', 'Santa Marta', 1),
(59, 159012345, 'Mónica', 'González', '3059012345', 'monica.gonzalez@empresa.com', 'Popayán', 2),
(60, 160123456, 'José', 'Sánchez', '3060123456', 'jose.sanchez@empresa.com', 'Cali', 3),
(61, 161234567, 'Patricia', 'Gómez', '3061234567', 'patricia.gomez@empresa.com', 'Neiva', 1),
(62, 162345678, 'Luis', 'Vásquez', '3062345678', 'luis.vasquez@empresa.com', 'Medellín', 2),
(63, 163456789, 'Andrea', 'Torres', '3063456789', 'andrea.torres@empresa.com', 'Barranquilla', 3),
(64, 164567890, 'Marta', 'Martínez', '3064567890', 'marta.martinez@empresa.com', 'Popayán', 1),
(65, 165678901, 'Carlos', 'Castro', '3065678901', 'carlos.castro@empresa.com', 'Cúcuta', 2),
(66, 166789012, 'Javier', 'Ramírez', '3066789012', 'javier.ramirez@empresa.com', 'Santa Marta', 3),
(67, 167890123, 'Rosa', 'González', '3067890123', 'rosa.gonzalez@empresa.com', 'Bucaramanga', 1),
(68, 168901234, 'Antonio', 'Martínez', '3068901234', 'antonio.martinez@empresa.com', 'Barranquilla', 2),
(69, 169012345, 'Sofía', 'Hernández', '3069012345', 'sofia.hernandez@empresa.com', 'Medellín', 3),
(70, 170123456, 'Gerardo', 'López', '3070123456', 'gerardo.lopez@empresa.com', 'Pasto', 1),
(71, 171234567, 'Elena', 'Gómez', '3071234567', 'elena.gomez@empresa.com', 'Villavicencio', 2),
(72, 172345678, 'Mónica', 'Pérez', '3072345678', 'monica.perez@empresa.com', 'Medellín', 3),
(73, 173456789, 'Carlos', 'Sánchez', '3073456789', 'carlos.sanchez@empresa.com', 'Ibagué', 1),
(74, 174567890, 'Lucía', 'Martínez', '3074567890', 'lucia.martinez@empresa.com', 'Pereira', 2),
(75, 175678901, 'Sandra', 'Ramírez', '3075678901', 'sandra.ramirez@empresa.com', 'Santa Marta', 3),
(76, 176789012, 'David', 'Torres', '3076789012', 'david.torres@empresa.com', 'Manizales', 1),
(77, 177890123, 'Oscar', 'Vásquez', '3077890123', 'oscar.vasquez@empresa.com', 'Cartagena', 2),
(78, 178901234, 'Julia', 'López', '3078901234', 'julia.lopez@empresa.com', 'Tunja', 3),
(79, 179012345, 'Héctor', 'Rodríguez', '3079012345', 'hector.rodriguez@empresa.com', 'Popayán', 1),
(80, 180123456, 'Carlos', 'Ramírez', '3080123456', 'carlos.ramirez@empresa.com', 'Bucaramanga', 2),
(81, 181234567, 'Patricia', 'González', '3081234567', 'patricia.gonzalez@empresa.com', 'Medellín', 3),
(82, 182345678, 'Eduardo', 'Martínez', '3082345678', 'eduardo.martinez@empresa.com', 'Villavicencio', 1),
(83, 183456789, 'Margarita', 'Torres', '3083456789', 'margarita.torres@empresa.com', 'Barranquilla', 2),
(84, 184567890, 'Raúl', 'Sánchez', '3084567890', 'raul.sanchez@empresa.com', 'Pasto', 3),
(85, 185678901, 'Juliana', 'Rodríguez', '3085678901', 'juliana.rodriguez@empresa.com', 'Manizales', 1),
(86, 186789012, 'Felipe', 'Pérez', '3086789012', 'felipe.perez@empresa.com', 'Pereira', 2),
(87, 187890123, 'Ricardo', 'López', '3087890123', 'ricardo.lopez@empresa.com', 'Medellín', 3),
(88, 188901234, 'Carolina', 'Sánchez', '3088901234', 'carolina.sanchez@empresa.com', 'Popayán', 1),
(89, 189012345, 'Carlos', 'Torres', '3089012345', 'carlos.torres@empresa.com', 'Cúcuta', 2),
(90, 190123456, 'Marta', 'Gómez', '3090123456', 'marta.gomez@empresa.com', 'Barranquilla', 3),
(91, 191234567, 'Jorge', 'Martínez', '3091234567', 'jorge.martinez@empresa.com', 'Ibagué', 1),
(92, 192345678, 'María', 'Pérez', '3092345678', 'maria.perez@empresa.com', 'Medellín', 2),
(93, 193456789, 'Héctor', 'González', '3093456789', 'hector.gonzalez@empresa.com', 'Popayán', 3),
(94, 194567890, 'Ana', 'Vásquez', '3094567890', 'ana.vasquez@empresa.com', 'Santa Marta', 1),
(95, 195678901, 'Luis', 'Rodríguez', '3095678901', 'luis.rodriguez@empresa.com', 'Neiva', 2),
(96, 196789012, 'Sofía', 'Sánchez', '3096789012', 'sofia.sanchez@empresa.com', 'Cali', 3),
(97, 197890123, 'Ricardo', 'Martínez', '3097890123', 'ricardo.martinez@empresa.com', 'Medellín', 1),
(98, 198901234, 'Carlos', 'Pérez', '3098901234', 'carlos.perez@empresa.com', 'Popayán', 2),
(99, 199012345, 'Margarita', 'López', '3099012345', 'margarita.lopez@empresa.com', 'Barranquilla', 3),
(100, 200123456, 'Fernando', 'Hernández', '3100123456', 'fernando.hernandez@empresa.com', 'Bucaramanga', 1);



INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES
(1, 'ABC1234', 'Sedán', 'Toyota Corolla', 4, 5, 'Sí', '1.8L', 'Negro'),
(2, 'DEF5678', 'SUV', 'Honda CR-V', 5, 7, 'No', '2.4L', 'Blanco'),
(3, 'GHI9876', 'Camioneta', 'Ford Ranger', 4, 5, 'No', '3.0L', 'Azul'),
(4, 'JKL3456', 'Hatchback', 'Volkswagen Golf', 5, 5, 'Sí', '1.6L', 'Rojo'),
(5, 'MNO7890', 'Sedán', 'Nissan Altima', 4, 5, 'Sí', '2.5L', 'Plata'),
(6, 'PQR1234', 'SUV', 'Chevrolet Equinox', 5, 7, 'Sí', '2.4L', 'Negro'),
(7, 'STU5678', 'Camioneta', 'Toyota Tacoma', 4, 5, 'No', '3.5L', 'Blanco'),
(8, 'VWX9876', 'Hatchback', 'Ford Focus', 5, 5, 'Sí', '2.0L', 'Azul'),
(9, 'YZA3456', 'Sedán', 'Hyundai Elantra', 4, 5, 'No', '2.0L', 'Gris'),
(10, 'BCD1234', 'SUV', 'Mazda CX-5', 5, 7, 'Sí', '2.5L', 'Rojo'),
(11, 'EFG5678', 'Camioneta', 'Ram 1500', 4, 5, 'No', '3.6L', 'Plata'),
(12, 'HIJ9876', 'Hatchback', 'Chevrolet Spark', 5, 5, 'No', '1.4L', 'Verde'),
(13, 'KLM3456', 'Sedán', 'BMW 320i', 4, 5, 'Sí', '2.0L', 'Negro'),
(14, 'NOP7890', 'SUV', 'Audi Q5', 5, 7, 'Sí', '2.0L', 'Blanco'),
(15, 'QRS1234', 'Camioneta', 'GMC Sierra', 4, 5, 'No', '5.3L', 'Azul'),
(16, 'TUV5678', 'Hatchback', 'Kia Rio', 5, 5, 'Sí', '1.6L', 'Rojo'),
(17, 'WXY9876', 'Sedán', 'Mercedes-Benz C-Class', 4, 5, 'Sí', '2.5L', 'Gris'),
(18, 'ZAB3456', 'SUV', 'Jeep Cherokee', 5, 7, 'No', '2.4L', 'Negro'),
(19, 'CDE1234', 'Camioneta', 'Chevrolet Colorado', 4, 5, 'Sí', '3.6L', 'Plata'),
(20, 'FGH5678', 'Hatchback', 'Fiat 500', 3, 4, 'No', '1.2L', 'Verde'),
(21, 'IJK6789', 'Sedán', 'Ford Fusion', 4, 5, 'Sí', '2.5L', 'Azul'),
(22, 'LMN7890', 'SUV', 'Toyota Highlander', 5, 7, 'Sí', '3.5L', 'Rojo'),
(23, 'OPQ9012', 'Camioneta', 'Chevrolet Silverado', 4, 5, 'No', '4.3L', 'Negro'),
(24, 'RST1234', 'Hatchback', 'Mazda 3', 5, 5, 'Sí', '1.8L', 'Plata'),
(25, 'UVW2345', 'Sedán', 'Audi A4', 4, 5, 'Sí', '2.0L', 'Blanco'),
(26, 'XYZ3456', 'SUV', 'Nissan Pathfinder', 5, 7, 'Sí', '3.5L', 'Gris'),
(27, 'AAA4567', 'Camioneta', 'Ford F-150', 4, 5, 'No', '5.0L', 'Azul'),
(28, 'BBB5678', 'Hatchback', 'Honda Fit', 5, 5, 'No', '1.5L', 'Rojo'),
(29, 'CCC6789', 'Sedán', 'Chrysler 200', 4, 5, 'Sí', '2.4L', 'Negro'),
(30, 'DDD7890', 'SUV', 'Kia Sportage', 5, 7, 'Sí', '2.4L', 'Blanco'),
(31, 'EEE8901', 'Camioneta', 'Ram Rebel', 4, 5, 'No', '5.7L', 'Plata'),
(32, 'FFF9012', 'Hatchback', 'Hyundai Accent', 5, 5, 'Sí', '1.6L', 'Verde'),
(33, 'GGG0123', 'Sedán', 'Lexus IS', 4, 5, 'Sí', '2.5L', 'Azul'),
(34, 'HHH1234', 'SUV', 'Volkswagen Tiguan', 5, 7, 'Sí', '2.0L', 'Rojo'),
(35, 'III2345', 'Camioneta', 'Chevrolet Traverse', 4, 5, 'No', '3.6L', 'Gris'),
(36, 'JJJ3456', 'Hatchback', 'Fiat Panda', 5, 5, 'Sí', '1.3L', 'Negro'),
(37, 'KKK4567', 'Sedán', 'Toyota Camry', 4, 5, 'Sí', '2.5L', 'Plata'),
(38, 'LLL5678', 'SUV', 'Mazda CX-9', 5, 7, 'Sí', '3.7L', 'Azul'),
(39, 'MMM6789', 'Camioneta', 'Nissan Titan', 4, 5, 'No', '5.6L', 'Blanco'),
(40, 'NNN7890', 'Hatchback', 'Chevrolet Cruze', 5, 5, 'Sí', '1.8L', 'Rojo'),
(41, 'OOO8901', 'Sedán', 'Honda Accord', 4, 5, 'Sí', '2.4L', 'Gris'),
(42, 'PPP9012', 'SUV', 'Hyundai Santa Fe', 5, 7, 'Sí', '2.4L', 'Negro'),
(43, 'QQQ0123', 'Camioneta', 'Ram Power Wagon', 4, 5, 'No', '6.4L', 'Plata'),
(44, 'RRR1234', 'Hatchback', 'Volkswagen Polo', 5, 5, 'Sí', '1.6L', 'Blanco'),
(45, 'SSS2345', 'Sedán', 'Mazda 6', 4, 5, 'Sí', '2.5L', 'Rojo'),
(46, 'TTT3456', 'SUV', 'BMW X5', 5, 7, 'Sí', '3.0L', 'Gris'),
(47, 'UUU4567', 'Camioneta', 'Ford Bronco', 4, 5, 'No', '2.7L', 'Azul'),
(48, 'VVV5678', 'Hatchback', 'Renault Clio', 5, 5, 'Sí', '1.5L', 'Negro'),
(49, 'WWW6789', 'Sedán', 'Chevrolet Malibu', 4, 5, 'Sí', '2.0L', 'Blanco'),
(50, 'XXX7890', 'SUV', 'Land Rover Range Rover', 5, 7, 'Sí', '3.0L', 'Plata'),
(51, 'YYY8901', 'Camioneta', 'Toyota Land Cruiser', 4, 5, 'No', '4.5L', 'Rojo'),
(52, 'ZZZ9012', 'Hatchback', 'Peugeot 208', 5, 5, 'Sí', '1.6L', 'Verde'),
(53, 'AAA1234', 'Sedán', 'Jaguar XE', 4, 5, 'Sí', '2.0L', 'Azul'),
(54, 'BBB2345', 'SUV', 'Ford Explorer', 5, 7, 'Sí', '2.3L', 'Negro'),
(55, 'CCC3456', 'Camioneta', 'Mercedes-Benz G-Class', 4, 5, 'No', '4.0L', 'Blanco'),
(56, 'DDD4567', 'Hatchback', 'Toyota Yaris', 5, 5, 'Sí', '1.5L', 'Rojo'),
(57, 'EEE5678', 'Sedán', 'Infiniti Q50', 4, 5, 'Sí', '2.0L', 'Plata'),
(58, 'FFF6789', 'SUV', 'Acura MDX', 5, 7, 'Sí', '3.5L', 'Gris'),
(59, 'GGG7890', 'Camioneta', 'Honda Pilot', 4, 5, 'No', '3.5L', 'Negro'),
(60, 'HHH8901', 'Hatchback', 'BMW M2', 5, 5, 'Sí', '2.0L', 'Azul'),
(61, 'III9012', 'Sedán', 'Audi S4', 4, 5, 'Sí', '3.0L', 'Blanco'),
(62, 'JJJ0123', 'SUV', 'Porsche Cayenne', 5, 7, 'Sí', '3.6L', 'Rojo'),
(63, 'KKK1234', 'Camioneta', 'GMC Canyon', 4, 5, 'No', '3.6L', 'Plata'),
(64, 'LLL2345', 'Hatchback', 'Nissan Versa', 5, 5, 'Sí', '1.8L', 'Negro'),
(65, 'MMM3456', 'Sedán', 'Lexus ES', 4, 5, 'Sí', '2.5L', 'Gris'),
(66, 'NNN4567', 'SUV', 'Chevrolet Traverse', 5, 7, 'Sí', '3.6L', 'Azul'),
(67, 'OOO5678', 'Camioneta', 'Toyota Tundra', 4, 5, 'No', '5.7L', 'Blanco'),
(68, 'PPP6789', 'Hatchback', 'Kia Soul', 5, 5, 'Sí', '1.6L', 'Rojo'),
(69, 'QQQ7890', 'Sedán', 'Subaru Legacy', 4, 5, 'Sí', '2.5L', 'Negro'),
(70, 'RRR8901', 'SUV', 'Jeep Grand Cherokee', 5, 7, 'Sí', '3.6L', 'Gris'),
(71, 'SSS9012', 'Camioneta', 'Ram 2500', 4, 5, 'No', '6.7L', 'Plata'),
(72, 'TTT0123', 'Hatchback', 'Chevrolet Bolt', 5, 5, 'Sí', '1.0L', 'Azul'),
(73, 'UUU1234', 'Sedán', 'BMW 330i', 4, 5, 'Sí', '2.0L', 'Rojo'),
(74, 'VVV2345', 'SUV', 'Mitsubishi Outlander', 5, 7, 'Sí', '2.4L', 'Blanco'),
(75, 'WWW3456', 'Camioneta', 'Ford Expedition', 4, 5, 'No', '3.5L', 'Gris'),
(76, 'XXX4567', 'Hatchback', 'Toyota Prius', 5, 5, 'Sí', '1.8L', 'Negro'),
(77, 'YYY5678', 'Sedán', 'Nissan Sentra', 4, 5, 'Sí', '1.8L', 'Plata'),
(78, 'ZZZ6789', 'SUV', 'Honda Pilot', 5, 7, 'Sí', '3.5L', 'Rojo'),
(79, 'AAA7890', 'Camioneta', 'Chevrolet Avalanche', 4, 5, 'No', '5.3L', 'Blanco'),
(80, 'BBB8901', 'Hatchback', 'Fiat 500X', 5, 5, 'Sí', '1.4L', 'Azul'),
(81, 'CCC9012', 'Sedán', 'Kia Optima', 4, 5, 'Sí', '2.4L', 'Rojo'),
(82, 'DDD0123', 'SUV', 'Ford Escape', 5, 7, 'Sí', '2.5L', 'Gris'),
(83, 'EEE1234', 'Camioneta', 'Chevrolet Suburban', 4, 5, 'No', '5.3L', 'Plata'),
(84, 'FFF2345', 'Hatchback', 'Hyundai Elantra GT', 5, 5, 'Sí', '2.0L', 'Blanco'),
(85, 'GGG3456', 'Sedán', 'Honda Civic', 4, 5, 'Sí', '2.0L', 'Negro'),
(86, 'HHH4567', 'SUV', 'Volkswagen Atlas', 5, 7, 'Sí', '3.6L', 'Azul'),
(87, 'III5678', 'Camioneta', 'Ford Ranger Raptor', 4, 5, 'No', '3.5L', 'Rojo'),
(88, 'JJJ6789', 'Hatchback', 'Peugeot 208 GTi', 5, 5, 'Sí', '1.6L', 'Plata'),
(89, 'KKK7890', 'Sedán', 'Mazda CX-3', 4, 5, 'Sí', '2.5L', 'Blanco'),
(90, 'LLL8901', 'SUV', 'Subaru Outback', 5, 7, 'Sí', '2.5L', 'Negro'),
(91, 'MMM9012', 'Camioneta', 'Toyota 4Runner', 4, 5, 'No', '4.0L', 'Azul'),
(92, 'NNN0123', 'Hatchback', 'Honda Civic Type R', 5, 5, 'Sí', '2.0L', 'Rojo'),
(93, 'OOO1234', 'Sedán', 'Nissan Maxima', 4, 5, 'Sí', '3.5L', 'Plata'),
(94, 'PPP2345', 'SUV', 'Chrysler Pacifica', 5, 7, 'Sí', '3.6L', 'Gris'),
(95, 'QQQ3456', 'Camioneta', 'Toyota Sequoia', 4, 5, 'No', '5.7L', 'Negro'),
(96, 'RRR4567', 'Hatchback', 'Mazda 2', 5, 5, 'Sí', '1.5L', 'Azul'),
(97, 'SSS5678', 'Sedán', 'Chevrolet Cruze', 4, 5, 'Sí', '1.8L', 'Rojo'),
(98, 'TTT6789', 'SUV', 'BMW X6', 5, 7, 'Sí', '3.0L', 'Blanco'),
(99, 'UUU7890', 'Camioneta', 'Ford F-250', 4, 5, 'No', '6.7L', 'Gris'),
(100, 'VVV8901', 'Hatchback', 'Peugeot 208', 5, 5, 'Sí', '1.6L', 'Plata');


INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES
(1, 300, 50, 0.05, 285),
(2, 400, 60, 0.10, 360),
(3, 500, 75, 0.15, 425),
(4, 600, 90, 0.20, 480),
(5, 700, 100, 0.10, 630),
(6, 800, 120, 0.25, 600),
(7, 900, 130, 0.12, 792),
(8, 1000, 150, 0.18, 820),
(9, 1100, 160, 0.10, 1040),
(10, 1200, 180, 0.22, 936),
(11, 1300, 190, 0.15, 1105),
(12, 1400, 210, 0.10, 1260),
(13, 1500, 225, 0.05, 1425),
(14, 1600, 240, 0.20, 1280),
(15, 1700, 250, 0.12, 1496),
(16, 1800, 270, 0.18, 1476),
(17, 1900, 280, 0.10, 1710),
(18, 2000, 300, 0.25, 1500),
(19, 2100, 320, 0.15, 1785),
(20, 2200, 340, 0.10, 1980),
(21, 2300, 350, 0.12, 2024),
(22, 2400, 360, 0.08, 2208),
(23, 2500, 375, 0.10, 2250),
(24, 2600, 380, 0.15, 2210),
(25, 2700, 400, 0.12, 2376),
(26, 2800, 420, 0.20, 2240),
(27, 2900, 440, 0.18, 2372),
(28, 3000, 450, 0.25, 2250),
(29, 3100, 470, 0.10, 2790),
(30, 3200, 480, 0.05, 3040),
(31, 3300, 500, 0.20, 2640),
(32, 3400, 520, 0.15, 2880),
(33, 3500, 530, 0.12, 3080),
(34, 3600, 550, 0.18, 2952),
(35, 3700, 570, 0.10, 3330),
(36, 3800, 580, 0.08, 3496),
(37, 3900, 600, 0.10, 3510),
(38, 4000, 620, 0.12, 3520),
(39, 4100, 630, 0.15, 3485),
(40, 4200, 650, 0.18, 3444),
(41, 4300, 660, 0.10, 3870),
(42, 4400, 680, 0.05, 4180),
(43, 4500, 700, 0.20, 3600),
(44, 4600, 710, 0.15, 3910),
(45, 4700, 730, 0.12, 4126),
(46, 4800, 740, 0.18, 3936),
(47, 4900, 760, 0.10, 4410),
(48, 5000, 780, 0.08, 4600),
(49, 5100, 790, 0.10, 4590),
(50, 5200, 800, 0.15, 4420),
(51, 5300, 820, 0.12, 4664),
(52, 5400, 830, 0.18, 4428),
(53, 5500, 850, 0.10, 4950),
(54, 5600, 860, 0.05, 5320),
(55, 5700, 880, 0.20, 4560),
(56, 5800, 900, 0.15, 4930),
(57, 5900, 910, 0.12, 5192),
(58, 6000, 930, 0.18, 4920),
(59, 6100, 940, 0.10, 5490),
(60, 6200, 960, 0.08, 5704),
(61, 6300, 970, 0.10, 5670),
(62, 6400, 990, 0.12, 5632),
(63, 6500, 1000, 0.15, 5525),
(64, 6600, 1020, 0.18, 5412),
(65, 6700, 1030, 0.10, 6030),
(66, 6800, 1050, 0.05, 6460),
(67, 6900, 1070, 0.20, 5520),
(68, 7000, 1080, 0.15, 5950),
(69, 7100, 1100, 0.12, 6256),
(70, 7200, 1110, 0.18, 5904),
(71, 7300, 1130, 0.10, 6570),
(72, 7400, 1140, 0.08, 6808),
(73, 7500, 1160, 0.10, 6750),
(74, 7600, 1180, 0.15, 6460),
(75, 7700, 1190, 0.12, 6784),
(76, 7800, 1210, 0.18, 6396),
(77, 7900, 1220, 0.10, 7110),
(78, 8000, 1230, 0.05, 7600),
(79, 8100, 1250, 0.20, 6480),
(80, 8200, 1260, 0.15, 6940),
(81, 8300, 1280, 0.12, 7328),
(82, 8400, 1290, 0.18, 6888),
(83, 8500, 1310, 0.10, 7650),
(84, 8600, 1320, 0.08, 7872),
(85, 8700, 1340, 0.10, 7830),
(86, 8800, 1350, 0.15, 7480),
(87, 8900, 1360, 0.12, 7832),
(88, 9000, 1380, 0.18, 7380),
(89, 9100, 1390, 0.10, 8190),
(90, 9200, 1400, 0.05, 8740),
(91, 9300, 1420, 0.20, 7440),
(92, 9400, 1430, 0.15, 7990),
(93, 9500, 1450, 0.12, 8360),
(94, 9600, 1460, 0.18, 7872),
(95, 9700, 1480, 0.10, 8730),
(96, 9800, 1490, 0.08, 9016),
(97, 9900, 1510, 0.10, 8910),
(98, 10000, 1520, 0.15, 8500),
(99, 10100, 1540, 0.12, 8896),
(100, 10200, 1550, 0.18, 8364);


-- Inserciones para la tabla alquileres
INSERT INTO alquileres (id, id_vehiculo, id_cliente, id_empleado, id_sucursal, id_descuento, fecha_entrada, fecha_salida, valor_cotisado, fecha_esparada) VALUES
(1, 1, 1, 1, 1, 1, '2024-01-10', '2024-01-17', 350, '2024-01-15'),
(2, 2, 2, 2, 2, 2, '2024-02-05', '2024-02-12', 420, '2024-02-10'),
(3, 3, 3, 3, 3, 3, '2024-03-01', '2024-03-08', 500, '2024-03-05'),
(4, 4, 4, 4, 4, 4, '2024-03-15', '2024-03-22', 600, '2024-03-18'),
(5, 5, 5, 5, 5, 5, '2024-04-01', '2024-04-08', 700, '2024-04-05'),
(6, 6, 6, 6, 6, 6, '2024-04-10', '2024-04-17', 800, '2024-04-13'),
(7, 7, 7, 7, 7, 7, '2024-05-01', '2024-05-08', 900, '2024-05-03'),
(8, 8, 8, 8, 8, 8, '2024-05-15', '2024-05-22', 1000, '2024-05-18'),
(9, 9, 9, 9, 9, 9, '2024-06-01', '2024-06-08', 1100, '2024-06-05'),
(10, 10, 10, 10, 10, 10, '2024-06-10', '2024-06-17', 1200, '2024-06-12'),
(11, 11, 11, 11, 11, 11, '2024-07-01', '2024-07-08', 1300, '2024-07-03'),
(12, 12, 12, 12, 12, 12, '2024-07-10', '2024-07-17', 1400, '2024-07-13'),
(13, 13, 13, 13, 13, 13, '2024-08-01', '2024-08-08', 1500, '2024-08-03'),
(14, 14, 14, 14, 14, 14, '2024-08-10', '2024-08-17', 1600, '2024-08-13'),
(15, 15, 15, 15, 15, 15, '2024-09-01', '2024-09-08', 1700, '2024-09-05'),
(16, 16, 16, 16, 16, 16, '2024-09-10', '2024-09-17', 1800, '2024-09-13'),
(17, 17, 17, 17, 17, 17, '2024-10-01', '2024-10-08', 1900, '2024-10-03'),
(18, 18, 18, 18, 18, 18, '2024-10-10', '2024-10-17', 2000, '2024-10-13'),
(19, 19, 19, 19, 19, 19, '2024-11-01', '2024-11-08', 2100, '2024-11-05'),
(20, 20, 20, 20, 20, 20, '2024-11-10', '2024-11-17', 2200, '2024-11-13'),
(21, 21, 21, 21, 21, 21, '2024-12-01', '2024-12-08', 2300, '2024-12-03'),
(22, 22, 22, 22, 22, 22, '2024-12-10', '2024-12-17', 2400, '2024-12-12'),
(23, 23, 23, 23, 23, 23, '2025-01-01', '2025-01-08', 2500, '2025-01-03'),
(24, 24, 24, 24, 24, 24, '2025-01-10', '2025-01-17', 2600, '2025-01-12'),
(25, 25, 25, 25, 25, 25, '2025-02-01', '2025-02-08', 2700, '2025-02-03'),
(26, 26, 26, 26, 26, 26, '2025-02-10', '2025-02-17', 2800, '2025-02-12'),
(27, 27, 27, 27, 27, 27, '2025-03-01', '2025-03-08', 2900, '2025-03-03'),
(28, 28, 28, 28, 28, 28, '2025-03-10', '2025-03-17', 3000, '2025-03-12'),
(29, 29, 29, 29, 29, 29, '2025-04-01', '2025-04-08', 3100, '2025-04-03'),
(30, 30, 30, 30, 30, 30, '2025-04-10', '2025-04-17', 3200, '2025-04-12'),
(31, 31, 31, 31, 31, 31, '2025-05-01', '2025-05-08', 3300, '2025-05-03'),
(32, 32, 32, 32, 32, 32, '2025-05-15', '2025-05-22', 3400, '2025-05-18'),
(33, 33, 33, 33, 33, 33, '2025-06-01', '2025-06-08', 3500, '2025-06-03'),
(34, 34, 34, 34, 34, 34, '2025-06-10', '2025-06-17', 3600, '2025-06-13'),
(35, 35, 35, 35, 35, 35, '2025-07-01', '2025-07-08', 3700, '2025-07-03'),
(36, 36, 36, 36, 36, 36, '2025-07-10', '2025-07-17', 3800, '2025-07-12'),
(37, 37, 37, 37, 37, 37, '2025-08-01', '2025-08-08', 3900, '2025-08-03'),
(38, 38, 38, 38, 38, 38, '2025-08-10', '2025-08-17', 4000, '2025-08-13'),
(39, 39, 39, 39, 39, 39, '2025-09-01', '2025-09-08', 4100, '2025-09-03'),
(40, 40, 40, 40, 40, 40, '2025-09-10', '2025-09-17', 4200, '2025-09-12'),
(41, 41, 41, 41, 41, 41, '2025-10-01', '2025-10-08', 4300, '2025-10-03'),
(42, 42, 42, 42, 42, 42, '2025-10-10', '2025-10-17', 4400, '2025-10-12'),
(43, 43, 43, 43, 43, 43, '2025-11-01', '2025-11-08', 4500, '2025-11-03'),
(44, 44, 44, 44, 44, 44, '2025-11-10', '2025-11-17', 4600, '2025-11-12'),
(45, 45, 45, 45, 45, 45, '2025-12-01', '2025-12-08', 4700, '2025-12-03'),
(46, 46, 46, 46, 46, 46, '2025-12-10', '2025-12-17', 4800, '2025-12-13'),
(47, 47, 47, 47, 47, 47, '2026-01-01', '2026-01-08', 4900, '2026-01-03'),
(48, 48, 48, 48, 48, 48, '2026-01-10', '2026-01-17', 5000, '2026-01-12'),
(49, 49, 49, 49, 49, 49, '2026-02-01', '2026-02-08', 5100, '2026-02-03'),
(50, 50, 50, 50, 50, 50, '2026-02-10', '2026-02-17', 5200, '2026-02-12'),
(51, 51, 51, 51, 51, 51, '2026-03-01', '2026-03-08', 5300, '2026-03-03'),
(52, 52, 52, 52, 52, 52, '2026-03-10', '2026-03-17', 5400, '2026-03-13'),
(53, 53, 53, 53, 53, 53, '2026-04-01', '2026-04-08', 5500, '2026-04-03'),
(54, 54, 54, 54, 54, 54, '2026-04-10', '2026-04-17', 5600, '2026-04-12'),
(55, 55, 55, 55, 55, 55, '2026-05-01', '2026-05-08', 5700, '2026-05-03'),
(56, 56, 56, 56, 56, 56, '2026-05-15', '2026-05-22', 5800, '2026-05-18'),
(57, 57, 57, 57, 57, 57, '2026-06-01', '2026-06-08', 5900, '2026-06-03'),
(58, 58, 58, 58, 58, 58, '2026-06-10', '2026-06-17', 6000, '2026-06-12'),
(59, 59, 59, 59, 59, 59, '2026-07-01', '2026-07-08', 6100, '2026-07-03'),
(60, 60, 60, 60, 60, 60, '2026-07-10', '2026-07-17', 6200, '2026-07-12');



select * from sucursales;
select * from empleado;
-- 1.
select id, ciudad from sucursales where ciudad = 'Barcelona';

-- 2 selecciona todos los datos de los empleados qie trabajan en madrid y su ciudad de residencia es cali
select * from empleado where id_sucursal= 1 and ciudad_residencia = 'Cali';

-- devuelve un listado con los alquileres que su valor cotizado sea mayor 2000
select * from alquileres where valor_cotisado > 2000;

-- 4.cual es el porcentaje entre el valor de alquiler semanal
delimiter //
create function porcentaje(valor_alquiler_semanal double)
returns double
deterministic
begin
	declare porcentaje double;
	select avg(valor_alquiler_semanal) into porcentaje from descuento;
    return porcentaje;
end //
delimiter ;

select porcentaje(valor_alquiler_semanal) from descuento;

-- 5 devuelve un listado con el id,modelo y la placa de los vehiculos de color megro
select modelo, placa from vehiculos where color = 'negro';

-- 6. devuelve un listado con los carros que sean rojos y tengan mas de 2 puertas; el resultado debe mostrar id,placa y tipo de vehiculo
select * from vehiculos;
select id, placa, tipo_vehiculo from vehiculos where color = 'Rojo' and puertas > 2;

-- 7 devuelve un listado de cuantos vehiculos tienen mas de dos puertas, su capacidad sea mayor a 2 y que tengan sunroof y se ordene de forma ascendente 
select count(puertas) as mas_de_dos_puertas, capacidad, sunroof from vehiculos where capacidad > 2 and sunroof = 'si' group by 2 having count(puertas) > 2 order by 1 asc;

-- 8 devuelve un listado de todos los datos de los empleado que residen en medellin 
select * from empleado;
select * from empleado where ciudad_residencia = 'medellin';
select * from sucursales;

-- 9 devuelve un listado de cuantos empleados trabajan en la sucursal de lugo.
-- devuelve cuantos empleados trabajan en esta sucursal, id del empleado, nombre del empleado y nombre de la sucursal
select count(e.id), e.id, e.nombre, s.ciudad from empleado e right join sucursales s on e.id_sucursal = s.id where s.id= 30 group by 2;

-- 10. Lista el id y el nombre de los empleados en una única columna,convirtiendo todos los caracteres en mayúscula.
select upper(concat(id, ' ',nombre)) as id_nombre from empleado;

-- 11. Devuelve una lista con el id y el presupuesto, de los 3 descuentos
-- que tienen mayor porcentaje de descuento.
select * from descuento;
select id, max(porcentaje_descuento) from descuento group by 1 order by 2 desc limit 3 ;

-- 12. Devuelve una lista con el id y el porcentaje de descuento, de
-- aquellos que tienen un total mayor o igual a 200 
select id, porcentaje_descuento from descuento where total >= 200;

-- 13.  Devuelve una lista con el id del descuento y el porcentaje_descuento, de
-- aquellos que tienen un total entre 200 y 300. Sin
-- utilizar el operador BETWEEN.
select id, porcentaje_descuento from descuento where total >= 200 and total <=300;

-- 14. Devuelve una lista con el nombre de los departamentos que tienen un
-- presupuesto entre 100000 y 200000 euros. Utilizando el operador BETWEEN.
select id, porcentaje_descuento, total from descuento where total between 200 and 300;

-- 15.Devuelve un listado con los datos de los empleados que trabajan en la
-- ciudad de valencia Ordena el resultado alfabéticamente.
select * from empleado;
select * from sucursales;
select e.id, e.cedula, e.nombre, e.apellido, e.celular, e.id_sucursal from empleado e inner join sucursales s on e.id_sucursal = s.id where s.id=  3;

-- 16.Calcula cuantos empleado trabajan en la sucursal de madrid
select count(e.id) from empleado e inner join sucursales s on e.id_sucursal = s.id where s.id = 1;

-- 17. Devuelve el nombre de la sucursal donde trabaja el empleado que tiene
-- la cedula 144567890
select s.ciudad from sucursales s inner join empleado e on s.id = e.id_sucursal where e.cedula = 144567890;

-- 18.Devuelve el nombre de la ciudad de la sucursal donde trabaja el empleado
-- Ricardo	Martínez
select s.ciudad from sucursales s inner join empleado e on s.id = e.id_sucursal where e.nombre = 'Ricardo' and e.apellido = 'Martínez';

-- 19.Devuelve un listado con los datos de los empleados que trabajan en la
-- sucursal de Valencia. Ordena el resultado alfabéticamente.
select e.id, e.cedula, e.nombre, e.apellido, e.celular, e.correo_electronico, e.ciudad_residencia from empleado e right join sucursales s on e.id_sucursal = s.id where s.id= 3 order by 3 asc;

-- 20 Lista todos los datos de los empleados cuyo segundo apellido
-- sea Martínez. Sin utilizar el operador IN.
select * from empleado where apellido = 'Martínez';

-- 21. Devuelve un listado donde sólo aparezcan aquellos empleados que no
-- tienen ningúna sucursal asociado.
select e.id, e.nombre from empleado e left join sucursales s on e.id_sucursal is null;

-- 22. devuelve datos de empleado que no tengan correro electronico
select * from empleado where correo_electronico is null;

-- 23. buscar cliente que han alquilado un vehiculo con descuento
select * from alquileres;
select c.id, c.nombre from alquileres a inner join clientes c on c.id = a.id_cliente inner join descuento d on a.id_descuento = d.id ;

-- 24 Listar clientes y sus alquileres con la fecha y el valor total
select e.id, e.nombre, a.fecha_salida from empleado e inner join alquileres a on e.id = a.id_empleado;

-- 25. Listar empleados y sus salarios junto con la sucursal en la que trabajan
select e.id, e.nombre, s.ciudad from empleado e inner join sucursales s on e.id_sucursal = s.id;

-- 26 crea una función que convierta el modelo en mayúscula
delimiter //
create function mayus(modelo varchar(30))
returns varchar(30)
deterministic
begin
	declare mayus varchar(30);
    select upper(modelo) into mayus from vehiculos group by 1;
    return mayus;
end //
delimiter ;

select mayus(modelo) from vehiculos;

-- 27 crea una función que calcule el porcentaje del valor cotizado
select * from alquileres;
delimiter //
create function val(valor_cotisado int)
returns int
deterministic
begin
	declare val int;
    select sum(valor_cotisado) into val from vehiculos;
    return val;
end //
delimiter ;

select val(valor_cotisado) from alquileres;

-- 28 crea una función que cuente cuántos clientes existen en el sistema
delimiter //
create function contar(id int)
returns int
deterministic
begin
	declare contar int;
    select count(id) into contar from clientes;
    return contar;
end //
delimiter ;

select distinct contar(id) from clientes;

-- 29 crea una función para calcular cual es el porcentaje entre el valor de alquiler semanal
delimiter //
create function por(valor_alquiler_semanal decimal(10,2))
returns decimal(10,2)
deterministic
begin
	declare por decimal(10,2);
    select avg(valor_alquiler_semanal) into por from descuento;
    return por;
end //
delimiter ;

select por(valor_alquiler_semanal) from descuento;

-- 30 crea una funcion para que se una la columna de  tipo_vehiculo con la de modelo
select * from vehiculos;

delimiter //
create function uni(tipo_vehiculo varchar(20), modelo varchar(30))
returns varchar (40)
deterministic
begin
	declare uni varchar (40);
    select concat(tipo_vehiculo,' ',modelo) into uni from vehiculos group by 1;
    return uni;
end //
delimiter ;

select uni(tipo_vehiculo, modelo) from vehiculos;
