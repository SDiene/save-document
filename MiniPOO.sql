-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: MiniPOO
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
  `idBatiment` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Batiment` varchar(255) NOT NULL,
  PRIMARY KEY (`idBatiment`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Batiment`
--

LOCK TABLES `Batiment` WRITE;
/*!40000 ALTER TABLE `Batiment` DISABLE KEYS */;
INSERT INTO `Batiment` VALUES (6,'Batiment A'),(7,'Batimant B'),(8,'Batiment C');
/*!40000 ALTER TABLE `Batiment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Boursier`
--

DROP TABLE IF EXISTS `Boursier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Boursier` (
  `idEtudiant` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  PRIMARY KEY (`idEtudiant`),
  KEY `idEtudiant` (`idEtudiant`),
  KEY `idType` (`idType`),
  CONSTRAINT `Boursier_Etudiant_FK` FOREIGN KEY (`idEtudiant`) REFERENCES `Etudiant` (`idEtudiant`),
  CONSTRAINT `Boursier_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `Type` (`idType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Boursier`
--

LOCK TABLES `Boursier` WRITE;
/*!40000 ALTER TABLE `Boursier` DISABLE KEYS */;
INSERT INTO `Boursier` VALUES (182,3),(184,3),(185,4),(212,4),(213,4),(214,4),(223,4),(231,4),(232,4),(245,4),(246,4);
/*!40000 ALTER TABLE `Boursier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Chambre`
--

DROP TABLE IF EXISTS `Chambre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chambre` (
  `idChambre` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroChambre` int(11) NOT NULL,
  `idBatiment` int(11) NOT NULL,
  PRIMARY KEY (`idChambre`),
  KEY `idBatiment` (`idBatiment`),
  CONSTRAINT `Chambre_ibfk_1` FOREIGN KEY (`idBatiment`) REFERENCES `Batiment` (`idBatiment`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chambre`
--

LOCK TABLES `Chambre` WRITE;
/*!40000 ALTER TABLE `Chambre` DISABLE KEYS */;
INSERT INTO `Chambre` VALUES (2,10,6),(3,11,7);
/*!40000 ALTER TABLE `Chambre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Etudiant`
--

DROP TABLE IF EXISTS `Etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Etudiant` (
  `idEtudiant` int(11) NOT NULL AUTO_INCREMENT,
  `Matricule` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NumeroTelephone` bigint(100) NOT NULL,
  `Date_de_naissance` date NOT NULL,
  PRIMARY KEY (`idEtudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Etudiant`
--

LOCK TABLES `Etudiant` WRITE;
/*!40000 ALTER TABLE `Etudiant` DISABLE KEYS */;
INSERT INTO `Etudiant` VALUES (182,'AB00','Sall_wakha','Ousmane ','ouzSall@yahoo.com',771023698,'2019-06-05'),(183,'AB01','Diop','Omar','omardiop@darraji.com',771453698,'2019-06-07'),(184,'AB12','Salliou','Serigne','Serigne145@yahoo.com',771203698,'2019-06-05'),(185,'AB02','Senghor','Amina','Amina@yahoo.com',771256398,'2019-06-06'),(187,'AB03','Ndiaye','Daouda','daoudandiaye@gmail.com',771253698,'1992-01-10'),(206,'AB04','Diouf','Fatou','fatoudiouf@gmail.com',7745896231,'2019-06-10'),(209,'AB05','Diouf','Amina','fatoudiouf@gmail.com',771254698,'2019-05-05'),(210,'AB06','Diouf','Amina','fatoudiouf@gmail.com',771254698,'2019-05-05'),(211,'AB07','Diallo','Amadou','amadoudiallo@gmail.com',771259874,'2019-06-12'),(212,'AB08','Sow','Ndeye Yacine','yassow@gmail.com',771253698,'1993-02-11'),(213,'AB09','Gomis','Jeans Marie','jeanmarie@gmail.com',771253698,'1996-02-11'),(214,'AB10','Thiam','Kader','redakthiam@gmail.com',771253698,'1996-12-01'),(215,'AB11','Diallo','El thiou','elthiou@gmail.com',771256974,'1992-06-12'),(216,'AB13','Faye','Aita','aitafaye@gmail.com',771450012,'2019-06-13'),(217,'AB15','Thiam','kader','kader@gmail.com',771453698,'1996-12-01'),(218,'AB015','sene','Ablaye','ablaye@gmail.com',771256598,'1993-12-01'),(219,'AB015','sene','Ablaye','ablaye@gmail.com',771256598,'1993-12-01'),(220,'AB015','sene','Ablaye','ablaye@gmail.com',771256598,'1993-12-01'),(221,'AB015','sene','Ablaye','ablaye@gmail.com',771256598,'1993-12-01'),(222,'AB6','fall','cisse','cissefall@gmail.com',771256598,'1996-02-01'),(223,'AB6','fall','cisse','cissefall@gmail.com',771256598,'1996-02-01'),(230,'Mk10','Diop','milka','milka@gmail.com',771258963,'1995-12-01'),(231,'Thiou11','Fall','Thiou','thiou@gmail.com',771256398,'1996-05-01'),(232,'Tinf4','Tine','moussa','moussa@gmail.com',771259874,'1995-02-01'),(245,'SA96','GUEYE','Ababacar Sadikh','sadikhabou@gmail.com',784408822,'1996-08-20'),(246,'SA012','Senghor','Diene','diene@gmail.com',771253698,'1996-11-01'),(247,'AB12','fall','bamba','bamba@gmail.com',771002536,'1995-02-01'),(249,'AB12125','fall','Aita ','aita@gmail.com',771452396,'1996-01-01'),(250,'Diop14','Diop','Omar','omardiop@gmail.com',771452369,'0996-11-01');
/*!40000 ALTER TABLE `Etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Loger`
--

DROP TABLE IF EXISTS `Loger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Loger` (
  `idEtudiant` int(11) NOT NULL,
  `idChambre` int(11) NOT NULL,
  PRIMARY KEY (`idEtudiant`),
  KEY `Loger_Chambre0_FK` (`idChambre`),
  KEY `idEtudiant` (`idEtudiant`),
  KEY `idEtudiant_2` (`idEtudiant`),
  CONSTRAINT `Loger_Chambre0_FK` FOREIGN KEY (`idChambre`) REFERENCES `Chambre` (`idChambre`),
  CONSTRAINT `Loger_ibfk_1` FOREIGN KEY (`idEtudiant`) REFERENCES `Boursier` (`idEtudiant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loger`
--

LOCK TABLES `Loger` WRITE;
/*!40000 ALTER TABLE `Loger` DISABLE KEYS */;
INSERT INTO `Loger` VALUES (182,2),(184,2),(185,2),(223,2),(245,2);
/*!40000 ALTER TABLE `Loger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Non_Boursiers`
--

DROP TABLE IF EXISTS `Non_Boursiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Non_Boursiers` (
  `idEtudiant` int(11) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  PRIMARY KEY (`idEtudiant`),
  KEY `idEtudiant` (`idEtudiant`),
  CONSTRAINT `Non_Boursiers_Etudiant_FK` FOREIGN KEY (`idEtudiant`) REFERENCES `Etudiant` (`idEtudiant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Non_Boursiers`
--

LOCK TABLES `Non_Boursiers` WRITE;
/*!40000 ALTER TABLE `Non_Boursiers` DISABLE KEYS */;
INSERT INTO `Non_Boursiers` VALUES (183,'Colobane Gouye '),(187,'Bargny'),(206,'Rufisque-Est'),(209,'Rufisque'),(210,'Rufisque'),(211,'Gouye Mouride'),(215,'Gouye Mouride1'),(216,'colobane'),(230,'Medina'),(247,'Algerie'),(249,'Rio'),(250,'Colobane 2 nord');
/*!40000 ALTER TABLE `Non_Boursiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Type`
--

DROP TABLE IF EXISTS `Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Type` (
  `idType` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(50) NOT NULL,
  `Montant` int(11) NOT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Type`
--

LOCK TABLES `Type` WRITE;
/*!40000 ALTER TABLE `Type` DISABLE KEYS */;
INSERT INTO `Type` VALUES (3,'Demi-Pension',20000),(4,'Pension-Complete',40000);
/*!40000 ALTER TABLE `Type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-07 10:14:56
