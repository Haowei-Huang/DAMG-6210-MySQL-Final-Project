CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chartranking`
--

DROP TABLE IF EXISTS `chartranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chartranking` (
  `PK` int unsigned NOT NULL,
  `FK_CountryID` smallint unsigned NOT NULL,
  `FK_AlbumID` int unsigned NOT NULL,
  `PeakPosition` tinyint unsigned NOT NULL,
  PRIMARY KEY (`PK`,`FK_CountryID`,`FK_AlbumID`),
  KEY `indxChartRanking_Album_idx` (`FK_AlbumID`),
  KEY `indxChartRanking_Country` (`FK_CountryID`),
  CONSTRAINT `indxChartRanking_Album` FOREIGN KEY (`FK_AlbumID`) REFERENCES `album` (`AlbumID`),
  CONSTRAINT `indxChartRanking_Country` FOREIGN KEY (`FK_CountryID`) REFERENCES `country` (`CountryID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chartranking`
--

LOCK TABLES `chartranking` WRITE;
/*!40000 ALTER TABLE `chartranking` DISABLE KEYS */;
INSERT INTO `chartranking` VALUES (1,4,1,3),(2,3,1,4),(3,1,1,1),(4,2,1,4),(5,4,2,1),(6,3,2,1),(7,1,2,1),(8,2,2,1),(9,4,3,1),(10,3,3,1),(11,1,3,1),(12,2,3,1);
/*!40000 ALTER TABLE `chartranking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03  0:55:50
