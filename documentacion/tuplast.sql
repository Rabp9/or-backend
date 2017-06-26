-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: robertobocanegra.com    Database: rabp99_tuplast
-- ------------------------------------------------------
-- Server version	5.5.51-38.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asesorias`
--

DROP TABLE IF EXISTS `asesorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asesorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `body` longtext CHARACTER SET latin1 NOT NULL,
  `resumen` longtext,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_asesorias_estados1_idx` (`estado_id`),
  CONSTRAINT `fk_asesorias_estados1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asesorias`
--

LOCK TABLES `asesorias` WRITE;
/*!40000 ALTER TABLE `asesorias` DISABLE KEYS */;
INSERT INTO `asesorias` VALUES (1,'Asesoría Técnica','<p style=\"text-align: justify;\"><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/asesorias/asesoria-UJ8bSS\" alt=\"\" />&nbsp;</p>','<p><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: verdana, geneva, sans-serif;\">Podemos brindar lo siguiente:</span></strong></span></p>\n<p><span style=\"font-size: 12pt;\"><strong><span style=\"font-family: verdana, geneva, sans-serif;\">&nbsp;</span></strong></span></p>\n<ul>\n<li><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">Especificaciones T&eacute;cnicas de los tubos</span></li>\n<li><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">An&aacute;lisis de Calidad</span></li>\n<li><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">Documentos de calidad</span></li>\n<li><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">Informaci&oacute;n sobre propiedades F&iacute;sicas y Qu&iacute;micas</span></li>\n<li><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">Almacenamiento y transporte</span></li>\n<li><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">Desarrollo de nuevos productos</span></li>\n<li><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">Normas T&eacute;cnicas Peruanas</span></li>\n<li><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">Cat&aacute;logo de Productos.</span></li>\n</ul>\n<p>&nbsp;&nbsp;<span style=\"font-size: 12pt; font-family: Calibri; font-weight: bold;\">&iquest;QUE ES EL POLI - CLORURO DE VINILO (PVC-U)?</span></p>\n<p><span style=\"font-size: 12pt; font-family: verdana, geneva, sans-serif;\">&nbsp;El Poli - Cloruro de Vinilo&nbsp; (PVC) es el producto de la polimerizaci&oacute;n del mon&oacute;mero de cloruro de vinilo (VCM) que se lleva a cabo mediante una reacci&oacute;n v&iacute;a radicales libres promovidas por un &nbsp; &nbsp;catalizador. </span></p>\n<p style=\"language: es-PE; margin-top: 0pt; margin-bottom: 0pt; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; tab-stops: left 18.0pt; vertical-align: baseline; mso-line-break-override: none; punctuation-wrap: hanging;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">&nbsp;</span></p>\n<p style=\"language: es-PE; margin-top: 0pt; margin-bottom: 0pt; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; tab-stops: left 18.0pt; vertical-align: baseline; mso-line-break-override: none; punctuation-wrap: hanging;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">&nbsp;Es el pol&iacute;mero termopl&aacute;stico de mas versatilidad y tiene diferentes presentaciones para su uso, entre &nbsp;estos tenemos <span style=\"color: #171717;\">la resina </span>que es&nbsp; la&nbsp; presentaci&oacute;n que se utiliza en el proceso de extrusi&oacute;n.</span></p>\n<p style=\"language: es-PE; margin-top: 0pt; margin-bottom: 0pt; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; tab-stops: left 18.0pt; vertical-align: baseline; mso-line-break-override: none; punctuation-wrap: hanging;\">&nbsp;</p>\n<p>&nbsp;</p>\n<p style=\"language: es-PE; margin-top: 0pt; margin-bottom: 0pt; text-align: center; direction: ltr; unicode-bidi: embed; vertical-align: baseline; mso-line-break-override: none; punctuation-wrap: hanging;\">&nbsp;</p>',1),(2,'Control de  Calidad','<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0.38in; text-indent: -0.38in; direction: ltr; unicode-bidi: embed; vertical-align: baseline;\">&nbsp;</p>\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0.38in; text-indent: -0.38in; direction: ltr; unicode-bidi: embed; vertical-align: baseline;\"><span style=\"font-size: 18.0pt; font-family: TitilliumMaps26L-250wt; mso-ascii-font-family: TitilliumMaps26L-250wt; mso-fareast-font-family: +mn-ea; mso-bidi-font-family: +mn-cs; mso-fareast-theme-font: minor-fareast; mso-bidi-theme-font: minor-bidi; color: #666699; mso-color-index: 0; text-shadow: auto; language: es-PE; mso-effects-shadow-color: black; mso-effects-shadow-alpha: 100.0%; mso-effects-shadow-dpiradius: 3.0pt; mso-effects-shadow-angledirection: 2700000; mso-effects-shadow-dpidistance: 3.0pt; mso-effects-shadow-pctsx: 100.0%; mso-effects-shadow-pctsy: 100.0%; mso-effects-shadow-anglekx: 0; mso-effects-shadow-angleky: 0; mso-effects-shadow-align: topleft; mso-style-textfill-type: solid; mso-style-textfill-fill-themecolor: background1; mso-style-textfill-fill-color: #666699; mso-style-textfill-fill-alpha: 100.0%;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>\n<div style=\"margin-top: 4.8pt; margin-bottom: 0pt; margin-left: 0.38in; text-indent: -0.38in; direction: ltr; unicode-bidi: embed; vertical-align: baseline;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\"><span style=\"color: #ccecff;\">&sect;</span>Estamos implementando nuestro laboratorio de pruebas para&nbsp; garantizar la calidad de nuestros productos como objetivo de la mejora continua.</span></div>\n<p><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">&nbsp;</span></p>\n<div style=\"language: es-PE; margin-top: 4.8pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; vertical-align: baseline; mso-line-break-override: restrictions; punctuation-wrap: simple;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\"><span style=\"color: #ccecff;\">&sect;</span>Un organismo certificador autorizado por&nbsp;INACAL,&nbsp;verifica que se cumple con los requisitos establecidos en la&nbsp;norma.</span></div>','<div style=\"margin-top: 4.8pt; margin-bottom: 0pt; margin-left: 0.38in; text-indent: -0.38in; direction: ltr; unicode-bidi: embed; vertical-align: baseline;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\"><span style=\"color: #ccecff;\">&sect;</span>Estamos implementando nuestro laboratorio de pruebas para&nbsp; garantizar la calidad de nuestros productos como objetivo de la mejora continua.</span></div>\n<div style=\"language: es-PE; margin-top: 4.8pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; vertical-align: baseline; mso-line-break-override: restrictions; punctuation-wrap: simple;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\"><span style=\"color: #ccecff;\">&sect;</span>Un organismo certificador autorizado por&nbsp;INACAL,&nbsp;verifica que se cumple con los requisitos establecidos en la&nbsp;norma.</span></div>\n<div style=\"language: es-PE; margin-top: 4.8pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; vertical-align: baseline; mso-line-break-override: restrictions; punctuation-wrap: simple;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\n<div style=\"language: es-PE; margin-top: 4.8pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: justify; text-justify: inter-ideograph; direction: ltr; unicode-bidi: embed; vertical-align: baseline; mso-line-break-override: restrictions; punctuation-wrap: simple;\">\n<p style=\"margin-top: 4.8pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; direction: ltr; unicode-bidi: embed; vertical-align: baseline;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\">Otorgamos:</span></p>\n<div style=\"language: es-PE; margin-top: 4.8pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: left; direction: ltr; unicode-bidi: embed; vertical-align: baseline; mso-line-break-override: restrictions; punctuation-wrap: simple;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\"><span style=\"color: #ccecff;\">&sect;</span>Protocolos&nbsp; de Prueba.</span></div>\n<div style=\"language: es-PE; margin-top: 4.8pt; margin-bottom: 0pt; margin-left: .38in; text-indent: -.38in; text-align: left; direction: ltr; unicode-bidi: embed; vertical-align: baseline; mso-line-break-override: restrictions; punctuation-wrap: simple;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\"><span style=\"color: #ccecff;\">&sect;</span>Cartas de Garant&iacute;as Comerciales</span></div>\n</div>',1),(3,'Charla  Técnica','<p><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/asesorias/asesoria-4Wba7q\" alt=\"Charla con los Clientes Abigail\" /><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/asesorias/asesoria-iqiH17\" alt=\"\" width=\"960\" height=\"720\" /></p>','<div style=\"color: #222222; font-family: arial, sans-serif; font-size: 12.8px;\"><span style=\"font-size: 12pt; font-family: verdana, geneva, sans-serif;\">Presentaci&oacute;n de Tuplast a nuestro nuevo distribuidor PC Vecor de Chimbote. Su FFVV (mostrador) qued&oacute; entusiasmada con el concurso implementado para este mes.</span></div>\n<div style=\"color: #222222; font-family: arial, sans-serif; font-size: 12.8px;\">&nbsp;</div>',1),(4,'Visitas  a Planta','<p><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/asesorias/asesoria-msIxk3\" alt=\"\" /></p>','<p>Visita de Ejecutivos a nuestra Planta.</p>',1);
/*!40000 ALTER TABLE `asesorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) NOT NULL,
  `ruc` varchar(11) NOT NULL,
  `latitud` varchar(100) DEFAULT NULL,
  `longitud` varchar(100) DEFAULT NULL,
  `ciudad` varchar(60) DEFAULT NULL,
  `rubro` varchar(60) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  UNIQUE KEY `ruc_UNIQUE` (`ruc`),
  KEY `fk_clientes_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'DWP GRUPO S.R.L.','20477241809','-8.1032165553156','-79.00602221489','Trujillo','Canal Infraestructura',1),(2,'CORPORACION MEGA CONSTRUCCIONES S.A.C.','20481503575','-8.1132406754886','-79.026179015636','Trujillo','Canal Infraestructura',1),(3,'CONSTRUCTORA SANCHEZ CERRO EMPRESA INDIVIDUAL DE R','20526203501','-4.903689564484','-80.68642616272','Sullana','Canal Infraestructura',1),(4,'RC CONSTRUCTORES & CONSULTORES S.A.C.','20539769309','-8.1054497650411','-79.020294249058','Trujillo','Canal Infraestructura',1),(5,'INVERSIONES CORAL S.A.C.','20531614993','-12.057016169241','-77.142407298088','Callao','Canal Infraestructura',1),(6,'CORPORACION CONSULTING EDSUR S.A.C.','20601114870','-8.1075568308656','-79.024132490158','Trujillo','Canal Infraestructura',1),(7,'INVERSIONES AGRICOLAS INKA BANANA S.A.C.','20601584108','-5.18991097627','-80.6349525601','Piura','Canal Infraestructura',1),(8,'MARYTERE CONSTRUCTORA GLORIABAMBA S.A.C','20529500158','-7.81392765869','-78.045271039','Huamachuco','Canal Infraestructura',1),(9,'INVERSIONES GLARK S.R.L','20482840516','-8.11986309617','-79.0394626558','Trujillo','Canal Infraestructura',1),(10,'SIEGERPLAST PERU S.A.C.','20600523105','-8.1281024671','-79.04221192','Trujillo','Canal Infraestructura',1),(11,'FERRETERIA & INDUSTRIAS JHEYSON S.A.C.','20480290861','-5.76405352305','-78.4412160516','Bagua Grande','Canal Predial',1),(12,'\"GRUPO FERRETERO SAN JUAN EL BAUTISTA S.A.C.\"','20600705190','-5.70998148798','-78.7994384766','Jaén','Canal Predial',1),(13,'RIOJA CARRANZA JOSE HERNAN','10166879952','-6.76470824353','-79.8408490419','Chiclayo','Canal Predial',1),(14,'ARENERA JAEN S.A.C','20114022838','-5.70918482061','-78.8096375763','Jaen','Canal Predial',1),(15,'N & F MONTOYA S.A.C.','20560003561','-8.1140744586','-79.0164104104','Trujillo','Canal Predial',1),(16,'ZEGAPLAST EIRL','20539109040','-6.76393981274','-79.8407672346','Chiclayo','Canal Predial',1),(17,'DISTRIBUIDORA Y ELECTRO ABIGAIL S.A.C.','20531661215','-9.07470028204','-78.5889923573','Chimbote','Canal Predial',1),(18,'CORPORACION FERRETERA SAN FELIPE S.R.L.','20600044266','-5.17873852955','-80.6387901306','Piura','Canal Predial',1),(19,'BECERRA BENITES MARIANELA','10035696518','-4.89469690632','-80.6847900152','Sullana','Canal Predial',1),(20,'BRAVO ELLATOPA CARMEN ELEANA','10804793912','-5.18937005543','-80.6025668979','Piura','Canal Predial',1),(21,'ZAPATA & CM E.I.R.L.','20600534077','-4.89452854336','-80.6839585304','Sullana','Canal Predial',1),(22,'DISTRIBUCIONES JHAKELYN EIRL','20529636301','-7.61949499002','-78.0480739474','Cajabamba','Canal Predial',1),(23,'DISTRIBUIDORA TUBONORTE S.A.C.','20477345680','-8.11128897897','-79.0132373571','Trujillo','Canal Predial',1),(24,'PEREZ SANCHEZ ULICES ORLANDO','10107400082','-11.9114046522','-77.0488290489','Lima','Canal Predial',1),(25,'MAQUINORTE','20445420990','-12.1088398042','-76.9739994407','Lima','Canal Infraestructura',1),(26,'CONSORCIO FERRETERO PLASTICA S.A.C.','20601197805','-8.11385937458','-79.0165391564','Trujillo','Canal Predial',1),(27,'ARENERA JM SANTA ROSA SRL','20601430739','-5.69875064439','-78.8078592718','Jaén','Canal Predial',1),(28,'INVERSIONES FERRONOR EIRL','20495883486','-6.68025081408','-78.5199227929','Bambamarca','Canal Predial',1),(29,'EDICAS SAC','20275449751','-12.1274748678','-77.0261281729','Lima','Canal Infraestructura',1),(30,'HUEMURA SAC','20396466768','-8.11616421949','-79.026106596','Trujillo','',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller_roles`
