Create schema if not exists Lobster;
use Lobster;


# BACKUP DE LAS TABLAS: condicion_tributaria,  ingreso_de_precios, logs, materia_prima, 
# new_condicion_tributaria, new_usuarios, orden_de_compra, proveedores, usuarios, valor_monetario



/* CREACION DE TABLAS */

Create table if not exists Usuarios(
	idUsuario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre varchar (15) not null,
    Apellido varchar (20) not null,
	Email varchar (30) not null,
	Direccion varchar (50),
	Telefono varchar (20) not null
);

Create table if not exists Valor_Monetario(
	idMoneda INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nominacion_Moneda Varchar (15)
);

Create table if not exists Materia_Prima(
	idMateriaPrima INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre varchar (100),
	UnidadMedida Varchar (15) not null,
    CantidadStock Varchar (15) not null,
    Precio varchar (50)
);

Create table if not exists Condicion_Tributaria(
	idCondicionTributaria INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Categoria Varchar (30) not null
);

Create table if not exists Proveedores(
	idProveedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	RazonSocial Varchar (40) not null,
    Cuit varchar(100) not null,
    Telefono Varchar (100) not null,
    Email Varchar (100) not null,
    idCondicionTributaria int not null,
    Foreign Key (idCondicionTributaria) references Condicion_Tributaria (idCondicionTributaria)
);

Create table if not exists Orden_de_compra(
	idOrden INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	idMoneda int not null,
    idProveedor int not null,
    idMateriaPrima int not null,
    idUsuario int not null,
    Foreign Key (idMoneda) references Valor_Monetario (idMoneda),
    Foreign Key (idProveedor) references Proveedores (idProveedor),
    Foreign Key (idMateriaPrima) references Materia_Prima (idMateriaPrima),
    Foreign Key (idUsuario) references Usuarios (idUsuario),
    FechaEmision Datetime,
    Cantidad Varchar (15),
    FechaEntregaMercaderia date,
    UnidadMedida Varchar (20)
);

Create table if not exists Ingreso_de_Precios(
	idIngreso INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	idMateriaPrima int not null,
    idProveedor int not null,
    idMoneda int not null,
    idUsuario int not null,
    Foreign Key (idMoneda) references Valor_Monetario (idMoneda),
    Foreign Key (idProveedor) references Proveedores (idProveedor),
    Foreign Key (idMateriaPrima) references Materia_Prima (idMateriaPrima),
    Foreign Key (idUsuario) references Usuarios (idUsuario),
    Fecha Date,
    Cantidad Varchar (15),
    PrecioActualizado Double,
    UnidadMedida Varchar (20)
);

/* VISUALIZACIÓN DE TABLAS 

select * from Usuarios;
select * from Valor_Monetario;
select * from Materia_Prima;
select * from Condicion_Tributaria;
select * from Proveedores;
select * from Orden_de_compra;
select * from Ingreso_de_Precios;

SELECT * FROM lobster.valor_monetario;
SELECT * FROM lobster.proveedores;
SELECT * FROM lobster.materia_prima;
SELECT * FROM lobster.usuarios;
SELECT * FROM lobster.orden_de_compra;

*/


/* Modificación y Borrado de Datos de la Tabla Materia prima 
Alter table Materia_Prima modify column Nombre varchar (100);
delete from Materia_Prima where idMateriaPrima>=1;
Alter table Materia_Prima modify column Precio Varchar (50);
*/


/* Modificación Columna de Tabla Proveedores 
Alter table Proveedores modify column Telefono varchar (100);
Alter table Proveedores modify column Email varchar (100);
Alter table Proveedores modify column Cuit varchar (100);
*/


/* Modificación Columnas de Ingreso de Precios
alter table Ingreso_de_Precios drop column Fecha;
*/

