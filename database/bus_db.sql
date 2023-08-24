CREATE DATABASE  IF NOT EXISTS `bus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bus`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bus
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `taken_seat_table`
--

DROP TABLE IF EXISTS `taken_seat_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taken_seat_table` (
  `taken_seat_id` int NOT NULL AUTO_INCREMENT,
  `route_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `seat_no` int DEFAULT NULL,
  PRIMARY KEY (`taken_seat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taken_seat_table`
--

LOCK TABLES `taken_seat_table` WRITE;
/*!40000 ALTER TABLE `taken_seat_table` DISABLE KEYS */;
INSERT INTO `taken_seat_table` VALUES (1,1,1,1),(2,1,1,10),(3,1,1,6),(4,1,1,9),(5,1,2,1),(6,1,2,10),(7,1,2,6),(8,1,2,9),(9,1,3,1),(10,1,3,4),(11,1,4,1),(12,1,4,2),(13,1,5,1),(14,1,5,4),(15,1,6,31),(16,1,6,32),(17,1,7,2),(18,1,8,2),(19,1,9,2),(20,1,10,3),(21,1,10,5),(22,1,10,7),(23,1,10,8),(24,1,11,3),(25,1,11,5),(26,1,11,8),(27,1,11,7),(28,1,18,11),(29,1,18,12),(30,1,19,15),(31,1,19,16),(32,1,20,13),(33,1,20,14),(34,1,21,17),(35,1,21,18),(36,1,22,19),(37,1,23,20),(38,1,24,23),(39,1,24,24),(40,1,25,27),(41,1,25,28),(42,1,26,22),(43,1,26,21),(44,1,29,25),(45,1,29,26),(46,1,30,29),(47,1,31,30),(48,1,32,33),(49,1,32,34);
/*!40000 ALTER TABLE `taken_seat_table` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_table`
--

LOCK TABLES `ticket_table` WRITE;
/*!40000 ALTER TABLE `ticket_table` DISABLE KEYS */;
INSERT INTO `ticket_table` VALUES (1,NULL,1,1,'2023-08-24 00:34:32',0),(2,NULL,2,1,'2023-08-24 00:38:36',0),(3,NULL,3,1,'2023-08-24 00:38:37',0),(4,NULL,4,1,'2023-08-24 00:38:43',0),(5,NULL,5,1,'2023-08-24 00:39:00',0),(6,NULL,6,1,'2023-08-24 00:40:25',0),(7,NULL,7,1,'2023-08-24 00:40:53',0),(8,NULL,8,1,'2023-08-24 00:41:37',0),(9,NULL,9,1,'2023-08-24 00:41:52',0),(10,NULL,10,1,'2023-08-24 02:41:00',0),(11,NULL,11,1,'2023-08-24 02:41:08',0),(12,NULL,18,1,'2023-08-24 03:14:17',0),(13,NULL,19,1,'2023-08-24 03:16:35',0),(14,NULL,20,1,'2023-08-24 03:18:03',0),(15,NULL,21,1,'2023-08-24 03:19:05',0),(16,NULL,22,1,'2023-08-24 03:21:40',0),(17,NULL,23,1,'2023-08-24 03:22:57',0),(18,NULL,24,1,'2023-08-24 03:26:19',0),(20,NULL,26,1,'2023-08-24 03:27:57',0),(21,NULL,27,1,'2023-08-24 03:33:47',0),(22,NULL,28,1,'2023-08-24 03:34:40',0),(23,NULL,29,1,'2023-08-24 03:35:12',0),(24,NULL,30,1,'2023-08-24 03:40:42',0),(25,NULL,31,1,'2023-08-24 03:42:20',0),(26,NULL,32,1,'2023-08-24 17:05:06',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (1,'adf','female','dsf@gmail.com','09111111111','sittway','ndf33/'),(2,'adf','female','dsf@gmail.com','09111111111','sittway','ndf33/'),(3,'Minn Soe Hlaing ','male','minnsoehlaing192001@gmail.com','09787543353','Sittwe','11/SATANA(N)132212'),(4,'Lwin Myint','male','lwonmrunt7879@gmail.com','09690676509','Sittwe','11/panata....'),(5,'Minn Soe Hlaing ','male','minnsoehlaing192001@gmail.com','09787543353','Sittwe','11/SATANA(N)132212'),(6,'Lwin Myint','male','lwonmrunt7879@gmail.com','09690676509','Sittwe','11/panata....'),(7,'sir aung','male','ahz007aunghz@gmail.com','09898495517','Kandawgyi','Akdjkfiwkx'),(8,'Toni','male','aungmyooo264901561@gmail.com','09264789','Sittwr','11/SAT(N)1234'),(9,'Toni','male','aungmyooo264901561@gmail.com','09264789','Sittwr','11/SAT(N)1234'),(10,'Mark','male','mornsoehlaing19@gmail.com','09787543353','Sittwe ','11/SATANA 132212'),(11,'Kk','male','tt@gmail.com','0987878676','Address','11/gaga'),(12,'Jj','male','ysy@Hdh.com','636363636','Gsgsg','11/sdf'),(13,'Jj','male','ysy@Hdh.com','636363636','Gsgsg','11/sdf'),(14,'Jj','male','ysy@Hdh.com','636363636','Gsgsg','11/sdf'),(15,'Jj','male','ysy@Hdh.com','636363636','Gsgsg','11/sdf'),(16,'Jj','male','ysy@Hdh.com','636363636','Gsgsg','11/sdf'),(17,'Jj','male','ysy@Hdh.com','636363636','Gsgsg','11/sdf'),(18,'Jj','male','ysy@Hdh.com','636363636','Gsgsg','11/sdf'),(19,'Tt','female','tt@gmail.com','09428634653','sittway','dfsdf'),(20,'Ko Ko','other','tt@gmail.com','09989898989','Tt','Yy'),(21,'daf','other','asfdasdf@gmail.com','09989898989','kdfj','dfsdf'),(22,'adf','male','soe@gmail.com','09111111111','sittway','ndf33/'),(23,'adf','male','Yu@mail.com','9387423874','dkfskdf','djfdf'),(24,'adf','male','soe@gmail.com','09111111111','adt','sdakf'),(25,'A','female','soe@gmail.com','09111111111','adt','11/sdf'),(26,'adf','female','soe@gmail.com','09111111111','sittway','sdakf'),(27,'adf','male','sdf7@gmail.com','09111111111','adt','11/sdf'),(28,'adf','male','df@sdf.com','423434234','sdfjaf','dfsdf'),(29,'A','male','sdf109@gmail.com','09111111111','adt','sdakf'),(30,'adf','male','soe@gmail.com','09111111111','sittway','sadfsd'),(31,'A','male','soe@gmail.com','09111111111','adt','1'),(32,'adf','male','soe@gmail.com','21341234231','asdfasd','dfsdf');
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

-- Dump completed on 2023-08-24 19:56:28
