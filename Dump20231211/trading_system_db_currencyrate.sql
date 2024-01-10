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
-- Table structure for table `currencyrate`
--

DROP TABLE IF EXISTS `currencyrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencyrate` (
  `RateID` int NOT NULL,
  `CurrencyID` int DEFAULT NULL,
  `BaseCurrencyID` int DEFAULT NULL,
  `Rate` decimal(10,6) NOT NULL,
  `Ts` timestamp NOT NULL,
  PRIMARY KEY (`RateID`),
  KEY `CurrencyID` (`CurrencyID`),
  KEY `BaseCurrencyID` (`BaseCurrencyID`),
  CONSTRAINT `currencyrate_ibfk_1` FOREIGN KEY (`CurrencyID`) REFERENCES `currencies` (`CurrencyID`),
  CONSTRAINT `currencyrate_ibfk_2` FOREIGN KEY (`BaseCurrencyID`) REFERENCES `currencies` (`CurrencyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencyrate`
--

LOCK TABLES `currencyrate` WRITE;
/*!40000 ALTER TABLE `currencyrate` DISABLE KEYS */;
INSERT INTO `currencyrate` VALUES (1,2,1,0.850000,'2023-01-01 06:30:00'),(2,3,1,110.500000,'2023-01-01 06:30:00'),(3,4,1,0.750000,'2023-01-01 06:30:00'),(4,5,1,1.280000,'2023-01-01 06:30:00'),(5,6,1,0.720000,'2023-01-01 06:30:00'),(6,7,1,1.010000,'2023-01-01 06:30:00'),(7,8,1,6.370000,'2023-01-01 06:30:00'),(8,9,1,74.050000,'2023-01-01 06:30:00'),(9,10,1,0.000086,'2023-01-01 06:30:00'),(10,1,1,1.000000,'2023-01-01 06:30:00');
/*!40000 ALTER TABLE `currencyrate` ENABLE KEYS */;
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