/* INSERTS DE LA TABLA USUARIOS */
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (1,'Clary','Barlace','cbarlace0@wordpress.com','388 Northwestern Way','+86-488-680-1265');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (2,'Feodora','Kaasman','fkaasman1@elpais.com','601 Maryland Circle','+351-215-658-9549');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (3,'Michele','Hyams','mhyams2@ask.com','78 Dixon Plaza','+62-236-660-3623');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (4,'Barris','Deave','bdeave3@columbia.edu','03 Longview Park','+51-113-749-9114');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (5,'Melita','Isselee','misselee4@hubpages.com','99161 Village Green Parkway','+86-988-574-8747');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (6,'Mara','Rashleigh','mrashleigh5@bloomberg.com','40 Old Gate Drive','+234-328-691-0491');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (7,'Brenna','Prettyman','bprettyman6@nymag.com','155 Crest Line Parkway','+86-925-155-7671');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (8,'Nate','Willmott','nwillmott7@exblog.jp','9493 Northfield Point','+86-174-448-0365');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (9,'Christen','Cranmore','ccranmore8@intel.com','5 Arizona Lane','+354-953-317-8223');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (10,'Marthena','Lesor','mlesor9@360.cn','83718 Mandrake Park','+255-761-414-5204');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (11,'Lisabeth','Yourell','lyourella@wikia.com','1164 Thompson Junction','+63-323-740-6983');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (12,'Merralee','Sacher','msacherb@paginegialle.it','67 Jenna Place','+62-604-956-0254');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (13,'Jasmin','Lisett','jlisettc@amazon.com','4200 Monument Trail','+374-223-177-0140');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (14,'Beulah','Stigell','bstigelld@amazonaws.com','417 Prairie Rose Place','+66-711-169-7298');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (15,'Ardelia','Perillo','aperilloe@barnesandnoble.com','6 Bultman Center','+63-593-587-5820');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (16,'Maegan','Yokley','myokleyf@jimdo.com','86826 Red Cloud Place','+62-562-829-5801');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (17,'Clementina','Tavner','ctavnerg@blogger.com','2 Cody Parkway','+1-212-145-4965');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (18,'Janey','Arch','jarchh@discuz.net','716 Morrow Place','+55-566-447-3927');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (19,'Mercie','Sherebrooke','msherebrookei@tripod.com','204 Elgar Hill','+385-916-419-9757');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (20,'Armando','Hurdwell','ahurdwellj@feedburner.com','53635 Valley Edge Court','+62-398-247-1831');

/* INSERTS DE LA TABLA VALOR MONETARIO */
INSERT INTO Valor_Monetario (`idMoneda`,`Nominacion_Moneda`) VALUES (1,'Pesos');

/* INSERTS DE LA TABLA MATERIA PRIMA */
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (1,'Sulfato de Sodio','Kilogramo','5024','510.23');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (2,'Hipoclorito de Potasio','Kilogramo','8904','2117.42');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (3,'Sulfato de Manganeso','Kilogramo','5274','1710.35');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (4,'Dietildamida','Kilogramo','7878','2588.71');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (5,'Agua Oxigenada','Kilogramo','6790','4076.69');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (6,'Benceno','Kilogramo','6253','3444.18');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (7,'Anhidro acetico','Kilogramo','7623','4589.66');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (8,'Benzaldehido','Kilogramo','8372','4494.01');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (9,'Carbonato de Potasio','Kilogramo','5245','3350.4');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (10,'Acetico Glacial','Kilogramo','9651','2730.16');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (11,'Metilico','Kilogramo','8708','1514.32');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (12,'Alcohol Isopropilico','Kilogramo','8722','775.41');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (13,'Cloruro de acetilo','Kilogramo','9152','4251.24');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (14,'Bromobencilo','Kilogramo','8419','3880.3');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (15,'Tricloroetileno','Kilogramo','5290','1970.33');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (16,'Bicarbonato de sodio','Kilogramo','9430','4570.01');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (17,'Oxido de Calcio','Kilogramo','9250','4214.96');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (18,'Xilenos','Kilogramo','5468','4011.18');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (19,'Hidroxido de Sodio','Kilogramo','6683','3544.5');
INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (20,'Amoniaco','Kilogramo','7699','1910.69');

/* INSERTS DE LA TABLA CONDICION TRIBUTARIA */
INSERT INTO Condicion_Tributaria (`idCondicionTributaria`,`Categoria`) VALUES (1,'Responsable Inscripto');
INSERT INTO Condicion_Tributaria (`idCondicionTributaria`,`Categoria`) VALUES (2,'Monotributista');
INSERT INTO Condicion_Tributaria (`idCondicionTributaria`,`Categoria`) VALUES (3,'Exento');
INSERT INTO Condicion_Tributaria (`idCondicionTributaria`,`Categoria`) VALUES (4,'Consumidor Final');

