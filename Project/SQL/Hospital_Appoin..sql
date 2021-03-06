-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: Hospital
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `Appoin.`
--

DROP TABLE IF EXISTS `Appoin.`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Appoin.` (
  `DSSN` int(10) unsigned NOT NULL,
  `Pid` int(10) unsigned NOT NULL,
  `Appno` int(10) unsigned NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`Appno`,`Pid`,`DSSN`),
  UNIQUE KEY `Appno_UNIQUE` (`Appno`),
  KEY `id_idx` (`Pid`),
  KEY `ssn_idx` (`DSSN`),
  CONSTRAINT `id` FOREIGN KEY (`Pid`) REFERENCES `Paitient` (`Pid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ssn` FOREIGN KEY (`DSSN`) REFERENCES `Doctor` (`SSN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appoin.`
--

LOCK TABLES `Appoin.` WRITE;
/*!40000 ALTER TABLE `Appoin.` DISABLE KEYS */;
INSERT INTO `Appoin.` VALUES (3892,19356,2020,'4:30','2018/1/1',100),(3892,19356,2021,'2:10','2016/3/2',100),(3892,19356,2028,'1:10','2016/1/1',100),(3892,19356,2048,'1:30','2016/1/1',100);
/*!40000 ALTER TABLE `Appoin.` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-14 23:49:14
