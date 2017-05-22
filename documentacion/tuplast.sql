-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
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
  `latitud` varchar(100) DEFAULT NULL,
  `longitud` varchar(100) DEFAULT NULL,
  `ciudad` varchar(60) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`estado_id`),
  UNIQUE KEY `ruc_UNIQUE` (`ruc`),
  KEY `fk_clientes_estados1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'DWP GRUPO S.R.L.','20477241809','img-AyS3wz','-8.1032165553156','-79.00602221489','Trujillo',1),(2,'CORPORACION MEGA CONSTRUCCIONES S.A.C.','20481503575','cliente-MSgXuc','-8.1132406754886','-79.026179015636','Trujillo',1),(3,'CONSTRUCTORA SANCHEZ CERRO EMPRESA INDIVIDUAL DE R','20526203501','cliente-zER6oW','-4.903689564484','-80.68642616272','Sullana',1),(4,'RC CONSTRUCTORES & CONSULTORES S.A.C.','20539769309','cliente-MaSmQ1','-8.1054497650411','-79.020294249058','Trujillo',1),(5,'INVERSIONES CORAL S.A.C.','20531614993','cliente-kKwdgL','-12.057016169241','-77.142407298088','Callao',1),(6,'CORPORACION CONSULTING EDSUR S.A.C.','20601114870','cliente-DmiulA','-8.1075568308656','-79.024132490158','Trujillo',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'nuestraHistoria','<p>Hace 6 a&ntilde;os, El Sr. Guillermo Vel&aacute;squez Castro en su af&aacute;n de realizar Negocios emprendedores y dar respuesta a la necesidad de mejorar el saneamiento y agua de la poblaci&oacute;n crea en conjunto con su socio la planta de fabrica...'),(2,'vision','<p>Liderar el mercado nacional en la fabricaci&oacute;n, distribuci&oacute;n y comercializaci&oacute;n de tuber&iacute;as y conexiones de PVC, reconocidos por nuestros productos de calidad, siendo percibidos como una empresa que busca constantemente la m...'),(3,'mision','<p>Somos una empresa fabricante de tuber&iacute;as de PVC que busca la satisfacci&oacute;n de sus clientes entregando productos de calidad y un servicio ajustado a sus necesidades que realiza sus operaciones siendo responsables con nuestros grupos de int...'),(4,'valor1','Trabajo en equipo'),(5,'valor2','Unidad'),(6,'valor3','Profesionalismo'),(7,'valor4','Lealtad'),(8,'valor5','Acción'),(9,'valor6','Servicio'),(10,'valor7','Tenacidad'),(11,'resumen_tuplast','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a finibus sapien, vel tristique nulla. Cras a velit tincidunt, euismod dolor non, posuere nulla. Nam blandit id massa ac maximus. Nam vel justo augue. Proin pharetra nunc lacus, laoreet posuere nisi dapibus in. Aliquam gravida nulla ante, eu aliquam tellus efficitur vel. In ac mauris lacinia, pellentesque odio sed, sagittis turpis. Integer luctus fermentum urna, eget eleifend mauris malesuada tristique. Fusce id pretium sapien. Pellentesque maximus nulla ac dui lacinia ornare.'),(12,'mensaje_clientes_1','Nuestros clientes confian en la calidad de nuestros productos'),(13,'mensaje_clientes_2','Son más de 40 empresas con las que trabajamos conjuntamente'),(14,'facebook_link','facebook-link'),(15,'twitter_link','twitter-link'),(16,'telf_oficina','044-659230'),(17,'email_1','ventas@tuberiasplasticas.com'),(18,'email_2','info@tuberiasplasticas.com'),(19,'telf_area_tecnica','982579831'),(20,'brochure','brochure'),(21,'telf_area_ventas','991904900');
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
  PRIMARY KEY (`id`,`producto_id`),
  KEY `fk_images_productos1_idx` (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_images`
--

