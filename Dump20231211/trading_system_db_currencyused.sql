-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trading_system_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `currencyused`
--

DROP TABLE IF EXISTS `currencyused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencyused` (
  `CurrencyUsedID` int NOT NULL,
  `CountryID` int DEFAULT NULL,
  `CurrencyID` int DEFAULT NULL,
  `DateFrom` date NOT NULL,
  `DateTo` date DEFAULT NULL,
  PRIMARY KEY (`CurrencyUsedID`),
  KEY `CountryID` (`CountryID`),
  KEY `CurrencyID` (`CurrencyID`),
  CONSTRAINT `currencyused_ibfk_1` FOREIGN KEY (`CountryID`) REFERENCES `country` (`CountryID`),
  CONSTRAINT `currencyused_ibfk_2` FOREIGN KEY (`CurrencyID`) REFERENCES `currencies` (`CurrencyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencyused`
--

LOCK TABLES `currencyused` WRITE;
/*!40000 ALTER TABLE `currencyused` DISABLE KEYS */;
INSERT INTO `currencyused` VALUES (1,1,1,'2023-01-01',NULL),(2,2,2,'2023-01-01',NULL),(3,3,3,'2023-01-01',NULL),(4,4,4,'2023-01-01',NULL),(5,5,5,'2023-01-01',NULL),(6,6,6,'2023-01-01',NULL),(7,7,7,'2023-01-01',NULL),(8,8,8,'2023-01-01',NULL),(9,9,9,'2023-01-01',NULL),(10,10,10,'2023-01-01',NULL);
/*!40000 ALTER TABLE `currencyused` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 20:30:36
