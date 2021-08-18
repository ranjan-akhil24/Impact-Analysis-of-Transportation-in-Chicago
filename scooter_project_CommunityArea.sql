CREATE DATABASE  IF NOT EXISTS `scooter_project` /*!40100 DEFAULT CHARACTER SET utf16 */;
USE `scooter_project`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 35.224.246.245    Database: scooter_project
-- ------------------------------------------------------
-- Server version	5.7.25-google-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'e92e4473-26c7-11eb-9683-42010a8002c4:1-435547';

--
-- Table structure for table `CommunityArea`
--

DROP TABLE IF EXISTS `CommunityArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CommunityArea` (
  `AreaNumber` int(11) NOT NULL,
  `CommunityName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AreaNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CommunityArea`
--

LOCK TABLES `CommunityArea` WRITE;
/*!40000 ALTER TABLE `CommunityArea` DISABLE KEYS */;
INSERT INTO `CommunityArea` VALUES (1,'Rogers Park'),(2,'West Ridge'),(3,'Uptown'),(4,'Lincoln Square'),(5,'North Center'),(6,'Lake View'),(7,'Lincoln Park'),(8,'Near North Side'),(9,'Edison Park'),(10,'Norwood Park'),(11,'Jefferson Park'),(12,'Forest Glen'),(13,'North Park'),(14,'Albany Park'),(15,'Portage Park'),(16,'Irving Park'),(17,'Dunning'),(18,'Montclare'),(19,'Belmont Cragin'),(20,'Hermosa'),(21,'Avondale'),(22,'Logan Square'),(23,'Humboldt Park'),(24,'West Town'),(25,'Austin'),(26,'West Garfield Park'),(27,'East Garfield Park'),(28,'Near West Side'),(29,'North Lawndale'),(30,'South Lawndale'),(31,'Lower West Side'),(32,'Loop'),(33,'Near South Side'),(34,'Armour Square'),(35,'Douglas'),(36,'Oakland'),(37,'Fuller Park'),(38,'Grand Boulevard'),(39,'Kenwood'),(40,'Washington Park'),(41,'Hyde Park'),(42,'Woodlawn'),(43,'South Shore'),(44,'Chatham'),(45,'Avalon Park'),(46,'South Chicago'),(47,'Burnside'),(48,'Calumet Heights'),(49,'Roseland'),(50,'Pullman'),(51,'South Deering'),(52,'East Side'),(53,'West Pullman'),(54,'Riverdale'),(55,'Hegewisch'),(56,'Garfield Ridge'),(57,'Archer Heights'),(58,'Brighton Park'),(59,'Mckinley Park'),(60,'Bridgeport'),(61,'New City'),(62,'West Elsdon'),(63,'Gage Park'),(64,'Clearing'),(65,'West Lawn'),(66,'Chicago Lawn'),(67,'West Englewood'),(68,'Englewood'),(69,'Greater Grand Crossing'),(70,'Ashburn'),(71,'Auburn Gresham'),(72,'Beverly'),(73,'Washington Heights'),(74,'Mount Greenwood'),(75,'Morgan Park'),(76,'Ohare'),(77,'Edgewater');
/*!40000 ALTER TABLE `CommunityArea` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 21:28:56
