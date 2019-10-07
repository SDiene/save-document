-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: ApiSymfony
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
  `partenaire_id` int(11) NOT NULL,
  `numerocompte` int(11) NOT NULL,
  `solde` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CFF6526098DE13AC` (`partenaire_id`),
  CONSTRAINT `FK_CFF6526098DE13AC` FOREIGN KEY (`partenaire_id`) REFERENCES `partenaire` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte`
--

LOCK TABLES `compte` WRITE;
/*!40000 ALTER TABLE `compte` DISABLE KEYS */;
INSERT INTO `compte` VALUES (1,2,1629195,300000,'2019-09-18 12:19:39'),(2,3,1125891,700000,'2019-09-18 12:22:59'),(3,2,3788506,250000,'2019-09-18 12:44:16');
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
  `compte_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datedepot` datetime NOT NULL,
  `montant` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_47948BBCF2C56620` (`compte_id`),
  KEY `IDX_47948BBCA76ED395` (`user_id`),
  CONSTRAINT `FK_47948BBCA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_47948BBCF2C56620` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depot`
--

LOCK TABLES `depot` WRITE;
/*!40000 ALTER TABLE `depot` DISABLE KEYS */;
INSERT INTO `depot` VALUES (1,1,2,'2019-09-18 12:48:30',100000),(2,1,2,'2019-09-18 12:48:54',200000),(3,2,3,'2019-09-18 12:49:35',200000),(4,2,3,'2019-09-18 12:50:02',500000),(5,3,2,'2019-09-18 12:50:20',250000);
/*!40000 ALTER TABLE `depot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partenaire`
--

DROP TABLE IF EXISTS `partenaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partenaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomentreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ninea` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  `raisonsocial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partenaire`
--

LOCK TABLES `partenaire` WRITE;
/*!40000 ALTER TABLE `partenaire` DISABLE KEYS */;
INSERT INTO `partenaire` VALUES (2,'Thiak Thiak','12345678','Toumbouctou','thiak@gmail.com',771251020,'je suis une partculier hannn'),(3,'lamda Service','1234','Mermoz','lamda@gmail.com',771452369,'je suis une entreprise');
/*!40000 ALTER TABLE `partenaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifs`
--

DROP TABLE IF EXISTS `tarifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borne_inferieur` int(11) NOT NULL,
  `borne_superieur` int(11) NOT NULL,
  `valeur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifs`
--

LOCK TABLES `tarifs` WRITE;
/*!40000 ALTER TABLE `tarifs` DISABLE KEYS */;
INSERT INTO `tarifs` VALUES (1,1,500,50),(2,501,1000,100),(3,1001,1100,100),(4,1101,1500,100),(5,1501,2000,200),(6,2001,3000,200),(7,3001,5000,400),(8,5001,6000,600),(9,6001,10000,600),(10,10001,12000,900),(11,12001,15000,900),(12,15001,17000,1000),(13,17001,20000,1000),(14,20001,25000,1500),(15,25001,30000,1500),(16,30001,35000,1500),(17,35001,40000,1800),(18,40001,50000,1800),(19,50001,60000,2000),(20,60001,70000,2700),(21,70001,75000,2700),(22,75001,100000,3000),(23,100001,125000,3600),(24,125001,150000,3600),(25,150001,175000,3800),(26,175001,200000,4600),(27,200001,250000,6400),(28,250001,300000,8000),(29,300001,350000,8500),(30,350001,400000,9900),(31,400001,500000,11900),(32,500001,600000,11900),(33,600001,700000,13600),(34,700001,75000,14500),(35,750001,1000000,21700),(36,1000001,1250000,24500),(37,1250001,1500000,31900),(38,1500001,2000000,36000),(39,2000001,3000000,0);
/*!40000 ALTER TABLE `tarifs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `compte_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `montant` int(11) NOT NULL,
  `cometat` int(11) NOT NULL,
  `comsystem` int(11) NOT NULL,
  `comenvoie` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frais` int(11) NOT NULL,
  `comretrait` int(11) NOT NULL,
  `nom_e` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_e` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_e` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_envoie` datetime NOT NULL,
  `nom_ex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_ex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_ex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_ex` int(11) NOT NULL,
  `cni_ex` int(11) DEFAULT NULL,
  `date_retrait` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_723705D1A76ED395` (`user_id`),
  KEY `IDX_723705D1F2C56620` (`compte_id`),
  CONSTRAINT `FK_723705D1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_723705D1F2C56620` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partenaire_id` int(11) DEFAULT NULL,
  `compte_id` int(11) DEFAULT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  KEY `IDX_8D93D64998DE13AC` (`partenaire_id`),
  KEY `IDX_8D93D649F2C56620` (`compte_id`),
  CONSTRAINT `FK_8D93D64998DE13AC` FOREIGN KEY (`partenaire_id`) REFERENCES `partenaire` (`id`),
  CONSTRAINT `FK_8D93D649F2C56620` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,'yahya@','[\"ROLE_SUPER_ADMIN\"]','$argon2id$v=19$m=65536,t=4,p=1$YV6C5+xnROv3cUui68T4wA$FhQ1uAz28GrLQaPqeRxX4LXjNylVU86N6XRIKUn80u0','ly','ya','admin','actif','senego.jpeg','2019-09-18 08:58:35'),(2,2,1,'kader@','[\"ROLE_ADMIN_PARTENAIRE\"]','$argon2id$v=19$m=65536,t=4,p=1$nUbP2jb1J3tOlHq86lpOHg$NyS25p1c366GSfY5Uh5NJdceAmYhipIt/AEWac5Nq5c','Thiam','Abdou Kader','admin','actif','resumé.png','2019-09-18 12:19:39'),(3,3,2,'thiaw@','[\"ROLE_ADMIN_PARTENAIRE\"]','$argon2id$v=19$m=65536,t=4,p=1$coeEO5Ccwo4D9jPFcRWhdA$p//qu5UWAlyPQxQ+oP9ET31RonpHx4WfkY2rXUz5fio','Thiaw','Moussa','admin','actif','yess.png','2019-09-18 12:22:59'),(4,NULL,NULL,'ba@','[\"ROLE_CAISSIER\"]','$argon2id$v=19$m=65536,t=4,p=1$b6CzZyR7mMrBLdF9hVRKqg$BFiz6/iD6ha30ekUfVjWphuSB1s3NFTsifesYHfK0SU','Sow','BaBa','caissier','actif','status.png','2019-09-18 12:47:30'),(5,2,2,'jean@','[\"ROLE_USER\"]','$argon2id$v=19$m=65536,t=4,p=1$AHDRuYZg0fPCu9vWqiEkWg$uIN6lCC+SJ+sUVm0nef96cvzIPfPl/Ok2HC6vmKLdH8','Gomis','Jeans marie','user','actif','status.png','2019-09-18 12:53:16');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-07 10:06:31