LOCK TABLES `producto_images` WRITE;
/*!40000 ALTER TABLE `producto_images` DISABLE KEYS */;
INSERT INTO `producto_images` VALUES (7,1,'producto-iZLVTN'),(8,2,'producto-85dqBA'),(9,2,'producto-VXnuJb'),(10,3,'producto-Y6k9Yp'),(11,3,'producto-hf6LrZ'),(12,4,'producto-tA0J2U'),(13,4,'producto-A0Qk6h'),(14,4,'producto-QIYROD'),(15,5,'producto-ioyyH5'),(16,5,'producto-z0a750'),(17,6,'producto-zLPutj'),(18,6,'producto-3kNiLt'),(19,6,'producto-n09xXJ'),(20,6,'producto-WRn1hE'),(21,6,'producto-3jMIZo'),(22,7,'producto-xdMW3V'),(23,7,'producto-h0xH8t'),(24,8,'producto-Y28UAf'),(25,8,'producto-fxadlj'),(26,8,'producto-MYQ2d9'),(27,8,'producto-rAtF2u'),(28,8,'producto-rpsSgX'),(29,9,'producto-ie2wcw'),(30,9,'producto-6RiP3n'),(31,10,'producto-RQ4SxU'),(32,10,'producto-YuKDco'),(33,11,'producto-f702gZ'),(34,11,'producto-gGbfWY'),(35,11,'producto-sHwtRz'),(36,11,'producto-fBO1Hr'),(37,12,'producto-qVhDl8'),(38,12,'producto-JrmRzf'),(39,13,'producto-UzABw8'),(40,13,'producto-Bgw5Sl'),(41,14,'producto-wGDEuw'),(42,14,'producto-r8Sgv2'),(43,15,'producto-XhSXmt'),(44,15,'producto-Dhda0R');
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
INSERT INTO `productos` VALUES (1,'Características','<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">a.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Resistentes a la corrosi&oacute;n</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Los tubos TUPLAST son resistentes a los &aacute;cidos, &aacute;lcalis, productos qu&iacute;micos industriales o suelos agresivos.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">b.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">M&iacute;nimas perdidas de presi&oacute;n</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Los tubos TUPLAST al presentar superficies lisas disminuyen considerablemente las p&eacute;rdidas de presi&oacute;n por fricci&oacute;n.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">c.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Larga Vida &Uacute;til</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">La vida &uacute;til del tubo TUPLAST seg&uacute;n dise&ntilde;o por normativa y respetando recomendaciones t&eacute;cnicas de instalaci&oacute;n, es de aproximadamente 50 a&ntilde;os.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">d.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Hermeticidad</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Los tubos TUPLAST aseguran la hermeticidad de las instalaciones previniendo fugas.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">e.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Autoextingible</span></strong></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">Las tuber&iacute;as Tuplast no facilitan la combusti&oacute;n.</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><!-- [if !supportLists]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Arial;\">f.<span style=\"font-variant-numeric: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Arial\',sans-serif;\">F&aacute;cil instalaci&oacute;n</span></strong></p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 72.0pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; mso-list: l0 level2 lfo1;\"><span style=\"font-family: Arial, sans-serif; font-size: 12pt;\">Mediante el uso de cemento disolvente y/o&nbsp; junta el&aacute;stica; durante la etapa de instalaci&oacute;n; los tubos TUPLAST prescinden de herramientas y equipos para su implementaci&oacute;n.</span></p>','P','Características','doc-sUs1tr',NULL,1,2,1),(2,'Área Predial','<p>&Aacute;rea Predial</p>','P','Área Predial',NULL,NULL,3,20,1),(3,'Área Infraestructura','<p>&Aacute;rea Infraestructura</p>','P','Área Infraestructura',NULL,NULL,21,30,1),(4,'Línea de Agua','<p>L&iacute;nea de Agua</p>','L','Línea de Agua',NULL,'2',4,9,1),(5,'Línea Sanitaria','<p>L&iacute;nea Sanitaria</p>','L','Línea Sanitaria',NULL,'2',10,13,1),(6,'Línea Eléctrica','<p>L&iacute;nea El&eacute;ctrica</p>','L','Línea Eléctrica',NULL,'2',14,19,1),(7,'Línea Agua Potable','<p>L&iacute;nea Agua Potable</p>','L','Línea Agua Potable',NULL,'3',22,25,1),(8,'Línea Alcantarillado','<p>L&iacute;nea Alcantarillado</p>','L','Línea Alcantarillado',NULL,'3',26,29,1),(9,'Tubos Simple Presión','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS SIMPLE PRESI&Oacute;N (PEGADO)</span></p>','L','TUBOS SIMPLE PRESIÓN (PEGADO)','doc-INkJtM','4',5,6,1),(10,'Tubos Presión con unión tipo rosca','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PRESION CON UNION TIPO ROSCA (ROSCADO)</span></p>','L','TUBOS PRESION CON UNION TIPO ROSCA (ROSCADO)','doc-GHNxhZ','4',7,8,1),(11,'Tubos para desague','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA DESAGUE</span></p>','L','TUBOS PARA DESAGUE','doc-izQ0Li','5',11,12,1),(12,'Tubos para luz SEL','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA LUZ SEL</span></p>','L','TUBOS PARA LUZ SEL','doc-0T36Te','6',15,16,1),(13,'Tubos para luz SAP','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA LUZ SAP</span></p>','L','TUBOS PARA LUZ SAP','doc-9T6U9w','6',17,18,1),(14,'Tubos para fluidos a presión','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA FLUIDOS A PRESI&Oacute;N (UNION FLEXIBLE)</span></p>','L','TUBOS PARA FLUIDOS A PRESIÓN (UNION FLEXIBLE)','doc-oaDVkp','7',23,24,1),(15,'Tubos para Alcantarillado','<p><span style=\"color: #212121; font-family: arial, sans-serif, serif, EmojiFont; font-size: 12.8px;\">TUBOS PARA ALCANTARILLADO</span></p>','L','TUBOS PARA ALCANTARILLADO','doc-tNgXeF','8',27,28,1);
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

-- Dump completed on 2017-05-22 16:27:22
