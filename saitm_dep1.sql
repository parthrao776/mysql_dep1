-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: saitm
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `dep1`
--

DROP TABLE IF EXISTS `dep1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dep1` (
  `name` varchar(30) DEFAULT NULL,
  `rollno` int DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `marks` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep1`
--

LOCK TABLES `dep1` WRITE;
/*!40000 ALTER TABLE `dep1` DISABLE KEYS */;
INSERT INTO `dep1` VALUES ('hitesh',1,'A',98),('jyoti',1,'A',95),('kismat',5,'D',50),('harsh',1,'A',97),('rajdeep',5,'A',50),('parth',1,'A',97),('manik',1,'A',99),('hitesh',1,'A',98),('jyoti',1,'A',95),('kismat',5,'D',50),('harsh',1,'A',97),('rajdeep',5,'A',50),('parth',1,'A',97),('asd',7,'F',36),('manik',1,'A',99),('fgh',6,'A',67),('jkl',3,'A',89),('hitesh',1,'A',98),('jyoti',1,'A',95),('kismat',5,'D',50),('harsh',1,'A',97),('rajdeep',5,'A',50),('parth',1,'A',97),('hitesh',1,'A',98),('jyoti',2,'A',95),('kismat',5,'D',50),('harsh',3,'A',97),('rajdeep',4,'A',50),('parth',6,'A',97),('hitesh',1,'A',98),('jyoti',2,'A',95),('kismat',5,'D',50),('harsh',3,'A',97),('rajdeep',4,'A',50),('parth',6,'A',97),('hitesh',1,'A',98),('jyoti',2,'A',95),('kismat',5,'D',50),('harsh',3,'A',97),('rajdeep',4,'D',50),('manik',7,'A',99),('parth',6,'A',97),('hitesh',1,'A',98),('jyoti',2,'A',95),('kismat',5,'D',50),('harsh',3,'A',97),('rajdeep',4,'D',50),('manik',7,'A',99),('parth',6,'A',97);
/*!40000 ALTER TABLE `dep1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-14 14:49:17
