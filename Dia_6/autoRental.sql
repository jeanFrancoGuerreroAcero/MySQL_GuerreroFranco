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
    celular int,
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
(1, 12345678, 'Juan Pérez', 'juan.perez@email.com', 'Calle 1', 'Ciudad A', 1234567890);
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
(1, 12345678, 'Juan', 'Pérez', 3012345678, 'juan.perez@mail.com', 'Bogotá', 1),
(2, 87654321, 'María', 'Lopez', 3012345679, 'maria.lopez@mail.com', 'Medellín', 1),
(3, 11223344, 'Carlos', 'Gómez', 3012345680, 'carlos.gomez@mail.com', 'Cali', 2),
(4, 22334455, 'Ana', 'Torres', 3012345681, 'ana.torres@mail.com', 'Cartagena', 2),
(5, 33445566, 'Luis', 'Martinez', 3012345682, 'luis.martinez@mail.com', 'Barranquilla', 3),
(6, 44556677, 'María', 'Ramírez', 3012345683, 'maria.ramirez@mail.com', 'Cúcuta', 3),
(7, 55667788, 'David', 'Hernandez', 3012345684, 'david.hernandez@mail.com', 'Pereira', 4),
(8, 66778899, 'Sofía', 'Sanchez', 3012345685, 'sofia.sanchez@mail.com', 'Bucaramanga', 4),
(9, 77889900, 'Jorge', 'Reyes', 3012345686, 'jorge.reyes@mail.com', 'Santa Marta', 5),
(10, 88990011, 'Laura', 'Moreno', 3012345687, 'laura.moreno@mail.com', 'Manizales', 5),
(11, 99001122, 'Pedro', 'Martínez', 3012345688, 'pedro.martinez@mail.com', 'Pasto', 1),
(12, 10111213, 'Isabel', 'Cáceres', 3012345689, 'isabel.caceres@mail.com', 'Neiva', 1),
(13, 13141516, 'Ricardo', 'Chávez', 3012345690, 'ricardo.chavez@mail.com', 'Valledupar', 2),
(14, 16171819, 'Claudia', 'Castillo', 3012345691, 'claudia.castillo@mail.com', 'Barranquilla', 2),
(15, 20212223, 'Alejandro', 'Aguirre', 3012345692, 'alejandro.aguirre@mail.com', 'Quibdó', 3),
(16, 22232425, 'Karla', 'Ortega', 3012345693, 'karla.ortega@mail.com', 'Sincelejo', 3),
(17, 24252627, 'Fernando', 'Salazar', 3012345694, 'fernando.salazar@mail.com', 'Tuluá', 4),
(18, 26272829, 'Gina', 'Molina', 3012345695, 'gina.molina@mail.com', 'Buga', 4),
(19, 28293031, 'Adrián', 'Rojas', 3012345696, 'adrian.rojas@mail.com', 'Ibagué', 5),
(20, 30313233, 'Patricia', 'Osorio', 3012345697, 'patricia.osorio@mail.com', 'Florencia', 5),
(21, 32333435, 'Valentina', 'Bermúdez', 3012345698, 'valentina.bermudez@mail.com', 'Tumaco', 1),
(22, 34353637, 'Ezequiel', 'Paniagua', 3012345699, 'ezequiel.paniagua@mail.com', 'Yopal', 1),
(23, 36373839, 'Natalia', 'Arévalo', 3012345700, 'natalia.arevalo@mail.com', 'Cali', 2),
(24, 38394041, 'Hugo', 'Núñez', 3012345701, 'hugo.nunez@mail.com', 'Pereira', 2),
(25, 40414243, 'Simón', 'Vargas', 3012345702, 'simon.vargas@mail.com', 'Popayán', 3),
(26, 42434445, 'Diana', 'Pérez', 3012345703, 'diana.perez@mail.com', 'Mocoa', 3),
(27, 44454647, 'Santiago', 'García', 3012345704, 'santiago.garcia@mail.com', 'Montelíbano', 4),
(28, 46474849, 'Lucía', 'Díaz', 3012345705, 'lucia.diaz@mail.com', 'Lérida', 4),
(29, 48495051, 'Julián', 'Sierra', 3012345706, 'julian.sierra@mail.com', 'Carmen de Bolívar', 5),
(30, 50515253, 'Luciano', 'Gonzalez', 3012345707, 'luciano.gonzalez@mail.com', 'Ocaña', 5),
(31, 52535455, 'Felipe', 'Salinas', 3012345708, 'felipe.salinas@mail.com', 'Tumaco', 1),
(32, 54555657, 'Pablo', 'Aguero', 3012345709, 'pablo.aguero@mail.com', 'Cúcuta', 1),
(33, 56575859, 'Teresa', 'Betancourt', 3012345710, 'teresa.betancourt@mail.com', 'Leticia', 2),
(34, 58596061, 'Oscar', 'Angulo', 3012345711, 'oscar.angulo@mail.com', 'Valledupar', 2),
(35, 60616263, 'Carolina', 'Sandoval', 3012345712, 'carolina.sandoval@mail.com', 'Quibdó', 3),
(36, 62636465, 'Cecilia', 'Cifuentes', 3012345713, 'cecilia.cifuentes@mail.com', 'Bucaramanga', 3),
(37, 64656667, 'Ángel', 'Camarillo', 3012345714, 'angel.camarillo@mail.com', 'Popayán', 4),
(38, 66676869, 'Gemma', 'Valencia', 3012345715, 'gemma.valencia@mail.com', 'Palmira', 4),
(39, 68697071, 'Gustavo', 'Jaramillo', 3012345716, 'gustavo.jaramillo@mail.com', 'Tuluá', 5),
(40, 70717273, 'Lina', 'Cervantes', 3012345717, 'lina.cervantes@mail.com', 'Barranquilla', 5),
(41, 72737475, 'Marta', 'Solano', 3012345718, 'marta.solano@mail.com', 'Bogotá', 1),
(42, 74757677, 'Hernán', 'Téllez', 3012345719, 'hernan.tellez@mail.com', 'Cali', 1),
(43, 76777879, 'Adriana', 'Paz', 3012345720, 'adriana.paz@mail.com', 'Medellín', 2),
(44, 78798081, 'Samuel', 'Galván', 3012345721, 'samuel.galvan@mail.com', 'Villavicencio', 2),
(45, 80818283, 'Berta', 'Figueroa', 3012345722, 'berta.figueroa@mail.com', 'Bucaramanga', 3),
(46, 82838485, 'Silvia', 'Montilla', 3012345723, 'silvia.montilla@mail.com', 'Cúcuta', 3),
(47, 84858687, 'Mariana', 'Almeida', 3012345724, 'mariana.almeida@mail.com', 'Cartagena', 4),
(48, 86878889, 'Julio', 'Marín', 3012345725, 'julio.marin@mail.com', 'Manizales', 4),
(49, 88899000, 'Nicolás', 'Escobar', 3012345726, 'nicolas.escobar@mail.com', 'Ibagué', 5),
(50, 90909192, 'Verónica', 'González', 3012345727, 'veronica.gonzalez@mail.com', 'Florencia', 5);