/* INSERTS DE LA TABLA PROVEEDORES */
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (1,'Fintone','2827988429','+351-174-974-6491','dwhiskerd0@free.fr',4);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (2,'Treeflex','9435681395','+33-819-172-7509','gretchless1@examiner.com',1);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (3,'Pannier','7700533024','+98-918-177-8678','iivins2@live.com',3);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (4,'Duobam','3195959534','+66-456-909-1051','mhrus3@furl.net',2);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (5,'Flexidy','9655502104','+1-571-146-4956','kgannicleff4@exblog.jp',1);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (6,'Span','2312801930','+966-835-155-9083','cklaff5@marketwatch.com',3);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (7,'Transcof','7058852103','+86-289-440-5808','rbaudon6@webs.com',4);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (8,'Regrant','8027326788','+86-810-584-4147','bcondie7@domainmarket.com',2);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (9,'Viva','5271656403','+62-991-616-4045','alonder8@nps.gov',4);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (10,'Stringtough','6148089807','+62-495-805-0943','mpellman9@ftc.gov',2);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (11,'Gembucket','2712332741','+86-767-493-4791','kbuttela@ucsd.edu',1);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (12,'Quo Lux','9457931149','+380-752-846-8508','pmarlerb@va.gov',3);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (13,'Alpha','1174978562','+86-315-637-0213','bdevinec@columbia.edu',2);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (14,'Gembucket','7989434385','+62-804-591-6504','ljupped@intel.com',4);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (15,'Alpha','9402735550','+54-646-399-0978','jcuseicke@pen.io',1);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (16,'Flexidy','7277350278','+7-406-456-2243','ohornungf@ustream.tv',3);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (17,'Cardguard','5120778062','+7-655-315-3787','abradborneg@ow.ly',4);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (18,'Trippledex','80013279','+691-637-736-6751','rneliganh@tumblr.com',2);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (19,'Job','5033958887','+1-312-162-9334','felbournei@typepad.com',1);
INSERT INTO Proveedores (`idProveedor`,`RazonSocial`,`Cuit`,`Telefono`,`Email`,`idCondicionTributaria`) VALUES (20,'Bamity','7195140148','+420-990-162-4421','roconnollyj@admin.ch',3);

/* INSERTS DE LA TABLA ORDEN DE COMPRA */
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (2,1,6,5,18,'52','Kilogramos','2021-03-30','2022-03-23 07:46:41');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (3,1,18,2,4,'32','Kilogramos','2021-12-25','2021-12-18 09:54:17');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (4,1,17,7,5,'15','Kilogramos','2021-10-03','2021-09-29 10:13:18');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (5,1,8,1,11,'36','Kilogramos','2021-02-28','2022-02-26 18:56:57');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (6,1,13,19,12,'84','Kilogramos','2021-05-11','2022-05-09 11:40:35');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (7,1,3,8,13,'3','Kilogramos','2021-11-14','2021-11-04 02:09:32');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (8,1,15,6,15,'98','Kilogramos','2021-05-20','2022-05-14 05:43:24');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (9,1,14,4,20,'94','Kilogramos','2021-08-20','2021-08-17 06:34:59');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (10,1,10,14,6,'15','Kilogramos','2021-08-15','2021-08-07 20:05:04');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (11,1,1,9,3,'50','Kilogramos','2021-07-19','2021-07-10 03:53:46');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (12,1,4,11,9,'53','Kilogramos','2021-09-28','2021-08-22 14:24:21');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (13,1,11,12,19,'59','Kilogramos','2021-09-20','2021-08-27 17:44:45');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (14,1,20,3,2,'3','Kilogramos','2021-10-11','2021-10-09 22:52:28');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (15,1,7,8,10,'41','Kilogramos','2021-05-30','2022-04-28 14:43:26');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (16,1,2,17,17,'33','Kilogramos','2021-02-15','2022-01-13 01:31:59');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (17,1,12,20,16,'32','Kilogramos','2021-04-16','2022-03-20 22:16:48');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (18,1,16,13,8,'35','Kilogramos','2021-07-06','2021-06-30 12:37:45');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (19,1,9,15,7,'7','Kilogramos','2021-11-20','2021-11-15 22:36:04');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (20,1,19,11,14,'28','Kilogramos','2021-01-29','2022-01-26 00:23:40');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (21,1,20,16,13,'85','Kilogramos','2021-10-15','2021-10-05 05:11:08');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (22,1,19,9,5,'29','Kilogramos','2021-08-09','2022-06-09 14:20:53');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (23,1,18,3,10,'50','Kilogramos','2021-11-09','2021-09-09 07:19:08');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (24,1,6,17,1,'84','Kilogramos','2021-08-08','2021-08-03 13:36:59');
INSERT INTO Orden_de_compra (`idOrden`,`idMoneda`,`idProveedor`,`idMateriaPrima`,`idUsuario`,`Cantidad`,`UnidadMedida`,`FechaEntregaMercaderia`,`FechaEmision`) VALUES (25,1,14,3,19,'67','Kilogramos','2021-05-27','2022-03-14 11:57:00');


