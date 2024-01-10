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
-- Table structure for table `trader`
--

DROP TABLE IF EXISTS `trader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trader` (
  `TraderID` int NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ConfirmationCode` varchar(50) DEFAULT NULL,
  `TimeRegistered` timestamp NOT NULL,
  `TimeConfirmed` timestamp NULL DEFAULT NULL,
  `CountryID` int DEFAULT NULL,
  `PreferredCurrencyID` int DEFAULT NULL,
  PRIMARY KEY (`TraderID`),
  UNIQUE KEY `UserName` (`UserName`),
  UNIQUE KEY `Email` (`Email`),
  KEY `CountryID` (`CountryID`),
  KEY `PreferredCurrencyID` (`PreferredCurrencyID`),
  CONSTRAINT `trader_ibfk_1` FOREIGN KEY (`CountryID`) REFERENCES `country` (`CountryID`),
  CONSTRAINT `trader_ibfk_2` FOREIGN KEY (`PreferredCurrencyID`) REFERENCES `currencies` (`CurrencyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trader`
--

LOCK TABLES `trader` WRITE;
/*!40000 ALTER TABLE `trader` DISABLE KEYS */;
INSERT INTO `trader` VALUES (1,'John','Doe','john.doe','password123','john.doe@example.com','ABC123','2023-01-01 04:30:00','2023-01-01 05:00:00',1,1),(2,'Alice','Smith','alice.smith','pass456','alice.smith@example.com','XYZ789','2023-01-02 05:30:00','2023-01-02 05:45:00',2,2),(3,'Bob','Johnson','bob.johnson','secret789','bob.johnson@example.com','PQR456','2023-01-03 06:30:00','2023-01-03 06:50:00',3,3),(4,'Emily','Brown','emily.brown','pwd123','emily.brown@example.com','JKL987','2023-01-04 07:30:00','2023-01-04 07:40:00',4,4),(5,'David','White','david.white','secure567','david.white@example.com','MNO321','2023-01-05 08:30:00','2023-01-05 08:55:00',5,5),(6,'Eva','Jones','eva.jones','mysecret','eva.jones@example.com','GHI654','2023-01-06 09:30:00','2023-01-06 09:35:00',6,6),(7,'Carlos','Silva','carlos.silva','topsecret','carlos.silva@example.com','LMN987','2023-01-07 10:30:00','2023-01-07 10:40:00',7,7),(8,'Linda','Chen','linda.chen','securepass','linda.chen@example.com','ABC987','2023-01-08 11:30:00','2023-01-08 11:45:00',8,8),(9,'Raj','Patel','raj.patel','rajpwd','raj.patel@example.com','XYZ321','2023-01-09 12:30:00','2023-01-09 13:00:00',9,9),(10,'Fernanda','Santos','fernanda.santos','password789','fernanda.sant@example.com','XYZ321','2023-01-10 12:30:00','2023-01-10 13:00:00',10,10);
/*!40000 ALTER TABLE `trader` ENABLE KEYS */;
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
