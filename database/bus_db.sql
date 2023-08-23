CREATE DATABASE  IF NOT EXISTS `bus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bus`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bus
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_table` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(100) DEFAULT NULL,
  `admin_password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_table`
--

LOCK TABLES `admin_table` WRITE;
/*!40000 ALTER TABLE `admin_table` DISABLE KEYS */;
INSERT INTO `admin_table` VALUES (1,'admin@gmail.com','12345');
/*!40000 ALTER TABLE `admin_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_table`
--

DROP TABLE IF EXISTS `bus_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_table` (
  `bus_id` int NOT NULL AUTO_INCREMENT,
  `bus_name` varchar(45) DEFAULT NULL,
  `bus_number` varchar(45) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_table`
--

LOCK TABLES `bus_table` WRITE;
/*!40000 ALTER TABLE `bus_table` DISABLE KEYS */;
INSERT INTO `bus_table` VALUES (1,'Transport_U1','RKE-1234',45,'2009'),(2,'Transport_U2(VIP)','RKE-4567',45,'2010'),(3,'Transport_U3','RKE-6478',45,'2009'),(4,'Transport_U4(VIP)','RKE-5555',45,'2013');
/*!40000 ALTER TABLE `bus_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_table`
--

DROP TABLE IF EXISTS `route_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_table` (
  `route_id` int NOT NULL AUTO_INCREMENT,
  `start_location` varchar(100) DEFAULT NULL,
  `end_location` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `departure_date` datetime DEFAULT NULL,
  `bus_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`route_id`),
  KEY `bus_id_idx` (`bus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_table`
--

LOCK TABLES `route_table` WRITE;
/*!40000 ALTER TABLE `route_table` DISABLE KEYS */;
INSERT INTO `route_table` VALUES (1,'Sittwe','Yangon','50000','05:00:00','2023-08-27 00:00:00','1'),(2,'Sittwe','Ponnagyun','6000','05:00:00','2023-08-27 00:00:00','1'),(3,'Sittwe','Kyauk_Taw','10000','05:00:00','2023-08-27 00:00:00','1'),(4,'Sittwe','Ann','40000','05:00:00','2023-08-27 00:00:00','1'),(5,'Yangon','Sittwe','50000','06:00:00','2023-08-27 00:00:00','VIP'),(6,'Yangon','Ann','30000','06:00:00','2023-08-27 00:00:00','VIP'),(7,'Yangon','Kyauk_Taw','40000','06:00:00','2023-08-27 00:00:00','VIP'),(8,'Yangon','Ponnagyun','45000','06:00:00','2023-08-27 00:00:00','VIP'),(9,'Sittwe','Yangon','50000','05:00:00','2023-08-28 00:00:00','3'),(10,'Sittwe','Ponnagyun','6000','05:00:00','2023-08-28 00:00:00','3'),(11,'Sittwe','Kyauk_Taw','10000','05:00:00','2023-08-28 00:00:00','3'),(12,'Sittwe','Ann','40000','05:00:00','2023-08-28 00:00:00','3'),(13,'Yangon','Sittwe','50000','06:00:00','2023-08-28 00:00:00','VIP'),(14,'Yangon','Ann','30000','06:00:00','2023-08-28 00:00:00','VIP'),(15,'Yangon','Kyauk_Taw','40000','06:00:00','2023-08-28 00:00:00','VIP'),(16,'Yangon','Ponnagyun','45000','06:00:00','2023-08-28 00:00:00','VIP'),(17,'Sittwe','Yangon','50000','05:00:00','2023-08-29 00:00:00','2'),(18,'Sittwe','Ponnagyun','6000','05:00:00','2023-08-29 00:00:00','2'),(19,'Sittwe','Kyauk_Taw','10000','05:00:00','2023-08-29 00:00:00','2'),(20,'Sittwe','Ann','40000','05:00:00','2023-08-29 00:00:00','2'),(27,'Yangon','Ann','30000','04:22:00','2023-08-22 00:00:00','4'),(28,'Sittwe','Yangon','10000','05:06:00','2023-08-22 00:00:00','3'),(29,'Sittwe','Yangon','60000','07:00:00','2023-08-31 00:00:00','2'),(30,'Sittwe','Yangon','50000','05:00:00','2023-08-31 00:00:00','2'),(31,'','','50000','05:20:00','2023-09-01 00:00:00','2');
/*!40000 ALTER TABLE `route_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_table`
--

DROP TABLE IF EXISTS `ticket_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_table` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `ticket_number` varchar(45) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `route_id` int DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_table`
--

LOCK TABLES `ticket_table` WRITE;
/*!40000 ALTER TABLE `ticket_table` DISABLE KEYS */;
INSERT INTO `ticket_table` VALUES (13,NULL,23,29,'2023-08-21 17:54:53',1),(14,NULL,24,13,'2023-08-22 11:45:51',1),(15,NULL,25,13,'2023-08-22 11:50:56',1),(16,NULL,26,13,'2023-08-22 12:04:44',0),(17,NULL,27,5,'2023-08-23 15:22:27',0);
/*!40000 ALTER TABLE `ticket_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_table` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `nrc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (1,'AST','male','oxy@gmaf.com','989898988','askdf','88sfasdf'),(2,'AST','male','oxy@gmaf.com','989898988','askdf','88sfasdf'),(3,'Aafdsa','male','asdf@alkdf.com','34823424','adskfasd','kasdf'),(4,'3rrr','female','r3ff','ref','fff','wdwd'),(5,'AST','male','minnsoehlainglksda','989898988','ffu','88sfasdf'),(6,'AST','male','minnsoehlainglksda','989898988','ffu','88sfasdf'),(7,'Mark','male','oxy@gmaf.com','222','A','111'),(8,'Aung Hein Zay','male','oxy@gmaf.com','989898988','askdf','88sfasdf'),(9,'Aung Hein Zay','male','adf@gmail.com','29324354','akdjfks','asdfas'),(10,'adf','female','oxy@gmaf.com','989898988','ffu','88sfasdf'),(11,'Aung Hein Zay','female','adf@gmail.com','12342134','asdsfad','34af'),(12,'Lwon Myint','male','afd@gmail.com','989898988','FFU','88sfasdf'),(13,'Mon soe lin','male','fuf','989898988','askdf','88sfasdf'),(14,'Tun Kyaw Soe','male','afy@gmaf.com','989898988','ffu','88sfasdf'),(15,'Pyay Ti Oo','male','adf@m.com','989898988','ffu','88sfasdf'),(16,'Ko Ko','male','minnsoehlainglksda','fyyu','ffu','88sfasdf'),(17,'Lwin Myint','male','lwonmrunt7879@gmail.com','09.....','Sittwe','11/panata....'),(18,'Mark','male','minnsoehlaing192001@gmail.com','09787543353','Sittwe ','6366373'),(19,'Ko aung','male','ahz007aunghz@gmail.com','087799','Dhsjjffj','Dhsus'),(20,'adf','male','soe@gmail.com OR \'a\'=\'a\'','9678','adt','1'),(21,'aa','male','dd','xx','aa','cc'),(22,'ass','male','ddyttyyu','989898988','dytd7r7s566','s5667'),(23,'Lwin Myint','male','lwonmrunt7879@gmail.com','09690676509','Sittwe','11/Pa Na Ta (Naing)-----'),(24,'dty','male','fuygyi','989898988','gyuggu','wdwd'),(25,'tfty','male','tyft7','00000','t7t7tff67','xtrdy'),(26,'FYUGIUI','male','RR67T788','000','TRFTU','DT'),(27,'Aung Hein Zay','male','admin@gmail.com','989898988','ffu','88sfasdf');
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-23 20:36:07
