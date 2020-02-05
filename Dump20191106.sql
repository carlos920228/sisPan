-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_pan
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.6-MariaDB

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
-- Table structure for table `estructuras`
--

DROP TABLE IF EXISTS `estructuras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estructuras` (
  `idestructuras` int(11) NOT NULL AUTO_INCREMENT,
  `estructura` varchar(45) DEFAULT NULL,
  `titular` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT 1,
  `presupuesto` varchar(45) DEFAULT NULL,
  `mensual` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idestructuras`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estructuras`
--

LOCK TABLES `estructuras` WRITE;
/*!40000 ALTER TABLE `estructuras` DISABLE KEYS */;
INSERT INTO `estructuras` VALUES (1,'ACAJETE',' ZOREN JOAQUIN HERNANDEZ RODRIGUEZ ',1,'78854.12','6571.18'),(2,'ACATLAN',' FRANCISCO RENDON GRAJALES',1,'61069.46','5089.12');
/*!40000 ALTER TABLE `estructuras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partidas` (
  `idpartidas` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `solicitudes_folio` int(11) NOT NULL,
  PRIMARY KEY (`idpartidas`),
  KEY `fk_partidas_solicitudes_idx` (`solicitudes_folio`),
  CONSTRAINT `fk_partidas_solicitudes` FOREIGN KEY (`solicitudes_folio`) REFERENCES `solicitudes` (`folio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) DEFAULT NULL,
  `nombre_contacto` varchar(45) DEFAULT NULL,
  `RFC` varchar(20) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `clabe` varchar(18) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `id_ine` varchar(45) DEFAULT NULL,
  `activo` int(11) DEFAULT 1,
  PRIMARY KEY (`idproveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'CARLOS HUMBERTO ROMERO CALLEJAS','Carlos Humberto Romero Callejas','ROCC920228','Santander','009988776635255','REFORMA S/N, No. 12','(228) 838-7334','(228) 838-7334','Carlos920228@gmail.com','EL LIMON','Veracruz','12345',1),(2,'Pepe Pecas SA','PEPE ','ROCA890312','Banamex','1234578977655','REFORMA S/N, No. 12','(228) 838-7334','(228) 838-7334','Carlos920228@gmail.com','EL LIMON','Veracruz','',1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes`
--

DROP TABLE IF EXISTS `solicitudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitudes` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `denominacion_comision` varchar(450) DEFAULT NULL,
  `estado_origen` varchar(45) DEFAULT NULL,
  `ciudad_origen` varchar(45) DEFAULT NULL,
  `estado_destino` varchar(45) DEFAULT NULL,
  `ciudad_destino` varchar(45) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `motivo` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT 'pendiente',
  `total` varchar(45) DEFAULT NULL,
  `pago_prov` int(11) DEFAULT NULL,
  `estatus` int(1) DEFAULT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes`
--

LOCK TABLES `solicitudes` WRITE;
/*!40000 ALTER TABLE `solicitudes` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `comite_municipal` varchar(45) DEFAULT NULL,
  `delegacion` varchar(45) DEFAULT NULL,
  `comision` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT 1,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Carlos Humberto','Romero Callejas','2288387334','carlos920228@gmail.com','sistemas','xalapa','xalapa','1','2288387334','0',1,1),(4,'Juan','Perez','8141516','perez@gmail.com','Sistemas','Xalapa','Xalapa','Xalapa','2288387334','perez',0,1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-06 21:39:57
