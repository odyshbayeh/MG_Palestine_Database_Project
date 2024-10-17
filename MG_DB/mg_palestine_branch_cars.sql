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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `carID` int NOT NULL,
  `carType` varchar(50) NOT NULL,
  `carModel` varchar(50) NOT NULL,
  `carColor` varchar(50) NOT NULL,
  `carStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`carID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Sedan','Toyota Camry','Red','Available'),(2,'SUV','Honda CR-V','Blue','Sold'),(3,'Truck','Ford F-150','Black','Available'),(4,'Sedan','Tesla Model 3','White','Available'),(5,'SUV','Chevrolet Tahoe','Gray','Sold'),(6,'Truck','Ram 1500','Red','Available'),(7,'Sedan','BMW 3 Series','Blue','Available'),(8,'SUV','Nissan Rogue','Black','Sold'),(9,'Truck','Toyota Tundra','White','Available'),(10,'Sedan','Mercedes-Benz C-Class','Gray','Available'),(11,'SUV','Ford Explorer','Red','Available'),(12,'Truck','Chevrolet Silverado','Blue','Sold'),(13,'Sedan','Audi A4','Black','Available'),(14,'SUV','Jeep Grand Cherokee','White','Available'),(15,'Truck','GMC Sierra','Gray','Sold'),(16,'Sedan','Lexus ES','Red','Available'),(17,'SUV','Toyota Highlander','Blue','Available'),(18,'Truck','Nissan Titan','Black','Sold'),(19,'Sedan','Honda Accord','White','Available'),(20,'SUV','Mazda CX-5','Gray','Available');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
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
