-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: lobster
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `condicion_tributaria`
--

LOCK TABLES `condicion_tributaria` WRITE;
/*!40000 ALTER TABLE `condicion_tributaria` DISABLE KEYS */;
INSERT INTO `condicion_tributaria` VALUES (1,'Responsable Inscripto'),(2,'Monotributista'),(3,'Exento'),(4,'Consumidor Final');
/*!40000 ALTER TABLE `condicion_tributaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ingreso_de_precios`
--

LOCK TABLES `ingreso_de_precios` WRITE;
/*!40000 ALTER TABLE `ingreso_de_precios` DISABLE KEYS */;
INSERT INTO `ingreso_de_precios` VALUES (1,20,3,1,8,'39',6926,'Kilogramos'),(2,4,17,1,14,'43',8466,'Kilogramos'),(3,9,10,1,5,'92',9560,'Kilogramos'),(4,7,7,1,10,'28',4210,'Kilogramos'),(5,5,12,1,15,'59',5765,'Kilogramos'),(6,1,10,1,4,'96',3569,'Kilogramos'),(7,13,8,1,11,'13',8869,'Kilogramos'),(8,17,3,1,18,'46',4539,'Kilogramos'),(9,19,17,1,4,'76',4220,'Kilogramos'),(10,4,11,1,1,'32',4693,'Kilogramos'),(11,2,13,1,13,'79',9854,'Kilogramos'),(12,8,12,1,12,'72',6747,'Kilogramos'),(13,3,5,1,7,'64',9882,'Kilogramos'),(14,2,13,1,14,'90',4055,'Kilogramos'),(15,13,3,1,12,'98',7743,'Kilogramos'),(16,15,1,1,11,'25',9553,'Kilogramos'),(17,18,7,1,5,'1',9403,'Kilogramos'),(18,4,13,1,13,'65',8902,'Kilogramos'),(19,6,14,1,5,'69',6481,'Kilogramos'),(20,8,6,1,13,'60',8229,'Kilogramos'),(21,16,13,1,18,'27',3617,'Kilogramos'),(22,4,7,1,20,'10',3795,'Kilogramos'),(23,11,10,1,19,'61',5688,'Kilogramos'),(24,16,11,1,6,'95',3769,'Kilogramos'),(25,13,14,1,11,'98',3667,'Kilogramos');
/*!40000 ALTER TABLE `ingreso_de_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES ('root@localhost','2022-07-13','20:07:40'),('root@localhost','2022-07-13','20:14:49');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `materia_prima`
--

LOCK TABLES `materia_prima` WRITE;
/*!40000 ALTER TABLE `materia_prima` DISABLE KEYS */;
INSERT INTO `materia_prima` VALUES (1,'Sulfato de Sodio','Kilogramo','5024','510.23'),(2,'Hipoclorito de Potasio','Kilogramo','8904','2117.42'),(3,'Sulfato de Manganeso','Kilogramo','5274','1710.35'),(4,'Dietildamida','Kilogramo','7878','2588.71'),(5,'Agua Oxigenada','Kilogramo','6790','4076.69'),(6,'Benceno','Kilogramo','6253','3444.18'),(7,'Anhidro acetico','Kilogramo','7623','4589.66'),(8,'Benzaldehido','Kilogramo','8372','4494.01'),(9,'Carbonato de Potasio','Kilogramo','5245','3350.4'),(10,'Acetico Glacial','Kilogramo','1','2730.16'),(11,'Metilico','Kilogramo','1','1514.32'),(12,'Alcohol Isopropilico','Kilogramo','1','775.41'),(13,'Cloruro de acetilo','Kilogramo','1','4251.24'),(14,'Bromobencilo','Kilogramo','1','3880.3'),(15,'Tricloroetileno','Kilogramo','1','1970.33'),(16,'Bicarbonato de sodio','Kilogramo','1','4570.01'),(17,'Oxido de Calcio','Kilogramo','1','4214.96'),(18,'Xilenos','Kilogramo','1','4011.18'),(19,'Hidroxido de Sodio','Kilogramo','1','3544.5'),(20,'Amoniaco','Kilogramo','1','1910.69'),(28,'Sulfato Ferroso','Kilogramo','4567',NULL),(30,'prueba1','Kilogramo','7878','2588.71'),(31,'prueba2','Kilogramo','7878','2588.71'),(32,'prueba3','Kilogramo','7878','2588.71'),(33,'Prueba4','Kilogramo','7878','2588.71'),(40,'prueba1','Kilogramo','7878','2588.71');
/*!40000 ALTER TABLE `materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `new_condicion_tributaria`
--

LOCK TABLES `new_condicion_tributaria` WRITE;
/*!40000 ALTER TABLE `new_condicion_tributaria` DISABLE KEYS */;
INSERT INTO `new_condicion_tributaria` VALUES (44,'PRUEBA');
/*!40000 ALTER TABLE `new_condicion_tributaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `new_usuarios`
--

LOCK TABLES `new_usuarios` WRITE;
/*!40000 ALTER TABLE `new_usuarios` DISABLE KEYS */;
INSERT INTO `new_usuarios` VALUES (21,'Nicolas','Rubini','nrubini@surfactan.com.ar','calle falsa 1234','1189768596'),(22,'Nicolas','Rubini','nrubini@surfactan.com.ar','calle falsa 1234','1189768596');
/*!40000 ALTER TABLE `new_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orden_de_compra`
--

LOCK TABLES `orden_de_compra` WRITE;
/*!40000 ALTER TABLE `orden_de_compra` DISABLE KEYS */;
INSERT INTO `orden_de_compra` VALUES (2,1,6,5,18,'52','Kilogramos','2021-03-30','2022-03-23 07:46:41'),(3,1,18,2,4,'32','Kilogramos','2021-12-25','2021-12-18 09:54:17'),(4,1,17,7,5,'15','Kilogramos','2021-10-03','2021-09-29 10:13:18'),(5,1,8,1,11,'36','Kilogramos','2021-02-28','2022-02-26 18:56:57'),(6,1,13,19,12,'84','Kilogramos','2021-05-11','2022-05-09 11:40:35'),(7,1,3,8,13,'3','Kilogramos','2021-11-14','2021-11-04 02:09:32'),(8,1,15,6,15,'98','Kilogramos','2021-05-20','2022-05-14 05:43:24'),(9,1,14,4,20,'94','Kilogramos','2021-08-20','2021-08-17 06:34:59'),(10,1,10,14,6,'15','Kilogramos','2021-08-15','2021-08-07 20:05:04'),(11,1,1,9,3,'50','Kilogramos','2021-07-19','2021-07-10 03:53:46'),(12,1,4,11,9,'53','Kilogramos','2021-09-28','2021-08-22 14:24:21'),(13,1,11,12,19,'59','Kilogramos','2021-09-20','2021-08-27 17:44:45'),(14,1,20,3,2,'3','Kilogramos','2021-10-11','2021-10-09 22:52:28'),(15,1,7,8,10,'41','Kilogramos','2021-05-30','2022-04-28 14:43:26'),(16,1,2,17,17,'33','Kilogramos','2021-02-15','2022-01-13 01:31:59'),(17,1,12,20,16,'32','Kilogramos','2021-04-16','2022-03-20 22:16:48'),(18,1,16,13,8,'35','Kilogramos','2021-07-06','2021-06-30 12:37:45'),(19,1,9,15,7,'7','Kilogramos','2021-11-20','2021-11-15 22:36:04'),(20,1,19,11,14,'28','Kilogramos','2021-01-29','2022-01-26 00:23:40'),(21,1,20,16,13,'85','Kilogramos','2021-10-15','2021-10-05 05:11:08'),(22,1,19,9,5,'29','Kilogramos','2021-08-09','2022-06-09 14:20:53'),(23,1,18,3,10,'50','Kilogramos','2021-11-09','2021-09-09 07:19:08'),(24,1,6,17,1,'84','Kilogramos','2021-08-08','2021-08-03 13:36:59'),(25,1,14,3,19,'67','Kilogramos','2021-05-27','2022-03-14 11:57:00');
/*!40000 ALTER TABLE `orden_de_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Fintone','2827988429','+351-174-974-6491','dwhiskerd0@free.fr',4),(2,'Treeflex','9435681395','+33-819-172-7509','gretchless1@examiner.com',1),(3,'Pannier','7700533024','+98-918-177-8678','iivins2@live.com',3),(4,'Duobam','3195959534','+66-456-909-1051','mhrus3@furl.net',2),(5,'Flexidy','9655502104','+1-571-146-4956','kgannicleff4@exblog.jp',1),(6,'Span','2312801930','+966-835-155-9083','cklaff5@marketwatch.com',3),(7,'Transcof','7058852103','+86-289-440-5808','rbaudon6@webs.com',4),(8,'Regrant','8027326788','+86-810-584-4147','bcondie7@domainmarket.com',2),(9,'Viva','5271656403','+62-991-616-4045','alonder8@nps.gov',4),(10,'Stringtough','6148089807','+62-495-805-0943','mpellman9@ftc.gov',2),(11,'Gembucket','2712332741','+86-767-493-4791','kbuttela@ucsd.edu',1),(12,'Quo Lux','9457931149','+380-752-846-8508','pmarlerb@va.gov',3),(13,'Alpha','1174978562','+86-315-637-0213','bdevinec@columbia.edu',2),(14,'Gembucket','7989434385','+62-804-591-6504','ljupped@intel.com',4),(15,'Alpha','9402735550','+54-646-399-0978','jcuseicke@pen.io',1),(16,'Flexidy','7277350278','+7-406-456-2243','ohornungf@ustream.tv',3),(17,'Cardguard','5120778062','+7-655-315-3787','abradborneg@ow.ly',4),(18,'Trippledex','80013279','+691-637-736-6751','rneliganh@tumblr.com',2),(19,'Job','5033958887','+1-312-162-9334','felbournei@typepad.com',1),(20,'Bamity','7195140148','+420-990-162-4421','roconnollyj@admin.ch',3),(21,'Prueba','48339558',NULL,NULL,2),(22,'Prueba','48339558',NULL,NULL,2),(23,'Prueba2','48339558',NULL,NULL,3),(24,'Prueba2','48339558',NULL,NULL,3);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `table orden_de_compra_1_registro 2`
--

LOCK TABLES `table orden_de_compra_1_registro 2` WRITE;
/*!40000 ALTER TABLE `table orden_de_compra_1_registro 2` DISABLE KEYS */;
INSERT INTO `table orden_de_compra_1_registro 2` VALUES (1,1,5,3,1,'2021-07-18 13:58:40',67,'2021-03-07','Kilogramos');
/*!40000 ALTER TABLE `table orden_de_compra_1_registro 2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Clary','Barlace','cbarlace0@wordpress.com','388 Northwestern Way','+86-488-680-1265'),(2,'Feodora','Kaasman','fkaasman1@elpais.com','601 Maryland Circle','+351-215-658-9549'),(3,'Michele','Hyams','mhyams2@ask.com','78 Dixon Plaza','+62-236-660-3623'),(4,'Barris','Deave','bdeave3@columbia.edu','03 Longview Park','+51-113-749-9114'),(5,'Melita','Isselee','misselee4@hubpages.com','99161 Village Green Parkway','+86-988-574-8747'),(6,'Mara','Rashleigh','mrashleigh5@bloomberg.com','40 Old Gate Drive','+234-328-691-0491'),(7,'Brenna','Prettyman','bprettyman6@nymag.com','155 Crest Line Parkway','+86-925-155-7671'),(8,'Nate','Willmott','nwillmott7@exblog.jp','9493 Northfield Point','+86-174-448-0365'),(9,'Christen','Cranmore','ccranmore8@intel.com','5 Arizona Lane','+354-953-317-8223'),(10,'Marthena','Lesor','mlesor9@360.cn','83718 Mandrake Park','+255-761-414-5204'),(11,'Lisabeth','Yourell','lyourella@wikia.com','1164 Thompson Junction','+63-323-740-6983'),(12,'Merralee','Sacher','msacherb@paginegialle.it','67 Jenna Place','+62-604-956-0254'),(13,'Jasmin','Lisett','jlisettc@amazon.com','4200 Monument Trail','+374-223-177-0140'),(14,'Beulah','Stigell','bstigelld@amazonaws.com','417 Prairie Rose Place','+66-711-169-7298'),(15,'Ardelia','Perillo','aperilloe@barnesandnoble.com','6 Bultman Center','+63-593-587-5820'),(16,'Maegan','Yokley','myokleyf@jimdo.com','86826 Red Cloud Place','+62-562-829-5801'),(17,'Clementina','Tavner','ctavnerg@blogger.com','2 Cody Parkway','+1-212-145-4965'),(18,'Janey','Arch','jarchh@discuz.net','716 Morrow Place','+55-566-447-3927'),(19,'Mercie','Sherebrooke','msherebrookei@tripod.com','204 Elgar Hill','+385-916-419-9757'),(20,'Armando','Hurdwell','ahurdwellj@feedburner.com','53635 Valley Edge Court','+62-398-247-1831');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `valor_monetario`
--

LOCK TABLES `valor_monetario` WRITE;
/*!40000 ALTER TABLE `valor_monetario` DISABLE KEYS */;
INSERT INTO `valor_monetario` VALUES (1,'Pesos');
/*!40000 ALTER TABLE `valor_monetario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27 20:37:20
