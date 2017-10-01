-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: quotesdb
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `QUOTES`
--

DROP TABLE IF EXISTS `QUOTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUOTES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEXT_OF_QUOTE` varchar(255) NOT NULL,
  `ADDED_DATE` date NOT NULL,
  `AUTHOR` varchar(100) DEFAULT NULL,
  `CATEGORY` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUOTES`
--

LOCK TABLES `QUOTES` WRITE;
/*!40000 ALTER TABLE `QUOTES` DISABLE KEYS */;
INSERT INTO `QUOTES` VALUES (1,'Истинно любит тебя тот, кто втайне молится о тебе Богу.','2017-10-01','Николай Сербский','Великие Слова'),(2,'Люди злы в той мере, в какой несчастны.','2017-10-01','Уильям Сомерсет Моэм','Великие Слова'),(5,'123','2017-10-01','123','123'),(6,'?? ?????? ??????, ??? ?АААААААААББББББ','2017-10-01','123','?????? ??????? ?????'),(10,'Ты можешь больше, чем думаешь!','2017-10-01','',''),(11,'Ты можешь больше, чем думаешь!','2017-10-01','','Цитаты Великих людей'),(13,'eee','2017-10-01','eeee','eeee'),(14,'5554','2017-10-01','555','555');
/*!40000 ALTER TABLE `QUOTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'quotesdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-01 22:25:03
