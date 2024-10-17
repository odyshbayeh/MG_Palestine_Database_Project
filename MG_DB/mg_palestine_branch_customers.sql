-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mg_palestine_branch
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerID` int NOT NULL,
  `customerName` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `NIN` bigint NOT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `NIN` (`NIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John Doo','john.doe@example.com',1234567890123456),(2,'Jane Smith','jane.smith@example.com',2345678901234567),(3,'Alice Johnson','alice.johnson@example.com',3456789012345678),(4,'Bob Brown','bob.brown@example.com',4567890123456789),(5,'Charlie Davis','charlie.davis@example.com',5678901234567890),(6,'Diana Evans','diana.evans@example.com',6789012345678901),(7,'Edward Garcia','edward.garcia@example.com',7890123456789012),(8,'Fiona Harris','fiona.harris@example.com',8901234567890123),(9,'George Lee','george.lee@example.com',9012345678901234),(10,'Helen King','helen.king@example.com',1234567890123451),(11,'Irene Lopez','irene.lopez@example.com',2345678901234562),(12,'Jack Martin','jack.martin@example.com',3456789012345673),(13,'Karen Nelson','karen.nelson@example.com',4567890123456784),(14,'Larry Oliver','larry.oliver@example.com',5678901234567895),(15,'Monica Perez','monica.perez@example.com',6789012345678906),(16,'Nathan Quinn','nathan.quinn@example.com',7890123456789017),(17,'Olivia Roberts','olivia.roberts@example.com',8901234567890128),(18,'Paul Scott','paul.scott@example.com',9012345678901239),(19,'Quincy Turner','quincy.turner@example.com',1234567890123450),(20,'Rachel Adams','rachel.adams@example.com',2345678901234561);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-09 19:41:48
