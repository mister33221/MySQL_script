CREATE DATABASE  IF NOT EXISTS `petpei` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `petpei`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: petpei
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_content` text NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `post_comment_count` int NOT NULL,
  `post_share_count` int NOT NULL,
  `post_collect_count` int NOT NULL,
  `post_like_count` int NOT NULL,
  `post_status` char(1) NOT NULL,
  `privacy_status` char(1) NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `fk_post_member_info` (`member_id`),
  CONSTRAINT `fk_post_member_info` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'??????????????????MVC????????????Model','2021-05-14 12:25:28',NULL,2,2,0,30,'0','2',1),(2,'Domain Object??????????????????Table?????????','2021-05-14 12:25:28',NULL,0,2,2,10,'0','2',2),(3,'Data Access Object???????????????????????????????????????','2021-05-14 12:25:28',NULL,1,2,0,11,'0','2',1),(4,'Business Logic???????????????????????????????????????','2021-05-14 12:25:29',NULL,1,2,2,15,'0','2',3),(5,'???????????????????????????Object-Oriented Programming Language','2021-05-14 12:25:29',NULL,1,2,2,50,'0','2',8),(6,'?????????????????????Relational Database Management System','2021-05-14 12:25:29',NULL,1,2,3,125,'0','1',10),(7,'Object-Relational Mapping????????????????????????????????????????????????????????????\n????????????????????????','2021-05-14 12:25:29',NULL,1,2,3,34,'1','2',10),(8,'Object-Relational Mapping???Domain Object','2021-05-14 12:25:29',NULL,1,2,2,11,'0','2',5),(9,'1???Table??????1???Java??????','2021-05-14 12:25:30',NULL,1,2,2,22,'0','2',4),(10,'1???Column??????1???Java?????????Column?????????????????????????????????Java??????\n','2021-05-14 12:25:30',NULL,1,1,2,15,'0','2',9);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:40
