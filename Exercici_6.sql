-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: Exercici_6
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

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
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `idClient` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `adreça` text NOT NULL,
  `tel` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `data reg.` date NOT NULL,
  `recomanat per` varchar(45) DEFAULT NULL,
  `idUlleres` int(11) NOT NULL,
  PRIMARY KEY (`idClient`),
  KEY `fk_Client_Ulleres1_idx` (`idUlleres`),
  CONSTRAINT `fk_Client_Ulleres1` FOREIGN KEY (`idUlleres`) REFERENCES `Ulleres` (`idUlleres`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (300,'Anna Blanco','salses 26 bj 1',934567382,'anna@miemail.com','2013-07-10','Julia Ferrer',201),(301,'Jonatan Renom','salses 26 bj 1',767654363,'jonatan@miemail.com','2018-07-10',NULL,202),(302,'Julia Ferrer','carrer del pi 1',786567489,'julia@miemail.com','2020-09-07','Maria',203),(303,'Maria Jimenez','passeig universal 45 atic 2',649743728,'maria@miemail.com','2008-05-05',NULL,204),(304,'Josep Gomez','avinguda icaria 21 3er 4art',789765467,'josep@miemail.com','2010-09-03','Maria',205);
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleat`
--

DROP TABLE IF EXISTS `Empleat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empleat` (
  `idEmpleat` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `cognom` varchar(45) NOT NULL,
  PRIMARY KEY (`idEmpleat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleat`
--

LOCK TABLES `Empleat` WRITE;
/*!40000 ALTER TABLE `Empleat` DISABLE KEYS */;
INSERT INTO `Empleat` VALUES (400,'Barbara','Domenech'),(401,'Genis','Ubeda'),(402,'Lluís','Giralt');
/*!40000 ALTER TABLE `Empleat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveidor`
--

DROP TABLE IF EXISTS `Proveidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Proveidor` (
  `idProveidor` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `carrer` varchar(45) NOT NULL,
  `num` int(11) NOT NULL,
  `pis` int(11) DEFAULT NULL,
  `porta` varchar(45) DEFAULT NULL,
  `ciutat` varchar(45) NOT NULL,
  `codi postal` int(11) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `telefon` int(11) NOT NULL,
  `fax` int(11) DEFAULT NULL,
  `nif` varchar(45) NOT NULL,
  PRIMARY KEY (`idProveidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveidor`
--

LOCK TABLES `Proveidor` WRITE;
/*!40000 ALTER TABLE `Proveidor` DISABLE KEYS */;
INSERT INTO `Proveidor` VALUES (100,'Prov1','mallorca ',201,3,'4','barcelona',8036,'spain',657898476,NULL,'47722300Z'),(101,'Prov2','salses',26,1,'1','barcelona',8031,'spain',878787654,NULL,'8776655x'),(102,'Prov3','notre dame de nazareth',26,2,NULL,'paris',75003,'france',878987654,NULL,'98775hg63'),(103,'Prov4','regent street',34,4,NULL,'london',87654,'Uk',888987654,NULL,'8778877y');
/*!40000 ALTER TABLE `Proveidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ulleres`
--

DROP TABLE IF EXISTS `Ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ulleres` (
  `idUlleres` int(11) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `grad. vidre dret` int(11) NOT NULL,
  `grad.vidre esq` int(11) NOT NULL,
  `muntura` varchar(45) NOT NULL,
  `col. muntura` varchar(45) NOT NULL,
  `col. vidre dret` varchar(45) NOT NULL,
  `col. vidre esq` varchar(45) NOT NULL,
  `preu` int(11) NOT NULL,
  `idProveidor` int(11) NOT NULL,
  PRIMARY KEY (`idUlleres`),
  KEY `fk_Ulleres_Proveidor_idx` (`idProveidor`),
  CONSTRAINT `fk_Ulleres_Proveidor` FOREIGN KEY (`idProveidor`) REFERENCES `Proveidor` (`idProveidor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ulleres`
--

LOCK TABLES `Ulleres` WRITE;
/*!40000 ALTER TABLE `Ulleres` DISABLE KEYS */;
INSERT INTO `Ulleres` VALUES (200,'marca1',2,2,'metalica','plata','negre','negre',50,101),(201,'marca2',1,0,'pasta','vermell','transp','transp',71,102),(202,'marca3',4,6,'flotant','gris','transp','transp',35,101),(203,'marca2',3,3,'pasta','groc','blau','blau',45,102),(204,'marca1',2,2,'metalica','negre','blau','blau',51,101),(205,'marca4',3,3,'pasta','taronja','transp','transp',34,100);
/*!40000 ALTER TABLE `Ulleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Venta`
--

DROP TABLE IF EXISTS `Venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Venta` (
  `idVenta` int(11) NOT NULL,
  `idEmpleat` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `fk_Venta_Empleat1_idx` (`idEmpleat`),
  KEY `fk_Venta_Client1_idx` (`idClient`),
  CONSTRAINT `fk_Venta_Client1` FOREIGN KEY (`idClient`) REFERENCES `Client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venta_Empleat1` FOREIGN KEY (`idEmpleat`) REFERENCES `Empleat` (`idEmpleat`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venta`
--

LOCK TABLES `Venta` WRITE;
/*!40000 ALTER TABLE `Venta` DISABLE KEYS */;
INSERT INTO `Venta` VALUES (500,401,301),(501,402,304),(502,401,300),(503,400,302),(504,402,303);
/*!40000 ALTER TABLE `Venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-26 17:48:50
