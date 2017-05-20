-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: tuplast
-- ------------------------------------------------------
-- Server version	5.7.14

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
  `url` varchar(100) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  UNIQUE KEY `ruc_UNIQUE` (`ruc`),
  KEY `fk_clientes_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'DWP GRUPO S.R.L.','20477241809','img-AyS3wz',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'nuestraHistoria','<p>Hace 6 a&ntilde;os, El Sr. Guillermo Vel&aacute;squez Castro en su af&aacute;n de realizar Negocios emprendedores y dar respuesta a la necesidad de mejorar el saneamiento y agua de la poblaci&oacute;n crea en conjunto con su socio la planta de fabrica...'),(2,'vision','<p>Liderar el mercado nacional en la fabricaci&oacute;n, distribuci&oacute;n y comercializaci&oacute;n de tuber&iacute;as y conexiones de PVC, reconocidos por nuestros productos de calidad, siendo percibidos como una empresa que busca constantemente la m...'),(3,'mision','<p>Somos una empresa fabricante de tuber&iacute;as de PVC que busca la satisfacci&oacute;n de sus clientes entregando productos de calidad y un servicio ajustado a sus necesidades que realiza sus operaciones siendo responsables con nuestros grupos de int...'),(4,'valor1','Trabajo en equipo'),(5,'valor2','Unidad'),(6,'valor3','Profesionalismo'),(7,'valor4','Lealtad'),(8,'valor5','Acción'),(9,'valor6','Servicio'),(10,'valor7','Tenacidad'),(11,'resumen_tuplast','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a finibus sapien, vel tristique nulla. Cras a velit tincidunt, euismod dolor non, posuere nulla. Nam blandit id massa ac maximus. Nam vel justo augue. Proin pharetra nunc lacus, laoreet posuere nisi dapibus in. Aliquam gravida nulla ante, eu aliquam tellus efficitur vel. In ac mauris lacinia, pellentesque odio sed, sagittis turpis. Integer luctus fermentum urna, eget eleifend mauris malesuada tristique. Fusce id pretium sapien. Pellentesque maximus nulla ac dui lacinia ornare.'),(12,'mensaje_clientes_1','Nuestros clientes confian en la calidad de nuestros productos'),(13,'mensaje_clientes_2','Son más de 40 empresas con las que trabajamos conjuntamente'),(14,'facebook_link','facebook-link'),(15,'twitter_link','twitter-link'),(16,'telf_oficina','044-659230'),(17,'email_1','ventas@tuberiasplasticas.com'),(18,'email_2','info@tuberiasplasticas.com'),(19,'telf_area_tecnica','982579831');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra_images`
--

