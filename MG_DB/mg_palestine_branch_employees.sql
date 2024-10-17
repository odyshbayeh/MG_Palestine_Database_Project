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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employeeID` int NOT NULL,
  `employeeName` varchar(100) NOT NULL,
  `salary` double DEFAULT NULL,
  `dateOfEmployment` date NOT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Michael Johnson',5000.123,'2020-01-15'),(2,'Sarah Williams',5200.456,'2019-03-20'),(3,'David Brown',5400.789,'2018-07-10'),(4,'Emily Davis',5600.321,'2021-05-05'),(5,'Daniel Miller',5800.654,'2017-11-25'),(6,'Sophia Wilson',6000.987,'2020-09-30'),(7,'James Moore',6200.123,'2019-02-18'),(8,'Olivia Taylor',6400.456,'2018-06-22'),(9,'Benjamin Anderson',6600.789,'2021-04-17'),(10,'Mia Thomas',6800.321,'2017-08-12'),(11,'Alexander Jackson',7000.654,'2020-12-28'),(12,'Amelia White',7200.987,'2019-05-09'),(13,'William Harris',7400.123,'2018-10-14'),(14,'Ella Martin',7600.456,'2021-02-27'),(15,'Henry Thompson',7800.789,'2017-07-06'),(16,'Isabella Garcia',8000.321,'2020-11-19'),(17,'Jackson Martinez',8200.654,'2019-03-15'),(18,'Charlotte Rodriguez',8400.987,'2018-09-26'),(19,'Lucas Clark',8600.123,'2021-01-23'),(20,'Ava Lewis',8800.456,'2017-06-08');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
