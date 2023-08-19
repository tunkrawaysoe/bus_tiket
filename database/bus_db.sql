-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bus
-- ------------------------------------------------------
-- Server version	5.5.8

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
-- Table structure for table `bus_table`
--

DROP TABLE IF EXISTS `bus_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_table` (
  `idbus_table` int(11) NOT NULL,
  `BUS_ID` int(11) NOT NULL,
  `BUS_Number` varchar(45) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Model` varchar(45) NOT NULL,
  PRIMARY KEY (`idbus_table`,`BUS_ID`,`BUS_Number`,`Capacity`,`Model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_table`
--

LOCK TABLES `bus_table` WRITE;
/*!40000 ALTER TABLE `bus_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_table` (
  `cityID` int(11) NOT NULL,
  `City1` varchar(45) DEFAULT NULL,
  `City2` varchar(45) DEFAULT NULL,
  `Time` varchar(45) DEFAULT NULL,
  `Ticket_price` int(11) NOT NULL,
  PRIMARY KEY (`cityID`,`Ticket_price`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='City';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
INSERT INTO `new_table` VALUES (1,'Sittwe','Yangon','9:00AM',45000),(2,'Yangon','Sittwe','6:00AM',45000),(3,'Sittwe','Taunggok','8:00AM',25000),(4,'Taunggok','Sittwe','9:00AM',25000),(5,'Sittwe','Thandwe','6:30AM',30000),(6,'Thandwe','Sittwe','8:00Am',30000),(7,'Taunggok','Yangon','10:00AM',30000),(8,'Yangon','Taunggk','3:00PM',30000);
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_table`
--

DROP TABLE IF EXISTS `route_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_table` (
  `idRoute_Table` int(11) NOT NULL,
  `Route_ID` int(11) NOT NULL,
  `Start_Location` varchar(100) NOT NULL,
  `End_Location` varchar(100) NOT NULL,
  `Distance` float NOT NULL,
  `Depature_Time` int(11) NOT NULL,
  `Day` varchar(45) NOT NULL,
  PRIMARY KEY (`idRoute_Table`,`Route_ID`,`Start_Location`,`End_Location`,`Day`,`Depature_Time`,`Distance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_table`
--

LOCK TABLES `route_table` WRITE;
/*!40000 ALTER TABLE `route_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `route_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_test`
--

DROP TABLE IF EXISTS `tbl_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_test`
--

LOCK TABLES `tbl_test` WRITE;
/*!40000 ALTER TABLE `tbl_test` DISABLE KEYS */;
INSERT INTO `tbl_test` VALUES (1,'aa','22'),(2,'bb','66');
/*!40000 ALTER TABLE `tbl_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_table`
--

DROP TABLE IF EXISTS `ticket_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_table` (
  `Ticket_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Schedule_ID` int(11) NOT NULL,
  `Seat_Number` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Booking_Date` datetime NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Ticket_tablecol` varchar(45) NOT NULL,
  PRIMARY KEY (`Ticket_ID`,`Ticket_tablecol`,`Status`,`Booking_Date`,`Price`,`Seat_Number`,`Schedule_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_table`
--

LOCK TABLES `ticket_table` WRITE;
/*!40000 ALTER TABLE `ticket_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo_table`
--

DROP TABLE IF EXISTS `userinfo_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo_table` (
  `iduserinfo_table` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Adress` varchar(45) DEFAULT NULL,
  `NRC` int(11) DEFAULT NULL,
  PRIMARY KEY (`iduserinfo_table`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo_table`
--

LOCK TABLES `userinfo_table` WRITE;
/*!40000 ALTER TABLE `userinfo_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinfo_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-19 16:06:21