LOCK TABLES `obra_images` WRITE;
/*!40000 ALTER TABLE `obra_images` DISABLE KEYS */;
INSERT INTO `obra_images` VALUES (1,1,'img-EShXC9'),(2,1,'img-y0lHmD'),(3,2,'img-rzUrWM'),(4,3,'img-ciXnc7');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
INSERT INTO `politicas` VALUES (1,'Política de Calidad','<p class=\"MsoListParagraph\" style=\"text-align: justify; line-height: 150%;\"><span style=\"font-size: 12.0pt; line-height: 150%; font-family: \'Arial\',sans-serif;\">Tuplast se compromete a fabricar y comercializar tuber&iacute;as de PVC-U de calidad para proyectos de agua y saneamiento, comercio, industria y miner&iacute;a; mediante la planificaci&oacute;n, seguimiento y control de todas las etapas; orientados siempre a la mejora continua de nuestros procesos; del sistema de gesti&oacute;n de la calidad, cumpliendo los requisitos de los clientes, legales y normativos; logrando su satisfacci&oacute;n.&nbsp;</span></p>',NULL,1),(2,'Política de Seguridad Salud Ocupacional y medio ambiente','<p class=\"MsoNormal\" style=\"text-align: justify; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Tuplast tiene como prioridad la seguridad y salud de sus colaboradores, proveedores, clientes, terceros y la de sus subcontratistas. Nuestra filosof&iacute;a se basa en el cuidado del principal recurso que tenemos, nuestro capital humano. Por tal motivo nos comprometemos a:</span></p>\n<p class=\"MsoListParagraphCxSpFirst\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">1.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Implementar y desarrollar el sistema de gesti&oacute;n de seguridad y salud ocupacional en todos sus procesos y ambiente de trabajo.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">2.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Cumplir con la normatividad y legislaci&oacute;n nacional vigente y aplicable, as&iacute; como los est&aacute;ndares de calidad a nuestra actividad econ&oacute;mica relacionada con la seguridad y salud ocupacional</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">3.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Promover y elevar la concientizaci&oacute;n por la seguridad y el medio ambiente realizando programas de capacitaci&oacute;n con el objetivo de elevar nuestra cultura de seguridad y ecol&oacute;gica.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">4.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Elaborar, aplicar, mantener est&aacute;ndares y procedimientos de trabajo seguro.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">5.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Establecer un sistema de controles y auditorias que permitan mejorar continuamente su sistema de gesti&oacute;n de seguridad y salud ocupacional.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">6.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Incentivar la participaci&oacute;n activa de los colaboradores en forma eficaz y segura a emergencias y/o accidentes relacionados a la seguridad y salud ocupacional.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"mso-add-space: auto; text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p>&nbsp;</p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 115%; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">7.<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 115%; font-family: \'Arial\',sans-serif;\">Difundir la presente pol&iacute;tica a todos sus colaboradores y&nbsp; mantenerla a disposici&oacute;n y vista de todos sus visitantes, siendo actualizada seg&uacute;n las necesidades de la empresa y las leyes vigentes.</span></p>',NULL,1),(3,'Política de Seguridad Integral','<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">En Tuplast cuidamos la integridad de nuestros colaboradores por lo que consideramos lo siguiente:</span></p>\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: normal; margin: 6.0pt 0cm 6.0pt 35.45pt;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraph\" style=\"mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: normal; mso-list: l0 level1 lfo1; margin: 6.0pt 0cm 6.0pt 36.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings;\">&Oslash;<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp; </span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">Todo colaborador de la empresa que vea amenazado su integridad f&iacute;sica o su vida ante un peligro inminente (sea en una actividad que constituya un riesgo importante o intolerable para su seguridad y salud); podr&aacute; tener la faculta de interrumpir sus actividades y si fuera necesario abandonar de forma inmediata el lugar o &aacute;rea donde se desarrollan sus labores, hasta que el riesgo se haya reducido o controlado.</span></p>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-left: 35.45pt; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">La presente pol&iacute;tica se ha establecido para dar cumplimiento con la Ley de Seguridad y Salud en el Trabajo Ley N&deg; 29783 Articulo 63 y su modificatoria de Ley N&deg; 30222 sobre la <strong>Interrupci&oacute;n de actividades en caso inminente de peligro,&nbsp;</strong></span></p>',NULL,1);
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
  PRIMARY KEY (`id`,`producto_id`),
  KEY `fk_images_productos1_idx` (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_images`
--

LOCK TABLES `producto_images` WRITE;
/*!40000 ALTER TABLE `producto_images` DISABLE KEYS */;
INSERT INTO `producto_images` VALUES (1,2,'img-9Di3H5'),(2,2,'img-yJpPdl'),(3,2,'img-jXRnNK'),(4,3,'img-z3Wic8'),(5,4,'img-IdJZxt'),(6,5,'img-tIe8v9');
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
  `body` longtext NOT NULL,
  `type` char(1) NOT NULL,
  `resumen` varchar(300) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  KEY `fk_productos_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Características','<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">a.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Resistentes a la corrosi&oacute;n</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Los tubos TUPLAST son resistentes a los &aacute;cidos, &aacute;lcalis, productos qu&iacute;micos industriales o suelos agresivos.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">b.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">M&iacute;nimas perdidas de presi&oacute;n</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Los tubos TUPLAST al presentar superficies lisas disminuyen considerablemente las p&eacute;rdidas de presi&oacute;n por fricci&oacute;n.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">c.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Larga Vida &Uacute;til</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">La vida &uacute;til del tubo TUPLAST seg&uacute;n dise&ntilde;o por normativa y respetando recomendaciones t&eacute;cnicas de instalaci&oacute;n, es de aproximadamente 50 a&ntilde;os.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">d.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Hermeticidad</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Los tubos TUPLAST aseguran la hermeticidad de las instalaciones previniendo fugas.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">e.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Autoextingible</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Las tuber&iacute;as Tuplast no facilitan la combusti&oacute;n.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">f.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">F&aacute;cil instalaci&oacute;n</span></strong></p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><span style=\"font-family: Arial, sans-serif; font-size: 12pt;\">Mediante el uso de cemento disolvente y/o&nbsp; junta el&aacute;stica; durante la etapa de instalaci&oacute;n; los tubos TUPLAST prescinden de herramientas y equipos para su implementaci&oacute;n.</span></p>','P','',1),(2,'Línea Eléctrica','<p>Contamos con una amplia gama de productos:</p>\n<ul>\n<li>Nuestra l&iacute;nea el&eacute;ctrica desde 5/8&rdquo; hasta 2&rdquo; Clase liviana y &frac12;&rdquo; hasta 4&rdquo; Clase Pesada fabricados bajo cumplimiento de la norma NTP-399.006 : 2015</li>\n</ul>','L','Nuestra línea eléctrica desde 5/8” hasta 2” Clase liviana y ½” hasta 4” Clase Pesada fabricados bajo cumplimiento de la norma NTP-399.006 : 2015',1),(3,'Línea Agua y Desagüe Doméstico','<p>Contamos con la siguiente gama de productos:</p>\n<ul>\n<li>L&iacute;nea de Agua Domiciliaria: Tuber&iacute;a de fluidos a presi&oacute;n &ndash; simple presi&oacute;n, contamos con medidas desde &nbsp;&frac12;&rdquo; a 6&rdquo; en las clases 5, 7.5 y 10, y con rosca, los cuales son fabricados en cumplimiento con la norma NTP 399.002 : 2015.</li>\n<li>L&iacute;nea de Desag&uuml;e Domiciliaria: en cumplimiento con la NTP 399.003 : 2015, contamos con tuber&iacute;a de clase liviana desde 2&rdquo; hasta 6&rdquo;, y en clase pesada con tuber&iacute;a de 2&rdquo; y 4&rdquo;.</li>\n</ul>','L','Línea de Agua Domiciliaria: Tubería de fluidos a presión – simple presió. Línea de Desagüe Domiciliaria: en cumplimiento con la NTP 399.003',1),(4,'Línea Agua y Alcantarillado Público','<p>Contamos con una amplia gama de productos:</p>\n<ul>\n<li>En nuestra L&iacute;nea de Agua P&uacute;blica seg&uacute;n la NTP ISO 1452:2011 contamos en las clases 5, 7.5 y 10 desde 63mm hasta 400mm.</li>\n<li>En nuestra L&iacute;nea de Alcantarillado P&uacute;blico seg&uacute;n la NTP ISO 4435:2005 contamos en tuber&iacute;a desde 110mm hasta 400mm en las series 20 y 25.</li>\n</ul>\n<p>Toda nuestra tuber&iacute;a se fabrica con resina para PVC-U con una adecuada tecnolog&iacute;a productiva, y contando con un laboratorio de calidad implementado; lo que nos permite garantizar &oacute;ptima calidad del producto.</p>\n<p>Para mayor informaci&oacute;n descarga nuestro cat&aacute;logo o comun&iacute;cate con nuestra &Aacute;rea T&eacute;cnica 9000000000.</p>','L','Toda nuestra tubería se fabrica con resina para PVC-U con una adecuada tecnología productiva, y contando con un laboratorio de calidad implementado; lo que nos permite garantizar óptima calidad del producto.',1),(5,'Cemento Disolvente para PVC','<p class=\"MsoListParagraph\" style=\"text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Tuplast es distribuidor autorizado de OATEY, marca de cementos disolventes reconocida en el mercado.</span></p>','L','Tuplast es distribuidor autorizado de OATEY, marca de cementos disolventes reconocida en el mercado.',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'Slide 1','img-YIARgG','Slide 1',1),(2,NULL,'img-NaBazb',NULL,1);
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
  `email` varchar(80) NOT NULL,
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
INSERT INTO `tipo_sugerencias` VALUES (1,'Ventas','ventas@tuplast.com',1);
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

-- Dump completed on 2017-05-05  1:49:25