/* INSERTS DE LA TABLA INGRESO DE PRECIOS */
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (1,20,3,1,8,'39',6926,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (2,4,17,1,14,'43',8466,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (3,9,10,1,5,'92',9560,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (4,7,7,1,10,'28',4210,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (5,5,12,1,15,'59',5765,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (6,1,10,1,4,'96',3569,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (7,13,8,1,11,'13',8869,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (8,17,3,1,18,'46',4539,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (9,19,17,1,4,'76',4220,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (10,4,11,1,1,'32',4693,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (11,2,13,1,13,'79',9854,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (12,8,12,1,12,'72',6747,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (13,3,5,1,7,'64',9882,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (14,2,13,1,14,'90',4055,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (15,13,3,1,12,'98',7743,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (16,15,1,1,11,'25',9553,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (17,18,7,1,5,'1',9403,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (18,4,13,1,13,'65',8902,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (19,6,14,1,5,'69',6481,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (20,8,6,1,13,'60',8229,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (21,16,13,1,18,'27',3617,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (22,4,7,1,20,'10',3795,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (23,11,10,1,19,'61',5688,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (24,16,11,1,6,'95',3769,'Kilogramos');
INSERT INTO Ingreso_de_Precios (`idIngreso`,`idMateriaPrima`,`idProveedor`,`idMoneda`,`idUsuario`,`Cantidad`,`PrecioActualizado`,`UnidadMedida`) VALUES (25,13,14,1,11,'98',3667,'Kilogramos');



/* CREACIÓN DE VIEWS */

create or replace view Proveedores_view 
as
	select p.RazonSocial,p.Cuit,c.Categoria from Proveedores p left join Condicion_Tributaria c on p.idCondicionTributaria = c.idCondicionTributaria;
/* select * from Proveedores_view; */


create or replace view Ingreso_de_Precios_view 
as
	select i.Cantidad,i.PrecioActualizado,i.idMateriaPrima,c.Nombre from Ingreso_de_Precios i inner join Materia_Prima c on i.idMateriaPrima = c.idMateriaPrima;
  /* select * from Ingreso_de_Precios_view; */  
  
  
create or replace view Orden_de_compra_view 
as
	select o.FechaEmision,o.Cantidad,o.FechaEntregaMercaderia,o.idMateriaPrima,u.Nombre,u.Email from Orden_de_compra o right join Usuarios u on o.idUsuario = u.idUsuario;
  /* select * from Orden_de_compra_view; */  
  
  
create or replace view Ingreso_Materia_Prima_Por_Usuarios_view 
as
	select i.Cantidad,i.idMateriaPrima,i.idProveedor,u.idUsuario,u.Nombre from Ingreso_de_Precios i left join Usuarios u on i.idUsuario = u.idUsuario;
  /* select * from Ingreso_Materia_Prima_Por_Usuarios_view; */  
  
  
create or replace view Orden_de_compra_proveedor_view 
as
	select o.FechaEmision,o.Cantidad,o.FechaEntregaMercaderia,o.idMateriaPrima,p.RazonSocial,p.Cuit from Orden_de_compra o inner join Proveedores p on o.idProveedor = p.idProveedor;
  /* select * from Orden_de_compra_proveedor_view; */  
  


create or replace view Materia_Prima_y_Usuarios_view 
as
	select m.idMateriaPrima,m.Nombre,m.CantidadStock,u.idUsuario from Materia_Prima m join Usuarios u where m.idMateriaPrima >= 10;
    
update Materia_Prima_y_Usuarios_view
set CantidadStock = True
where idMateriaPrima <= 10 or idUsuario = 1 ; 

  /* select * from Materia_Prima_y_Usuarios_view;  */  
  
  
create or replace view Costo_Materia_Prima 
as
	select distinct * from Materia_Prima where Precio >= 1000 or 4576;
  /* select * from Costo_Materia_Prima;  */  
  
  
/* CREACION DE FUNCIONES */
DELIMITER //
CREATE FUNCTION `Saludar_Usuario`(nombre VARCHAR(30), apellido VARCHAR(30), email VARCHAR(75)) RETURNS varchar(150) 
    READS SQL DATA
BEGIN
	DECLARE nombre_completo VARCHAR(100);
    SET nombre_completo = CONCAT(nombre, ' ', apellido);
    IF email IS NOT NULL THEN
	RETURN CONCAT('Bienvenido ', nombre_completo);
    ELSE
	RETURN 'Aun no tenes Email';
    END IF;
END//
DELIMITER ;

SELECT idUsuario, Nombre, Apellido, Email, Saludar_Usuario(nombre, apellido, email) AS 'Saludo' FROM Usuarios;


DELIMITER //
CREATE FUNCTION `Ordenes_de_compra_realizadas`(idOrden INT, idProveedor int) RETURNS varchar(150)
    READS SQL DATA
BEGIN
	DECLARE Resultado VARCHAR (100);
    SET Resultado= (select idOrden from Orden_de_compra o inner join Proveedores p on o.idProveedor = p.idProveedor where p.idProveedor = o.idProveedor and p.idProveedor = 1);
RETURN Resultado;
END//
DELIMITER ; 

SELECT idOrden, Ordenes_de_compra_realizadas(idProveedor,idMateriaPrima) as "Se_Envio_la_Orden_al_proveedor:" FROM Orden_de_compra;




/* STORED PROCEDURES */  
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Proveedores_Descendente`(IN idCondicionTributaria INT, RazonSocial VARCHAR (100), Cuit VARCHAR(100))
BEGIN
	set @idProveedor = (select max(idProveedor) from Proveedores)+1;
    insert into Proveedores (idCondicionTributaria, idProveedor, RazonSocial, Cuit) values (idCondicionTributaria, @idProveedor, RazonSocial, Cuit);
    select * from Proveedores order by idProveedor DESC;
END
DELIMITER //
#TEST
call Insert_Proveedores_Descendente (3, "Prueba2", 48339558);
SELECT * FROM PROVEEDORES;

# STORED PROCEDURE CON INSERT
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Materia_Prima`(IN p_idMateriaPrima INT, IN p_Nombre VARCHAR (100),
IN p_CantidadStock VARCHAR(100), p_UnidadMedida VARCHAR(100))
BEGIN
	IF p_idMateriaPrima=0 or p_Nombre= "" or p_CantidadStock=0 or p_UnidadMedida= "" then
    select "ERROR: NO SE PUEDE INGRESAR LA MATERIA PRIMA DESEADA";
    else
    insert into Materia_Prima (idMateriaPrima, Nombre, CantidadStock, UnidadMedida) values (p_idMateriaPrima, p_Nombre, p_CantidadStock, p_UnidadMedida);
    end if;
END
DELIMITER //
# TEST
call Insert_Materia_Prima (28, "Sulfato Ferroso", 4567, "Kilogramo");
select * from Materia_Prima;

# TRIGGERS

# CREAR TABLA PARA EL TRIGGER
CREATE TABLE `new_usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(15) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#SENTENCIA TRIGGER
CREATE TRIGGER AFT_INS_Usuarios_log
AFTER INSERT ON usuarios
FOR EACH ROW
INSERT INTO new_usuarios
VALUES (NEW.idUsuario, NEW.Nombre, NEW.Apellido, NEW.Email, NEW.Direccion, NEW.Telefono);

#TEST DE TRIGGER
INSERT INTO Usuarios 
VALUES (22, "Nicolas", "Rubini", "nrubini@surfactan.com.ar", "calle falsa 1234", 1189768596);


CREATE TABLE logs(
	usuario Varchar(100),
    Fecha date,
    Hora varchar(100)
);

CREATE TRIGGER BEF_DEL_Usuarios_log
BEFORE DELETE ON usuarios
FOR EACH ROW
INSERT INTO logs
values (USER(), curdate(), curtime());

#TEST DE TRIGGER DELETE
DELETE FROM Usuarios where idUsuario = 22;




#SEGUNDA TABLA TRIGGER
CREATE TABLE `new_condicion_tributaria` (
  `idCondicionTributaria` int NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(30) NOT NULL,
  PRIMARY KEY (`idCondicionTributaria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#SENTENCIA TRIGGER AFTER
CREATE TRIGGER AFT_INS_Condicion_Tributaria_log
AFTER INSERT ON condicion_tributaria
FOR EACH ROW
INSERT INTO new_condicion_tributaria
VALUES (NEW.idCondicionTributaria, NEW.Categoria);

#TEST DE TRIGGER
INSERT INTO condicion_tributaria
VALUES (44, "PRUEBA");

# TRIGGER BEFORE
CREATE TRIGGER BEF_DEL_condicion_tributaria_log
BEFORE DELETE ON condicion_tributaria
FOR EACH ROW
INSERT INTO logs
values (USER(), curdate(), curtime());

#TEST DEL TRIGGER DELETE
DELETE FROM condicion_tributaria WHERE idCondicionTributaria = 44;


#CREACION DE USUARIOS
USE mysql; 
#SE CREAN LOS 2 USUARIOS CON SU RESPECTIVA CONTRASEÑA
CREATE USER Nicolas@127.0.0.1 IDENTIFIED BY "1234";
CREATE USER Roberto@127.0.0.1 IDENTIFIED BY "12345";
SELECT * FROM USER;

#AL PRIMER USUARIO SE LE DA PERMISO SOLAMENTE DE LECTURA
GRANT SELECT ON Lobster.* TO Nicolas@127.0.0.1;
#AL SEGUNDO USUARIO SE LE DA PERMISO DE LECTURA, INSERCION DE DATOS Y MODIFICACION
GRANT SELECT, INSERT, UPDATE ON Lobster.* TO Roberto@127.0.0.1;

#VALIDACION DE PERMISOS A USUARIOS
SHOW GRANTS FOR Nicolas@127.0.0.1;
SHOW GRANTS FOR Roberto@127.0.0.1;


#TRANSACCIONES DE ELIMINACION DE LA PRIMER TABLA
START TRANSACTION;
	DELETE FROM usuarios
    where id = 3, 4, 5, 6;
ROLLBACK;
COMMIT;
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (3,'Michele','Hyams','mhyams2@ask.com','78 Dixon Plaza','+62-236-660-3623');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (4,'Barris','Deave','bdeave3@columbia.edu','03 Longview Park','+51-113-749-9114');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (5,'Melita','Isselee','misselee4@hubpages.com','99161 Village Green Parkway','+86-988-574-8747');
INSERT INTO Usuarios (`idUsuario`,`Nombre`,`Apellido`,`Email`,`Direccion`,`Telefono`) VALUES (6,'Mara','Rashleigh','mrashleigh5@bloomberg.com','40 Old Gate Drive','+234-328-691-0491');

#TRANSACCION DE INSERCION DE DATOS CON SAVEPOINTS
START TRANSACTION;
	INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (100,'prueba1','Kilogramo','7878','2588.71');
    INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (101,'prueba2','Kilogramo','7878','2588.71');
    INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (102,'prueba3','Kilogramo','7878','2588.71');
    INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (103,'Prueba4','Kilogramo','7878','2588.71');
SAVEPOINT Primero;
	INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (104,'prueba5','Kilogramo','7878','2588.71');
    INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (105,'prueba6','Kilogramo','7878','2588.71');
    INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (106,'prueba7','Kilogramo','7878','2588.71');
    INSERT INTO Materia_Prima (`idMateriaPrima`,`Nombre`,`UnidadMedida`,`CantidadStock`,`Precio`) VALUES (107,'prueba8','Kilogramo','7878','2588.71');
SAVEPOINT Segundo;
RELEASE SAVEPOINT Primero;