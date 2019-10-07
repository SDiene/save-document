-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: Universite
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
  `id_Batiment` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_bat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_Batiment`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Batiment`
--

LOCK TABLES `Batiment` WRITE;
/*!40000 ALTER TABLE `Batiment` DISABLE KEYS */;
INSERT INTO `Batiment` VALUES (1,'Batiment 1'),(2,'Batiment 2'),(3,'Batiment 3'),(4,'Batiment 4'),(9,'Batiment 6');
/*!40000 ALTER TABLE `Batiment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Boursiers`
--

DROP TABLE IF EXISTS `Boursiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Boursiers` (
  `id_Boursier` int(11) NOT NULL AUTO_INCREMENT,
  `Matricule` int(100) NOT NULL,
  `id_Categ_Bourse` int(11) NOT NULL,
  PRIMARY KEY (`id_Boursier`,`Matricule`),
  KEY `id_Categ_Bourse` (`id_Categ_Bourse`),
  KEY `Matricule` (`Matricule`),
  CONSTRAINT `Boursiers_ibfk_2` FOREIGN KEY (`id_Categ_Bourse`) REFERENCES `Categorie_Bourse` (`id_Categ_Bourse`),
  CONSTRAINT `Boursiers_ibfk_3` FOREIGN KEY (`Matricule`) REFERENCES `Etudiants` (`Matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Boursiers`
--

LOCK TABLES `Boursiers` WRITE;
/*!40000 ALTER TABLE `Boursiers` DISABLE KEYS */;
INSERT INTO `Boursiers` VALUES (82,5,1),(83,6,1),(85,8,1),(86,9,1),(88,11,1),(89,12,1),(90,13,1),(91,14,1),(93,16,1),(96,19,1),(97,20,1),(99,22,1),(100,23,1),(101,24,1),(102,25,1),(103,26,1),(104,10,1),(106,29,1),(75,2,2),(80,4,2),(92,1,2),(98,21,2),(105,28,2);
/*!40000 ALTER TABLE `Boursiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categorie_Bourse`
--

DROP TABLE IF EXISTS `Categorie_Bourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categorie_Bourse` (
  `id_Categ_Bourse` int(11) NOT NULL AUTO_INCREMENT,
  `Libelle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Montant` int(11) NOT NULL,
  PRIMARY KEY (`id_Categ_Bourse`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorie_Bourse`
--

LOCK TABLES `Categorie_Bourse` WRITE;
/*!40000 ALTER TABLE `Categorie_Bourse` DISABLE KEYS */;
INSERT INTO `Categorie_Bourse` VALUES (1,'Bourse complète',40000),(2,'Demi-pension',20000);
/*!40000 ALTER TABLE `Categorie_Bourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Chambres`
--

DROP TABLE IF EXISTS `Chambres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chambres` (
  `id_Chambre` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_Ch` int(11) NOT NULL,
  `id_Batiment` int(11) NOT NULL,
  PRIMARY KEY (`id_Chambre`,`Numero_Ch`,`id_Batiment`),
  KEY `id_Batiment` (`id_Batiment`),
  CONSTRAINT `Chambres_ibfk_1` FOREIGN KEY (`id_Batiment`) REFERENCES `Batiment` (`id_Batiment`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chambres`
--

LOCK TABLES `Chambres` WRITE;
/*!40000 ALTER TABLE `Chambres` DISABLE KEYS */;
INSERT INTO `Chambres` VALUES (1,1,1),(2,2,1),(3,3,1),(12,4,1),(13,5,1),(14,6,1),(15,7,1),(5,1,2),(6,2,2),(16,3,2),(17,4,2),(18,5,2),(19,6,2),(21,1,4),(22,2,4);
/*!40000 ALTER TABLE `Chambres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Etudiants`
--

DROP TABLE IF EXISTS `Etudiants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Etudiants` (
  `Matricule` int(100) NOT NULL,
  `Nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Naissance` date NOT NULL,
  `Email` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Telephone` int(11) NOT NULL,
  PRIMARY KEY (`Matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Etudiants`
--

LOCK TABLES `Etudiants` WRITE;
/*!40000 ALTER TABLE `Etudiants` DISABLE KEYS */;
INSERT INTO `Etudiants` VALUES (1,'Ndoye','Abdoulaye','2019-06-17','layendoyesn@gmail.com',771050106),(2,'Diop','Maimouna','2019-06-22','maimou@gmail.com',774563621),(3,'Ndoye','Assane','2019-06-19','azou@gmail.com',779398484),(4,'Ndoye','Oumou','2019-06-04','OKN@gmail.com',775462535),(5,'Ndiaye','Omar','2019-05-27','omar@gmail.com',771524623),(6,'Mbaye','Ndiaga','2019-06-02','Ndiaga@gmail.com',77456525),(7,'Thiam','Astou','2019-06-02','astou@gmail.com',774521365),(8,'Fall','Lala','2019-06-01','lala@hotmail.com',701425684),(9,'Seck','Mor','2019-05-29','Mor@gmail.com',778456532),(10,'Diop','Ousmane','2019-05-30','ous@gmail.com',774215356),(11,'Ba','Abdoul','2019-05-10','Abdou@gmail.com',771546253),(12,'Ndoye','Astou','2019-06-07','astou@gmail.com',774536254),(13,'Diop','Ousmane','2019-06-07','ousm2@gmail.com',77452545),(14,'Ba','Omar','2019-06-06','ousm2@gmail.com',774525547),(15,'Ba','Abdou','2019-01-01','abBa@gmail.com',77452135),(16,'Ndoye','Abdoulaye','2019-06-16','abdouNd@gmail.com',779055107),(19,'Ndoye','Oumou','2019-06-04','OKN@gmail.com',775462535),(20,'Seck','Matar','2019-05-31','matar@gmail.com',774521365),(21,'Ndao','Amadou','2019-06-01','amadou@gmail.com',774512026),(22,'Ndiaye','Makhtar','2019-06-04','makhou@gmail.com',701425364),(23,'Ndiaye','Amadou','2019-06-05','amadou@gmail.com',777854631),(24,'Ly','Abdou','2019-06-08','al@gmail.com',774123438),(25,'Diop','Assane','2019-06-06','aDiop@gmail.com',701236584),(26,'Pouye','Fama','2019-05-28','faP@gmail.com',776412357),(27,'Sall','Cheikh','2019-05-30','cheikh@gmail.com',77100),(28,'Ndoye','Abdoulaye','2019-06-17','layendoyesn@gmail.com',771050106),(29,'Ndiaye','Aminata','2019-05-29','ndiayeAminata@gmail.com',774138798);
/*!40000 ALTER TABLE `Etudiants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Loges`
--

DROP TABLE IF EXISTS `Loges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Loges` (
  `id_Loge` int(11) NOT NULL AUTO_INCREMENT,
  `Matricule` int(100) NOT NULL,
  `id_Chambre` int(11) NOT NULL,
  PRIMARY KEY (`id_Loge`,`Matricule`),
  KEY `Loges_ibfk_1` (`id_Chambre`),
  KEY `Matricule` (`Matricule`),
  CONSTRAINT `Loges_ibfk_1` FOREIGN KEY (`id_Chambre`) REFERENCES `Chambres` (`id_Chambre`),
  CONSTRAINT `Loges_ibfk_2` FOREIGN KEY (`Matricule`) REFERENCES `Etudiants` (`Matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loges`
--

LOCK TABLES `Loges` WRITE;
/*!40000 ALTER TABLE `Loges` DISABLE KEYS */;
INSERT INTO `Loges` VALUES (23,12,2),(26,14,3),(25,13,5),(20,9,13),(32,20,15),(31,1,16),(38,28,16),(30,19,17),(19,8,18),(22,11,18),(36,26,21),(37,10,21),(27,16,22),(33,23,22),(34,24,22),(39,29,22);
/*!40000 ALTER TABLE `Loges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Non_Boursiers`
--

DROP TABLE IF EXISTS `Non_Boursiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Non_Boursiers` (
  `id_Non_Boursiers` int(11) NOT NULL AUTO_INCREMENT,
  `Matricule` int(11) NOT NULL,
  `Adresse` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_Non_Boursiers`,`Matricule`),
  KEY `Matricule` (`Matricule`),
  CONSTRAINT `Non_Boursiers_ibfk_1` FOREIGN KEY (`Matricule`) REFERENCES `Etudiants` (`Matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Non_Boursiers`
--

LOCK TABLES `Non_Boursiers` WRITE;
/*!40000 ALTER TABLE `Non_Boursiers` DISABLE KEYS */;
INSERT INTO `Non_Boursiers` VALUES (2,3,'NF'),(3,7,'NF'),(5,15,'Ouakam'),(6,27,'sac');
/*!40000 ALTER TABLE `Non_Boursiers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-07 10:09:40
