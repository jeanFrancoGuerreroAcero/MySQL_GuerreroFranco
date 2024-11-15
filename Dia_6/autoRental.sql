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

INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (1, 'Madrid', 912345678, 600123456, 'sucursal1@madrid.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (2, 'Barcelona', 932345678, 610123456, 'sucursal2@barcelona.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (3, 'Valencia', 962345678, 620123456, 'sucursal3@valencia.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (4, 'Sevilla', 954345678, 630123456, 'sucursal4@sevilla.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (5, 'Bilbao', 944345678, 640123456, 'sucursal5@bilbao.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (6, 'Zaragoza', 976345678, 650123456, 'sucursal6@zaragoza.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (7, 'Malaga', 951345678, 660123456, 'sucursal7@malaga.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (8, 'Murcia', 968345678, 670123456, 'sucursal8@murcia.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (9, 'Granada', 958345678, 680123456, 'sucursal9@granada.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (10, 'Alicante', 965345678, 690123456, 'sucursal10@alicante.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (11, 'Córdoba', 957345678, 700123456, 'sucursal11@cordoba.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (12, 'Valladolid', 983345678, 710123456, 'sucursal12 Valladolid.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (13, 'Pamplona', 948345678, 720123456, 'sucursal13@pamplona.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (14, 'Salamanca', 923345678, 730123456, 'sucursal14@salamanca.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (15, 'La Coruña', 981345678, 740123456, 'sucursal15@coruna.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (16, 'Santander', 942345678, 750123456, 'sucursal16@santander.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (17, 'Tenerife', 922345678, 760123456, 'sucursal17@tenerife.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (18, 'Gijón', 985345678, 770123456, 'sucursal18@gijon.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (19, 'Albacete', 967345678, 780123456, 'sucursal19@albacete.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (20, 'Algeciras', 956345678, 790123456, 'sucursal20@algeciras.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (21, 'Toledo', 925345678, 800123456, 'sucursal21@toledo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (22, 'Huelva', 959345678, 810123456, 'sucursal22@huelva.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (23, 'Lérida', 973345678, 820123456, 'sucursal23@lerida.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (24, 'Santiago', 981345678, 830123456, 'sucursal24@santiago.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (25, 'Burgos', 947345678, 840123456, 'sucursal25@burgos.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (26, 'Mérida', 924345678, 850123456, 'sucursal26@merida.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (27, 'Jerez', 956445678, 860123456, 'sucursal27@jerez.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (28, 'Cádiz', 956345678, 870123456, 'sucursal28@cadiz.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (29, 'Palencia', 979345678, 880123456, 'sucursal29@palencia.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (30, 'Lugo', 982345678, 890123456, 'sucursal30@lugo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (31, 'Castellón', 964345678, 900123456, 'sucursal31@castellon.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (32, 'Ceuta', 956345679, 910123456, 'sucursal32@ceuta.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (33, 'Melilla', 952345679, 920123456, 'sucursal33@melilla.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (34, 'Almería', 950345678, 930123456, 'sucursal34@almeria.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (35, 'Cáceres', 927345678, 940123456, 'sucursal35@caceres.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (36, 'Talavera', 925456789, 950123456, 'sucursal36@talavera.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (37, 'Puertollano', 926456789, 960123456, 'sucursal37@puertollano.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (38, 'Nerja', 952456789, 970123456, 'sucursal38@nerja.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (39, 'Ronda', 952456789, 980123456, 'sucursal39@ronda.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (40, 'Benidorm', 965456789, 990123456, 'sucursal40@benidorm.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (41, 'Las Palmas', 928456789, 600654321, 'sucursal41@laspalmas.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (42, 'San Sebastián', 943456789, 610654321, 'sucursal42@sandsebastian.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (43, 'Avilés', 985456789, 620654321, 'sucursal43@aviles.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (44, 'Malgrat de Mar', 937456789, 630654321, 'sucursal44@malgrat.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (45, 'Benalmádena', 952456780, 640654321, 'sucursal45@benalmadena.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (46, 'Fuenlabrada', 918456789, 650654321, 'sucursal46@fuenlabrada.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (47, 'Getafe', 916456789, 660654321, 'sucursal47@getafe.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (48, 'Alcalá de Henares', 918156789, 670654321, 'sucursal48@alcala.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (49, 'Torreón', 942156789, 680654321, 'sucursal49@torreon.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (50, 'Cartagena', 968956789, 690654321, 'sucursal50@cartagena.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (51, 'Barcelona', 932345678, 622345678, 'sucursal_barcelona@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (52, 'Valencia', 962345678, 632345678, 'sucursal_valencia@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (53, 'Sevilla', 954345678, 642345678, 'sucursal_sevilla@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (54, 'Zaragoza', 976345678, 652345678, 'sucursal_zaragoza@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (55, 'Málaga', 952345678, 662345678, 'sucursal_malaga@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (56, 'Murcia', 968345678, 672345678, 'sucursal_murcia@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (57, 'Palma', 971345678, 682345678, 'sucursal_palma@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (58, 'Bilbao', 944345678, 692345678, 'sucursal_bilbao@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (59, 'Granada', 958345678, 602345678, 'sucursal_granada@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (60, 'Alicante', 965345678, 612345679, 'sucursal_alicante@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (61, 'Córdoba', 957345678, 622345679, 'sucursal_cordoba@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (62, 'Valladolid', 983345678, 632345679, 'sucursal_valladolid@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (63, 'Santander', 942345678, 642345679, 'sucursal_santander@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (64, 'San Sebastián', 943345678, 652345679, 'sucursal_sansebastian@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (65, 'Salamanca', 923345678, 662345679, 'sucursal_salamanca@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (66, 'Toledo', 925345678, 672345679, 'sucursal_toledo@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (67, 'Almeria', 950345678, 682345679, 'sucursal_almeria@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (68, 'Huelva', 959345678, 692345679, 'sucursal_huelva@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (69, 'Tarragona', 977345678, 602345680, 'sucursal_tarragona@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (70, 'Logroño', 941345678, 612345680, 'sucursal_logrono@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (71, 'Burgos', 947345678, 622345680, 'sucursal_burgos@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (72, 'San Fernando', 956345678, 632345680, 'sucursal_sanfernando@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (73, 'Castellón', 964345678, 642345680, 'sucursal_castellon@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (74, 'Soria', 975345678, 652345680, 'sucursal_soria@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (75, 'Ceuta', 956345679, 662345680, 'sucursal_ceuta@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (76, 'Melilla', 952345679, 672345680, 'sucursal_melilla@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (77, 'Úbeda', 953345679, 682345680, 'sucursal_udeba@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (78, 'Talavera de la Reina', 925345679, 692345680, 'sucursal_talavera@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (79, 'Cádiz', 956345679, 602345681, 'sucursal_cadiz@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (80, 'Manresa', 938345679, 612345681, 'sucursal_manresa@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (81, 'Mataró', 937345679, 622345681, 'sucursal_mataro@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (82, 'Tarragona', 977345679, 632345681, 'sucursal_tarragona2@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (83, 'Getafe', 916345679, 642345681, 'sucursal_getafe@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (84, 'Alcalá de Henares', 918345679, 652345681, 'sucursal_alcala@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (85, 'Torrejón de Ardoz', 916345680, 662345681, 'sucursal_torrejon@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (86, 'Cerdanyola del Vallès', 935345680, 672345681, 'sucursal_cerdanyola@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (87, 'Vigo', 886345680, 682345681, 'sucursal_vigo@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (88, 'Valladolid', 983345679, 692345681, 'sucursal_valladolid@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (89, 'A Coruña', 981345680, 602345682, 'sucursal_coruna@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (90, 'Ourense', 988345680, 612345682, 'sucursal_ourense@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (91, 'Lugo', 982345680, 622345682, 'sucursal_lugo@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (92, 'Berga', 938345680, 632345682, 'sucursal_berga@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (93, 'Girona', 972345680, 642345682, 'sucursal_girona@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (94, 'Granollers', 938345681, 652345682, 'sucursal_granollers@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (95, 'Martorell', 937345681, 662345682, 'sucursal_martorell@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (96, 'Badalona', 934345681, 672345682, 'sucursal_badalona@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (97, 'Santa Coloma de Gramenet', 936345681, 682345682, 'sucursal_santacoloma@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (98, 'Tarrasa', 937345681, 692345682, 'sucursal_tarrasa@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (99, 'Cornellà de Llobregat', 934345681, 602345683, 'sucursal_cornella@ejemplo.com');
INSERT INTO sucursales (id, ciudad, telefono_fijo, celular, correo_electronico) VALUES (100, 'Sant Boi de Llobregat', 936345681, 612345683, 'sucursal_santboi@ejemplo.com');



INSERT INTO clientes (id, cedula, nombre, correo_electronico, direccion, residencia, celular) VALUES
(1, 12345678, 'Juan Pérez', 'juan.perez@email.com', 'Calle 1', 'Ciudad A', 1234567890),
(3, 12312312, 'Pedro Martínez', 'pedro.martinez@example.com', 'Calle 3', 'Ciudad C', 1234567892),
(4, 32132132, 'Ana Torres', 'ana.torres@example.com', 'Calle 4', 'Ciudad D', 1234567893),
(5, 45645645, 'Carlos Fernández', 'carlos.fernandez@example.com', 'Calle 5', 'Ciudad E', 1234567894),
(6, 65465465, 'Laura Rodríguez', 'laura.rodriguez@example.com', 'Calle 6', 'Ciudad F', 1234567895),
(7, 98765432, 'Jorge Díaz', 'jorge.diaz@example.com', 'Calle 7', 'Ciudad G', 1234567896),
(8, 23456789, 'Sofía López', 'sofia.lopez@example.com', 'Calle 8', 'Ciudad H', 1234567897),
(9, 56789012, 'Luis Herrera', 'luis.herrera@example.com', 'Calle 9', 'Ciudad I', 1234567898),
(10, 78901234, 'Claudia Moreno', 'claudia.moreno@example.com', 'Calle 10', 'Ciudad J', 1234567899),
(11, 13579111, 'Fernando Castro', 'fernando.castro@example.com', 'Calle 11', 'Ciudad K', 1234567800),
(12, 24681012, 'Gabriela Silva', 'gabriela.silva@example.com', 'Calle 12', 'Ciudad L', 1234567801),
(13, 35791313, 'Andrés Ruiz', 'andres.ruiz@example.com', 'Calle 13', 'Ciudad M', 1234567802),
(14, 46802414, 'Patricia Ortega', 'patricia.ortega@example.com', 'Calle 14', 'Ciudad N', 1234567803),
(15, 57913515, 'Hugo Morales', 'hugo.morales@example.com', 'Calle 15', 'Ciudad O', 1234567804),
(16, 68024616, 'Isabel Fernández', 'isabel.fernandez@example.com', 'Calle 16', 'Ciudad P', 1234567805),
(17, 79135717, 'Ricardo Paredes', 'ricardo.paredes@example.com', 'Calle 17', 'Ciudad Q', 1234567806),
(18, 80246818, 'Mariana Cortez', 'mariana.cortez@example.com', 'Calle 18', 'Ciudad R', 1234567807),
(19, 91357919, 'Diego Gil', 'diego.gil@example.com', 'Calle 19', 'Ciudad S', 1234567808),
(20, 12468020, 'Lucía Barrera', 'lucia.barrera@example.com', 'Calle 20', 'Ciudad T', 1234567809),
(21, 13579121, 'Alberto Jaramillo', 'alberto.jaramillo@example.com', 'Calle 21', 'Ciudad U', 1234567810),
(22, 24680222, 'Natalia Sosa', 'natalia.sosa@example.com', 'Calle 22', 'Ciudad V', 1234567811),
(23, 35791323, 'Mónica Vega', 'monica.vega@example.com', 'Calle 23', 'Ciudad W', 1234567812),
(24, 46802424, 'Felipe Romero', 'felipe.romero@example.com', 'Calle 24', 'Ciudad X', 1234567813),
(25, 57913525, 'Carmen Castillo', 'carmen.castillo@example.com', 'Calle 25', 'Ciudad Y', 1234567814),
(26, 68024626, 'Valentina León', 'valentina.leon@example.com', 'Calle 26', 'Ciudad Z', 1234567815),
(27, 79135727, 'Julián Alarcón', 'julian.alarcon@example.com', 'Calle 27', 'Ciudad AA', 1234567816),
(28, 80246828, 'Santiago Pino', 'santiago.pino@example.com', 'Calle 28', 'Ciudad AB', 1234567817),
(29, 91357929, 'María Inés', 'maria.ines@example.com', 'Calle 29', 'Ciudad AC', 1234567818),
(30, 12468030, 'Salvador Lazo', 'salvador.lazo@example.com', 'Calle 30', 'Ciudad AD', 1234567819),
(31, 13579131, 'Raquel Pino', 'raquel.pino@example.com', 'Calle 31', 'Ciudad AE', 1234567820),
(32, 24680232, 'Cristian Salgado', 'cristian.salgado@example.com', 'Calle 32', 'Ciudad AF', 1234567821),
(33, 35791333, 'Erika Ocampo', 'erika.ocampo@example.com', 'Calle 33', 'Ciudad AG', 1234567822),
(34, 46802434, 'Nicolás Duque', 'nicolas.duque@example.com', 'Calle 34', 'Ciudad AH', 1234567823),
(35, 57913535, 'Gabriel Morán', 'gabriel.moran@example.com', 'Calle 35', 'Ciudad AI', 1234567824),
(36, 68024636, 'Natalia de León', 'natalia.deleon@example.com', 'Calle 36', 'Ciudad AJ', 1234567825),
(37, 79135737, 'Ricardo Ávila', 'ricardo.avila@example.com', 'Calle 37', 'Ciudad AK', 1234567826),
(38, 80246838, 'Claudia Barrientos', 'claudia.barrientos@example.com', 'Calle 38', 'Ciudad AL', 1234567827),
(39, 91357939, 'Jesús Espinoza', 'jesus.espinoza@example.com', 'Calle 39', 'Ciudad AM', 1234567828),
(40, 12468040, 'Laura Esteban', 'laura.esteban@example.com', 'Calle 40', 'Ciudad AN', 1234567829),
(41, 13579141, 'Fernando Ortega', 'fernando.ortega@example.com', 'Calle 41', 'Ciudad AO', 1234567830),
(42, 24680242, 'Sofía Silva', 'sofia.silva@example.com', 'Calle 42', 'Ciudad AP', 1234567831),
(43, 35791343, 'Pablo Mendoza', 'pablo.mendoza@example.com', 'Calle 43', 'Ciudad AQ', 1234567832),
(44, 46802444, 'Daniela Ramírez', 'daniela.ramirez@example.com', 'Calle 44', 'Ciudad AR', 1234567833),
(45, 57913545, 'Augusto Cardenas', 'augusto.cardenas@example.com', 'Calle 45', 'Ciudad AS', 1234567834),
(46, 68024646, 'Verónica Castel', 'veronica.castel@example.com', 'Calle 46', 'Ciudad AT', 1234567835),
(47, 79135747, 'Máximo Quiroz', 'maximo.quiroz@example.com', 'Calle 47', 'Ciudad AU', 1234567836),
(48, 80246848, 'Cecilia Godoy', 'cecilia.godoy@example.com', 'Calle 48', 'Ciudad AV', 1234567837),
(49, 91357949, 'Felipe López', 'felipe.lopez@example.com', 'Calle 49', 'Ciudad AW', 1234567838),
(50, 12468050, 'Elena Salazar', 'elena.salazar@example.com', 'Calle 50', 'Ciudad AX', 1234567839),
(51, 123456789, 'Juan Pérez', 'juan.perez@example.com', 'Calle 1', 'Ciudad A', 321654987),
(52, 987654321, 'Ana Gómez', 'ana.gomez@example.com', 'Calle 2', 'Ciudad B', 321789654),
(53, 112233445, 'Carlos López', 'carlos.lopez@example.com', 'Calle 3', 'Ciudad C', 321456987),
(54, 223344556, 'Laura Torres', 'laura.torres@example.com', 'Calle 4', 'Ciudad D', 321987654),
(55, 334455667, 'Mario Fernández', 'mario.fernandez@example.com', 'Calle 5', 'Ciudad E', 321345678),
(56, 445566778, 'Sofía Martínez', 'sofia.martinez@example.com', 'Calle 6', 'Ciudad F', 321876543),
(57, 556677889, 'Diego Sánchez', 'diego.sanchez@example.com', 'Calle 7', 'Ciudad G', 321213456),
(58, 667788990, 'Isabella Ruiz', 'isabella.ruiz@example.com', 'Calle 8', 'Ciudad H', 321654321),
(59, 778899001, 'Luis Morales', 'luis.morales@example.com', 'Calle 9', 'Ciudad I', 321987123),
(60, 889900112, 'Marta Díaz', 'marta.diaz@example.com', 'Calle 10', 'Ciudad J', 321345789),
(61, 990011223, 'Carmen Reyes', 'carmen.reyes@example.com', 'Calle 11', 'Ciudad K', 321876543),
(62, 111223344, 'Andrés Castro', 'andres.castro@example.com', 'Calle 12', 'Ciudad L', 321234567),
(63, 222334455, 'Juliana Aguirre', 'juliana.aguirre@example.com', 'Calle 13', 'Ciudad M', 321765432),
(64, 333445566, 'Javier Rojas', 'javier.rojas@example.com', 'Calle 14', 'Ciudad N', 321654987),
(65, 444556677, 'Patricia Ortega', 'patricia.ortega@example.com', 'Calle 15', 'Ciudad O', 321789654),
(66, 555667788, 'Fernando Jiménez', 'fernando.jimenez@example.com', 'Calle 16', 'Ciudad P', 321456123),
(67, 666778899, 'Nadia Castillo', 'nadia.castillo@example.com', 'Calle 17', 'Ciudad Q', 321987321),
(68, 777889900, 'Cristian Villarreal', 'cristian.villarreal@example.com', 'Calle 18', 'Ciudad R', 321213234),
(69, 888990011, 'Paola López', 'paola.lopez@example.com', 'Calle 19', 'Ciudad S', 321654876),
(70, 999001122, 'Ricardo Moreno', 'ricardo.moreno@example.com', 'Calle 20', 'Ciudad T', 321987789),
(71, 101112131, 'Mónica Valenzuela', 'monica.valenzuela@example.com', 'Calle 21', 'Ciudad U', 321234123),
(72, 121314151, 'Victoria Ortega', 'victoria.ortega@example.com', 'Calle 22', 'Ciudad V', 321765543),
(73, 131415161, 'Sebastián Paredes', 'sebastian.paredes@example.com', 'Calle 23', 'Ciudad W', 321654321),
(74, 141516171, 'Amanda Salazar', 'amanda.salazar@example.com', 'Calle 24', 'Ciudad X', 321876321),
(75, 151617181, 'Alfredo Carrillo', 'alfredo.carrillo@example.com', 'Calle 25', 'Ciudad Y', 321213321),
(76, 161718191, 'Julio Montoya', 'julio.montoya@example.com', 'Calle 26', 'Ciudad Z', 321654456),
(77, 171819202, 'Tatiana Barrios', 'tatiana.barrios@example.com', 'Calle 27', 'Ciudad AA', 321987678),
(78, 181920212, 'Salvador Ceballos', 'salvador.ceballos@example.com', 'Calle 28', 'Ciudad AB', 321345678),
(79, 192021222, 'Fabiola Alarcón', 'fabiola.alarcon@example.com', 'Calle 29', 'Ciudad AC', 321876543),
(80, 202122232, 'Ricardo Quiroz', 'ricardo.quiroz@example.com', 'Calle 30', 'Ciudad AD', 321234567),
(81, 212223242, 'Gloria Ramos', 'gloria.ramos@example.com', 'Calle 31', 'Ciudad AE', 321765432),
(82, 222324252, 'Victor Espinoza', 'victor.espinoza@example.com', 'Calle 32', 'Ciudad AF', 321654987),
(83, 232425262, 'Rosa Méndez', 'rosa.mendez@example.com', 'Calle 33', 'Ciudad AG', 321789654),
(84, 242526272, 'Edgar Guerrero', 'edgar.guerrero@example.com', 'Calle 34', 'Ciudad AH', 321456789),
(85, 252627282, 'Ximena Arango', 'ximena.arango@example.com', 'Calle 35', 'Ciudad AI', 321876543),
(86, 262728292, 'Alba Jaramillo', 'alba.jaramillo@example.com', 'Calle 36', 'Ciudad AJ', 321213456),
(87, 272829303, 'Marisol Zúñiga', 'marisol.zuniga@example.com', 'Calle 37', 'Ciudad AK', 321654321),
(88, 282930313, 'Jorge Jiménez', 'jorge.jimenez@example.com', 'Calle 38', 'Ciudad AL', 321987654),
(89, 293031323, 'Beatriz Duque', 'beatriz.duque@example.com', 'Calle 39', 'Ciudad AM', 321345789),
(90, 303132333, 'Esteban Saavedra', 'esteban.saavedra@example.com', 'Calle 40', 'Ciudad AN', 321876321),
(91, 313233343, 'Claudia Arce', 'claudia.arce@example.com', 'Calle 41', 'Ciudad AO', 321234234),
(92, 323435353, 'Fernando Rivas', 'fernando.rivas@example.com', 'Calle 42', 'Ciudad AP', 321765765),
(93, 334546363, 'Patricia Costas', 'patricia.costas@example.com', 'Calle 43', 'Ciudad AQ', 321654234),
(94, 345657373, 'Omar Salas', 'omar.salas@example.com', 'Calle 44', 'Ciudad AR', 321789123),
(95, 456768383, 'Lucía Castro', 'lucia.castro@example.com', 'Calle 45', 'Ciudad AS', 321123456),
(96, 567879393, 'David Lizarazo', 'david.lizarazo@example.com', 'Calle 46', 'Ciudad AT', 321987543),
(97, 678980404, 'Camila Arteaga', 'camila.arteaga@example.com', 'Calle 47', 'Ciudad AU', 321456789),
(98, 789081515, 'Julián León', 'julian.leon@example.com', 'Calle 48', 'Ciudad AV', 321789654),
(99, 890192626, 'Natalia Palma', 'natalia.palma@example.com', 'Calle 49', 'Ciudad AW', 321234987),
(100, 901203737, 'Ricardo Sampaio', 'ricardo.sampaio@example.com', 'Calle 50', 'Ciudad AX', 321567891);


INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES
(1, 123456789, 'Juan', 'Pérez', 3214616890, 'juan.perez@email.com', 'Medellín', 1),
(2, 987654321, 'Ana', 'Gómez', 3122222222, 'ana.gomez@email.com', 'Bogotá', 2),
(3, 456123789, 'Carlos', 'López', 3133333333, 'carlos.lopez@email.com', 'Cali', 1),
(4, 321654987, 'María', 'Martínez', 3144444444, 'maria.martinez@email.com', 'Barranquilla', 3),
(5, 951753852, 'Luis', 'Hernández', 3155555555, 'luis.hernandez@email.com', 'Cartagena', 2),
(6, 258963147, 'Laura', 'Torres', 3166666666, 'laura.torres@email.com', 'Bucaramanga', 4),
(7, 789456123, 'Jorge', 'Ramírez', 3177777777, 'jorge.ramirez@email.com', 'Cúcuta', 1),
(8, 123789456, 'Elena', 'Rojas', 3188888888, 'elena.rojas@email.com', 'Santa Marta', 3),
(9, 456789123, 'Pedro', 'García', 3199999999, 'pedro.garcia@email.com', 'Pereira', 4),
(10, 147258369, 'Sandra', 'Vásquez', 3200000000, 'sandra.vasquez@email.com', 'Manizales', 2),
(11, 258147369, 'Andrés', 'Salazar', 3211111111, 'andres.salazar@email.com', 'Villavicencio', 1),
(12, 369258147, 'Sofía', 'Córdoba', 3222222222, 'sofia.cordoba@email.com', 'Neiva', 3),
(13, 753159486, 'Diego', 'Luna', 3233333333, 'diego.luna@email.com', 'Ibagué', 4),
(14, 951852753, 'Felipe', 'Alvarez', 3244444444, 'felipe.alvarez@email.com', 'Tunja', 1),
(15, 147369258, 'Nicole', 'Pineda', 3255555555, 'nicole.pineda@email.com', 'Armenia', 2),
(16, 258369147, 'Valentina', 'Sarmiento', 3266666666, 'valentina.sarmiento@email.com', 'Quibdó', 3),
(17, 753258168, 'David', 'Mendoza', 3277777777, 'david.mendoza@email.com', 'Palmira', 1),
(18, 159753486, 'Adriana', 'Velasco', 3288888888, 'adriana.velasco@email.com', 'Popayán', 4),
(19, 258963654, 'Miguel', 'Guerrero', 3299999999, 'miguel.guerrero@email.com', 'Sincelejo', 2),
(20, 951862473, 'Camila', 'Bermúdez', 3300000000, 'camila.bermudez@email.com', 'Montería', 3),
(21, 333444555, 'Sebastián', 'Cáceres', 3112345678, 'sebastian.caceres@email.com', 'Cali', 1),
(22, 444555666, 'Isabella', 'Pérez', 3123456789, 'isabella.perez@email.com', 'Medellín', 2),
(23, 555666777, 'Felipe', 'Diaz', 3134567890, 'felipe.diaz@email.com', 'Bogotá', 1),
(24, 666777888, 'Santiago', 'Hernandez', 3145678901, 'santiago.hernandez@email.com', 'Cartagena', 3),
(25, 777888999, 'Catalina', 'Mora', 3156789012, 'catalina.mora@email.com', 'Barranquilla', 2),
(26, 888999000, 'Alejandro', 'Salas', 3167890123, 'alejandro.salas@email.com', 'Cúcuta', 4),
(27, 999000111, 'Victoria', 'Pacheco', 3178901234, 'victoria.pacheco@email.com', 'Santa Marta', 1),
(28, 000111222, 'Oscar', 'Escobar', 3189012345, 'oscar.escobar@email.com', 'Popayán', 2),
(29, 111222333, 'Sofia', 'Sosa', 3190123456, 'sofia.sosa@email.com', 'Bucaramanga', 3),
(30, 222333444, 'Aaron', 'Guitierrez', 3201234567, 'aaron.guitierrez@email.com', 'Ibagué', 4),
(31, 333444555, 'Lina', 'Quintero', 3212345678, 'lina.quintero@email.com', 'Manizales', 1),
(32, 444555666, 'Natalia', 'Mendez', 3223456789, 'natalia.mendez@email.com', 'Tunja', 2),
(33, 555666777, 'Martin', 'Bermudez', 3234567890, 'martin.bermudez@email.com', 'Neiva', 3),
(34, 666777888, 'Melissa', 'Vega', 3245678901, 'melissa.vega@email.com', 'Cartagena', 4),
(35, 777888999, 'Fernando', 'Casas', 3256789012, 'fernando.casas@email.com', 'Cali', 1),
(36, 888999000, 'Eduardo', 'Taborda', 3267890123, 'eduardo.taborda@email.com', 'Medellín', 2),
(37, 999000111, 'Alicia', 'Quiñones', 3278901234, 'alicia.quinones@email.com', 'Bogotá', 3),
(38, 000111222, 'Roberto', 'Loera', 3289012345, 'roberto.loera@email.com', 'Cúcuta', 4),
(39, 111222333, 'Juliana', 'Romero', 3290123456, 'juliana.romero@email.com', 'Barranquilla', 1),
(40, 222333444, 'Humberto', 'Ceballos', 3301234567, 'humberto.ceballos@email.com', 'Armenia', 2),
(41, 555666777, 'César', 'Velandia', 3312345678, 'cesar.velandia@email.com', 'Cúcuta', 3),
(42, 666777888, 'Paola', 'Jaramillo', 3323456789, 'paola.jaramillo@email.com', 'Cartagena', 4),
(43, 777888999, 'Álvaro', 'Bolaños', 3334567890, 'alvaro.bolanos@email.com', 'Bucaramanga', 1),
(44, 888999000, 'Estefanía', 'Salazar', 3345678901, 'estefania.salazar@email.com', 'Tunja', 2),
(45, 999000111, 'Ángela', 'Ospina', 3356789012, 'angela.ospina@email.com', 'Neiva', 3),
(46, 000111222, 'Pablo', 'Gómez', 3367890123, 'pablo.gomez@email.com', 'Ibagué', 4),
(47, 111222333, 'Luz', 'Fernández', 3378901234, 'luz.fernandez@email.com', 'Manizales', 1),
(48, 222333444, 'Ramón', 'Córdoba', 3389012345, 'ramon.cordoba@email.com', 'Santa Marta', 2),
(49, 333444555, 'Diana', 'Gutiérrez', 3390123456, 'diana.gutierrez@email.com', 'Cali', 3),
(50, 444555666, 'Jesus', 'Salguero', 3401234567, 'jesus.salguero@email.com', 'Medellín', 4);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (51, 123456789, 'Juan', 'Pérez', '3012345678', 'juan.perez@example.com', 'Medellín', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (52, 987654321, 'María', 'Gomez', '3023456789', 'maria.gomez@example.com', 'Bogotá', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (53, 456789123, 'Carlos', 'Fernández', '3034567890', 'carlos.fernandez@example.com', 'Cali', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (54, 321654987, 'Laura', 'Martínez', '3045678901', 'laura.martinez@example.com', 'Barranquilla', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (55, 654321789, 'José', 'Rodríguez', '3056789012', 'jose.rodriguez@example.com', 'Cartagena', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (56, 123456123, 'Ana', 'Ramírez', '3067890123', 'ana.ramirez@example.com', 'Bucaramanga', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (57, 789456123, 'Luis', 'Hernández', '3078901234', 'luis.hernandez@example.com', 'Pereira', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (58, 159753456, 'Sofía', 'Ceballos', '3089012345', 'sofia.ceballos@example.com', 'Cúcuta', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (59, 753159864, 'Diego', 'Garcia', '3090123456', 'diego.garcia@example.com', 'Ibagué', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (60, 321987654, 'Ricardo', 'Vásquez', '3012345679', 'ricardo.vasquez@example.com', 'Neiva', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (61, 963852741, 'Natalia', 'Jiménez', '3023456780', 'natalia.jimenez@example.com', 'Santa Marta', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (62, 741258963, 'Andrés', 'Salazar', '3034567891', 'andres.salazar@example.com', 'Montería', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (63, 852963147, 'Lorena', 'Pineda', '3045678902', 'lorena.pineda@example.com', 'Tuluá', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (64, 159357486, 'Victor', 'Mora', '3056789013', 'victor.mora@example.com', 'Armenia', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (65, 753951852, 'Fabiola', 'Alvarez', '3067890124', 'fabiola.alvarez@example.com', 'Valledupar', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (66, 258456789, 'Esteban', 'Correa', '3078901235', 'esteban.correa@example.com', 'Riohacha', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (67, 369852147, 'Patricia', 'Cortés', '3089012346', 'patricia.cortes@example.com', 'Sincelejo', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (68, 852147963, 'Fabiana', 'Quintero', '3090123457', 'fabiana.quintero@example.com', 'Manizales', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (69, 741236985, 'Hugo', 'Salamanca', '3012346780', 'hugo.salamanca@example.com', 'Tunja', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (70, 159753852, 'Susana', 'Bermúdez', '3023457891', 'susana.bermudez@example.com', 'Popayán', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (71, 123456987, 'Nicolas', 'Hernández', '3034567901', 'nicolas.hernandez@example.com', 'Bello', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (72, 654321564, 'Gustavo', 'Tovar', '3045678912', 'gustavo.tovar@example.com', 'Villavicencio', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (73, 456987321, 'Verónica', 'Cáceres', '3056789023', 'veronica.caceres@example.com', 'Cali', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (74, 852369741, 'Anderson', 'Balaguera', '3067890134', 'anderson.balaguera@example.com', 'Barranquilla', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (75, 963258741, 'Sandra', 'González', '3078901245', 'sandra.gonzalez@example.com', 'Cúcuta', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (76, 753159753, 'Óscar', 'Bermúdez', '3089012356', 'oscar.bermudez@example.com', 'Cartagena', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (77, 321654987, 'Gabriela', 'Maldonado', '3090123467', 'gabriela.maldonado@example.com', 'Pereira', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (78, 654987321, 'Santiago', 'Quintero', '3012345670', 'santiago.quintero@example.com', 'Tuluá', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (79, 789123654, 'Adriana', 'Rojas', '3023456781', 'adriana.rojas@example.com', 'Manizales', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (80, 258963147, 'Felipe', 'Aparicio', '3034567892', 'felipe.aparicio@example.com', 'Neiva', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (81, 369147258, 'Claudia', 'Morrison', '3045678903', 'claudia.morrison@example.com', 'Cartagena', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (82, 951257468, 'Alejandro', 'Murillo', '3056789014', 'alejandro.murillo@example.com', 'Valledupar', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (83, 852369654, 'Vanessa', 'Aguirre', '3067890125', 'vanessa.aguirre@example.com', 'Cúcuta', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (84, 741258951, 'Laura', 'Álvarez', '3078901236', 'laura.alvarez@example.com', 'Bucaramanga', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (85, 963147258, 'David', 'Martinez', '3089012347', 'david.martinez@example.com', 'Popayán', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (86, 951753852, 'Luisa', 'Sutela', '3090123458', 'luisa.sutela@example.com', 'Ibagué', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (87, 147258963, 'Henry', 'Torres', '3012346789', 'henry.torres@example.com', 'Santa Marta', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (88, 258147963, 'Karla', 'Hernandez', '3023457890', 'karla.hernandez@example.com', 'Montería', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (89, 369456123, 'Patricio', 'Canas', '3034568901', 'patricio.canas@example.com', 'Cali', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (90, 753753951, 'Adriana', 'Delgado', '3045678912', 'adriana.delgado@example.com', 'Bello', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (91, 951159753, 'Samuel', 'Sanchez', '3056789023', 'samuel.sanchez@example.com', 'Cúcuta', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (92, 753951258, 'Martin', 'Barrientos', '3067890124', 'martin.barrientos@example.com', 'Tuluá', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (93, 159852741, 'Nora', 'Tovar', '3078901235', 'nora.tovar@example.com', 'Barranquilla', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (94, 951357852, 'Lucas', 'López', '3089012346', 'lucas.lopez@example.com', 'Manizales', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (95, 753258159, 'Raquel', 'Pérez', '3090123457', 'raquel.perez@example.com', 'Valledupar', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (96, 123369258, 'Emilio', 'Córdoba', '3012346780', 'emilio.cordoba@example.com', 'Neiva', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (97, 654123789, 'Martina', 'Jiménez', '3023457891', 'martina.jimenez@example.com', 'Santa Marta', 3);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (98, 258963789, 'Miguel', 'Alonso', '3034568902', 'miguel.alonso@example.com', 'Cúcuta', 1);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (99, 753159456, 'Bianca', 'Ramos', '3045679013', 'bianca.ramos@example.com', 'Bello', 2);
INSERT INTO empleado (id, cedula, nombre, apellido, celular, correo_electronico, ciudad_residencia, id_sucursal) VALUES (100, 456123789, 'Gina', 'Martinez', '3056780124', 'gina.martinez@example.com', 'Tuluá', 3);


INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES
(51, 'ABC-123', 'Sedán', 'Model S', 4, 5, 'Sí', 'Eléctrico', 'Negro'),
(52, 'DEF-456', 'SUV', 'Model X', 4, 7, 'Sí', 'Eléctrico', 'Blanco'),
(53, 'GHI-789', 'Compacto', 'Civic', 4, 5, 'No', 'Gasolina', 'Rojo'),
(54, 'JKL-012', 'Pick-up', 'F-150', 2, 3, 'No', 'Gasolina', 'Azul'),
(55, 'MNO-345', 'Deportivo', 'Mustang', 2, 4, 'No', 'Gasolina', 'Amarillo'),
(56, 'PQR-678', 'SUV', 'Explorer', 4, 7, 'Sí', 'Gasolina', 'Verde'),
(57, 'STU-901', 'Sedán', 'Camry', 4, 5, 'No', 'Híbrido', 'Gris'),
(58, 'VWX-234', 'Van', 'Odyssey', 4, 8, 'Sí', 'Gasolina', 'Naranja'),
(59, 'YZA-567', 'Híbrido', 'Prius', 4, 5, 'No', 'Híbrido', 'Platino'),
(60, 'BCD-890', 'Compacto', 'Mazda 3', 4, 5, 'No', 'Gasolina', 'Vino'),
(61, 'EFG-123', 'SUV', 'Q5', 4, 5, 'Sí', 'Gasolina', 'Negro'),
(62, 'HIJ-456', 'Sedán', 'Accord', 4, 5, 'No', 'Gasolina', 'Blanco'),
(63, 'KLM-789', 'Deportivo', 'Challenger', 2, 4, 'No', 'Gasolina', 'Rojo'),
(64, 'NOP-012', 'SUV', 'Tiguan', 4, 5, 'Sí', 'Gasolina', 'Azul'),
(65, 'QRS-345', 'Pick-up', 'Ram 1500', 4, 6, 'No', 'Gasolina', 'Negro'),
(66, 'TUV-678', 'SUV', 'Pathfinder', 4, 7, 'Sí', 'Gasolina', 'Rojo'),
(67, 'WXY-901', 'Compacto', 'Focus', 4, 5, 'No', 'Gasolina', 'Verde'),
(68, 'ZAB-234', 'Sedán', 'Elantra', 4, 5, 'No', 'Híbrido', 'Gris'),
(69, 'CDE-567', 'Híbrido', 'Insignia', 4, 5, 'No', 'Híbrido', 'Naranja'),
(70, 'FGH-890', 'Van', 'Sienna', 4, 8, 'Sí', 'Gasolina', 'Platino'),
(71, 'IJK-123', 'SUV', 'RAV4', 4, 5, 'Sí', 'Gasolina', 'Azul'),
(72, 'LMN-456', 'Sedán', 'Sonata', 4, 5, 'No', 'Gasolina', 'Rojo'),
(73, 'OPQ-789', 'Deportivo', 'Civic Type R', 2, 4, 'No', 'Gasolina', 'Blanco'),
(74, 'RST-012', 'Compacto', 'Corolla', 4, 5, 'No', 'Gasolina', 'Negro'),
(75, 'UVW-345', 'SUV', 'CR-V', 4, 5, 'Sí', 'Híbrido', 'Verde'),
(76, 'XYZ-678', 'Van', 'Transit', 4, 12, 'No', 'Gasolina', 'Naranja'),
(77, 'ABC-901', 'SUV', 'Durango', 4, 7, 'Sí', 'Gasolina', 'Gris'),
(78, 'DEF-234', 'Deportivo', 'Cayman', 2, 2, 'No', 'Gasolina', 'Rojo'),
(79, 'GHI-567', 'Sedán', 'Impala', 4, 5, 'No', 'Gasolina', 'Azul'),
(80, 'JKL-890', 'Pick-up', 'Colorado', 4, 5, 'No', 'Gasolina', 'Plata'),
(81, 'MNO-123', 'SUV', 'Acadia', 4, 7, 'Sí', 'Gasolina', 'Negro'),
(82, 'PQR-456', 'Compacto', 'Jetta', 4, 5, 'No', 'Gasolina', 'Verde'),
(83, 'STU-789', 'Híbrido', 'Fusion', 4, 5, 'Sí', 'Híbrido', 'Blanco'),
(84, 'VWX-012', 'Deportivo', 'Z4', 2, 2, 'No', 'Gasolina', 'Negro'),
(85, 'YZA-345', 'Van', 'Caravan', 4, 7, 'Sí', 'Gasolina', 'Gris'),
(86, 'BCD-678', 'SUV', 'Kona', 4, 5, 'No', 'Gasolina', 'Naranja'),
(87, 'EFG-901', 'Sedán', 'Optima', 4, 5, 'No', 'Híbrido', 'Rojo'),
(88, 'HIJ-234', 'Pick-up', 'Tacoma', 4, 5, 'Sí', 'Gasolina', 'Azul'),
(89, 'KLM-567', 'SUV', 'Cherokee', 4, 5, 'Sí', 'Gasolina', 'Verde'),
(90, 'NOP-890', 'Compacto', 'Soul', 4, 5, 'No', 'Gasolina', 'Amarillo'),
(91, 'QRS-123', 'Híbrido', 'CT 200h', 4, 5, 'No', 'Híbrido', 'Platino'),
(92, 'TUV-456', 'Deportivo', 'NSX', 2, 2, 'No', 'Gasolina', 'Rojo'),
(93, 'WXY-789', 'SUV', 'Santa Fe', 4, 5, 'Sí', 'Gasolina', 'Blanco'),
(94, 'ZAB-012', 'Van', 'ProMaster', 4, 10, 'No', 'Gasolina', 'Negro'),
(95, 'CDE-345', 'Pick-up', 'Silverado', 4, 5, 'No', 'Gasolina', 'Verde'),
(96, 'FGH-678', 'Compacto', 'Focus RS', 4, 5, 'No', 'Gasolina', 'Azul'),
(97, 'IJK-901', 'SUV', 'Sorento', 4, 5, 'Sí', 'Gasolina', 'Rojo'),
(98, 'LMN-234', 'Deportivo', 'Elise', 2, 2, 'No', 'Gasolina', 'Amarillo'),
(99, 'OPQ-567', 'Sedán', 'Malibu', 4, 5, 'No', 'Gasolina', 'Gris'),
(100, 'RST-890', 'Híbrido', 'RAV4 Hybrid', 4, 5, 'Sí', 'Híbrido', 'Blanco');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (1, 'ABC-123', 'Sedán', 'Modelo X', 4, 5, 'Sí', '2.0 Turbo', 'Rojo');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (2, 'DEF-456', 'SUV', 'Modelo Y', 4, 7, 'Sí', '3.5 V6', 'Negro');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (3, 'GHI-789', 'Camión', 'Modelo Z', 2, 3, 'No', '5.0 Diesel', 'Blanco');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (4, 'JKL-012', 'Crossover', 'Modelo A', 4, 5, 'Sí', '2.4 Hybrid', 'Gris');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (5, 'MNO-345', 'Coupe', 'Modelo B', 2, 4, 'No', '3.0 Turbo', 'Azul');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (6, 'PQR-678', 'Hatchback', 'Modelo C', 5, 5, 'Sí', '1.5 Eco', 'Verde');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (7, 'STU-901', 'Deportivo', 'Modelo D', 2, 2, 'No', '4.0 V8', 'Amarillo');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (8, 'VWX-234', 'Convertible', 'Modelo E', 2, 4, 'Sí', '3.5 V6', 'Rojo');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (9, 'YZA-567', 'Minivan', 'Modelo F', 5, 7, 'Sí', '2.8 Diesel', 'Blanco');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (20, 'BCD-890', 'Pick-up', 'Modelo G', 4, 5, 'No', '4.5 Diesel', 'Negro');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (11, 'EFG-123', 'SUV', 'Modelo H', 4, 5, 'Sí', '2.0 Turbo', 'Naranja');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (12, 'HIJ-456', 'Sedán', 'Modelo I', 4, 5, 'No', '1.8 Natural', 'Marrón');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (13, 'KLM-789', 'Crossover', 'Modelo J', 5, 7, 'Sí', '2.5 Hybrid', 'Plateado');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (14, 'NOP-012', 'Coupe', 'Modelo K', 2, 4, 'No', '3.2 V6', 'Vino');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (15, 'QRS-345', 'Hatchback', 'Modelo L', 5, 5, 'Sí', '1.5 Turbo', 'Turquesa');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (16, 'TUV-678', 'Deportivo', 'Modelo M', 2, 2, 'No', '4.2 Turbo', 'Fucsia');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (17, 'WXY-901', 'Convertible', 'Modelo N', 2, 4, 'Sí', '3.8 V8', 'Beige');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (18, 'ZAB-234', 'Minivan', 'Modelo O', 5, 7, 'No', '2.4 Natural', 'Azul Marino');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (19, 'CDE-567', 'Pick-up', 'Modelo P', 4, 5, 'Sí', '5.3 V8', 'Gris Claro');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (10, 'FGH-890', 'SUV', 'Modelo Q', 4, 5, 'Sí', '3.0 Diesel', 'Plata');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (21, 'IJK-123', 'Sedán', 'Modelo R', 4, 5, 'No', '2.2 Natural', 'Negro Mate');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (22, 'LMN-456', 'Crossover', 'Modelo S', 5, 7, 'Sí', '2.5 Turbo', 'Marfil');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (23, 'OPQ-789', 'Coupe', 'Modelo T', 2, 4, 'No', '3.5 V6', 'Rojo Intenso');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (24, 'RST-012', 'Hatchback', 'Modelo U', 5, 5, 'Sí', '1.6 Natural', 'Azul Cielo');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (25, 'UVW-345', 'Deportivo', 'Modelo V', 2, 2, 'No', '4.0 Turbo', 'Negro Charcoal');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (26, 'XYZ-678', 'Convertible', 'Modelo W', 2, 4, 'Sí', '3.7 V6', 'Dorado');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (27, 'ABC-890', 'Minivan', 'Modelo X', 5, 7, 'No', '2.6 Diesel', 'Gris Oscuro');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (28, 'DEF-012', 'Pick-up', 'Modelo Y', 4, 5, 'Sí', '5.0 Diesel', 'Rojo Brillante');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (29, 'GHI-345', 'SUV', 'Modelo Z', 4, 5, 'Sí', '3.1 Turbo', 'Negro Metálico');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (30, 'JKL-678', 'Sedán', 'Modelo A', 4, 5, 'No', '2.3 Natural', 'Verde Oliva');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (31, 'MNO-901', 'Crossover', 'Modelo B', 5, 7, 'Sí', '2.2 Diesel', 'Plateado');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (32, 'PQR-234', 'Coupe', 'Modelo C', 2, 4, 'No', '3.0 V8', 'Amarillo Lima');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (33, 'STU-567', 'Hatchback', 'Modelo D', 5, 5, 'Sí', '1.4 Turbo', 'Marrón Claro');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (34, 'VWX-890', 'Deportivo', 'Modelo E', 2, 2, 'No', '5.0 V8', 'Blanco Perla');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (35, 'YZA-123', 'Convertible', 'Modelo F', 2, 4, 'Sí', '4.2 V6', 'Rojo Ferrari');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (36, 'BCD-456', 'Minivan', 'Modelo G', 5, 7, 'No', '2.5 Natural', 'Azul Pastel');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (37, 'EFG-789', 'Pick-up', 'Modelo H', 4, 5, 'Sí', '4.6 Diesel', 'Negro Raven');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (38, 'HIJ-012', 'SUV', 'Modelo I', 4, 5, 'Sí', '3.4 Turbo', 'Verde Espinado');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (39, 'KLM-345', 'Sedán', 'Modelo J', 4, 5, 'No', '2.1 Turbo', 'Turquesa Claro');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (40, 'NOP-678', 'Crossover', 'Modelo K', 5, 7, 'Sí', '2.3 Diesel', 'Plata Brillante');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (41, 'QRS-901', 'Coupe', 'Modelo L', 2, 4, 'No', '3.6 V6', 'Granate');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (42, 'TUV-234', 'Hatchback', 'Modelo M', 5, 5, 'Sí', '1.7 Turbo', 'Beige Claro');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (43, 'UVW-567', 'Deportivo', 'Modelo N', 2, 2, 'No', '4.1 V8', 'Naranja Brillante');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (44, 'XYZ-890', 'Convertible', 'Modelo O', 2, 4, 'Sí', '3.9 V6', 'Negro Nuclear');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (45, 'ABC-123', 'Minivan', 'Modelo P', 5, 7, 'No', '2.4 Diesel', 'Rojo Rubí');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (46, 'DEF-456', 'Pick-up', 'Modelo Q', 4, 5, 'Sí', '5.1 Diesel', 'Azul Cielo Claro');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (47, 'GHI-789', 'SUV', 'Modelo R', 4, 5, 'Sí', '2.8 Natural', 'Gris Rayo');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (48, 'JKL-012', 'Sedán', 'Modelo S', 4, 5, 'No', '2.0 Turbo', 'Mostaza');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (49, 'MNO-345', 'Crossover', 'Modelo T', 5, 7, 'Sí', '2.5 Diesel', 'Cristal');
INSERT INTO vehiculos (id, placa, tipo_vehiculo, modelo, puertas, capacidad, sunroof, motor, color) VALUES (50, 'PQR-678', 'Coupe', 'Modelo U', 2, 4, 'No', '3.4 V6', 'Meta');


INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (1, 300, 50, 10.0, 270);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (2, 250, 40, 15.0, 212.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (3, 200, 35, 5.0, 190);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (4, 350, 60, 20.0, 280);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (5, 400, 70, 25.0, 300);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (6, 150, 25, 10.0, 135);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (7, 500, 90, 30.0, 350);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (8, 600, 100, 5.0, 570);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (9, 450, 80, 15.0, 382.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (10, 550, 95, 20.0, 440);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (11, 300, 50, 10.0, 270);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (12, 250, 40, 15.0, 212.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (13, 200, 35, 5.0, 190);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (14, 350, 60, 20.0, 280);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (15, 400, 70, 25.0, 300);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (16, 150, 25, 10.0, 135);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (17, 500, 90, 30.0, 350);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (18, 600, 100, 5.0, 570);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (19, 450, 80, 15.0, 382.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (20, 550, 95, 20.0, 440);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (21, 320, 55, 18.0, 262.4);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (22, 240, 42, 10.0, 216);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (23, 180, 30, 15.0, 153);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (24, 370, 65, 20.0, 296);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (25, 430, 72, 25.0, 322.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (26, 160, 28, 12.0, 140.8);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (27, 480, 85, 28.0, 345.6);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (28, 620, 107, 10.0, 558);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (29, 380, 64, 20.0, 304);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (30, 520, 90, 30.0, 364);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (31, 350, 60, 15.0, 297.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (32, 275, 47, 10.0, 247.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (33, 225, 38, 20.0, 180);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (34, 400, 70, 25.0, 300);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (35, 150, 25, 8.0, 138);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (36, 550, 95, 7.0, 511.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (37, 600, 100, 9.0, 546);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (38, 485, 84, 16.0, 407.4);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (39, 650, 110, 12.0, 572);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (40, 530, 90, 10.0, 477);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (41, 305, 52, 15.0, 258.25);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (42, 435, 75, 20.0, 348);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (43, 260, 45, 10.0, 234);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (44, 480, 85, 25.0, 360);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (45, 220, 37, 5.0, 209);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (46, 530, 90, 10.0, 477);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (47, 390, 65, 17.0, 323.7);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (48, 600, 100, 8.0, 552);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (49, 490, 80, 12.0, 431.2);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (50, 640, 110, 6.0, 601.6);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (51, 375, 62, 13.0, 326.25);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (52, 450, 75, 20.0, 360);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (53, 290, 48, 15.0, 246.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (54, 570, 95, 5.0, 541.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (55, 450, 75, 18.0, 369);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (56, 420, 70, 22.0, 327.6);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (57, 310, 50, 9.0, 282.1);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (58, 590, 100, 13.0, 512.3);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (59, 370, 60, 15.0, 314.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (60, 330, 55, 10.0, 297);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (61, 220, 37, 11.0, 195.8);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (62, 520, 90, 25.0, 390);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (63, 450, 75, 20.0, 360);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (64, 390, 65, 15.0, 331.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (65, 510, 85, 5.0, 484.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (66, 330, 55, 10.0, 297);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (67, 290, 50, 12.0, 255.2);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (68, 430, 72, 15.0, 365.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (69, 610, 105, 20.0, 488);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (70, 480, 80, 10.0, 432);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (71, 290, 50, 15.0, 246.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (72, 370, 62, 10.0, 333);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (73, 540, 90, 22.0, 421.2);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (74, 600, 100, 20.0, 480);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (75, 270, 45, 10.0, 243);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (76, 390, 65, 30.0, 273);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (77, 570, 95, 5.0, 541.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (78, 650, 110, 12.0, 572);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (79, 430, 75, 5.0, 408.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (80, 350, 60, 25.0, 262.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (81, 370, 65, 20.0, 296);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (82, 450, 70, 15.0, 382.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (83, 300, 54, 10.0, 270);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (84, 370, 62, 22.0, 288.6);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (85, 590, 100, 8.0, 542);  
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (86, 620, 105, 15.0, 527);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (87, 650, 110, 20.0, 520);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (88, 550, 95, 30.0, 385);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (89, 450, 75, 18.0, 369);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (90, 310, 52, 10.0, 279);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (91, 290, 50, 12.0, 255.2);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (92, 48, 80, 25.0, 36);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (93, 570, 95, 5.0, 541.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (94, 490, 80, 12.0, 431.2);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (95, 360, 60, 14.0, 309.6);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (96, 680, 115, 22.0, 529.4);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (97, 590, 100, 25.0, 442.5);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (98, 450, 75, 40.0, 270);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (99, 700, 120, 15.0, 595);
INSERT INTO descuento (id, valor_alquiler_semanal, valor_alquiler_dia, porcentaje_descuento, total) VALUES (100, 360, 60, 20.0, 288);


INSERT INTO alquileres (id, id_vehiculo, id_cliente, id_empleado, id_sucursal, id_descuento, fecha_entrada, fecha_salida, valor_cotisado, fecha_esparada) VALUES
(1, 51, 1, 1, 1, 1, '2023-04-01', '2023-04-07', 350, '2023-04-01'),
(2, 52, 2, 2, 2, 2, '2023-04-02', '2023-04-08', 420, '2023-04-02'),
(3, 53, 3, 3, 3, 3, '2023-04-03', '2023-04-09', 300, '2023-04-03'),
(4, 54, 4, 4, 4, 4, '2023-04-04', '2023-04-10', 450, '2023-04-04'),
(5, 55, 5, 5, 5, 5, '2023-04-05', '2023-04-11', 180, '2023-04-05'),
(6, 56, 6, 6, 6, 6, '2023-04-06', '2023-04-12', 300, '2023-04-06'),
(7, 57, 7, 7, 7, 7, '2023-04-07', '2023-04-13', 220, '2023-04-07'),
(8, 58, 8, 8, 8, 8, '2023-04-08', '2023-04-14', 350, '2023-04-08'),
(9, 59, 9, 9, 9, 9, '2023-04-09', '2023-04-15', 430, '2023-04-09'),
(10, 60, 10, 10, 10, 10, '2023-04-10', '2023-04-16', 500, '2023-04-10'),
(11, 61, 11, 11, 11, 11, '2023-04-11', '2023-04-17', 275, '2023-04-11'),
(12, 62, 12, 12, 12, 12, '2023-04-12', '2023-04-18', 320, '2023-04-12'),
(13, 63, 13, 13, 13, 13, '2023-04-13', '2023-04-19', 400, '2023-04-13'),
(14, 64, 14, 14, 14, 14, '2023-04-14', '2023-04-20', 290, '2023-04-14'),
(15, 65, 15, 15, 15, 15, '2023-04-15', '2023-04-21', 220, '2023-04-15'),
(16, 66, 16, 16, 16, 16, '2023-04-16', '2023-04-22', 340, '2023-04-16'),
(17, 67, 17, 17, 17, 17, '2023-04-17', '2023-04-23', 360, '2023-04-17'),
(18, 68, 18, 18, 18, 18, '2023-04-18', '2023-04-24', 375, '2023-04-18'),
(19, 69, 19, 19, 19, 19, '2023-04-19', '2023-04-25', 230, '2023-04-19'),
(20, 70, 20, 20, 20, 20, '2023-04-20', '2023-04-26', 280, '2023-04-20'),
(21, 71, 21, 21, 21, 21, '2023-04-21', '2023-04-27', 300, '2023-04-21'),
(22, 72, 22, 22, 22, 22, '2023-04-22', '2023-04-28', 450, '2023-04-22'),
(23, 73, 23, 23, 23, 23, '2023-04-23', '2023-04-29', 330, '2023-04-23'),
(24, 74, 24, 24, 24, 24, '2023-04-24', '2023-04-30', 370, '2023-04-24'),
(25, 75, 25, 25, 25, 25, '2023-04-25', '2023-05-01', 380, '2023-04-25'),
(26, 76, 26, 26, 26, 26, '2023-04-26', '2023-05-02', 210, '2023-04-26'),
(27, 77, 27, 27, 27, 27, '2023-04-27', '2023-05-03', 390, '2023-04-27'),
(28, 78, 28, 28, 28, 28, '2023-04-28', '2023-05-04', 410, '2023-04-28'),
(29, 79, 29, 29, 29, 29, '2023-04-29', '2023-05-05', 290, '2023-04-29'),
(30, 80, 30, 30, 30, 30, '2023-04-30', '2023-05-06', 500, '2023-04-30'),
(31, 81, 31, 31, 31, 31, '2023-05-01', '2023-05-07', 470, '2023-05-01'),
(32, 82, 32, 32, 32, 32, '2023-05-02', '2023-05-08', 250, '2023-05-02'),
(33, 83, 33, 33, 33, 33, '2023-05-03', '2023-05-09', 310, '2023-05-03'),
(34, 84, 34, 34, 34, 34, '2023-05-04', '2023-05-10', 395, '2023-05-04'),
(35, 85, 35, 35, 35, 35, '2023-05-05', '2023-05-11', 300, '2023-05-05'),
(36, 86, 36, 36, 36, 36, '2023-05-06', '2023-05-12', 280, '2023-05-06'),
(37, 87, 37, 37, 37, 37, '2023-05-07', '2023-05-13', 390, '2023-05-07'),
(38, 88, 38, 38, 38, 38, '2023-05-08', '2023-05-14', 410, '2023-05-08'),
(39, 89, 39, 39, 39, 39, '2023-05-09', '2023-05-15', 420, '2023-05-09'),
(40, 90, 40, 40, 40, 40, '2023-05-10', '2023-05-16', 430, '2023-05-10'),
(41, 91, 41, 41, 41, 41, '2023-05-11', '2023-05-17', 300, '2023-05-11'),
(42, 92, 42, 42, 42, 42, '2023-05-12', '2023-05-18', 180, '2023-05-12'),
(43, 93, 43, 43, 43, 43, '2023-05-13', '2023-05-19', 260, '2023-05-13'),
(44, 94, 44, 44, 44, 44, '2023-05-14', '2023-05-20', 340, '2023-05-14'),
(45, 95, 45, 45, 45, 45, '2023-05-15', '2023-05-21', 350, '2023-05-15'),
(46, 96, 46, 46, 46, 46, '2023-05-16', '2023-05-22', 320, '2023-05-16'),
(47, 97, 47, 47, 47, 47, '2023-05-17', '2023-05-23', 410, '2023-05-17'),
(48, 98, 48, 48, 48, 48, '2023-05-18', '2023-05-24', 430, '2023-05-18'),
(49, 99, 49, 49, 49, 49, '2023-05-19', '2023-05-25', 450, '2023-05-19'),
(50, 100, 50, 50, 50, 50, '2023-05-20', '2023-05-26', 490, '2023-05-20'),
(51, 51, 1, 1, 1, 51, '2023-05-21', '2023-05-27', 300, '2023-05-21'),
(52, 52, 2, 2, 2, 52, '2023-05-22', '2023-05-28', 270, '2023-05-22'),
(53, 53, 3, 3, 3, 53, '2023-05-23', '2023-05-29', 310, '2023-05-23'),
(54, 54, 4, 4, 4, 54, '2023-05-24', '2023-05-30', 350, '2023-05-24'),
(55, 55, 5, 5, 5, 55, '2023-05-25', '2023-05-31', 360, '2023-05-25'),
(56, 56, 6, 6, 6, 56, '2023-05-26', '2023-06-01', 350, '2023-05-26'),
(57, 57, 7, 7, 7, 57, '2023-05-27', '2023-06-02', 320, '2023-05-27'),
(58, 58, 8, 8, 8, 58, '2023-05-28', '2023-06-03', 310, '2023-05-28'),
(59, 59, 9, 9, 9, 59, '2023-05-29', '2023-06-04', 440, '2023-05-29'),
(60, 60, 10, 10, 10, 60, '2023-05-30', '2023-06-05', 360, '2023-05-30'),
(61, 61, 11, 11, 11, 61, '2023-05-31', '2023-06-06', 420, '2023-05-31'),
(62, 62, 12, 12, 12, 62, '2023-06-01', '2023-06-07', 310, '2023-06-01'),
(63, 63, 13, 13, 13, 63, '2023-06-02', '2023-06-08', 280, '2023-06-02'),
(64, 64, 14, 14, 14, 64, '2023-06-03', '2023-06-09', 440, '2023-06-03'),
(65, 65, 15, 15, 15, 65, '2023-06-04', '2023-06-10', 380, '2023-06-04'),
(66, 66, 16, 16, 16, 66, '2023-06-05', '2023-06-11', 310, '2023-06-05'),
(67, 67, 17, 17, 17, 67, '2023-06-06', '2023-06-12', 370, '2023-06-06'),
(68, 68, 18, 18, 18, 68, '2023-06-07', '2023-06-13', 390, '2023-06-07'),
(69, 69, 19, 19, 19, 69, '2023-06-08', '2023-06-14', 310, '2023-06-08'),
(70, 70, 20, 20, 20, 70, '2023-06-09', '2023-06-15', 320, '2023-06-09'),
(71, 71, 21, 21, 21, 71, '2023-06-10', '2023-06-16', 300, '2023-06-10'),
(72, 72, 22, 22, 22, 72, '2023-06-11', '2023-06-17', 270, '2023-06-11'),
(73, 73, 23, 23, 23, 73, '2023-06-12', '2023-06-18', 310, '2023-06-12'),
(74, 74, 24, 24, 24, 74, '2023-06-13', '2023-06-19', 350, '2023-06-13'),
(75, 75, 25, 25, 25, 75, '2023-06-14', '2023-06-20', 390, '2023-06-14'),
(76, 76, 26, 26, 26, 76, '2023-06-15', '2023-06-21', 420, '2023-06-15'),
(77, 77, 27, 27, 27, 77, '2023-06-16', '2023-06-22', 430, '2023-06-16'),
(78, 78, 28, 28, 28, 78, '2023-06-17', '2023-06-23', 440, '2023-06-17'),
(79, 79, 29, 29, 29, 79, '2023-06-18', '2023-06-24', 450, '2023-06-18'),
(80, 80, 30, 30, 30, 80, '2023-06-19', '2023-06-25', 460, '2023-06-19'),
(81, 81, 31, 31, 31, 81, '2023-06-20', '2023-06-26', 310, '2023-06-20'),
(82, 82, 32, 32, 32, 82, '2023-06-21', '2023-06-27', 300, '2023-06-21'),
(83, 83, 33, 33, 33, 83, '2023-06-22', '2023-06-28', 290, '2023-06-22'),
(84, 84, 34, 34, 34, 84, '2023-06-23', '2023-06-29', 340, '2023-06-23'),
(85, 85, 35, 35, 35, 85, '2023-06-24', '2023-06-30', 350, '2023-06-24'),
(86, 86, 36, 36, 36, 86, '2023-06-25', '2023-07-01', 360, '2023-06-25'),
(87, 87, 37, 37, 37, 87, '2023-06-26', '2023-07-02', 370, '2023-06-26'),
(88, 88, 38, 38, 38, 88, '2023-06-27', '2023-07-03', 380, '2023-06-27'),
(89, 89, 39, 39, 39, 89, '2023-06-28', '2023-07-04', 390, '2023-06-28'),
(90, 90, 40, 40, 40, 90, '2023-06-29', '2023-07-05', 400, '2023-06-29'),
(91, 91, 41, 41, 41, 91, '2023-06-30', '2023-07-06', 320, '2023-06-30'),
(92, 92, 42, 42, 42, 92, '2023-07-01', '2023-07-07', 310, '2023-07-01'),
(93, 93, 43, 43, 43, 93, '2023-07-02', '2023-07-08', 280, '2023-07-02'),
(94, 94, 44, 44, 44, 94, '2023-07-03', '2023-07-09', 260, '2023-07-03'),
(95, 95, 45, 45, 45, 95, '2023-07-04', '2023-07-10', 320, '2023-07-04'),
(96, 96, 46, 46, 46, 96, '2023-07-05', '2023-07-11', 350, '2023-07-05'),
(97, 97, 47, 47, 47, 97, '2023-07-06', '2023-07-12', 360, '2023-07-06'),
(98, 98, 48, 48, 48, 98, '2023-07-07', '2023-07-13', 370, '2023-07-07'),
(99, 99, 49, 49, 49, 99, '2023-07-08', '2023-07-14', 380, '2023-07-08'),
(100, 100, 50, 50, 50, 100, '2023-07-09', '2023-07-15', 390, '2023-07-09');



select * from sucursales;
select * from empleado;
-- 1.
select id, ciudad from sucursales where ciudad = 'Barcelona';

-- 2 selecciona todos los datos de los empleados qie trabajan en madrid y su ciudad de residencia es cali
select * from empleado where id_sucursal= 1 and ciudad_residencia = 'Cali';

-- 3 lista fecha_salida, fecha_llegada de los dos alquileres que tienen mayor presupuesto.
select fecha_salida, fecha_llegada from alquileres;

select * from descuento;
-- 4.cual es el porcentaje entre el valor de alquiler semanal y el diario
delimiter //
create function porcentaje(valor_alquiler_semanal int, valor_alquiler_dia int)
returns double
deterministic
begin
	declare porcentaje double;
	return porcentaje = valor_alquiler_semanal + valor_alquiler_dia ;
    return porcentaje;
end //
delimiter ;

select porcentaje(valor_alquiler_semanal,valor_alquiler_dia) from descuento;

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

-- 16.Calcula cuantos empleado trabajan en la sucursal de valencia
