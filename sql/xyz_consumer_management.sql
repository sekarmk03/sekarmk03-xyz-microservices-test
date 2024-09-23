-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: xyz_consumer_management
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `consumer_limits`
--

DROP TABLE IF EXISTS `consumer_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_limits` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `consumer_id` bigint(20) NOT NULL,
  `tenor` int(11) NOT NULL,
  `limit_amount` bigint(20) NOT NULL,
  `limit_available` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_consumerlimits_customerid_tenor` (`consumer_id`,`tenor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_limits`
--

LOCK TABLES `consumer_limits` WRITE;
/*!40000 ALTER TABLE `consumer_limits` DISABLE KEYS */;
INSERT INTO `consumer_limits` VALUES (1,1,1,100000,100000,'2024-09-22 15:53:09','2024-09-22 15:53:09'),(2,1,2,200000,200000,'2024-09-22 15:53:09','2024-09-22 15:53:09'),(3,1,3,500000,200000,'2024-09-22 15:53:09','2024-09-22 15:53:09'),(4,1,6,700000,700000,'2024-09-22 15:53:09','2024-09-22 15:53:09'),(5,2,1,1000000,1000000,'2024-09-22 15:53:09','2024-09-22 15:53:09'),(6,2,2,1200000,1200000,'2024-09-22 15:53:09','2024-09-22 15:53:09'),(7,2,3,1500000,330000,'2024-09-22 15:53:09','2024-09-23 02:34:11'),(8,2,6,2000000,1150000,'2024-09-22 15:53:09','2024-09-22 15:53:09'),(9,2,12,5000000,4000000,'2024-09-22 16:20:18','2024-09-22 16:24:26');
/*!40000 ALTER TABLE `consumer_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumers`
--

DROP TABLE IF EXISTS `consumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nik` varchar(20) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `legal_name` varchar(100) NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `salary` bigint(20) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `selfie_photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_consumers_nik` (`nik`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumers`
--

LOCK TABLES `consumers` WRITE;
/*!40000 ALTER TABLE `consumers` DISABLE KEYS */;
INSERT INTO `consumers` VALUES (1,'3175123456789009','Budi Santoso','Budi Santoso','Jakarta','1998-05-15',10000000,'./public/uploads/ktp_3175123456789009_22092024.jpg','./public/uploads/photo_3175123456789009_22092024.jpg','2024-09-22 09:22:12','2024-09-22 09:22:12'),(2,'3273098765432112','Annisa Rahma','Annisa Rahma','Bandung','1990-08-22',12000000,'./public/uploads/ktp_3273098765432112_22092024.jpg','./public/uploads/photo_3273098765432112_22092024.jpg','2024-09-22 09:22:12','2024-09-22 09:22:12');
/*!40000 ALTER TABLE `consumers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-23 13:19:10