--

DROP TABLE IF EXISTS `controller_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_id` int(11) NOT NULL,
  `controller_id` int(11) NOT NULL,
  `permiso` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`,`rol_id`,`controller_id`),
  KEY `fk_controller_roles_roles1_idx` (`rol_id`),
  KEY `fk_controller_roles_controllers1_idx` (`controller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller_roles`
--

LOCK TABLES `controller_roles` WRITE;
/*!40000 ALTER TABLE `controller_roles` DISABLE KEYS */;
INSERT INTO `controller_roles` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,1,5,1),(6,1,6,1),(7,1,7,1),(8,1,8,1),(9,1,9,1),(10,1,10,1),(11,1,11,1),(12,1,12,1),(13,2,1,0),(14,2,2,1),(15,2,3,0),(16,2,4,0),(17,2,5,0),(18,2,6,0),(19,2,7,0),(20,2,8,0),(21,2,9,0),(22,2,10,0),(23,2,11,0),(24,2,12,0);
/*!40000 ALTER TABLE `controller_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controllers`
--

DROP TABLE IF EXISTS `controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controllers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  `controller_name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controllers`
--

LOCK TABLES `controllers` WRITE;
/*!40000 ALTER TABLE `controllers` DISABLE KEYS */;
INSERT INTO `controllers` VALUES (1,'Información General','infoGeneral'),(2,'Slider','slider'),(3,'Nosotros','nosotros'),(4,'Productos','productos'),(5,'Clientes','clientes'),(6,'Obras','obras'),(7,'Páginas','pages'),(8,'Convocatorias','convocatorias'),(9,'Tipo de Sugerencias','tipoSugerencias'),(10,'Roles','roles'),(11,'Usuarios','users'),(12,'Asesorías','asesorias');
/*!40000 ALTER TABLE `controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convocatorias`
--

DROP TABLE IF EXISTS `convocatorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convocatorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `documentacion` varchar(100) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_convocatorais_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convocatorias`
--

LOCK TABLES `convocatorias` WRITE;
/*!40000 ALTER TABLE `convocatorias` DISABLE KEYS */;
INSERT INTO `convocatorias` VALUES (1,'Convocatoria 1','2017-04-19','doc-RB5rzb',1);
/*!40000 ALTER TABLE `convocatorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_sugerencias`
--

DROP TABLE IF EXISTS `detalle_sugerencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_sugerencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_sugerencia_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`id`,`tipo_sugerencia_id`),
  KEY `fk_detale_sugerencias_tipo_sugerencias1_idx` (`tipo_sugerencia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_sugerencias`
--

LOCK TABLES `detalle_sugerencias` WRITE;
/*!40000 ALTER TABLE `detalle_sugerencias` DISABLE KEYS */;
INSERT INTO `detalle_sugerencias` VALUES (3,1,'afernandez@tuberiasplasticas.com'),(4,1,'mcedano@tuberiasplasticas.com'),(5,1,'jllanos@tuberiasplasticas.com');
/*!40000 ALTER TABLE `detalle_sugerencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'activo'),(2,'inactivo');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headers`
--

DROP TABLE IF EXISTS `headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headers`
--

LOCK TABLES `headers` WRITE;
/*!40000 ALTER TABLE `headers` DISABLE KEYS */;
INSERT INTO `headers` VALUES (1,'quienes_somos','header-sszzbg'),(2,'politicas',NULL),(3,'productos',NULL),(4,'clientes',NULL),(5,'obras',NULL),(6,'asesorias',NULL),(7,'bolsa_trabajo',NULL),(8,'sugerencias',NULL);
/*!40000 ALTER TABLE `headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(60) DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'nuestraHistoria','<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align: justify;\"><span style=\"font-size: 12pt; line-height: 107%; font-family: verdana, geneva, sans-serif;\">Hace 6 a&ntilde;os, El Sr. Guillermo Vel&aacute;squez Castro en su af&aacute;n de realizar Negocios emprendedores y dar respuesta a la necesidad de mejorar el saneamiento y agua de la poblaci&oacute;n crea en conjunto con su socio la planta de fabricaci&oacute;n de tuber&iacute;as de PVC-U (TUPLAST). La cual nace como una nueva alternativa para el mercado norte&ntilde;o. Transcurrido el 3&deg; a&ntilde;o entre montaje y pruebas de maquinaria se inicia la vida comercial de la marca Tuplast fabricando productos de calidad y a un precio justo. </span></p>\n<p style=\"text-align: justify;\">&nbsp;</p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\"><span style=\"font-family: verdana, geneva, sans-serif;\">Nuestro crecimiento, a&ntilde;o a a&ntilde;o, se ve plasmado en la obtenci&oacute;n de maquinaria con tecnolog&iacute;a automatizada y un moderno laboratorio de control de calidad en el cual se asegura una producci&oacute;n sin problemas para el mercado. En 5 a&ntilde;os se ha logrado una importante participaci&oacute;n en el mercado, posicionando nuestros productos en la zona norte del Per&uacute;.</span></span></p>'),(2,'vision','<p><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\"><span style=\"line-height: 107%;\"><span style=\"font-variant-numeric: normal; font-stretch: normal; line-height: normal;\">&nbsp;</span></span><!--[endif]--></span><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\"><span style=\"font-family: verdana, geneva, sans-serif;\">Liderar el mercado nacional en la fabricaci&oacute;n, distribuci&oacute;n y comercializaci&oacute;n de tuber&iacute;as y conexiones de PVC, reconocidos por nuestros productos de calidad, siendo percibidos como una empresa que busca constantemente la mejora continua y diversificaci&oacute;n de sus productos.&nbsp;</span></span></p>'),(3,'mision','<p style=\"text-align: justify;\"><span style=\"text-align: justify; text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: verdana, geneva, sans-serif;\">Somos una empresa fabricante de tuber&iacute;as de PVC que busca la satisfacci&oacute;n de sus clientes entregando productos de calidad y un servicio ajustado a sus necesidades; que realiza sus operaciones siendo responsables con nuestros grupos de inter&eacute;s y el medio ambiente.</span></p>\n<p class=\"MsoListParagraph\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\">&nbsp;</p>'),(4,'valor1','Trabajo en equipo'),(5,'valor2','Unidad'),(6,'valor3','Profesionalismo'),(7,'valor4','Lealtad'),(8,'valor5','Acción'),(9,'valor6','Servicio'),(10,'valor7','Tenacidad'),(11,'resumen_tuplast','Tuplast inicia sus operaciones en el año 2013 en el mercado de la fabricación de tuberías de PVC.\n\nActualmente, su planta de producción está ubicada en el distrito de Huanchaco, Trujillo; favoreciendo así con puestos de trabajo a pobladores de la zona.'),(12,'mensaje_clientes_1','Somos una empresa peruana, ubicada en el norte del país, perteneciente al grupo HUEMURA.\nCon más de 18 años en el mercado y con cobertura en toda la región norte del país, la marca\nTuplast tiene 4 años dedicándose a la fabricación y comercialización de tuberías de PVC-U\npara redes de agua potable y alcantarillado, instalaciones domiciliarias de agua y desagüe;\nasí como, canalizaciones eléctricas y telefonía.'),(13,'mensaje_clientes_2','Son más de 50 empresas con las que trabajamos conjuntamente'),(14,'facebook_link','https://www.facebook.com/Tuplast'),(15,'linkedin_link','https://www.linkedin.com/company/tuplast-per%C3%BA'),(16,'telf_oficina','044-659230 / 044 630116'),(17,'email_1','ventas@tuberiasplasticas.com'),(18,'email_2','info@tuberiasplasticas.com'),(19,'telf_area_tecnica','982579831'),(20,'brochure','http://tuplast.robertobocanegra.com/brochure.pdf'),(21,'telf_area_ventas','991904900');
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obra_images`
--

DROP TABLE IF EXISTS `obra_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obra_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obra_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`obra_id`),
  KEY `fk_obra_images_obras1_idx` (`obra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra_images`
--

LOCK TABLES `obra_images` WRITE;
/*!40000 ALTER TABLE `obra_images` DISABLE KEYS */;
INSERT INTO `obra_images` VALUES (32,1,'obra-ush9T9'),(33,3,'obra-p1TGWJ'),(34,2,'obra-1Iu1J7'),(35,2,'obra-NbrvOJ'),(36,2,'obra-cSdHsB'),(37,3,'obra-Kdi2UP'),(38,4,'obra-vYEC35'),(39,5,'obra-ATkykz'),(40,5,'obra-Czg6bw'),(41,5,'obra-zLvM8q'),(42,3,'obra-FYYrCN');
/*!40000 ALTER TABLE `obra_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras`
--

DROP TABLE IF EXISTS `obras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `resumen` varchar(300) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_obras_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras`
--

LOCK TABLES `obras` WRITE;
/*!40000 ALTER TABLE `obras` DISABLE KEYS */;
INSERT INTO `obras` VALUES (1,'Programa Nacional de Infraestructura Educativa - Pronied','','Adecuación, mejoramiento y sustitución de la infraestructura de la Institución Educativa Abraham Cardenas Ruiz ubicada en la ciudad Bellavista, región San Martín.',1),(2,'Grupo 3S Contratistas Generales SRL','<p style=\"text-align: justify;\">\" Mejoramiento y ampliaci&oacute;n del servicio de agua potable y disposici&oacute;n de excretas en el caserio de la Cuchilla, &nbsp; Distrito de Santiago de Chuco, Provincia de Santiago de Chuco La Libertad \"&nbsp;</p>','\" Municipalidad Provincial de Santiago de Chuco\"',1),(3,'Maquinorte S.A.C','<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\">\"Contratacion de obras de ampliacion y mejoramiento del sistema de agua e instalaci&oacute;n de unidades b&aacute;sicas de saneamiento en las provincias de Abancay y Andahuaylas - Distrito de Curahuasi, Huancarama Region Apurimac Llactabamba\"</span></p>','\"Contratación de obras de ampliación y mejoramiento del sistema de agua e instalaciones de unidades básicas de saneamiento en las provincias de Abancay y Cotabamba - Distritos de Curahuasi y Haquira - Region de Apurimac - localidad de Bacas\"',1),(4,'N.E SNIP 293091 - Carpinteros - PNSR','','\"Ampliación y mejoramiento del servicio de agua e instalación del saneamiento básico de la localidad de Carpinteros - Distrito  de Chalaco - Provincia de Morropon - Piura - SNIP 293091\"',1),(5,'Proyecto: “Instalación del servicio de agua potable y disposicion de excretas del caserío ISHCAP, Di','','Verificando los trabajos de excavación de Zanjas y instalación de tubería PVC.',1);
/*!40000 ALTER TABLE `obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `menu` char(2) NOT NULL,
  `body` longtext NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_pages_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (2,'Aseguramiento de la Calidad','PY','<p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: verdana, geneva, sans-serif;\">Para seguridad de nuestros clientes, nuestros productos son fabricados con Materia prima importada 100 % virgen de primera calidad, y cumplen con los requisitos establecidos en las Normas T&eacute;cnicas Nacionales de Fabricaci&oacute;n vigentes para cada tipo de tuber&iacute;a (NTP-ISO</span></p>',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `politicas`
--

DROP TABLE IF EXISTS `politicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `politicas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` longtext,
  `url` varchar(100) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_politicas_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `politicas`
--

LOCK TABLES `politicas` WRITE;
/*!40000 ALTER TABLE `politicas` DISABLE KEYS */;
INSERT INTO `politicas` VALUES (1,'Política de Calidad','<p class=\"MsoListParagraph\" style=\"line-height: 150%; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Arial\',sans-serif;\">Tuplast se compromete a fabricar y comercializar tuber&iacute;as de PVC-U de calidad para proyectos de agua y saneamiento, comercio, industria y miner&iacute;a; mediante la planificaci&oacute;n, seguimiento y control de todas las etapas; orientados siempre a la mejora continua de nuestros procesos; del sistema de gesti&oacute;n de la calidad, cumpliendo los requisitos de los clientes, legales y normativos; logrando su satisfacci&oacute;n.&nbsp;</span></p>','politica-weCB7n',1),(2,'Política de Seguridad Salud Ocupacional y medio ambiente','<p class=\"MsoNormal\" style=\"text-align: justify;\">Tuplast tiene como prioridad la seguridad y salud de sus colaboradores, proveedores, clientes, terceros y la de sus subcontratistas. Nuestra filosof&iacute;a se basa en el cuidado del principal recurso que tenemos, nuestro capital humano. Por tal motivo nos comprometemos a:</p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">- Implementar y desarrollar el sistema de gesti&oacute;n de seguridad y salud ocupacional en todos sus procesos y ambiente de trabajo.</p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">- Cumplir con la normatividad y legislaci&oacute;n nacional vigente y aplicable, as&iacute; como los est&aacute;ndares de calidad a nuestra actividad econ&oacute;mica relacionada con la seguridad y salud ocupacional.</p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">- Promover y elevar la concientizaci&oacute;n por la seguridad y el medio ambiente realizando programas de capacitaci&oacute;n con el objetivo de elevar nuestra cultura de seguridad y ecol&oacute;gica.</p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">- Elaborar, aplicar, mantener est&aacute;ndares y procedimientos de trabajo seguro.</p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">- Establecer un sistema de controles y auditorias que permitan mejorar continuamente su sistema de gesti&oacute;n de seguridad y salud ocupacional.</p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">- Incentivar la participaci&oacute;n activa de los colaboradores en forma eficaz y segura a emergencias y/o accidentes relacionados a la seguridad y salud ocupacional.</p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">&nbsp;</p>\n<p class=\"MsoNormal\">&nbsp;</p>\n<p class=\"MsoNormal\">&nbsp;</p>\n<p class=\"MsoNormal\">&nbsp;</p>\n<p class=\"MsoNormal\">&nbsp;</p>\n<p class=\"MsoNormal\">&nbsp;</p>\n<p class=\"MsoNormal\" style=\"text-align: justify; margin: 6.0pt 0cm 6.0pt 35.45pt;\">&nbsp;</p>','politica-27WXYj',1),(3,'Política de Seguridad Integral','<p class=\"MsoNormal\" style=\"text-align: justify;\">En Tuplast cuidamos la integridad de nuestros colaboradores por lo que consideramos lo siguiente:</p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">- Todo colaborador de la empresa que vea amenazado su integridad f&iacute;sica o su vida ante un peligro inminente (sea en una actividad que constituya un riesgo importante o intolerable para su seguridad y salud); podr&aacute; tener la faculta de interrumpir sus actividades y si fuera necesario abandonar de forma inmediata el lugar o &aacute;rea donde se desarrollan sus labores, hasta que el riesgo se haya reducido o controlado.</p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">- La presente pol&iacute;tica se ha establecido para dar cumplimiento con la Ley de Seguridad y Salud en el Trabajo Ley N&deg; 29783 Art&iacute;culo 63 y su modificatoria de Ley N&deg; 30222 sobre la Interrupci&oacute;n de actividades en caso inminente de peligro.</p>\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\">&nbsp;</p>','politica-ub2Vau',1);
/*!40000 ALTER TABLE `politicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_images`
--

DROP TABLE IF EXISTS `producto_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `tipo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`producto_id`),
  KEY `fk_images_productos1_idx` (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_images`
--

LOCK TABLES `producto_images` WRITE;
/*!40000 ALTER TABLE `producto_images` DISABLE KEYS */;
INSERT INTO `producto_images` VALUES (99,15,'producto-yGaNCH',NULL,'E'),(100,4,'producto-oj8syy',NULL,'E'),(101,5,'producto-OVC0Su',NULL,'E'),(104,10,'producto-zg24oa',NULL,'E'),(106,6,'producto-e6IGQK',NULL,'E'),(109,12,'producto-Rk7Mhu',NULL,'E'),(110,6,'producto-KEGoYq',NULL,'E'),(111,6,'producto-AFHQ3a',NULL,'E'),(112,6,'producto-jSXP1B',NULL,'E'),(113,6,'producto-icdbo5',NULL,'E'),(114,14,'producto-CSy30K',NULL,'E'),(115,14,'producto-5i8w2R',NULL,'E'),(116,14,'producto-KnYTCp',NULL,'E'),(117,14,'producto-XJeUeq',NULL,'E'),(118,14,'producto-lEEiyk',NULL,'E'),(119,13,'producto-xrT8Yu',NULL,'E'),(120,13,'producto-Dz2Ug7',NULL,'E'),(121,13,'producto-PI3Kj0',NULL,'E'),(122,6,'producto-63ani1',NULL,'E'),(123,6,'producto-pdiufW',NULL,'E'),(124,6,'producto-uEVqDH',NULL,'E'),(125,6,'producto-xAhGJj',NULL,'E'),(126,6,'producto-UcjdUk',NULL,'E'),(127,13,'producto-MYEil1',NULL,'E'),(128,6,'producto-UsxYTB',NULL,'E'),(129,13,'producto-6Qfyrm',NULL,'G'),(130,13,'producto-msDXlV',NULL,'E'),(131,13,'producto-vF6bDU',NULL,'E'),(132,13,'producto-L3nHcP',NULL,'E'),(133,13,'producto-CAOpLR',NULL,'G'),(134,13,'producto-2YQ3Nf',NULL,'G');
/*!40000 ALTER TABLE `producto_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(60) DEFAULT NULL,
  `body` longtext NOT NULL,
  `type` char(1) NOT NULL,
  `resumen` varchar(300) NOT NULL,
  `brochure` varchar(60) DEFAULT NULL,
  `parent_id` varchar(45) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_productos_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (2,'Área Predial','','<p><span style=\"color: #666666; font-family: DroidSansRegular, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\">Nuestras tuber&iacute;as cumplen con las norma de fabricaci&oacute;n NTP 399.006 con una gama de di&aacute;metro 1/2\" , 5/8\" , 3/4\" , 1 1/4\" , 1 1/2\" , 2\" tienen un sistema de empalme: espiga y campa&ntilde;a.</span></p>','A','Resistentes a la corrosión\nLos tubos TUPLAST son resistentes a los ácidos, álcalis, productos químicos industriales o suelos agresivos.',NULL,NULL,1,18,1),(3,'Área Infraestructura',NULL,'<p><span style=\"color: #666666; font-family: DroidSansRegular, \'Helvetica Neue\', Helvetica, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;\">Esta tuber&iacute;as cumplen con las normas NTP ISO 399.002 y un sistema de empalme: Uni&oacute;n Flexible UF con una gama de di&aacute;metro de hasta 400MM.</span></p>','A','Larga Vida Útil\nLa vida útil del tubo TUPLAST según diseño por normativa y respetando recomendaciones técnicas de instalación, es de aproximadamente 50 años',NULL,NULL,19,28,1),(4,'Tubos de PVC para Agua','NTP 399.002','<p style=\"margin-top: 0pt; margin-bottom: 0pt; direction: ltr; unicode-bidi: embed; vertical-align: baseline; text-align: left;\">Norma de fabricaci&oacute;n:</p>\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; direction: ltr; unicode-bidi: embed; vertical-align: baseline; text-align: left;\">NTP 399.002</p>\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; direction: ltr; unicode-bidi: embed; vertical-align: baseline; text-align: left;\">Sistema de empalme: espiga y campana con pegamento.</p>\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; direction: ltr; unicode-bidi: embed; vertical-align: baseline; text-align: left;\">Gama de di&aacute;metro de 1/2 hasta 12\"</p>\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; direction: ltr; unicode-bidi: embed; vertical-align: baseline; text-align: left;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 12pt;\"><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-oj8syy\" alt=\"\" /></span></p>','L','Norma de fabricación:\nNTP 399.002\nSistema de empalme: espiga y campana con pegamento.\nGama de diámetro de 1/2 hasta 12\"',NULL,'2',2,7,1),(5,'Línea Sanitaria','NTP 399.003 -2007','<p>L&iacute;nea Sanitaria<span style=\"font-size: 8pt;\"><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-OVC0Su\" alt=\"\" /></span></p>','L','Norma de fabricación:\nNTP  399.003\nGama de diámetro  1. 1/2, 2\", 3\", 4\", 6\"\nSistema de empalme :espiga y campana com pegamento\nClases: liviana (CL) y pesada (CP)',NULL,'2',8,11,1),(6,'Tubos para Instalaciones Eléctricas','NTP 399.006','<p style=\"text-align: justify;\">&nbsp;</p>\n<p>&nbsp;<img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-UsxYTB\" alt=\"\" /></p>\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\">&nbsp;</p>','L','Norma de fabricación:\nNTP 399.006\nGama de diámetros: 1/2\", 5/8\", 3/4\", 1 1/4\", 1 1/2\", 2\".\nSistema de empalme: espiga y campana.',NULL,'2',12,17,1),(7,'Tubos para Fluido a Presión','NTP-ISO 1452','<p>L&iacute;nea Agua Potable</p>','L','Norma de fabricación: NTP-ISO 1452\nAgua potable \nRiego tecnificado\nInstalación industriales\nGama de diámetro de 63 mm a 400 mm\nSistema de empalme: unión flexible\nColor: gris',NULL,'3',20,23,1),(8,'Línea Alcantarillado',NULL,'<p>L&iacute;nea Alcantarillado</p>','L','Línea Alcantarillado',NULL,'3',24,27,1),(9,'Tubos Simple Presión','NTP 399.002 : 2015','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS SIMPLE PRESI&Oacute;N (PEGADO)</span></p>','P','TUBOS SIMPLE PRESIÓN (PEGADO)','doc-INkJtM','4',3,4,1),(10,'Tubos  de Unión Rosca','NTP 399.166','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\"><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-zg24oa\" alt=\"\" />&nbsp;</span></p>','P','Norma de fabricación:\nNTP 399.166','doc-GHNxhZ','4',5,6,1),(11,'Tubos para Desagüe','NTP 399.003 : 2015','','P','Línea de Desagüe Domiciliaria: en cumplimiento con la NTP 399.003 : 2015, contamos con tubería de clase liviana desde 2” hasta 6”, y en clase pesada con tubería de 2” y 4”.','doc-izQ0Li','5',9,10,1),(12,'Tubos de luz Sel','NTP 399.006 : 2015','<p style=\"text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-PE; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-Rk7Mhu\" alt=\"\" />Nuestra l&iacute;nea el&eacute;ctrica desde 5/8&rdquo; hasta 2&rdquo; Clase liviana y &frac12;&rdquo; hasta 4&rdquo; Clase Pesada fabricados bajo cumplimiento de la norma NTP-399.006 : 2015</span></p>','P','Nuestra línea eléctrica desde 5/8” hasta 2” Clase liviana y ½” hasta 4” Clase Pesada fabricados bajo cumplimiento de la norma NTP-399.006 : 2015','doc-0T36Te','6',13,14,1),(13,'Tubos para luz Sap','NTP 399.006 : 2015','<p><img class=\"\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-L3nHcP\" alt=\"\" /><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-MYEil1\" alt=\"\" /><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-PI3Kj0\" alt=\"\" /></p>','P','Nuestra línea eléctrica desde 5/8” hasta 2” Clase liviana y ½” hasta 4” Clase Pesada fabricados bajo cumplimiento de la norma NTP-399.006 : 2015\nSistema de empalme: espiga de campana.','doc-9T6U9w','6',15,16,1),(14,'Tubos para Fluido a Presión','NTP - ISO 1452 : 2011','<p><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-lEEiyk\" alt=\"\" /></p>','P','.Norma Fabricación\n\nNTP 399. 002 : 2015\n\nTubo de 5 metros (L)\nSistema de empalme:espiga y campana con cemento disolvente.\nGama de diametro de 1/2 hasta 12\".','doc-oaDVkp','7',21,22,1),(15,'Tubos para Alcantarillado','NTP - ISO 4435','<p><img class=\"img-responsive\" src=\"http://tuplast.robertobocanegra.com/api/img/productos/producto-yGaNCH\" alt=\"\" /></p>','P','Norma de fabricación: NTP-ISO 4435\nRecolección de aguas residuales y pluviales\nDrenaje\nGama de diámetro de 110 mm a 400 mm\nSistema de empalme: unión flexible UF\nColor: naranja','doc-tNgXeF','8',25,26,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_roles_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador',1),(2,'Marketing',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `contenido` text,
  `orden` int(11) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `color_bg` varchar(7) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_slides_estados_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'','slide-o5XOBf','',6,'#000000','#74c15c',2),(2,NULL,'slide-5wotDR',NULL,1,'#ffffff','#74c15c',1),(3,NULL,'slide-snLSHV',NULL,2,'#ffffff','#74c15c',1),(4,NULL,'slide-ocXdQT',NULL,3,'#ffffff','#74c15c',1),(5,NULL,'slide-b1TZII',NULL,5,'#ffffff','#74c15c',2),(6,NULL,'slide-Y3XXaG',NULL,4,'#ffffff','#74c15c',1),(7,NULL,'slide-3bV8SO',NULL,0,'#ffffff','#74c15c',1);
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_sugerencias`
--

DROP TABLE IF EXISTS `tipo_sugerencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_sugerencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_tipo_sugerencias_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_sugerencias`
--

LOCK TABLES `tipo_sugerencias` WRITE;
/*!40000 ALTER TABLE `tipo_sugerencias` DISABLE KEYS */;
INSERT INTO `tipo_sugerencias` VALUES (1,'Ventas',1);
/*!40000 ALTER TABLE `tipo_sugerencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`rol_id`,`estado_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_users_estados1_idx` (`estado_id`),
  KEY `fk_users_roles1_idx` (`rol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','$2y$10$d9jEoXrUzl3xw6mJQEbZcOEMjnSXH17P6un4atIiHQzz1.t0fhEhG','admin@tuplast.com',1),(2,2,'marketing1','$2y$10$7pDFHhp88qS4Kyumnj3.yORrXgZ7vIIuKjvXwvmx3x9PPq4nyUSzC','marketing@tuplast.com',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-26 11:25:36
