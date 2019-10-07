-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: Gestionetudiant
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
-- Table structure for table `Etudiant`
--

DROP TABLE IF EXISTS `Etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Etudiant` (
  `id_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(30) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_etudiant`),
  UNIQUE KEY `matricule` (`matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Etudiant`
--

LOCK TABLES `Etudiant` WRITE;
/*!40000 ALTER TABLE `Etudiant` DISABLE KEYS */;
INSERT INTO `Etudiant` VALUES (56,'f1','Assane','sall','774040821','sallassane622@gmail.com','2019-06-13'),(57,'t1','Amy','MbackÃ©','45562244441','amymbacke622@gmail.com','2019-06-12'),(58,'01bb','Ibrahima','Ndao','7789564266','ibou@gmail.com','2019-06-19'),(61,'02bb','mor','ndiaye','7789564266','abdoulaye45@gmail.com','2019-06-06'),(64,'000e','awa','ndao','778889988','sallawa622@gmail.com','2019-06-12'),(65,'s1','Diama','Sall','771456662','salldiama622@gmail.com','2019-06-15'),(72,'s3','aida','mboup','44555655255','aida@gmail.com','2019-06-16'),(73,'s4','fatou','diouf','525565525554','fatoudiouf@gmail.com','2019-06-12'),(74,'s5','Bity','Ndiaye','525565525554','ndiaye@gmail.com','2019-06-12'),(76,'s9','Ibrahima','Ndao','7789564266','ibou@gmail.com','1999-06-16'),(79,'s10','fallou','faye','75565222322','fallou@gmail.com','2019-06-12'),(80,'s11','MbackÃ©','Mbaye','768945612','mbacke@gmail.com','2019-06-12');
/*!40000 ALTER TABLE `Etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batiment`
--

DROP TABLE IF EXISTS `batiment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batiment` (
  `id_batiment` int(11) NOT NULL AUTO_INCREMENT,
  `nom_batiment` varchar(30) NOT NULL,
  PRIMARY KEY (`id_batiment`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batiment`
--

LOCK TABLES `batiment` WRITE;
/*!40000 ALTER TABLE `batiment` DISABLE KEYS */;
INSERT INTO `batiment` VALUES (1,'batimentA'),(2,'batimentB');
/*!40000 ALTER TABLE `batiment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boursiers`
--

DROP TABLE IF EXISTS `boursiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boursiers` (
  `id_etudiant` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`id_etudiant`),
  KEY `id_type` (`id_type`),
  KEY `id_etudiant` (`id_etudiant`),
  CONSTRAINT `boursiers_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `Etudiant` (`id_etudiant`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `boursiers_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boursiers`
--

LOCK TABLES `boursiers` WRITE;
/*!40000 ALTER TABLE `boursiers` DISABLE KEYS */;
INSERT INTO `boursiers` VALUES (56,1),(58,1),(61,1),(72,1),(74,1),(79,1),(80,1),(64,2),(73,2),(76,2);
/*!40000 ALTER TABLE `boursiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chambre`
--

DROP TABLE IF EXISTS `chambre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chambre` (
  `id_chambre` int(11) NOT NULL AUTO_INCREMENT,
  `nom_chambre` varchar(30) NOT NULL,
  `id_batiment` int(11) NOT NULL,
  PRIMARY KEY (`id_chambre`),
  KEY `id_batiment` (`id_batiment`),
  CONSTRAINT `chambre_ibfk_1` FOREIGN KEY (`id_batiment`) REFERENCES `batiment` (`id_batiment`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambre`
--

LOCK TABLES `chambre` WRITE;
/*!40000 ALTER TABLE `chambre` DISABLE KEYS */;
INSERT INTO `chambre` VALUES (1,'chambre1',1),(2,'chambre1',2),(3,'chambre2',1),(4,'chambre3',1),(5,'chambre4',2);
/*!40000 ALTER TABLE `chambre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loger`
--

DROP TABLE IF EXISTS `loger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loger` (
  `id_etudiant` int(11) NOT NULL,
  `id_chambre` int(11) NOT NULL,
  PRIMARY KEY (`id_etudiant`),
  KEY `id_chambre` (`id_chambre`),
  CONSTRAINT `loger_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `boursiers` (`id_etudiant`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `loger_ibfk_2` FOREIGN KEY (`id_chambre`) REFERENCES `chambre` (`id_chambre`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loger`
--

LOCK TABLES `loger` WRITE;
/*!40000 ALTER TABLE `loger` DISABLE KEYS */;
INSERT INTO `loger` VALUES (56,1),(72,1),(64,2),(58,4),(61,4),(73,4),(76,4);
/*!40000 ALTER TABLE `loger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonboursiers`
--

DROP TABLE IF EXISTS `nonboursiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nonboursiers` (
  `id_etudiant` int(11) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  PRIMARY KEY (`id_etudiant`),
  CONSTRAINT `nonboursiers_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `Etudiant` (`id_etudiant`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonboursiers`
--

LOCK TABLES `nonboursiers` WRITE;
/*!40000 ALTER TABLE `nonboursiers` DISABLE KEYS */;
INSERT INTO `nonboursiers` VALUES (57,'guediawaye'),(65,'thiaroye');
/*!40000 ALTER TABLE `nonboursiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(30) NOT NULL,
  `montant` double NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'DemiPension',20000),(2,'PensionComplete',40000);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `motpasse` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'awa','awasall');
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

-- Dump completed on 2019-10-07 10:16:22
