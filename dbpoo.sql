-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: dbpoo
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `Batiment`
--

DROP TABLE IF EXISTS `Batiment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Batiment` (
  `id_batiments` int(11) NOT NULL AUTO_INCREMENT,
  `nom_batiment` varchar(11) NOT NULL,
  PRIMARY KEY (`id_batiments`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Batiment`
--

LOCK TABLES `Batiment` WRITE;
/*!40000 ALTER TABLE `Batiment` DISABLE KEYS */;
INSERT INTO `Batiment` VALUES (1,'PAVILLON A'),(2,'PAVILLON S'),(3,'PAVILLON R'),(4,'PAVILLON F');
/*!40000 ALTER TABLE `Batiment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Boursiers`
--

DROP TABLE IF EXISTS `Boursiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Boursiers` (
  `matricule` varchar(255) NOT NULL,
  `type_bourse` varchar(255) NOT NULL,
  KEY `type_bourse` (`type_bourse`),
  KEY `matricule` (`matricule`),
  CONSTRAINT `Boursiers_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `Etudiants` (`matricule`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Boursiers_ibfk_2` FOREIGN KEY (`type_bourse`) REFERENCES `TypeBourse` (`type_bourse`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Boursiers`
--

LOCK TABLES `Boursiers` WRITE;
/*!40000 ALTER TABLE `Boursiers` DISABLE KEYS */;
INSERT INTO `Boursiers` VALUES ('5SAG2019','PENSION COMPLÈTE'),('6SAG2019','PENSION COMPLÈTE'),('7SAG2019','PENSION COMPLÈTE'),('8SAG2019','PENSION COMPLÈTE'),('9SAG2019','PENSION COMPLÈTE'),('10SAG2019','PENSION COMPLÈTE'),('11SAG2019','PENSION COMPLÈTE'),('12SAG2019','DEMI-PENSION'),('13SAG2019','DEMI-PENSION'),('14SAG2019','DEMI-PENSION'),('15SAG2019','DEMI-PENSION'),('16SAG2019','PENSION COMPLÈTE'),('17SAG2019','PENSION COMPLÈTE');
/*!40000 ALTER TABLE `Boursiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Etudiants`
--

DROP TABLE IF EXISTS `Etudiants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Etudiants` (
  `matricule` varchar(255) NOT NULL,
  `nom_etu` varchar(50) DEFAULT NULL,
  `prenom_etu` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `date_naiss_etu` date DEFAULT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Etudiants`
--

LOCK TABLES `Etudiants` WRITE;
/*!40000 ALTER TABLE `Etudiants` DISABLE KEYS */;
INSERT INTO `Etudiants` VALUES ('10SAG2019','sdfgh','rtyu','rtry@hotmail.com','95656','2019-06-15'),('11SAG2019','sdfgh','rtyu','rtry@hotmail.com','95656','2019-06-13'),('12SAG2019','jkertreytu','erteyu','ertyu@gmail.com','786662','2019-06-20'),('13SAG2019','jkertreytu','erteyu','ertyu@gmail.com','786662','2019-06-20'),('14SAG2019','rtj','rtryu','rteyru@gmail.com','895656','2019-06-27'),('15SAG2019','sgrd','arztaeyz','qeyey@gmail.com','7641616','2019-06-21'),('16SAG2019','qsshh','arztaeyz','fghjdgfg@gmail.com','773280348','2019-06-29'),('17SAG2019','dfqg','qgqg','fquihgiqf@gmail.com','785541','2019-07-18'),('1SAG2019','SECK','MOR','morseck00@gmail.com','785454','2019-06-26'),('2SAG2019','ndiaye','oumou','oumu@gmail.com','783254824','2019-06-02'),('3SAG2019','zongo','Emanuella','zongo@gmail.com','223485688','2019-06-15'),('4SAG2019','oumarou','Dansso','danso@gmail.com','7825482548','2019-06-20'),('5SAG2019','landing','Erickson','errick@hotmail.com','7915888555','2019-06-22'),('6SAG2019','landing','Erickson','errick@hotmail.com','7915888555','2019-06-22'),('7SAG2019','sdfgh','rtyu','rtry@hotmail.com','95656','2019-06-05'),('8SAG2019','sdfgh','rtyu','rtry@hotmail.com','95656','2019-06-05'),('9SAG2019','sdfgh','rtyu','rtry@hotmail.com','95656','2019-06-15');
/*!40000 ALTER TABLE `Etudiants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Loger`
--

DROP TABLE IF EXISTS `Loger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Loger` (
  `num_chambre` int(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  KEY `matricule` (`matricule`),
  KEY `numchambre` (`num_chambre`),
  CONSTRAINT `Loger_ibfk_2` FOREIGN KEY (`matricule`) REFERENCES `Etudiants` (`matricule`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Loger_ibfk_3` FOREIGN KEY (`num_chambre`) REFERENCES `chambre` (`num_chambre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loger`
--

LOCK TABLES `Loger` WRITE;
/*!40000 ALTER TABLE `Loger` DISABLE KEYS */;
INSERT INTO `Loger` VALUES (15,'13SAG2019'),(14,'16SAG2019');
/*!40000 ALTER TABLE `Loger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TypeBourse`
--

DROP TABLE IF EXISTS `TypeBourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TypeBourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_bourse` varchar(255) NOT NULL,
  `montant` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_bourse` (`type_bourse`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TypeBourse`
--

LOCK TABLES `TypeBourse` WRITE;
/*!40000 ALTER TABLE `TypeBourse` DISABLE KEYS */;
INSERT INTO `TypeBourse` VALUES (1,'PENSION COMPLÈTE',40000),(2,'DEMI-PENSION',20000);
/*!40000 ALTER TABLE `TypeBourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boursiernonloger`
--

DROP TABLE IF EXISTS `boursiernonloger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boursiernonloger` (
  `matricule` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  KEY `matricule` (`matricule`),
  CONSTRAINT `boursiernonloger_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `Etudiants` (`matricule`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boursiernonloger`
--

LOCK TABLES `boursiernonloger` WRITE;
/*!40000 ALTER TABLE `boursiernonloger` DISABLE KEYS */;
INSERT INTO `boursiernonloger` VALUES ('5SAG2019','Bissau'),('6SAG2019','Bissau'),('7SAG2019','kjvjbfkqf'),('8SAG2019','kjvjbfkqf'),('9SAG2019','kjvjbfkqf'),('10SAG2019','kjvjbfkqf'),('11SAG2019','kjvjbfkqf'),('12SAG2019','sruueu'),('14SAG2019','784496'),('15SAG2019','atzy'),('17SAG2019','jgqfv');
/*!40000 ALTER TABLE `boursiernonloger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chambre`
--

DROP TABLE IF EXISTS `chambre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chambre` (
  `num_chambre` int(6) NOT NULL,
  `id_batiments` int(11) NOT NULL,
  PRIMARY KEY (`num_chambre`),
  KEY `id-batiment` (`id_batiments`),
  CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`id_batiments`) REFERENCES `Batiment` (`id_batiments`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambre`
--

LOCK TABLES `chambre` WRITE;
/*!40000 ALTER TABLE `chambre` DISABLE KEYS */;
INSERT INTO `chambre` VALUES (1,1),(15,2),(14,3),(25,4);
/*!40000 ALTER TABLE `chambre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_boursier`
--

DROP TABLE IF EXISTS `non_boursier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `non_boursier` (
  `matricule` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  KEY `matricule` (`matricule`),
  CONSTRAINT `non_boursier_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `Etudiants` (`matricule`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_boursier`
--

LOCK TABLES `non_boursier` WRITE;
/*!40000 ALTER TABLE `non_boursier` DISABLE KEYS */;
INSERT INTO `non_boursier` VALUES ('1SAG2019','pikine'),('2SAG2019','fass'),('3SAG2019','fasso'),('4SAG2019','bissau');
/*!40000 ALTER TABLE `non_boursier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-07 10:14:05
