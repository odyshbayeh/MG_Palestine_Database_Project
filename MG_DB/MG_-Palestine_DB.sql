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
-- Table structure for table `advertisers`
--

DROP TABLE IF EXISTS `advertisers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisers` (
  `employeeID` int NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`employeeID`,`points`),
  CONSTRAINT `advertisers_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisers`
--

LOCK TABLES `advertisers` WRITE;
/*!40000 ALTER TABLE `advertisers` DISABLE KEYS */;
INSERT INTO `advertisers` VALUES (1,100),(2,200),(3,300),(4,400),(5,500);
/*!40000 ALTER TABLE `advertisers` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `cashs`
--

DROP TABLE IF EXISTS `cashs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashs` (
  `saleID` int NOT NULL,
  `processNumber` int NOT NULL,
  `bankCash` double DEFAULT NULL,
  `directCash` double DEFAULT NULL,
  `discounts` float NOT NULL,
  PRIMARY KEY (`saleID`,`processNumber`),
  CONSTRAINT `cashs_ibfk_1` FOREIGN KEY (`saleID`) REFERENCES `sales` (`saleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashs`
--

LOCK TABLES `cashs` WRITE;
/*!40000 ALTER TABLE `cashs` DISABLE KEYS */;
INSERT INTO `cashs` VALUES (1,1001,5000.123,1000.123,5),(2,1002,5200.456,1200.456,4.5),(3,1003,5400.789,1400.789,4),(4,1004,5600.321,1600.321,3.5),(5,1005,5800.654,1800.654,3),(6,1006,6000.987,2000.987,2.5),(7,1007,6200.123,2200.123,2),(8,1008,6400.456,2400.456,1.5),(9,1009,6600.789,2600.789,1),(10,1010,6800.321,2800.321,0.5);
/*!40000 ALTER TABLE `cashs` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `customersphone`
--

DROP TABLE IF EXISTS `customersphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customersphone` (
  `customerID` int NOT NULL,
  `phone` bigint NOT NULL,
  PRIMARY KEY (`customerID`,`phone`),
  CONSTRAINT `customersphone_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customersphone`
--

LOCK TABLES `customersphone` WRITE;
/*!40000 ALTER TABLE `customersphone` DISABLE KEYS */;
INSERT INTO `customersphone` VALUES (1,1234567890),(2,2345678901),(3,3456789012),(4,4567890123),(5,5678901234),(6,6789012345),(7,7890123456),(8,8901234567),(9,9012345678),(10,1234567891),(11,2345678902),(12,3456789013),(13,4567890124),(14,5678901235),(15,6789012346),(16,7890123457),(17,8901234568),(18,9012345679),(19,1234567892),(20,2345678903);
/*!40000 ALTER TABLE `customersphone` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `installmentpayments`
--

DROP TABLE IF EXISTS `installmentpayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `installmentpayments` (
  `saleID` int NOT NULL,
  `processNumber` int NOT NULL,
  `totalCost` double DEFAULT NULL,
  `firstPayment` double DEFAULT NULL,
  `monthlyInstallment` double DEFAULT NULL,
  `NumberOfMonths` int NOT NULL,
  PRIMARY KEY (`saleID`,`processNumber`),
  CONSTRAINT `installmentpayments_ibfk_1` FOREIGN KEY (`saleID`) REFERENCES `sales` (`saleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installmentpayments`
--

LOCK TABLES `installmentpayments` WRITE;
/*!40000 ALTER TABLE `installmentpayments` DISABLE KEYS */;
INSERT INTO `installmentpayments` VALUES (11,2011,14000.654,6000.654,1400.654,10),(12,2012,14400.987,6400.987,1440.987,10),(13,2013,14800.123,6800.123,1480.123,10),(14,2014,15200.456,7200.456,1520.456,10),(15,2015,15600.789,7600.789,1560.789,10),(16,2016,16000.321,8000.321,1600.321,10),(17,2017,16400.654,8400.654,1640.654,10),(18,2018,16800.987,8800.987,1680.987,10),(19,2019,17200.123,9200.123,1720.123,10),(20,2020,17600.456,9600.456,1760.456,10);
/*!40000 ALTER TABLE `installmentpayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `employeeID` int NOT NULL,
  `MonthlyReport` varchar(100) NOT NULL,
  PRIMARY KEY (`employeeID`,`MonthlyReport`),
  CONSTRAINT `managers_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (16,'Monthly report 1'),(17,'Monthly report 2'),(18,'Monthly report 3'),(19,'Monthly report 4'),(20,'Monthly report 5');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `saleID` int NOT NULL,
  `saleDescription` varchar(200) NOT NULL,
  `customerID` int NOT NULL,
  `carID` int DEFAULT NULL,
  `employeeID` int DEFAULT NULL,
  PRIMARY KEY (`saleID`),
  KEY `customarID` (`customerID`),
  KEY `carID` (`carID`),
  KEY `employeeID` (`employeeID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`carID`) REFERENCES `cars` (`carID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'Sale description 1',1,1,6),(2,'Sale description 2',2,2,7),(3,'Sale description 3',3,3,8),(4,'Sale description 4',4,4,9),(5,'Sale description 5',5,5,10),(6,'Sale description 6',6,6,11),(7,'Sale description 7',7,7,12),(8,'Sale description 8',8,8,13),(9,'Sale description 9',9,9,14),(10,'Sale description 10',10,10,15),(11,'Sale description 11',11,11,6),(12,'Sale description 12',12,12,7),(13,'Sale description 13',13,13,8),(14,'Sale description 14',14,14,9),(15,'Sale description 15',15,15,10),(16,'Sale description 16',16,16,11),(17,'Sale description 17',17,17,12),(18,'Sale description 18',18,18,13),(19,'Sale description 19',19,19,14),(20,'Sale description 20',20,20,15);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesmans`
--

DROP TABLE IF EXISTS `salesmans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesmans` (
  `employeeID` int NOT NULL,
  `employeeTarget` int NOT NULL,
  PRIMARY KEY (`employeeID`,`employeeTarget`),
  CONSTRAINT `salesmans_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesmans`
--

LOCK TABLES `salesmans` WRITE;
/*!40000 ALTER TABLE `salesmans` DISABLE KEYS */;
INSERT INTO `salesmans` VALUES (6,60),(7,70),(8,80),(9,90),(10,100),(11,110),(12,120),(13,130),(14,140),(15,150);
/*!40000 ALTER TABLE `salesmans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `serviceID` int NOT NULL,
  `customerID` int NOT NULL,
  `carID` int DEFAULT NULL,
  `ServiceDescription` varchar(200) NOT NULL,
  PRIMARY KEY (`serviceID`),
  KEY `customarID` (`customerID`),
  KEY `carID` (`carID`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `services_ibfk_2` FOREIGN KEY (`carID`) REFERENCES `cars` (`carID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,1,1,'Oil Change'),(2,2,2,'Tire Rotation'),(3,3,3,'Brake Inspection'),(4,4,4,'Battery Replacement'),(5,5,5,'Engine Tune-Up'),(6,6,6,'Transmission Service'),(7,7,7,'Wheel Alignment'),(8,8,8,'Air Filter Replacement'),(9,9,9,'Coolant Flush'),(10,10,10,'Fuel System Cleaning'),(11,11,11,'Spark Plug Replacement'),(12,12,12,'Suspension Inspection'),(13,13,13,'Timing Belt Replacement'),(14,14,14,'Exhaust System Repair'),(15,15,15,'AC Service'),(16,16,16,'Brake Fluid Flush'),(17,17,17,'Steering System Inspection'),(18,18,18,'Tire Replacement'),(19,19,19,'Clutch Repair'),(20,20,20,'Headlight Replacement'),(21,2,2,'Oil Change');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-09 19:39:31
