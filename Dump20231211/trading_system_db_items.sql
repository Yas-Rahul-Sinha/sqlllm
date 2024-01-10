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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `ItemID` int NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `CurrencyID` int DEFAULT NULL,
  `Details` text,
  PRIMARY KEY (`ItemID`),
  UNIQUE KEY `Code` (`Code`),
  KEY `CurrencyID` (`CurrencyID`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`CurrencyID`) REFERENCES `currencies` (`CurrencyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'AAPL','Apple Inc.',1,1,'Technology Company'),(2,'GOOGL','Alphabet Inc.',1,1,'Parent company of Google'),(3,'MSFT','Microsoft Corporation',1,1,'Technology Company'),(4,'AMZN','Amazon.com Inc.',1,1,'E-commerce and cloud computing'),(5,'TSLA','Tesla Inc.',1,1,'Electric vehicle and clean energy'),(6,'BTC','Bitcoin',1,10,'Cryptocurrency'),(7,'ETH','Ethereum',1,10,'Cryptocurrency'),(8,'XRP','Ripple',1,10,'Cryptocurrency'),(9,'GLD','Gold ETF',1,1,'Exchange-Traded Fund for gold'),(10,'AAP','Aaple Corp.',1,1,'Fruit and Technology Company');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 20:30:37
