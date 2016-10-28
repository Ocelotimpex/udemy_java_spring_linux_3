-- MySQL dump 10.13  Distrib 5.6.31, for Linux (x86_64)
--
-- Host: localhost    Database: springtutorial
-- ------------------------------------------------------
-- Server version	5.6.31

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
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
  `username` varchar(60) NOT NULL,
  `authority` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES ('administrator','ROLE_ADMIN'),('amandaking','ROLE_USER'),('jilldanko','ROLE_USER'),('sabrinaduncan','ROLE_USER'),('testuser','ROLE_USER');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (1,'Steve','steve@caveofprogramming.com','Cash for Software'),(2,'Joe','joe@caveofprogramming.com','Elegent Web Design'),(3,'Roger Moore','roger@creativewebstuff.com','I will create amazing websites that will astonish you'),(4,'Roger Moore','roger@creativewebstuff.com','I will create amazing websites that will astonish you'),(5,'Peggy Maxwell','peggy@notgwebdesign.com','Web applications done fast and cheap.'),(6,'Peggy Maxwell','peggy@notgwebdesign.com','Web applications done fast and cheap.'),(7,'Jill Danko','jill@ludlowdesign.com','Added controller code back in.  Troubleshooting double entry problem.'),(8,'Garry Rafferty','garry@downthelineprogramming.com','Right down the line.'),(9,'Selina Meyer','selina@myers.com','Excellent web programming.'),(10,'Selina Meyer','selina@myers.com','Excellent web programming.'),(11,'Selina Meyer','selina@myers.com','Excellent web programming.  Was this too short?'),(12,'Mary Richards','Mary@GCN.com','Let\'s see if a new item looks ok.'),(13,'John123','john@caveofprogramming.com','Hello'),(14,'Amanda King','ak@hotmail.com','This is a test offer');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(60) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT '1',
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('administrator','5765670c9bfc4371d2f8c4c426e94d04f7a1b30b34e3c240b73486f3215eb94a758887400e8454ab',1,'admin@cave.com'),('amandaking','95869ab86df7db868b0e35ab3e743cd028d3a2041854308723d509d3eaf9f964e6585dd54ee12913',1,'aking@cia.gov'),('jilldanko','208311ceb3559b0a6073e1b94300540143df9ebe21940d061901cb17909388c5590cb1d96e4f9a9f',1,'jill@rookies.com'),('sabrinaduncan','8c8fe28bc2181fffe70986329ce4fd43fdad566c92631404fef5621814c2e30ed11a28f22ccb461a',1,'sduncan@tda.com'),('testuser','e82f6eb7cf1d2c6067bca4eb882cbac454729dffae6e4618a2b3aa4af27a10d0dbc2629bbcb803e1',1,'test@test.com');
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

-- Dump completed on 2016-08-08 23:15:11
