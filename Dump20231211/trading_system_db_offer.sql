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
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer` (
  `OfferID` int NOT NULL,
  `TraderID` int DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Buy` tinyint(1) DEFAULT NULL,
  `Sell` tinyint(1) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Ts` timestamp NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`OfferID`),
  KEY `TraderID` (`TraderID`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `offer_ibfk_1` FOREIGN KEY (`TraderID`) REFERENCES `trader` (`TraderID`),
  CONSTRAINT `offer_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `items` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
INSERT INTO `offer` VALUES (1,1,1,20,1,0,15.99,'2023-01-01 06:30:00',1),(2,2,2,15,0,1,25.50,'2023-01-02 09:00:00',1),(3,3,3,30,1,0,10.75,'2023-01-03 05:15:00',1),(4,4,4,10,0,1,50.00,'2023-01-04 10:50:00',1),(5,5,5,25,1,0,18.25,'2023-01-05 03:45:00',1),(6,1,6,18,0,1,30.40,'2023-01-06 05:30:00',1),(7,2,1,40,1,0,12.50,'2023-01-07 08:15:00',1),(8,3,2,12,0,1,22.75,'2023-01-08 10:00:00',1),(9,4,3,22,1,0,14.99,'2023-01-09 02:30:00',1),(10,5,4,17,0,1,40.00,'2023-01-10 11:40:00',1);
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
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
