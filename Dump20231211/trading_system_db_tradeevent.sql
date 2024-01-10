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
-- Table structure for table `tradeevent`
--

DROP TABLE IF EXISTS `tradeevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tradeevent` (
  `TradeEventID` int NOT NULL,
  `ItemID` int DEFAULT NULL,
  `SellerID` int DEFAULT NULL,
  `BuyerID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `UnitPrice` decimal(10,2) DEFAULT NULL,
  `Description` text,
  `OfferID` int DEFAULT NULL,
  `Ts` timestamp NOT NULL,
  PRIMARY KEY (`TradeEventID`),
  KEY `ItemID` (`ItemID`),
  KEY `SellerID` (`SellerID`),
  KEY `BuyerID` (`BuyerID`),
  KEY `OfferID` (`OfferID`),
  CONSTRAINT `tradeevent_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `items` (`ItemID`),
  CONSTRAINT `tradeevent_ibfk_2` FOREIGN KEY (`SellerID`) REFERENCES `trader` (`TraderID`),
  CONSTRAINT `tradeevent_ibfk_3` FOREIGN KEY (`BuyerID`) REFERENCES `trader` (`TraderID`),
  CONSTRAINT `tradeevent_ibfk_4` FOREIGN KEY (`OfferID`) REFERENCES `offer` (`OfferID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tradeevent`
--

LOCK TABLES `tradeevent` WRITE;
/*!40000 ALTER TABLE `tradeevent` DISABLE KEYS */;
INSERT INTO `tradeevent` VALUES (1,1,2,1,10,15.99,'Sold 10 units to Trader 2',1,'2023-01-01 07:00:00'),(2,2,3,2,8,25.50,'Bought 8 units from Trader 3',2,'2023-01-02 09:30:00'),(3,3,4,3,15,10.75,'Sold 15 units to Trader 4',3,'2023-01-03 05:45:00'),(4,4,5,4,5,50.00,'Bought 5 units from Trader 5',4,'2023-01-04 11:15:00'),(5,5,1,5,20,18.25,'Sold 20 units to Trader 1',5,'2023-01-05 04:15:00'),(6,6,2,1,12,30.40,'Bought 12 units from Trader 2',6,'2023-01-06 06:00:00'),(7,1,3,2,30,12.50,'Sold 30 units to Trader 3',7,'2023-01-07 08:30:00'),(8,2,4,3,5,22.75,'Bought 5 units from Trader 4',8,'2023-01-08 10:30:00'),(9,3,5,4,10,14.99,'Sold 10 units to Trader 5',9,'2023-01-09 03:00:00'),(10,4,1,5,8,40.00,'Bought 8 units from Trader 1',10,'2023-01-10 12:00:00');
/*!40000 ALTER TABLE `tradeevent` ENABLE KEYS */;
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
