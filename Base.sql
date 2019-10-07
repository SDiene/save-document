-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: Base
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
-- Table structure for table `compte`
--

DROP TABLE IF EXISTS `compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datecreation` datetime DEFAULT NULL,
  `numerocompte` varchar(30) DEFAULT NULL,
  `solde` varchar(50) DEFAULT NULL,
  `partenaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK75b2g5omugyr5g8vnmmqjx3yw` (`partenaire_id`),
  CONSTRAINT `FK75b2g5omugyr5g8vnmmqjx3yw` FOREIGN KEY (`partenaire_id`) REFERENCES `partenaire` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte`
--

LOCK TABLES `compte` WRITE;
/*!40000 ALTER TABLE `compte` DISABLE KEYS */;
INSERT INTO `compte` VALUES (1,'2019-10-05 22:01:49','1910 0510 0149','0',2),(2,'2019-10-05 22:07:10','1910 0510 0709','0',3),(3,'2019-10-05 22:07:44','1910 0510 0744','540000',4),(4,'2019-10-05 22:21:45','1910 0510 2144','0',5),(5,'2019-10-05 22:44:12','1910051044','0',2);
/*!40000 ALTER TABLE `compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depot`
--

DROP TABLE IF EXISTS `depot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datedepot` datetime DEFAULT NULL,
  `montant` varchar(50) DEFAULT NULL,
  `compte_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKecpbfqv9jnbf43mhiiwosh20b` (`compte_id`),
  KEY `FKqphw4nr4yb2wupm6gbn3sr3qm` (`user_id`),
  CONSTRAINT `FKecpbfqv9jnbf43mhiiwosh20b` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`),
  CONSTRAINT `FKqphw4nr4yb2wupm6gbn3sr3qm` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depot`
--

LOCK TABLES `depot` WRITE;
/*!40000 ALTER TABLE `depot` DISABLE KEYS */;
INSERT INTO `depot` VALUES (1,'2019-10-05 22:48:58','180000',3,NULL);
/*!40000 ALTER TABLE `depot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partenaire`
--

DROP TABLE IF EXISTS `partenaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partenaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(50) DEFAULT NULL,
  `emailpart` varchar(50) DEFAULT NULL,
  `ninea` varchar(50) DEFAULT NULL,
  `nomentreprise` varchar(30) DEFAULT NULL,
  `raisonsocial` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partenaire`
--

LOCK TABLES `partenaire` WRITE;
/*!40000 ALTER TABLE `partenaire` DISABLE KEYS */;
INSERT INTO `partenaire` VALUES (1,'Kaffrine','computer.baye@gmail.com','1589632kdl','Baye Computer','Baye Computer','771452036'),(2,'Kaffrine','computer.baye@gmail.com','1589632kdl','Baye Computer','Baye Computer','771452036'),(3,'Kaffrine','computer.baye@gmail.com','1589632kdl','Baye Computer','Baye Computer','771452036'),(4,'Kaffrine','computer.baye@gmail.com','1589632kdl','Baye Computer','Baye Computer','771452036'),(5,'Kaffrine','computer.baye@gmail.com','1589632kdl','Baye Computer','Baye Computer','771452036');
/*!40000 ALTER TABLE `partenaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nb4h0p6txrmfc0xbrd1kglp9t` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_ADMIN_PARTENAIRE'),(3,'ROLE_CAISSIER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adresseEx` varchar(50) DEFAULT NULL,
  `cniEx` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `commissionEnvoie` varchar(50) DEFAULT NULL,
  `commissionEtat` varchar(50) DEFAULT NULL,
  `commissionRetrait` varchar(50) DEFAULT NULL,
  `commissionSysteme` varchar(50) DEFAULT NULL,
  `dateEnvoie` date DEFAULT NULL,
  `dateRetrait` date DEFAULT NULL,
  `frais` varchar(50) DEFAULT NULL,
  `montant` varchar(100) DEFAULT NULL,
  `nature` varchar(50) DEFAULT NULL,
  `nomE` varchar(30) DEFAULT NULL,
  `nomEx` varchar(50) DEFAULT NULL,
  `prenomE` varchar(50) DEFAULT NULL,
  `prenomEx` varchar(50) DEFAULT NULL,
  `telE` varchar(50) DEFAULT NULL,
  `telephoneEx` varchar(15) DEFAULT NULL,
  `compte_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsb56lsmpjfoulaex18sggti8g` (`compte_id`),
  KEY `FKanjpo5tiapru7an6cw4cu37y4` (`user_id`),
  CONSTRAINT `FKanjpo5tiapru7an6cw4cu37y4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKsb56lsmpjfoulaex18sggti8g` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(5,2),(8,3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `compte_id` int(11) DEFAULT NULL,
  `partenaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  KEY `FKsju5pocjg35oa4q1727ss79ue` (`compte_id`),
  KEY `FKsogo07tsakkfg4l1cx4v6yf15` (`partenaire_id`),
  CONSTRAINT `FKsju5pocjg35oa4q1727ss79ue` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`),
  CONSTRAINT `FKsogo07tsakkfg4l1cx4v6yf15` FOREIGN KEY (`partenaire_id`) REFERENCES `partenaire` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'yahya@gmail.com','yahya.png','Barmaky','$2a$10$sgsCnm8NhCqZthvzdpMSK.QnMWtJOTlHBWTVfFy77mo8NfGpK6ej6','yahyal','Actif','yahya@',NULL,NULL),(5,'bayecomputer@gmail.com','baye.png','Ndiaye','$2a$10$KU4WC4SLHOM1/MJzpswgLOIUStTec4maoN8LwTpEyqCa7a8bTkJLG','Baye','Actif','baye@02',4,5),(8,'jules@gmail.com','jules.jpg','Diop','$2a$10$9zD0t5U/WJw/u1Z5PxfRzeLWlVZbCNNMK3JKI6FxcnBirE/zonDoK','jules','Actif','jules@03',NULL,NULL);
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

-- Dump completed on 2019-10-07 10:07:17
