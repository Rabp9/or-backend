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
INSERT INTO `clientes` VALUES (1,'DWP GRUPO S.R.L.','20477241809','-8.1032165553156','-79.00602221489','Trujillo',1),(2,'CORPORACION MEGA CONSTRUCCIONES S.A.C.','20481503575','-8.1132406754886','-79.026179015636','Trujillo',1),(3,'CONSTRUCTORA SANCHEZ CERRO EMPRESA INDIVIDUAL DE R','20526203501','-4.903689564484','-80.68642616272','Sullana',1),(4,'RC CONSTRUCTORES & CONSULTORES S.A.C.','20539769309','-8.1054497650411','-79.020294249058','Trujillo',1),(5,'INVERSIONES CORAL S.A.C.','20531614993','-12.057016169241','-77.142407298088','Callao',1),(6,'CORPORACION CONSULTING EDSUR S.A.C.','20601114870','-8.1075568308656','-79.024132490158','Trujillo',1),(7,'INVERSIONES AGRICOLAS INKA BANANA S.A.C.','20601584108','-5.18991097627','-80.6349525601','Piura',1),(8,'MARYTERE CONSTRUCTORA GLORIABAMBA S.A.C','20529500158','-7.81392765869','-78.045271039','Huamachuco',1),(9,'INVERSIONES GLARK S.R.L','20482840516','-8.11986309617','-79.0394626558','Trujillo',1),(10,'SIEGERPLAST PERU S.A.C.','20600523105','-8.1281024671','-79.04221192','Trujillo',1),(11,'FERRETERIA & INDUSTRIAS JHEYSON S.A.C.','20480290861','-5.76404017981','-78.4412884712','Bagua Grande',1),(12,'\"GRUPO FERRETERO SAN JUAN EL BAUTISTA S.A.C.\"','20600705190','-5.70998148798','-78.7994384766','Jaén',1),(13,'RIOJA CARRANZA JOSE HERNAN','10166879952','-6.76470824353','-79.8408490419','Chiclayo',1),(14,'ARENERA JAEN S.A.C','20114022838','-5.70918482061','-78.8096375763','Jaen',1),(15,'N & F MONTOYA S.A.C.','20560003561','-8.1140744586','-79.0164104104','Trujillo',1),(16,'ZEGAPLAST EIRL','20539109040','-6.76393981274','-79.8407672346','Chiclayo',1),(17,'DISTRIBUIDORA Y ELECTRO ABIGAIL S.A.C.','20531661215','-9.07470028204','-78.5889923573','Chimbote',1),(18,'CORPORACION FERRETERA SAN FELIPE S.R.L.','20600044266','-5.17873852955','-80.6387901306','Piura',1),(19,'BECERRA BENITES MARIANELA','10035696518','-4.89469690632','-80.6847900152','Sullana',1),(20,'BRAVO ELLATOPA CARMEN ELEANA','10804793912','-5.18937005543','-80.6025668979','Piura',1),(21,'ZAPATA & CM E.I.R.L.','20600534077','-4.89452854336','-80.6839585304','Sullana',1),(22,'DISTRIBUCIONES JHAKELYN EIRL','20529636301','-7.61949499002','-78.0480739474','Cajabamba',1),(23,'DISTRIBUIDORA TUBONORTE S.A.C.','20477345680','-8.11128897897','-79.0132373571','Trujillo',1),(24,'PEREZ SANCHEZ ULICES ORLANDO','10107400082','-11.9114046522','-77.0488290489','Lima',1),(25,'MAQUINORTE','20445420990','-12.1088398042','-76.9739994407','Lima',1),(26,'CONSORCIO FERRETERO PLASTICA S.A.C.','20601197805','-8.11385937458','-79.0165391564','Trujillo',1),(27,'ARENERA JM SANTA ROSA SRL','20601430739','-5.69875064439','-78.8078592718','Jaén',1),(28,'INVERSIONES FERRONOR EIRL','20495883486','-6.68025081408','-78.5199227929','Bambamarca',1),(29,'EDICAS SAC','20275449751','-12.1274748678','-77.0261281729','Lima',1),(30,'HUEMURA SAC','20396466768','-8.11616421949','-79.026106596','Trujillo',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller_roles`
--

LOCK TABLES `controller_roles` WRITE;
/*!40000 ALTER TABLE `controller_roles` DISABLE KEYS */;
INSERT INTO `controller_roles` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,1,5,1),(6,1,6,1),(7,1,7,1),(8,1,8,1),(9,1,9,1),(10,1,10,1),(11,1,11,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controllers`
--

LOCK TABLES `controllers` WRITE;
/*!40000 ALTER TABLE `controllers` DISABLE KEYS */;
INSERT INTO `controllers` VALUES (1,'Información General','infoGeneral'),(2,'Slider','slider'),(3,'Nosotros','nosotros'),(4,'Productos','productos'),(5,'Clientes','clientes'),(6,'Obras','obras'),(7,'Páginas','pages'),(8,'Convocatorias','convocatorias'),(9,'Tipo de Sugerencias','tipoSugerencias'),(10,'Roles','roles'),(11,'Usuarios','users');
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
INSERT INTO `detalle_sugerencias` VALUES (3,1,'afernandez@tuberiplasticaas.com'),(4,1,'mcedano@tuberiasplasticas.com'),(5,1,'jllanos@tuberiasplasticas.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'nuestraHistoria','<p>Hace 6 a&ntilde;os, El Sr. Guillermo Vel&aacute;squez Castro en su af&aacute;n de realizar Negocios emprendedores y dar respuesta a la necesidad de mejorar el saneamiento y agua de la poblaci&oacute;n crea en conjunto con su socio la planta de fabrica...'),(2,'vision','<p>Liderar el mercado nacional en la fabricaci&oacute;n, distribuci&oacute;n y comercializaci&oacute;n de tuber&iacute;as y conexiones de PVC, reconocidos por nuestros productos de calidad, siendo percibidos como una empresa que busca constantemente la m...'),(3,'mision','<p>Somos una empresa fabricante de tuber&iacute;as de PVC que busca la satisfacci&oacute;n de sus clientes entregando productos de calidad y un servicio ajustado a sus necesidades que realiza sus operaciones siendo responsables con nuestros grupos de int...'),(4,'valor1','Trabajo en equipo'),(5,'valor2','Unidad'),(6,'valor3','Profesionalismo'),(7,'valor4','Lealtad'),(8,'valor5','Acción'),(9,'valor6','Servicio'),(10,'valor7','Tenacidad'),(11,'resumen_tuplast','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a finibus sapien, vel tristique nulla. Cras a velit tincidunt, euismod dolor non, posuere nulla. Nam blandit id massa ac maximus. Nam vel justo augue. Proin pharetra nunc lacus, laoreet posuere nisi dapibus in. Aliquam gravida nulla ante, eu aliquam tellus efficitur vel. In ac mauris lacinia, pellentesque odio sed, sagittis turpis. Integer luctus fermentum urna, eget eleifend mauris malesuada tristique. Fusce id pretium sapien. Pellentesque maximus nulla ac dui lacinia ornare.'),(12,'mensaje_clientes_1','Nuestros clientes confian en la calidad de nuestros productos'),(13,'mensaje_clientes_2','Son más de 40 empresas con las que trabajamos conjuntamente'),(14,'facebook_link','https://www.facebook.com/Tuplast'),(15,'twitter_link','twitter-link'),(16,'telf_oficina','044-659230 / 044 630116'),(17,'email_1','ventas@tuberiasplasticas.com'),(18,'email_2','info@tuberiasplasticas.com'),(19,'telf_area_tecnica','982579831'),(20,'brochure','brochure'),(21,'telf_area_ventas','991904900');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra_images`
--

LOCK TABLES `obra_images` WRITE;
/*!40000 ALTER TABLE `obra_images` DISABLE KEYS */;
INSERT INTO `obra_images` VALUES (17,1,'obra-fcQkJ1'),(18,1,'obra-rXyJ1g'),(19,1,'obra-WPGF4p'),(20,2,'obra-JABYwc'),(21,2,'obra-Nh8a2g'),(22,2,'obra-6ngqxy'),(23,2,'obra-8SCnn6'),(24,2,'obra-la00Ss'),(25,3,'obra-Gjzl02'),(26,3,'obra-4KDBaI');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras`
--

LOCK TABLES `obras` WRITE;
/*!40000 ALTER TABLE `obras` DISABLE KEYS */;
INSERT INTO `obras` VALUES (1,'Obra 1','<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut lacus et tellus convallis fringilla. Quisque venenatis magna vitae vestibulum tincidunt. Proin porttitor nibh eget tortor commodo fermentum. Morbi blandit nunc mi. Nam nec arcu id velit laoreet venenatis. Aliquam mattis dictum urna, id hendrerit massa imperdiet eu. Proin ut venenatis eros. Proin egestas nunc nec libero euismod lobortis. Donec ultricies magna ac elit lacinia, id tincidunt nisl semper. Vestibulum volutpat, quam et lobortis porta, tellus eros dictum risus, in dapibus ipsum sem eu mi. Etiam vestibulum massa at leo convallis scelerisque. Vivamus et nibh scelerisque neque pharetra aliquam. Nunc molestie, nunc a dictum imperdiet, nisi odio lacinia nibh, eget tempor quam tortor eu neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin sollicitudin condimentum metus, eget porta odio venenatis in.</p>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Donec a elit ullamcorper, accumsan velit non, mollis urna. Praesent sed euismod justo. Curabitur sit amet diam ullamcorper, condimentum dolor vel, luctus lacus. Donec aliquam blandit nibh vel dapibus. Nullam id eros ac elit consectetur hendrerit. Aenean aliquam tortor risus. Ut egestas eget lorem eu posuere.</p>','Donec a elit ullamcorper, accumsan velit non, mollis urna. Praesent sed euismod justo. Curabitur sit amet diam ullamcorper, condimentum dolor vel, luctus.',1),(2,'Obra 2','<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut lacus et tellus convallis fringilla. Quisque venenatis magna vitae vestibulum tincidunt. Proin porttitor nibh eget tortor commodo fermentum. Morbi blandit nunc mi. Nam nec arcu id velit laoreet venenatis. Aliquam mattis dictum urna, id hendrerit massa imperdiet eu. Proin ut venenatis eros. Proin egestas nunc nec libero euismod lobortis. Donec ultricies magna ac elit lacinia, id tincidunt nisl semper. Vestibulum volutpat, quam et lobortis porta, tellus eros dictum risus, in dapibus ipsum sem eu mi. Etiam vestibulum massa at leo convallis scelerisque. Vivamus et nibh scelerisque neque pharetra aliquam. Nunc molestie, nunc a dictum imperdiet, nisi odio lacinia nibh, eget tempor quam tortor eu neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin sollicitudin condimentum metus, eget porta odio venenatis in.</p>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Donec a elit ullamcorper, accumsan velit non, mollis urna. Praesent sed euismod justo. Curabitur sit amet diam ullamcorper, condimentum dolor vel, luctus lacus. Donec aliquam blandit nibh vel dapibus. Nullam id eros ac elit consectetur hendrerit. Aenean aliquam tortor risus. Ut egestas eget lorem eu posuere.</p>','Donec a elit ullamcorper, accumsan velit non, mollis urna. Praesent sed euismod justo. Curabitur sit amet diam ullamcorper, condimentum dolor vel',1),(3,'Obra 3','<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut lacus et tellus convallis fringilla. Quisque venenatis magna vitae vestibulum tincidunt. Proin porttitor nibh eget tortor commodo fermentum. Morbi blandit nunc mi. Nam nec arcu id velit laoreet venenatis. Aliquam mattis dictum urna, id hendrerit massa imperdiet eu. Proin ut venenatis eros. Proin egestas nunc nec libero euismod lobortis. Donec ultricies magna ac elit lacinia, id tincidunt nisl semper. Vestibulum volutpat, quam et lobortis porta, tellus eros dictum risus, in dapibus ipsum sem eu mi. Etiam vestibulum massa at leo convallis scelerisque. Vivamus et nibh scelerisque neque pharetra aliquam. Nunc molestie, nunc a dictum imperdiet, nisi odio lacinia nibh, eget tempor quam tortor eu neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin sollicitudin condimentum metus, eget porta odio venenatis in.</p>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Donec a elit ullamcorper, accumsan velit non, mollis urna. Praesent sed euismod justo. Curabitur sit amet diam ullamcorper, condimentum dolor vel, luctus lacus. Donec aliquam blandit nibh vel dapibus. Nullam id eros ac elit consectetur hendrerit. Aenean aliquam tortor risus. Ut egestas eget lorem eu posuere.</p>','Donec a elit ullamcorper, accumsan velit non, mollis urna. Praesent sed euismod justo. Curabitur sit amet diam ullamcorper, condimentum dolor vel, luctus lacus.',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
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
INSERT INTO `politicas` VALUES (1,'Política de Calidad','<p class=\"MsoListParagraph\" style=\"text-align: justify; line-height: 150%;\"><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Arial\',sans-serif;\">Tuplast se compromete a fabricar y comercializar tuber&iacute;as de PVC-U de calidad para proyectos de agua y saneamiento, comercio, industria y miner&iacute;a; mediante la planificaci&oacute;n, seguimiento y control de todas las etapas; orientados siempre a la mejora continua de nuestros procesos; del sistema de gesti&oacute;n de la calidad, cumpliendo los requisitos de los clientes, legales y normativos; logrando su satisfacci&oacute;n.&nbsp;</span></p>','politica-HzGLaB',1),(2,'Política de Seguridad Salud Ocupacional y medio ambiente','<p class=\"MsoNormal\" style=\"text-align: justify; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Tuplast tiene como prioridad la seguridad y salud de sus colaboradores, proveedores, clientes, terceros y la de sus subcontratistas. Nuestra filosof&iacute;a se basa en el cuidado del principal recurso que tenemos, nuestro capital humano. Por tal motivo nos comprometemos a:</span></p>\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">1.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Implementar y desarrollar el sistema de gesti&oacute;n de seguridad y salud ocupacional en todos sus procesos y ambiente de trabajo.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">2.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Cumplir con la normatividad y legislaci&oacute;n nacional vigente y aplicable, as&iacute; como los est&aacute;ndares de calidad a nuestra actividad econ&oacute;mica relacionada con la seguridad y salud ocupacional</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">3.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Promover y elevar la concientizaci&oacute;n por la seguridad y el medio ambiente realizando programas de capacitaci&oacute;n con el objetivo de elevar nuestra cultura de seguridad y ecol&oacute;gica.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">4.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Elaborar, aplicar, mantener est&aacute;ndares y procedimientos de trabajo seguro.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">5.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Establecer un sistema de controles y auditorias que permitan mejorar continuamente su sistema de gesti&oacute;n de seguridad y salud ocupacional.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">6.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Incentivar la participaci&oacute;n activa de los colaboradores en forma eficaz y segura a emergencias y/o accidentes relacionados a la seguridad y salud ocupacional.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p>&nbsp;</p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">7.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Difundir la presente pol&iacute;tica a todos sus colaboradores y&nbsp; mantenerla a disposici&oacute;n y vista de todos sus visitantes, siendo actualizada seg&uacute;n las necesidades de la empresa y las leyes vigentes.</span></p>','politica-dKFVVT',1),(3,'Política de Seguridad Integral','<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">En Tuplast cuidamos la integridad de nuestros colaboradores por lo que consideramos lo siguiente:</span></p>\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraph\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">&Oslash;<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">Todo colaborador de la empresa que vea amenazado su integridad f&iacute;sica o su vida ante un peligro inminente (sea en una actividad que constituya un riesgo importante o intolerable para su seguridad y salud); podr&aacute; tener la faculta de interrumpir sus actividades y si fuera necesario abandonar de forma inmediata el lugar o &aacute;rea donde se desarrollan sus labores, hasta que el riesgo se haya reducido o controlado.</span></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-left: 35.45pt; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">La presente pol&iacute;tica se ha establecido para dar cumplimiento con la Ley de Seguridad y Salud en el Trabajo Ley N&deg; 29783 Articulo 63 y su modificatoria de Ley N&deg; 30222 sobre la <strong>Interrupci&oacute;n de actividades en caso inminente de peligro,&nbsp;</strong></span></p>','politica-ITN9Xb',1);
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
  PRIMARY KEY (`id`,`producto_id`),
  KEY `fk_images_productos1_idx` (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_images`
--

LOCK TABLES `producto_images` WRITE;
/*!40000 ALTER TABLE `producto_images` DISABLE KEYS */;
INSERT INTO `producto_images` VALUES (7,1,'producto-iZLVTN',NULL),(60,11,'producto-ludlXP','Desague 2\"'),(61,11,'producto-McIEcg','Desague 4\"'),(62,11,'producto-yzAg7r','DESAGUE INKATUBO 3-4'),(63,11,'producto-VvFDox','DESAGUE INKATUBO 3-4'),(64,11,'producto-6qkZKy','INKATUBO 200'),(65,11,'producto-uzhMhJ','INKATUBO 200'),(66,12,'producto-zTiqWk','LUZ SEL 5-8'),(67,12,'producto-KxsDot','LUZ SEL 5-8'),(68,12,'producto-oqMVJN','LUZ SEL GRIS 3-4'),(69,12,'producto-1OEncc','LUZ SEL GRIS 3-4'),(70,12,'producto-1OtwDL','LUZ SEL GRIS 3-4'),(71,15,'producto-6lA9Q1','ALCANTARILLADO 5-25 200MM'),(72,15,'producto-7WjLIw','ALCANTARILLADO 5-25 200MM'),(73,15,'producto-hZUdEz','ALCANTARILLADO 110MM'),(74,15,'producto-qFewZ6','ALCANTARILLADO 355MM'),(75,4,'producto-X4Vj52','AGUA 1'),(76,4,'producto-zbcubx','AGUA 1'),(77,4,'producto-3ORhcm','AGUA 1-2'),(78,4,'producto-ShroA9','AGUA 1-2'),(79,4,'producto-TDApfc','AGUA 3-4'),(80,4,'producto-BE0DSZ','AGUA 3-4'),(81,4,'producto-Mulmv2','AGUA 3-4'),(82,4,'producto-kery7T','AGUA 4'),(83,4,'producto-AjpT1W','AGUA 4'),(84,4,'producto-m29ZIz','AGUA 110 MM'),(85,4,'producto-f7kF3w','AGUA 110 MM'),(86,4,'producto-rDOIkU','AGUA 160 MM'),(87,4,'producto-vPanO1','AGUA 160 MM'),(88,10,'producto-CT0P9x','ROSCA 1'),(89,10,'producto-ou709o','ROSCA 1'),(90,10,'producto-TfyDm1','ROSCA 1 1-2'),(91,10,'producto-Nb4x7v','ROSCA 1-2'),(92,10,'producto-eMMfX3','ROSCA 1-2'),(93,10,'producto-MCBwqM','ROSCA 2');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (2,'Área Predial',NULL,'<p>&Aacute;rea Predial</p>','A','Área Predial',NULL,NULL,1,18,1),(3,'Área Infraestructura',NULL,'<p>&Aacute;rea Infraestructura</p>','A','Área Infraestructura',NULL,NULL,19,28,1),(4,'Línea de Agua',NULL,'<p>L&iacute;nea de Agua</p>','L','Línea de Agua',NULL,'2',2,7,1),(5,'Línea Sanitaria',NULL,'<p>L&iacute;nea Sanitaria</p>','L','Línea Sanitaria',NULL,'2',8,11,1),(6,'Línea Eléctrica',NULL,'<p>L&iacute;nea El&eacute;ctrica</p>','L','Línea Eléctrica',NULL,'2',12,17,1),(7,'Línea Agua Potable',NULL,'<p>L&iacute;nea Agua Potable</p>','L','Línea Agua Potable',NULL,'3',20,23,1),(8,'Línea Alcantarillado',NULL,'<p>L&iacute;nea Alcantarillado</p>','L','Línea Alcantarillado',NULL,'3',24,27,1),(9,'Tubos Simple Presión','NTP 399.002 : 2015','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS SIMPLE PRESI&Oacute;N (PEGADO)</span></p>','P','TUBOS SIMPLE PRESIÓN (PEGADO)','doc-INkJtM','4',3,4,1),(10,'Tubos Presión con unión tipo rosca','NTP 399.166 : 2013','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PRESION CON UNION TIPO ROSCA (ROSCADO)</span></p>','P','TUBOS PRESION CON UNION TIPO ROSCA (ROSCADO)','doc-GHNxhZ','4',5,6,1),(11,'Tubos para Desague','NTP 399.003 : 2015','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA DESAGUE</span></p>','P','TUBOS PARA DESAGUE','doc-izQ0Li','5',9,10,1),(12,'Tubos para luz SEL','NTP 399.006 : 2015','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA LUZ SEL</span></p>','P','TUBOS PARA LUZ SEL','doc-0T36Te','6',13,14,1),(13,'Tubos para luz SAP','NTP 399.006 :2015','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA LUZ SAP</span></p>','P','TUBOS PARA LUZ SAP','doc-9T6U9w','6',15,16,1),(14,'Tubos para fluidos a presión','NTP - ISO 1452 : 2011','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA FLUIDOS A PRESI&Oacute;N (UNION FLEXIBLE)</span></p>','P','TUBOS PARA FLUIDOS A PRESIÓN (UNION FLEXIBLE)','doc-oaDVkp','7',21,22,1),(15,'Tubos para Alcantarillado','NTP - ISO 4435 : 2014','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA ALCANTARILLADO</span></p>','P','TUBOS PARA ALCANTARILLADO','doc-tNgXeF','8',25,26,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador',1);
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
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_slides_estados_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'Slide 1','slide-5MKiKV','Slide 1',1),(2,NULL,'slide-RyBtdT',NULL,1),(3,NULL,'slide-wfZFRr',NULL,1),(4,NULL,'slide-hiXSIk',NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','$2y$10$d9jEoXrUzl3xw6mJQEbZcOEMjnSXH17P6un4atIiHQzz1.t0fhEhG','admin@tuplast.com',1);
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

-- Dump completed on 2017-06-03 18:47:15
