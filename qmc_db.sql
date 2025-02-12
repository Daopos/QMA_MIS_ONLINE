-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: qmc_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academic_years`
--

DROP TABLE IF EXISTS `academic_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_years` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `academic_year` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_years`
--

LOCK TABLES `academic_years` WRITE;
/*!40000 ALTER TABLE `academic_years` DISABLE KEYS */;
INSERT INTO `academic_years` VALUES (1,'2021-2022',0,'Deactivated','2024-11-04 13:11:44','2024-11-23 18:21:20'),(3,'2022-2023',0,'Deactivated','2024-11-13 12:44:18','2024-11-23 18:21:20'),(4,'2023-2024',0,'Deactivated','2024-11-23 18:07:23','2024-11-23 18:21:20'),(6,'2024-2025',1,'Active','2024-11-23 18:21:04','2024-11-23 18:21:20'),(7,'2025-2026',0,'Inactive','2024-11-25 07:39:31','2024-11-25 07:39:31');
/*!40000 ALTER TABLE `academic_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin',NULL,NULL,'$2y$12$ycG7iBvEMLJVP6xWguZu3.oAAt80SgJ9SyAurrfpceJNY8gaPV/na',NULL,'2024-11-04 13:09:45','2024-11-04 13:09:45');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `owner` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (7,'GENERAL MEETING','Our School will be having a General Meeting on November 11, 2024, at 8:00 in the morning.','admin','registrar-finance-principal-teacher-student-parent','2024-11-05 13:37:13','2024-11-05 13:37:13'),(9,'Parent-Teacher Conference Scheduled','We invite all parents and guardians to attend our upcoming Parent-Teacher Conference on November 18. This is an excellent opportunity to discuss your childΓÇÖs progress, strengths, and areas for growth with their teachers. The conference will take place in the school auditorium from 9:00 AM to 3:00 PM. We encourage all parents to take advantage of this event to foster strong partnerships with our faculty in support of your childΓÇÖs education.','principal','teacher','2024-11-07 18:01:52','2024-11-07 18:01:52');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `user_level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
INSERT INTO `audits` VALUES (1,'Admin','Admin created fee: Tuition Fee with grade type: 7','Admin','2024-11-04 13:10:46','2024-11-04 13:10:46'),(2,'Admin','Admin created fee: MISC with grade type: 8','Admin','2024-11-04 13:11:13','2024-11-04 13:11:13'),(3,'Admin','Create an Academic Year','Admin','2024-11-04 13:11:44','2024-11-04 13:11:44'),(4,'Admin','Activata an Academic Year','Admin','2024-11-04 13:11:51','2024-11-04 13:11:51'),(5,'Admin','Admin registered new employee: Ivan Munoz','Admin','2024-11-04 13:12:31','2024-11-04 13:12:31'),(6,'Ivan N. Munoz','Log in','Registrar','2024-11-04 13:13:14','2024-11-04 13:13:14'),(7,'Admin','Admin registered new employee: Jayson Arandia','Admin','2024-11-04 13:34:50','2024-11-04 13:34:50'),(8,'Jayson Arandia','Log in','Teacher','2024-11-04 13:35:47','2024-11-04 13:35:47'),(9,'Ivan N. Munoz','Log in','Registrar','2024-11-04 13:38:45','2024-11-04 13:38:45'),(10,'Admin','Admin registered new employee: Adrian Negranza','Admin','2024-11-04 13:41:18','2024-11-04 13:41:18'),(11,'Adrian Negranza','Log in','Finance','2024-11-04 13:41:33','2024-11-04 13:41:33'),(12,'Adrian Negranza','Log in','Finance','2024-11-04 13:43:14','2024-11-04 13:43:14'),(13,'Admin','Admin registered new employee: Biance Dela Cruz','Admin','2024-11-04 14:17:17','2024-11-04 14:17:17'),(14,'Biance Dela Cruz','Log in','Principal','2024-11-04 14:17:58','2024-11-04 14:17:58'),(15,'Ivan Negranza Munoz','Added student: Juan Fernandez (Grade Level: 7)','Registrar','2024-11-04 15:30:52','2024-11-04 15:30:52'),(16,'Juan ','Log in','Student','2024-11-04 15:31:48','2024-11-04 15:31:48'),(17,'Parent ofJuan ','Log in','Parent','2024-11-04 15:32:33','2024-11-04 15:32:33'),(18,'Adrian Negranza','Payment made for Student: Juan Fernandez Amount: 500','Finance','2024-11-04 17:51:27','2024-11-04 17:51:27'),(19,'Juan ','Log in','Student','2024-11-05 01:12:14','2024-11-05 01:12:14'),(20,'Admin','Admin registered new employee: Leo Bustillos','Admin','2024-11-05 11:27:34','2024-11-05 11:27:34'),(21,'Leo T. Bustillos','Log in','Registrar','2024-11-05 11:29:38','2024-11-05 11:29:38'),(22,'Admin','Admin registered new employee: Aizen Sosuke','Admin','2024-11-05 11:42:21','2024-11-05 11:42:21'),(23,'Aizen Sosuke','Log in','Finance','2024-11-05 11:44:07','2024-11-05 11:44:07'),(24,'Admin','Admin registered new employee: Ichigo Kurosaki','Admin','2024-11-05 11:46:53','2024-11-05 11:46:53'),(25,'Ichigo Z. Kurosaki','Log in','Principal','2024-11-05 11:48:18','2024-11-05 11:48:18'),(26,'Admin','Admin registered new employee: Rimuru Tempest','Admin','2024-11-05 11:54:42','2024-11-05 11:54:42'),(27,'Rimuru Tempest','Log in','Teacher','2024-11-05 11:58:10','2024-11-05 11:58:10'),(28,'Leo Tomas Bustillos','Added student: Gon Freecs (Grade Level: 8)','Registrar','2024-11-05 12:23:19','2024-11-05 12:23:19'),(29,'Admin','Admin created fee: Testing with grade type: 7','Admin','2024-11-05 12:25:07','2024-11-05 12:25:07'),(30,'Admin','Admin updated fee: Tuition Fee with grade type: 7','Admin','2024-11-05 12:27:37','2024-11-05 12:27:37'),(31,'Admin','Admin created fee: Apps with grade type: 7','Admin','2024-11-05 12:28:04','2024-11-05 12:28:04'),(32,'Gon T. ','Log in','Student','2024-11-05 12:43:37','2024-11-05 12:43:37'),(33,'Parent ofGon T. ','Log in','Parent','2024-11-05 12:45:44','2024-11-05 12:45:44'),(34,'Sosuke Aizen','Payment made for Student: Gon Trey Freecs Amount: 500','Finance','2024-11-05 16:25:23','2024-11-05 16:25:23'),(35,'Ivan N. Munoz','Log in','Registrar','2024-11-06 13:22:55','2024-11-06 13:22:55'),(36,'Admin','Admin created fee: Registration Fee with grade type: 11','Admin','2024-11-06 13:41:47','2024-11-06 13:41:47'),(37,'Sosuke Aizen','Log in','Finance','2024-11-06 14:07:51','2024-11-06 14:07:51'),(38,'Rimuru Tempest','Log in','Teacher','2024-11-06 14:13:22','2024-11-06 14:13:22'),(39,'Juan ','Log in','Student','2024-11-06 15:30:36','2024-11-06 15:30:36'),(40,'Parent ofJuan ','Log in','Parent','2024-11-06 15:36:01','2024-11-06 15:36:01'),(41,'Jayson Arandia','Log in','Teacher','2024-11-06 16:24:41','2024-11-06 16:24:41'),(42,'Rimuru Tempest','Log in','Teacher','2024-11-06 17:46:28','2024-11-06 17:46:28'),(43,'Biance Dela Cruz','Log in','Principal','2024-11-06 18:16:34','2024-11-06 18:16:34'),(44,'Ivan Negranza Munoz','Added student: 234234 234234 (Grade Level: 7)','Registrar','2024-11-06 19:01:54','2024-11-06 19:01:54'),(45,'234234 2. ','Log in','Student','2024-11-06 19:06:58','2024-11-06 19:06:58'),(46,'Admin','Admin registered new employee: Lebron James','Admin','2024-11-07 03:31:07','2024-11-07 03:31:07'),(47,'Lebron James','Log in','Registrar','2024-11-07 03:35:48','2024-11-07 03:35:48'),(48,'Admin','Admin created fee: Tuition Fee with grade type: 12','Admin','2024-11-07 17:40:43','2024-11-07 17:40:43'),(49,'Admin','Admin created fee: Apps with grade type: 12','Admin','2024-11-07 17:40:43','2024-11-07 17:40:43'),(50,'Admin','Create an Academic Year','Admin','2024-11-07 17:41:25','2024-11-07 17:41:25'),(51,'Admin','Admin registered new employee: John Doe','Admin','2024-11-07 17:42:48','2024-11-07 17:42:48'),(52,'Admin','Admin permanently deleted employee: John Doe','Admin','2024-11-07 17:43:59','2024-11-07 17:43:59'),(53,'Admin','Admin archived employee: John Doe','Admin','2024-11-07 17:43:59','2024-11-07 17:43:59'),(54,'Lebron James','Log in','Registrar','2024-11-07 17:47:05','2024-11-07 17:47:05'),(55,'Lebron James','Log in','Registrar','2024-11-07 17:47:27','2024-11-07 17:47:27'),(56,'Lebron James','Added student: John Dela Cruz (Grade Level: 7)','Registrar','2024-11-07 17:51:40','2024-11-07 17:51:40'),(57,'Sosuke Aizen','Log in','Finance','2024-11-07 17:54:04','2024-11-07 17:54:04'),(58,'Sosuke Aizen','Log in','Finance','2024-11-07 17:54:22','2024-11-07 17:54:22'),(59,'Sosuke Aizen','Payment made for Student: Juan Fernandez Amount: 500','Finance','2024-11-07 17:55:02','2024-11-07 17:55:02'),(60,'Ichigo Z. Kurosaki','Log in','Principal','2024-11-07 17:56:04','2024-11-07 17:56:04'),(61,'Sosuke Aizen','Log in','Finance','2024-11-07 17:57:11','2024-11-07 17:57:11'),(62,'Ichigo Z. Kurosaki','Log in','Principal','2024-11-07 17:57:28','2024-11-07 17:57:28'),(63,'Jayson Arandia','Log in','Teacher','2024-11-07 18:02:43','2024-11-07 18:02:43'),(64,'Jayson Arandia','Log in','Teacher','2024-11-07 18:15:34','2024-11-07 18:15:34'),(65,'Ichigo Z. Kurosaki','Log in','Principal','2024-11-09 03:29:34','2024-11-09 03:29:34'),(66,'Leo T. Bustillos','Log in','Registrar','2024-11-09 04:05:23','2024-11-09 04:05:23'),(67,'Leo Tomas Bustillos','Added student: werwer erwr (Grade Level: 7)','Registrar','2024-11-09 04:07:21','2024-11-09 04:07:21'),(68,'Leo Tomas Bustillos','Added student: werew ewrwer (Grade Level: 7)','Registrar','2024-11-09 04:14:03','2024-11-09 04:14:03'),(69,'Admin','Admin registered new employee: sadas asdas','Admin','2024-11-09 05:00:21','2024-11-09 05:00:21'),(70,'Admin','Admin registered new employee: 234523 234','Admin','2024-11-09 05:09:33','2024-11-09 05:09:33'),(71,'Admin','Admin registered new employee: ewwewr werwer','Admin','2024-11-09 05:13:12','2024-11-09 05:13:12'),(72,'Admin','Admin registered new employee: 234 4234','Admin','2024-11-09 05:16:29','2024-11-09 05:16:29'),(73,'Juan ','Log in','Student','2024-11-09 15:09:14','2024-11-09 15:09:14'),(74,'Jayson Arandia','Log in','Teacher','2024-11-09 15:18:53','2024-11-09 15:18:53'),(75,'Juan ','Log in','Student','2024-11-09 16:16:43','2024-11-09 16:16:43'),(76,'Juan ','Log in','Student','2024-11-10 01:52:25','2024-11-10 01:52:25'),(77,'Sosuke Aizen','Payment made for Student: Juan Fernandez Amount: 500','Finance','2024-11-10 12:55:42','2024-11-10 12:55:42'),(78,'Sosuke Aizen','Payment made for Student: Juan Fernandez Amount: 500','Finance','2024-11-12 03:26:43','2024-11-12 03:26:43'),(79,'Juan ','Log in','Student','2024-11-13 12:08:08','2024-11-13 12:08:08'),(80,'Admin','Admin registered new employee: qwe qwe','Admin','2024-11-13 12:12:21','2024-11-13 12:12:21'),(81,'Sosuke Aizen','Log in','Finance','2024-11-13 12:27:23','2024-11-13 12:27:23'),(82,'Admin','Delete an Academic Year','Admin','2024-11-13 12:43:22','2024-11-13 12:43:22'),(83,'Admin','Create an Academic Year','Admin','2024-11-13 12:44:18','2024-11-13 12:44:18'),(84,'Admin','Admin permanently deleted employee: sadas asdas','Admin','2024-11-13 12:55:37','2024-11-13 12:55:37'),(85,'Admin','Admin archived employee: sadas asdas','Admin','2024-11-13 12:55:37','2024-11-13 12:55:37'),(86,'Leo Tomas Bustillos','Added student: Olivia Rodrigo (Grade Level: 11)','Registrar','2024-11-13 13:09:25','2024-11-13 13:09:25'),(87,'Olivia ','Log in','Student','2024-11-13 14:42:35','2024-11-13 14:42:35'),(88,'Sosuke Aizen','Payment made for Student: Olivia Rodrigo Amount: 500','Finance','2024-11-13 15:37:12','2024-11-13 15:37:12'),(89,'Parent ofOlivia ','Log in','Parent','2024-11-13 15:43:18','2024-11-13 15:43:18'),(90,'Sosuke Aizen','Log in','Finance','2024-11-16 03:04:59','2024-11-16 03:04:59'),(91,'Parent ofJuan ','Log in','Parent','2024-11-16 03:05:55','2024-11-16 03:05:55'),(92,'Admin','Admin registered new employee: jobele Dollente','Admin','2024-11-16 03:06:54','2024-11-16 03:06:54'),(93,'Adrian Negranza','Log in','Finance','2024-11-19 06:00:57','2024-11-19 06:00:57'),(94,'Admin','Admin created fee: asas with grade type: 7','Admin','2024-11-22 04:18:35','2024-11-22 04:18:35'),(95,'Admin','Admin created fee: sadasd with grade type: 7','Admin','2024-11-22 04:39:49','2024-11-22 04:39:49'),(96,'Admin','Admin updated fee: asas with grade type: 7','Admin','2024-11-22 04:46:24','2024-11-22 04:46:24'),(97,'Admin','Admin created fee: asdasd with grade type: 7','Admin','2024-11-22 04:46:35','2024-11-22 04:46:35'),(98,'Admin','Admin created fee: asdasd with grade type: 7','Admin','2024-11-22 04:47:31','2024-11-22 04:47:31'),(99,'Admin','Admin created fee: asdasd with grade type: 7','Admin','2024-11-22 04:47:32','2024-11-22 04:47:32'),(100,'Admin','Admin created fee: asdasd with grade type: 7','Admin','2024-11-22 04:47:33','2024-11-22 04:47:33'),(101,'Admin','Admin created fee: asdasd with grade type: 7','Admin','2024-11-22 04:47:33','2024-11-22 04:47:33'),(102,'Admin','Admin created fee: asdasd with grade type: 7','Admin','2024-11-22 04:47:33','2024-11-22 04:47:33'),(103,'Admin','Admin created fee: asdasd with grade type: 7','Admin','2024-11-22 04:47:34','2024-11-22 04:47:34'),(104,'Admin','Admin created fee: 23423 with grade type: 7','Admin','2024-11-22 04:53:41','2024-11-22 04:53:41'),(105,'Admin','Admin created fee: 234234 with grade type: 7','Admin','2024-11-22 04:54:12','2024-11-22 04:54:12'),(106,'Admin','Admin created fee: xcvcv with grade type: 7','Admin','2024-11-22 04:54:28','2024-11-22 04:54:28'),(107,'Admin','Admin deleted fee: asas with grade type: 7','Admin','2024-11-22 04:54:33','2024-11-22 04:54:33'),(108,'Admin','Admin deleted fee: Testing with grade type: 7','Admin','2024-11-22 04:54:35','2024-11-22 04:54:35'),(109,'Admin','Admin deleted fee: Apps with grade type: 7','Admin','2024-11-22 04:54:38','2024-11-22 04:54:38'),(110,'Admin','Admin deleted fee: Tuition Fee with grade type: 7','Admin','2024-11-22 04:54:41','2024-11-22 04:54:41'),(111,'Admin','Admin deleted fee: xcvcv with grade type: 7','Admin','2024-11-22 04:54:43','2024-11-22 04:54:43'),(112,'Admin','Admin deleted fee: 23423 with grade type: 7','Admin','2024-11-22 04:54:46','2024-11-22 04:54:46'),(113,'Admin','Admin deleted fee: 234234 with grade type: 7','Admin','2024-11-22 04:54:47','2024-11-22 04:54:47'),(114,'Admin','Admin deleted fee: asdasd with grade type: 7','Admin','2024-11-22 04:54:49','2024-11-22 04:54:49'),(115,'Admin','Admin deleted fee: asdasd with grade type: 7','Admin','2024-11-22 04:54:51','2024-11-22 04:54:51'),(116,'Admin','Admin deleted fee: asdasd with grade type: 7','Admin','2024-11-22 04:54:53','2024-11-22 04:54:53'),(117,'Admin','Admin deleted fee: asdasd with grade type: 7','Admin','2024-11-22 04:54:55','2024-11-22 04:54:55'),(118,'Leo Tomas Bustillos','Added student: 234234 234234 (Grade Level: 11)','Registrar','2024-11-22 05:21:57','2024-11-22 05:21:57'),(119,'Adrian Negranza','Payment made for Student: Juan Fernandez Amount: 100.10','Finance','2024-11-22 06:07:07','2024-11-22 06:07:07'),(120,'Adrian Negranza','Payment made for Student: Juan Fernandez Amount: 50.10','Finance','2024-11-22 06:11:01','2024-11-22 06:11:01'),(121,'Adrian Negranza','Payment made for Student: Juan Fernandez Amount: 49.10','Finance','2024-11-22 06:13:16','2024-11-22 06:13:16'),(122,'Adrian Negranza','Payment made for Student: Juan Fernandez Amount: 234','Finance','2024-11-22 13:18:50','2024-11-22 13:18:50'),(123,'Adrian Negranza','Payment made for Student: Juan Fernandez Amount: 234','Finance','2024-11-22 13:18:51','2024-11-22 13:18:51'),(124,'Adrian Negranza','Payment made for Student: 234234 234234 234234 Amount: 334','Finance','2024-11-22 13:23:38','2024-11-22 13:23:38'),(125,'Adrian Negranza','Payment made for Student: 234234 234234 234234 Amount: 334','Finance','2024-11-22 13:23:39','2024-11-22 13:23:39'),(126,'Adrian Negranza','Payment made for Student: 234234 234234 234234 Amount: 334','Finance','2024-11-22 13:23:39','2024-11-22 13:23:39'),(127,'Adrian Negranza','Payment made for Student: 234234 234234 234234 Amount: 334','Finance','2024-11-22 13:23:40','2024-11-22 13:23:40'),(128,'Adrian Negranza','Payment made for Student: 234234 234234 234234 Amount: 18','Finance','2024-11-22 13:24:00','2024-11-22 13:24:00'),(129,'Adrian Negranza','Payment made for Student: 234234 234234 234234 Amount: 18','Finance','2024-11-22 13:24:01','2024-11-22 13:24:01'),(130,'Adrian Negranza','Payment made for Student: 234234 234234 234234 Amount: 18','Finance','2024-11-22 13:24:01','2024-11-22 13:24:01'),(131,'Adrian Negranza','Payment made for Student: 234234 234234 234234 Amount: 18','Finance','2024-11-22 13:24:01','2024-11-22 13:24:01'),(132,'Adrian Negranza','Payment made for Student: 234234 234234 234234 Amount: 18','Finance','2024-11-22 13:24:02','2024-11-22 13:24:02'),(133,'Adrian Negranza','Payment made for Student: Juan Fernandez Amount: 23','Finance','2024-11-22 13:27:50','2024-11-22 13:27:50'),(134,'Adrian Negranza','Payment made for Student: Juan Fernandez Amount: 43','Finance','2024-11-22 13:29:28','2024-11-22 13:29:28'),(135,'Parent of werew r. ','Log in','Parent','2024-11-23 03:11:48','2024-11-23 03:11:48'),(136,'Parent of werew r. ewrwer','Log in','Parent','2024-11-23 03:39:36','2024-11-23 03:39:36'),(137,'Ichigo Z. Kurosaki','Log in','Principal','2024-11-23 03:53:33','2024-11-23 03:53:33'),(138,'Ichigo Z. Kurosaki','Added student to class','Principal','2024-11-23 03:56:38','2024-11-23 03:56:38'),(139,'Ichigo Z. Kurosaki','Added student to class','Principal','2024-11-23 03:56:38','2024-11-23 03:56:38'),(140,'Ichigo Z. Kurosaki','Added student \'werwer r. erwr\' to classroom \'21312\'','Principal','2024-11-23 04:01:17','2024-11-23 04:01:17'),(141,'Ichigo Z. Kurosaki','Added student \'werew r. ewrwer\' to classroom \'21312\'','Principal','2024-11-23 04:01:17','2024-11-23 04:01:17'),(142,'Ichigo Z. Kurosaki','Removed student \'werwer r. erwr\' from classroom \'21312\'','Principal','2024-11-23 04:02:46','2024-11-23 04:02:46'),(143,'Ichigo Z. Kurosaki','Removed student \'werew r. ewrwer\' from classroom \'21312\'','Principal','2024-11-23 04:02:46','2024-11-23 04:02:46'),(144,'Ichigo Z. Kurosaki','Created subject \'32324\' for classroom \'21312\'','Principal','2024-11-23 04:21:23','2024-11-23 04:21:23'),(145,'Ichigo Z. Kurosaki','Updated subject \'Science\'','Principal','2024-11-23 04:24:31','2024-11-23 04:24:31'),(146,'Ichigo Z. Kurosaki','Updated subject \'Science\' in classroom \'21312\'','Principal','2024-11-23 04:26:44','2024-11-23 04:26:44'),(147,'Ichigo Z. Kurosaki','Deleted subject \'32324\' from classroom \'21312\'','Principal','2024-11-23 04:28:48','2024-11-23 04:28:48'),(148,'Ichigo Z. Kurosaki','Created classroom \'3423\' for grade level \'7\'','Principal','2024-11-23 04:40:22','2024-11-23 04:40:22'),(149,'Ichigo Z. Kurosaki','Updated classroom \'3423\'','Administrator','2024-11-23 04:41:35','2024-11-23 04:41:35'),(150,'Ichigo Z. Kurosaki','Deleted classroom \'3423\'','Administrator','2024-11-23 04:44:23','2024-11-23 04:44:23'),(151,'Ichigo Z. Kurosaki','Deleted classroom \'124\'','Administrator','2024-11-23 04:45:13','2024-11-23 04:45:13'),(152,'Admin','Activate an Academic Year','Admin','2024-11-23 05:27:29','2024-11-23 05:27:29'),(153,'Leo Tomas Bustillos','Enroll old student: Juan Fernandez (Grade Level: 8)','Registrar','2024-11-23 07:05:30','2024-11-23 07:05:30'),(154,'Juan ','Log in','Student','2024-11-23 07:13:06','2024-11-23 07:13:06'),(155,'Ichigo Z. Kurosaki','Added student \'Juan Fernandez\' to classroom \'Rose\'','Principal','2024-11-23 12:42:32','2024-11-23 12:42:32'),(156,'Ichigo Z. Kurosaki','Created subject \'Test\' for classroom \'Rose\'','Principal','2024-11-23 12:42:59','2024-11-23 12:42:59'),(157,'Leo Tomas Bustillos','Reset password for student: Juan Fernandez (Grade Level: 8)','Registrar','2024-11-23 15:17:58','2024-11-23 15:17:58'),(158,'Leo Tomas Bustillos','Reset password for guardian of student: Juan Fernandez (Grade Level: 8)','Registrar','2024-11-23 16:45:48','2024-11-23 16:45:48'),(159,'Leo Tomas Bustillos','Reset password for guardian of student: Juan Fernandez (Grade Level: 8)','Registrar','2024-11-23 16:57:30','2024-11-23 16:57:30'),(160,'Leo Tomas Bustillos','Reset password for student: Juan Fernandez (Grade Level: 8)','Registrar','2024-11-23 16:59:41','2024-11-23 16:59:41'),(161,'Juan ','Log in','Student','2024-11-23 17:00:27','2024-11-23 17:00:27'),(162,'Admin','Reset password for employee: 234 4234','Admin','2024-11-23 17:30:44','2024-11-23 17:30:44'),(163,'Admin','Create an Academic Year','Admin','2024-11-23 18:07:23','2024-11-23 18:07:23'),(164,'Admin','Activate an Academic Year','Admin','2024-11-23 18:09:07','2024-11-23 18:09:07'),(165,'Admin','Create an Academic Year','Admin','2024-11-23 18:20:53','2024-11-23 18:20:53'),(166,'Admin','Delete an Academic Year','Admin','2024-11-23 18:20:55','2024-11-23 18:20:55'),(167,'Admin','Create an Academic Year','Admin','2024-11-23 18:21:04','2024-11-23 18:21:04'),(168,'Admin','Activate an Academic Year','Admin','2024-11-23 18:21:20','2024-11-23 18:21:20'),(169,'Admin','Reset password for employee: Sosuke Aizen','Admin','2024-11-24 06:22:10','2024-11-24 06:22:10'),(170,'Admin','Reset password for employee: Sosuke Aizen','Admin','2024-11-24 06:27:12','2024-11-24 06:27:12'),(171,'Sosuke Aizen','Log in','Finance','2024-11-24 06:27:33','2024-11-24 06:27:33'),(172,'Admin','Reset password for employee: 234 4234','Admin','2024-11-24 06:28:43','2024-11-24 06:28:43'),(173,'234 4. 4234','Log in','Registrar','2024-11-24 06:29:14','2024-11-24 06:29:14'),(174,'Admin','Reset password for employee: Ichigo Kurosaki','Admin','2024-11-24 06:30:53','2024-11-24 06:30:53'),(175,'Ichigo Z. Kurosaki','Log in','Principal','2024-11-24 06:31:01','2024-11-24 06:31:01'),(176,'Admin','Reset password for employee: Rimuru Tempest','Admin','2024-11-24 06:31:23','2024-11-24 06:31:23'),(177,'Rimuru t. Tempest','Log in','Teacher','2024-11-24 06:31:31','2024-11-24 06:31:31'),(178,'234 423 4234','Enroll old student: John Dela Cruz (Grade Level: 8)','Registrar','2024-11-24 06:33:10','2024-11-24 06:33:10'),(179,'234 423 4234','Reset password for student: John Dela Cruz (Grade Level: 8)','Registrar','2024-11-24 06:35:14','2024-11-24 06:35:14'),(180,'John ','Log in','Student','2024-11-24 06:35:39','2024-11-24 06:35:39'),(181,'234 423 4234','Reset password for guardian of student: John Dela Cruz (Grade Level: 8)','Registrar','2024-11-24 06:36:42','2024-11-24 06:36:42'),(182,'Parent of John Dela Cruz','Log in','Parent','2024-11-24 06:37:06','2024-11-24 06:37:06'),(183,'Parent of John Dela Cruz','Log in','Parent','2024-11-24 06:38:24','2024-11-24 06:38:24'),(184,'Parent of John Dela Cruz','Log in','Parent','2024-11-24 06:39:42','2024-11-24 06:39:42'),(185,'Admin','Reset password for employee: jobele Dollente','Admin','2024-11-25 07:38:19','2024-11-25 07:38:19'),(186,'jobele Dollente','Log in','Registrar','2024-11-25 07:38:49','2024-11-25 07:38:49'),(187,'Admin','Create an Academic Year','Admin','2024-11-25 07:39:31','2024-11-25 07:39:31'),(188,'Admin','Reset password for employee: Sosuke Aizen','Admin','2024-11-25 07:42:55','2024-11-25 07:42:55'),(189,'Sosuke Aizen','Log in','Finance','2024-11-25 07:43:05','2024-11-25 07:43:05'),(190,'Admin','Reset password for employee: Ichigo Kurosaki','Admin','2024-11-25 07:44:48','2024-11-25 07:44:48'),(191,'Ichigo Z. Kurosaki','Log in','Principal','2024-11-25 07:44:59','2024-11-25 07:44:59'),(192,'Ichigo Z. Kurosaki','Added student \'John Dela Cruz\' to classroom \'Rose\'','Principal','2024-11-25 07:46:52','2024-11-25 07:46:52'),(193,'Admin','Admin registered new employee: sadsa dasdas','Admin','2024-11-25 13:57:58','2024-11-25 13:57:58'),(194,'Admin','Reset password for employee: jobele Dollente','Admin','2024-11-25 17:14:19','2024-11-25 17:14:19'),(195,'jobele Dollente','Log in','Registrar','2024-11-25 17:14:26','2024-11-25 17:14:26'),(196,'Admin','Reset password for employee: jobele Dollente','Admin','2024-11-25 17:17:28','2024-11-25 17:17:28'),(197,'jobele Dollente','Log in','Registrar','2024-11-25 17:17:53','2024-11-25 17:17:53'),(198,'jobele Dollente','Log in','Registrar','2024-11-25 17:18:04','2024-11-25 17:18:04'),(199,'jobele Dollente','Log in','Registrar','2024-11-25 17:18:29','2024-11-25 17:18:29'),(200,'Admin','Admin permanently deleted employee: Jayson Arandia','Admin','2024-11-25 17:23:54','2024-11-25 17:23:54'),(201,'Admin','Admin archived employee: Jayson Arandia','Admin','2024-11-25 17:23:54','2024-11-25 17:23:54'),(202,'Admin','Admin registered new employee: Jayson Arandia','Admin','2024-11-25 17:25:34','2024-11-25 17:25:34'),(203,'Jayson P. Arandia','Log in','Registrar','2024-11-25 17:32:49','2024-11-25 17:32:49'),(204,'Admin','Reset password for employee: Jayson Arandia','Admin','2024-11-25 17:36:29','2024-11-25 17:36:29'),(205,'Admin','Reset password for employee: Jayson Arandia','Admin','2024-11-25 17:39:35','2024-11-25 17:39:35'),(206,'Admin','Reset password for employee: toosas werwer','Admin','2024-11-25 17:41:01','2024-11-25 17:41:01'),(207,'Admin','Reset password for employee: Sosuke Aizen','Admin','2024-11-25 17:42:51','2024-11-25 17:42:51'),(208,'Admin','Admin permanently deleted employee: 234 4234','Admin','2024-11-25 17:42:53','2024-11-25 17:42:53'),(209,'Admin','Admin archived employee: 234 4234','Admin','2024-11-25 17:42:53','2024-11-25 17:42:53'),(210,'Admin','Reset password for employee: Sosuke Aizen','Admin','2024-11-25 17:44:15','2024-11-25 17:44:15'),(211,'Admin','Admin registered new employee: Joshua Mindaros','Admin','2024-11-25 17:44:25','2024-11-25 17:44:25'),(212,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 17:45:05','2024-11-25 17:45:05'),(213,'Sosuke Aizen','Log in','Finance','2024-11-25 17:45:11','2024-11-25 17:45:11'),(214,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 17:45:30','2024-11-25 17:45:30'),(215,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 17:46:22','2024-11-25 17:46:22'),(216,'Admin','Reset password for employee: Ichigo Kurosaki','Admin','2024-11-25 17:46:56','2024-11-25 17:46:56'),(217,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 17:48:19','2024-11-25 17:48:19'),(218,'Ichigo Z. Kurosaki','Log in','Principal','2024-11-25 17:49:55','2024-11-25 17:49:55'),(219,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 17:53:11','2024-11-25 17:53:11'),(220,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 17:54:16','2024-11-25 17:54:16'),(221,'Admin','Admin updated fee: MISC with grade type: 8','Admin','2024-11-25 17:54:36','2024-11-25 17:54:36'),(222,'Admin','Admin created fee: Tuition fee with grade type: 9','Admin','2024-11-25 17:55:22','2024-11-25 17:55:22'),(223,'Jayson Pascua Arandia','Enroll old student: Gon Freecs (Grade Level: 9)','Registrar','2024-11-25 17:55:40','2024-11-25 17:55:40'),(224,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 17:56:30','2024-11-25 17:56:30'),(225,'Admin','Admin registered new employee: Joshua Mindaros','Admin','2024-11-25 17:58:51','2024-11-25 17:58:51'),(226,'Sosuke Aizen','Payment made for Student: Gon Trey Freecs Amount: 500.00','Finance','2024-11-25 17:59:35','2024-11-25 17:59:35'),(227,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 18:00:32','2024-11-25 18:00:32'),(228,'Admin','Admin registered new employee: Joshua Mindaros','Admin','2024-11-25 18:02:47','2024-11-25 18:02:47'),(229,'Joshua Mindaros','Log in','Principal','2024-11-25 18:04:03','2024-11-25 18:04:03'),(230,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 18:04:52','2024-11-25 18:04:52'),(231,'Joshua Mindaros','Log in','Principal','2024-11-25 18:05:25','2024-11-25 18:05:25'),(232,'Ichigo Z. Kurosaki','Created classroom \'Rose\' for grade level \'9\'','Principal','2024-11-25 18:06:06','2024-11-25 18:06:06'),(233,'Ichigo Z. Kurosaki','Added student \'Gon T. Freecs\' to classroom \'Rose\'','Principal','2024-11-25 18:06:23','2024-11-25 18:06:23'),(234,'Ichigo Z. Kurosaki','Updated classroom \'Einstein\'','Principal','2024-11-25 18:07:37','2024-11-25 18:07:37'),(235,'Jayson Pascua Arandia','Reset password for student: Gon Freecs (Grade Level: 9)','Registrar','2024-11-25 18:08:33','2024-11-25 18:08:33'),(236,'Admin','Reset password for employee: Joshua Mindaros','Admin','2024-11-25 18:09:11','2024-11-25 18:09:11'),(237,'Gon T. ','Log in','Student','2024-11-25 18:09:49','2024-11-25 18:09:49'),(238,'Ichigo Z. Kurosaki','Created subject \'Philosopy\' for classroom \'Einstein\'','Principal','2024-11-25 18:12:28','2024-11-25 18:12:28'),(239,'jobele Dollente','Added student: asdas asdasd (Grade Level: 7)','Registrar','2024-11-25 18:13:51','2024-11-25 18:13:51'),(240,'Ichigo Z. Kurosaki','Created subject \'Math\' for classroom \'Einstein\'','Principal','2024-11-25 18:15:00','2024-11-25 18:15:00'),(241,'asdas d. ','Log in','Student','2024-11-25 18:15:14','2024-11-25 18:15:14'),(242,'jobele Dollente','Reset password for student: asdas asdasd (Grade Level: 7)','Registrar','2024-11-25 18:16:01','2024-11-25 18:16:01'),(243,'jobele Dollente','Reset password for student: asdas asdasd (Grade Level: 7)','Registrar','2024-11-25 18:18:00','2024-11-25 18:18:00'),(244,'jobele Dollente','Reset password for student: asdas asdasd (Grade Level: 7)','Registrar','2024-11-25 18:23:00','2024-11-25 18:23:00'),(245,'Parent of asdas d. asdasd','Log in','Parent','2024-11-25 18:24:37','2024-11-25 18:24:37'),(246,'jobele Dollente','Reset password for guardian of student: asdas asdasd (Grade Level: 7)','Registrar','2024-11-25 18:26:07','2024-11-25 18:26:07'),(247,'jobele Dollente','Reset password for guardian of student: asdas asdasd (Grade Level: 7)','Registrar','2024-11-25 18:30:21','2024-11-25 18:30:21'),(248,'Parent of asdas d. asdasd','Log in','Parent','2024-11-25 18:31:32','2024-11-25 18:31:32'),(249,'Admin','Reset password for employee: Rimuru Tempest','Admin','2024-11-25 19:10:30','2024-11-25 19:10:30'),(250,'Rimuru t. Tempest','Log in','Teacher','2024-11-25 19:11:23','2024-11-25 19:11:23'),(251,'Rimuru t. Tempest','Log in','Teacher','2024-11-25 19:13:00','2024-11-25 19:13:00'),(252,'jobele Dollente','Reset password for student: Gon Freecs (Grade Level: 9)','Registrar','2024-11-25 20:24:27','2024-11-25 20:24:27'),(253,'Gon T. ','Log in','Student','2024-11-25 20:24:48','2024-11-25 20:24:48'),(254,'Admin','Reset password for employee: Sosuke Aizen','Admin','2024-11-25 20:48:43','2024-11-25 20:48:43'),(255,'Sosuke Aizen','Log in','Finance','2024-11-25 20:49:04','2024-11-25 20:49:04'),(256,'Sosuke Aizen','Log in','Finance','2024-11-25 21:11:42','2024-11-25 21:11:42'),(257,'Admin','Reset password for employee: toosas werwer','Admin','2024-11-25 21:13:18','2024-11-25 21:13:18'),(258,'toosas w. werwer','Log in','Registrar','2024-11-25 21:13:38','2024-11-25 21:13:38'),(259,'Admin','Reset password for employee: Sosuke Aizen','Admin','2024-11-26 03:31:09','2024-11-26 03:31:09'),(260,'Sosuke Aizen','Log in','Finance','2024-11-26 03:31:31','2024-11-26 03:31:31'),(261,'Sosuke Aizen','Payment made for Student: asdas dasda asdasd Amount: 23','Finance','2024-11-26 03:37:33','2024-11-26 03:37:33'),(262,'Sosuke Aizen','Payment made for Student: asdas dasda asdasd Amount: 36','Finance','2024-11-26 03:37:58','2024-11-26 03:37:58'),(263,'Sosuke Aizen','Payment made for Student: 234234 234234 234234 Amount: 34','Finance','2024-11-26 03:44:56','2024-11-26 03:44:56'),(264,'Sosuke Aizen','Payment made for Student: werwer rwerwe erwr Amount: 57','Finance','2024-11-26 03:45:09','2024-11-26 03:45:09'),(265,'Sosuke Aizen','Payment made for Student: 234234 234234 234234 Amount: -100','Finance','2024-11-26 03:45:39','2024-11-26 03:45:39'),(266,'Sosuke Aizen','Payment made for Student: 234234 234234 234234 Amount: 9000','Finance','2024-11-26 03:47:35','2024-11-26 03:47:35'),(267,'toosas w. werwer','Log in','Registrar','2024-11-26 03:54:40','2024-11-26 03:54:40'),(268,'Sosuke Aizen','Payment made for Student: 234234 234234 234234 Amount: -200','Finance','2024-11-26 04:05:46','2024-11-26 04:05:46'),(269,'toosas wrwere werwer','Updated enrollment form.','Registrar','2024-11-26 04:11:28','2024-11-26 04:11:28'),(270,'Admin','Reset password for employee: sadsa test','Admin','2024-11-26 04:38:30','2024-11-26 04:38:30'),(271,'sadsa test','Log in','Teacher','2024-11-26 04:38:53','2024-11-26 04:38:53');
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choices`
--

DROP TABLE IF EXISTS `choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` bigint(20) unsigned NOT NULL,
  `choice_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `choices_question_id_foreign` (`question_id`),
  CONSTRAINT `choices_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choices`
--

LOCK TABLES `choices` WRITE;
/*!40000 ALTER TABLE `choices` DISABLE KEYS */;
INSERT INTO `choices` VALUES (1,2,'1','2024-11-04 19:25:49','2024-11-04 19:25:49'),(2,2,'2','2024-11-04 19:25:49','2024-11-04 19:25:49'),(3,2,'3','2024-11-04 19:25:49','2024-11-04 19:25:49'),(4,7,'1','2024-11-07 18:18:30','2024-11-07 18:18:30'),(5,7,'2','2024-11-07 18:18:30','2024-11-07 18:18:30'),(6,7,'3','2024-11-07 18:18:30','2024-11-07 18:18:30'),(7,10,'A. Ban','2024-11-13 14:56:05','2024-11-13 14:56:05'),(8,10,'B. Merlin','2024-11-13 14:56:05','2024-11-13 14:56:05'),(9,10,'C. Escanor','2024-11-13 14:56:05','2024-11-13 14:56:05'),(10,10,'D. Meliodas','2024-11-13 14:56:05','2024-11-13 14:56:05'),(11,11,'A. Ban','2024-11-13 14:56:06','2024-11-13 14:56:06'),(12,11,'B. Merlin','2024-11-13 14:56:06','2024-11-13 14:56:06'),(13,11,'C. Escanor','2024-11-13 14:56:06','2024-11-13 14:56:06'),(14,11,'D. Meliodas','2024-11-13 14:56:06','2024-11-13 14:56:06'),(15,12,'A. Ban','2024-11-13 14:56:07','2024-11-13 14:56:07'),(16,12,'B. Merlin','2024-11-13 14:56:07','2024-11-13 14:56:07'),(17,12,'C. Escanor','2024-11-13 14:56:07','2024-11-13 14:56:07'),(18,12,'D. Meliodas','2024-11-13 14:56:07','2024-11-13 14:56:07'),(19,22,'test','2024-11-23 13:12:59','2024-11-23 13:12:59'),(20,22,'tests','2024-11-23 13:12:59','2024-11-23 13:12:59'),(21,31,'asdas','2024-11-23 13:21:14','2024-11-23 13:21:14');
/*!40000 ALTER TABLE `choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classlists`
--

DROP TABLE IF EXISTS `classlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `class_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classlists_student_id_foreign` (`student_id`),
  KEY `classlists_class_id_foreign` (`class_id`),
  CONSTRAINT `classlists_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `classlists_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classlists`
--

LOCK TABLES `classlists` WRITE;
/*!40000 ALTER TABLE `classlists` DISABLE KEYS */;
INSERT INTO `classlists` VALUES (1,1,1,'2024-11-04 15:31:07','2024-11-04 15:31:07'),(2,2,2,'2024-11-05 13:12:15','2024-11-05 13:12:15'),(3,6,3,'2024-11-07 17:58:24','2024-11-07 17:58:24'),(4,9,4,'2024-11-13 13:58:30','2024-11-13 13:58:30'),(5,5,3,'2024-11-18 12:55:59','2024-11-18 12:55:59'),(23,1,15,'2024-11-23 12:42:32','2024-11-23 12:42:32'),(24,6,23,'2024-11-25 07:46:52','2024-11-25 07:46:52'),(25,2,26,'2024-11-25 18:06:23','2024-11-25 18:06:23');
/*!40000 ALTER TABLE `classlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `grade_level` varchar(255) NOT NULL,
  `adviser_id` bigint(20) unsigned DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classrooms_adviser_id_foreign` (`adviser_id`),
  CONSTRAINT `classrooms_adviser_id_foreign` FOREIGN KEY (`adviser_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (1,'21312','7',NULL,1,'2024-11-04 14:42:42','2024-11-23 18:21:20'),(2,'Rose','8',NULL,1,'2024-11-05 13:07:19','2024-11-23 18:21:20'),(3,'Eagle','7',NULL,1,'2024-11-07 17:58:03','2024-11-23 18:21:20'),(4,'Magenta','11',NULL,1,'2024-11-13 13:58:20','2024-11-23 18:21:20'),(14,'21312','7',NULL,1,'2024-11-23 05:27:29','2024-11-23 18:21:20'),(15,'Rose','8',NULL,1,'2024-11-23 05:27:29','2024-11-23 18:21:20'),(16,'Eagle','7',NULL,1,'2024-11-23 05:27:29','2024-11-23 18:21:20'),(17,'Magenta','11',NULL,1,'2024-11-23 05:27:29','2024-11-23 18:21:20'),(18,'21312','7',NULL,1,'2024-11-23 18:09:07','2024-11-23 18:21:20'),(19,'Rose','8',NULL,1,'2024-11-23 18:09:07','2024-11-23 18:21:20'),(20,'Eagle','7',NULL,1,'2024-11-23 18:09:07','2024-11-23 18:21:20'),(21,'Magenta','11',NULL,1,'2024-11-23 18:09:07','2024-11-23 18:21:20'),(22,'21312','7',NULL,0,'2024-11-23 18:21:20','2024-11-23 18:21:20'),(23,'Rose','8',NULL,0,'2024-11-23 18:21:20','2024-11-23 18:21:20'),(24,'Eagle','7',NULL,0,'2024-11-23 18:21:20','2024-11-23 18:21:20'),(25,'Magenta','11',NULL,0,'2024-11-23 18:21:20','2024-11-23 18:21:20'),(26,'Einstein','9',8,0,'2024-11-25 18:06:06','2024-11-25 18:07:37');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classwork_submissions`
--

DROP TABLE IF EXISTS `classwork_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classwork_submissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classwork_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classwork_submissions_classwork_id_foreign` (`classwork_id`),
  KEY `classwork_submissions_student_id_foreign` (`student_id`),
  CONSTRAINT `classwork_submissions_classwork_id_foreign` FOREIGN KEY (`classwork_id`) REFERENCES `classworks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `classwork_submissions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classwork_submissions`
--

LOCK TABLES `classwork_submissions` WRITE;
/*!40000 ALTER TABLE `classwork_submissions` DISABLE KEYS */;
INSERT INTO `classwork_submissions` VALUES (1,4,1,100,'2024-11-05 02:12:33','2024-11-05 02:21:23'),(2,5,1,0,'2024-11-05 02:28:05','2024-11-05 02:28:05'),(3,40,9,10,'2024-11-13 15:18:43','2024-11-13 15:28:56'),(4,48,1,100,'2024-11-18 12:30:36','2024-11-18 12:35:55'),(5,48,1,0,'2024-11-18 12:30:38','2024-11-18 12:30:38'),(6,48,1,0,'2024-11-18 12:30:38','2024-11-18 12:30:38'),(7,48,1,0,'2024-11-18 12:30:38','2024-11-18 12:30:38'),(8,48,1,0,'2024-11-18 12:30:38','2024-11-18 12:30:38'),(9,47,1,0,'2024-11-18 12:31:41','2024-11-18 12:31:41'),(10,37,1,0,'2024-11-18 12:39:02','2024-11-18 12:39:02'),(11,35,1,100,'2024-11-18 12:40:56','2024-11-18 12:41:50'),(12,49,1,100,'2024-11-18 13:05:53','2024-11-18 13:09:32'),(13,34,1,100,'2024-11-18 13:28:52','2024-11-18 13:32:59'),(14,50,1,NULL,'2024-11-23 12:43:44','2024-11-23 12:43:44'),(15,51,1,NULL,'2024-11-23 12:44:18','2024-11-23 12:44:18'),(19,55,2,20,'2024-11-25 18:30:43','2024-11-25 18:54:29');
/*!40000 ALTER TABLE `classwork_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classworks`
--

DROP TABLE IF EXISTS `classworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classworks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classworks_subject_id_foreign` (`subject_id`),
  CONSTRAINT `classworks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classworks`
--

LOCK TABLES `classworks` WRITE;
/*!40000 ALTER TABLE `classworks` DISABLE KEYS */;
INSERT INTO `classworks` VALUES (3,1,'Activity 1','Imagine you are a tiny water droplet. Write an essay describing your journey through the water cycle. Where do you start, and what happens to you as you travel through each stage of the cycle? Describe what you see, feel, and experience along the way.','open',NULL,100,'2024-11-04 19:23:16','2024-11-04 19:23:16'),(4,2,'Hello','AHHAHAHHAH','open',NULL,100,'2024-11-05 02:02:01','2024-11-05 02:02:01'),(5,2,'Testing','Sheesh','open',NULL,90,'2024-11-05 02:23:55','2024-11-05 02:23:55'),(6,1,'234','234234','open',NULL,100,'2024-11-05 04:03:45','2024-11-05 04:03:45'),(7,1,'23123','213121312','open',NULL,100,'2024-11-05 04:06:55','2024-11-05 04:06:55'),(8,1,'234234','24234234','open',NULL,100,'2024-11-05 04:08:30','2024-11-05 04:08:30'),(9,1,'234','234234','open',NULL,100,'2024-11-05 04:09:54','2024-11-05 04:09:54'),(10,1,'23423','4234234','close','2024-11-05 14:44:00',100,'2024-11-05 04:44:04','2024-11-17 02:24:08'),(11,1,'23423','2323','open',NULL,100,'2024-11-05 04:45:03','2024-11-05 04:45:03'),(12,1,'234','234234','open',NULL,100,'2024-11-05 04:46:02','2024-11-05 04:46:02'),(13,1,'234','234234','open',NULL,100,'2024-11-05 04:47:42','2024-11-05 04:47:42'),(14,1,'234','23423','open',NULL,100,'2024-11-05 04:51:07','2024-11-05 04:51:07'),(15,2,'234234','23423','open',NULL,100,'2024-11-05 04:55:27','2024-11-05 04:55:27'),(16,2,'234234','23423','open',NULL,100,'2024-11-05 04:56:54','2024-11-05 04:56:54'),(17,2,'234234','23423','open',NULL,100,'2024-11-05 04:57:29','2024-11-05 04:57:29'),(18,2,'xcz','cxzxczxc','open',NULL,100,'2024-11-05 04:58:12','2024-11-05 04:58:12'),(19,2,'234234','234234234234','open',NULL,100,'2024-11-05 05:01:14','2024-11-05 05:01:14'),(20,2,'cvcv','cvcvcv','open',NULL,100,'2024-11-05 05:07:19','2024-11-05 05:07:19'),(21,2,'23423','4234234','open',NULL,100,'2024-11-05 05:15:25','2024-11-05 05:15:25'),(22,2,'234234','234234','open',NULL,100,'2024-11-05 05:30:56','2024-11-05 05:30:56'),(23,2,'234234','234234','open',NULL,100,'2024-11-05 05:32:05','2024-11-05 05:32:05'),(24,1,'23423','423423423','open',NULL,100,'2024-11-05 05:35:27','2024-11-05 05:35:27'),(25,1,'2342','34234234','open',NULL,100,'2024-11-05 05:40:32','2024-11-05 05:40:32'),(26,1,'2342','34234234','open',NULL,100,'2024-11-05 05:42:13','2024-11-05 05:42:13'),(27,1,'23423','4234','open',NULL,100,'2024-11-05 05:42:52','2024-11-05 05:42:52'),(28,1,'234234234','234234','open',NULL,100,'2024-11-05 05:42:59','2024-11-05 05:42:59'),(29,1,'234234234','234234','open',NULL,100,'2024-11-05 05:45:22','2024-11-05 05:45:22'),(30,1,'234234234','234234','open',NULL,100,'2024-11-05 05:45:26','2024-11-05 05:45:26'),(31,1,'234234234','234234','open',NULL,100,'2024-11-05 05:45:27','2024-11-05 05:45:27'),(32,1,'234234234','234234','open',NULL,100,'2024-11-05 05:45:40','2024-11-05 05:45:40'),(33,1,'23423','23423','open',NULL,100,'2024-11-05 05:49:28','2024-11-05 05:49:28'),(34,1,'test','23423','open',NULL,100,'2024-11-05 06:07:42','2024-11-05 06:07:42'),(35,1,'2342342','23423423','open',NULL,100,'2024-11-05 10:23:27','2024-11-05 10:23:27'),(37,1,'Sample','Sample','open',NULL,100,'2024-11-07 18:17:15','2024-11-07 18:17:15'),(40,20,'Module 1','answer the sctivity 1','close','2024-11-14 22:43:00',10,'2024-11-13 14:43:22','2024-11-17 02:24:08'),(41,2,'rewer','werwerwer','close','2024-11-20 10:35:00',100,'2024-11-17 02:35:15','2024-11-24 03:08:47'),(42,2,'rewer','werwerwer','close','2024-11-20 10:35:00',100,'2024-11-17 02:35:16','2024-11-24 03:08:47'),(43,2,'rewer','werwerwer','close','2024-11-20 10:35:00',100,'2024-11-17 02:35:16','2024-11-24 03:08:47'),(44,2,'rewer','werwerwer','close','2024-11-20 10:35:00',100,'2024-11-17 02:35:16','2024-11-24 03:08:47'),(46,2,'rewer','werwerwer','close','2024-11-20 10:35:00',100,'2024-11-17 02:35:17','2024-11-24 03:08:47'),(47,1,'wer','werwer','open',NULL,100,'2024-11-18 12:27:34','2024-11-18 12:27:34'),(48,1,'zxc','xczz','open',NULL,100,'2024-11-18 12:27:46','2024-11-18 12:27:46'),(49,1,'wet','wtwet','open',NULL,100,'2024-11-18 13:05:41','2024-11-18 13:05:41'),(50,31,'test','test','open',NULL,100,'2024-11-23 12:43:35','2024-11-23 12:43:35'),(51,31,'qwerew','rwer','open',NULL,100,'2024-11-23 12:44:08','2024-11-23 12:44:08'),(55,34,'Module1','Answer activity 2','open',NULL,20,'2024-11-25 18:30:08','2024-11-25 18:30:08');
/*!40000 ALTER TABLE `classworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `activation` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `extension_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'images/9zCMR3wd1hr4URtCE3XzgKbd6RUXScfDBWt0YWOt.jpg','proctantgaming@gmail.com',NULL,'Ivan','$2y$12$EJhEfa4jmGTXdxTQiFyu/eVhsaO/7UQPmkVheFpdSdnqfV2Mv29VK','Negranza','Munoz','Calepaan, Asingan, Pangasinan','Registrar','desc',1,NULL,'2024-11-04 13:12:31','2024-11-06 14:26:28',NULL,NULL),(2,'images/GbITINGVdb8UqPVTfDdSKhLwRtzYjpUGJOH9H3xQ.jpg','jayson@gmail.com',NULL,'Jayson','$2y$12$XM3PFCfeOsEGlI9At9ch9./qATQt6Of814ZMlByfmhEBuF/pe4CF.',NULL,'Arandia','Umingan','Teacher','desc',1,NULL,'2024-11-04 13:34:50','2024-11-23 14:08:32',NULL,NULL),(3,'images/fyjYV2pHvZAKVTrvtMx1gUyUEuEFZDr5uhbUaRLN.jpg','ivan@gmail.com',NULL,'Adrian','$2y$12$ymenCj9t3vKKj.1xtv8dn.Dcdz6vKn0wky7kJRv6JKLR6u1gJoytO',NULL,'Negranza','Calepaan, Asingan, Pangasinan','Finance','desc',1,NULL,'2024-11-04 13:41:18','2024-11-19 06:10:55',NULL,NULL),(4,NULL,'principal@gmail.com',NULL,'Biance','$2y$12$YCggT.nW35mhveDG5yHUE.0qWXTQWEzpitR4eMUoRjnIF2GuwJVQy',NULL,'Dela Cruz','Calepaan, Asingan, Pangasinan','Principal','desc',1,NULL,'2024-11-04 14:17:17','2024-11-06 18:16:26',NULL,NULL),(5,'images/BkbwVmyvGSbtuKjpLMhrNbAIUb5Nm34U78prk4OQ.jpg','leo@gmail.com',NULL,'Leo','$2y$12$Krd/T1quvw27B9yYZxoc8uS8ZgdJdxN73IuVZbmBmyQXH49kDL6lG','Tomas','Bustillos','Flores Umingan Pangasinan','Registrar','desc',1,NULL,'2024-11-05 11:27:34','2024-11-13 12:25:16',NULL,NULL),(6,'images/8ANeo1D55w41vHiGInKtwQB1AWSY7KY6VGb1OG3a.jpg','aizen@gmail.com',NULL,'Sosuke','$2y$12$9dd682/1ICf5LMfEEHA5OuZQoZvF4rFIUStiqyF5WxqgypcF1DUMW',NULL,'Aizen','Cabalitian Umingan Pangasinan','Finance','desc',1,NULL,'2024-11-05 11:42:21','2024-11-26 04:25:41',NULL,NULL),(7,'images/tU2i1Je5kwyB5ECmTmzdnpW8Kvfn5G27ebFiKgVj.jpg','ichigo@gmail.com',NULL,'Ichigo','$2y$12$.EChwkXZ/uT37mFjuYnnuOF4wlSCdSVVyRpbdDXib4siiPQc/Oq5u','Zangetsu','Kurosaki','Sinabaan Umingan Pangasinan','Principal','desc',1,NULL,'2024-11-05 11:46:53','2024-11-26 04:37:09',NULL,NULL),(8,'images/l8O13zoxV150KJmttVuRJhEV7GTmgjguNxbzDUcL.jpg','rimuru@gmail.com',NULL,'Rimuru','$2y$12$.vZXI6vlv6LH4Myt3u1TmOR/BfzVpnV9BKFnULxZtpDzxVL/2Osue','test','Tempest','Pemienta, Umingan, Pangasinan','Teacher','desc',1,NULL,'2024-11-05 11:54:42','2024-11-25 19:10:56',NULL,NULL),(9,'images/DBzD5Mu5OfdBeGuOugQ193hIeLCjO8q4hLFQJXrH.jpg','lebron@gmail.com',NULL,'Lebron','$2y$12$hgow1H63tLs4SjsF7VFXsuJjdBgN6856imBK0l1vszw4G4uFmJYci',NULL,'James','Urdaneta  City','Registrar','desc',1,NULL,'2024-11-07 03:31:07','2024-11-07 17:53:09',NULL,NULL),(10,NULL,'johndoe@gmail.com',NULL,'John','$2y$12$9Em8ziU.z5B27LOuUTry5OGSrv8s83mPDRykpbpJ8q8RbpQojEhom',NULL,'Doe','Urdante City','Teacher','desc',0,NULL,'2024-11-07 17:42:48','2024-11-07 17:43:59','2024-11-07 17:43:59',NULL),(11,NULL,'asdas@gmail.com',NULL,'sadas','$2y$12$SFb3F6GQU706Fom6JGPh7e2Xl8jiMa.lii0cD2sjdmg375NNZy68u','dasd','asdas','dasdas','Registrar','desc',0,NULL,'2024-11-09 05:00:21','2024-11-13 12:55:37','2024-11-13 12:55:37',NULL),(12,NULL,'joshuaroymi233ndaros25@gmail.com',NULL,'234523','$2y$12$IVhxdT5UUytltIcX.RgvheE5VKd8coYBw7.C3funQJ9qx1xwF7GH.','4234234','234','234234','Registrar','desc',0,NULL,'2024-11-09 05:09:33','2024-11-09 05:12:57',NULL,NULL),(13,'images/fLzaGAJ6HhAl9dJRL8TP9VmcyGi37nwFg2xBm0Xb.jpg','joshuaroymindaros@gmail.com',NULL,'toosas','$2y$12$WspXJMNMIsgDEPwDsUZx7.gADvgSczWA19wa6CBAaFO3v3jrARyAy','wrwere','werwer','werwe','Registrar','desc',1,NULL,'2024-11-09 05:13:12','2024-11-26 04:24:27',NULL,NULL),(16,'images/EtIyfX8xWmHgOT8LE0kQxC00wU5iQ6WjNjMc0rSc.jpg','jobeledollente028@gmail.com',NULL,'jobele','$2y$12$mzwgOST2ExmEwEMqUKDy4OfjbeFkIamTDKL6u7hjE4TxD5A61KCi2',NULL,'Dollente','Urdaneta City','Registrar','desc',1,NULL,'2024-11-16 03:06:54','2024-11-25 17:18:20',NULL,NULL),(17,'images/Jz7eHSFgyUMaHMW1EXop6JUgi5zMzo4vwlsacwbV.jpg','tette@gmail.com',NULL,'sadsa','$2y$12$jXE/92anCQRTfo5lpwqNoOB1ezS.zxR8l9sAmsY.EN0qD.qy3XcGy',NULL,'test','asdas','Teacher','desc',1,NULL,'2024-11-25 13:57:58','2024-11-26 04:40:20',NULL,NULL),(18,'images/WsDnf3ImrwBdbHZFZbglBiKnyylBR2kbw97WZKAf.jpg','jaysonpascuaarandia@gmail.com',NULL,'Jayson','$2y$12$b4Xyh1CEwc0cleal6atC7en.G.9BaBBRQl5CBOkDiIGXaqVauIeiW','Pascua','Arandia','Sinabaan Umingan Pangasinan','Registrar','desc',0,NULL,'2024-11-25 17:25:34','2024-11-25 19:07:17',NULL,NULL),(21,NULL,'joshuaroymindaros25@gmail.com',NULL,'Joshua','$2y$12$XIXIRxtVfEE4k/Qx1KnH.OOLmq3ocQsepCKvVFgxGTVALQsXlj3oa',NULL,'Mindaros','asdasd','Principal','desc',0,NULL,'2024-11-25 18:02:47','2024-11-25 18:09:08',NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `academic_year_id` bigint(20) unsigned NOT NULL,
  `grade_level` varchar(255) DEFAULT NULL,
  `enrollment_status` varchar(255) DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enrollments_student_id_foreign` (`student_id`),
  KEY `enrollments_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `enrollments_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enrollments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,1,1,'7','done',1,'2024-11-04 15:30:52','2024-11-23 07:05:30'),(2,2,1,'8','done',1,'2024-11-05 12:23:19','2024-11-25 17:55:40'),(3,5,1,'7','unenrolled',1,'2024-11-06 19:01:54','2024-11-23 05:27:28'),(4,6,1,'7','done',1,'2024-11-07 17:51:40','2024-11-24 06:33:10'),(5,7,1,'7','unenrolled',1,'2024-11-09 04:07:21','2024-11-23 05:27:28'),(6,8,1,'7','unenrolled',1,'2024-11-09 04:14:03','2024-11-23 05:27:28'),(7,9,1,'11','unenrolled',1,'2024-11-13 13:09:25','2024-11-23 05:27:28'),(8,10,1,'11','unenrolled',1,'2024-11-22 05:21:57','2024-11-23 05:27:28'),(12,1,3,'8','unenrolled',1,'2024-11-23 07:05:30','2024-11-23 18:09:07'),(13,6,6,'8','enrolled',0,'2024-11-24 06:33:10','2024-11-24 06:33:10'),(14,2,6,'9','enrolled',0,'2024-11-25 17:55:40','2024-11-25 17:55:40'),(15,11,6,'7','enrolled',0,'2024-11-25 18:13:51','2024-11-25 18:13:51');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollmet_forms`
--

DROP TABLE IF EXISTS `enrollmet_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollmet_forms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `files` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollmet_forms`
--

LOCK TABLES `enrollmet_forms` WRITE;
/*!40000 ALTER TABLE `enrollmet_forms` DISABLE KEYS */;
INSERT INTO `enrollmet_forms` VALUES (1,'enrollment_forms/giVcnSsg5VvtmlFR1YFfap4CsLL8LorQCes4PSCV.pdf','2024-11-25 14:53:12','2024-11-26 04:11:28');
/*!40000 ALTER TABLE `enrollmet_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_fees`
--

DROP TABLE IF EXISTS `grade_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade_fees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `gradetype` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_fees`
--

LOCK TABLES `grade_fees` WRITE;
/*!40000 ALTER TABLE `grade_fees` DISABLE KEYS */;
INSERT INTO `grade_fees` VALUES (2,'MISC',5000,'8','2024-11-04 13:11:13','2024-11-25 17:54:36'),(5,'Registration Fee',500,'11','2024-11-06 13:41:47','2024-11-06 13:41:47'),(6,'Tuition Fee',10000,'12','2024-11-07 17:40:43','2024-11-07 17:40:43'),(7,'Apps',200,'12','2024-11-07 17:40:43','2024-11-07 17:40:43'),(9,'sadasd',90.67,'7','2024-11-22 04:39:49','2024-11-22 04:39:49'),(10,'asdasd',23,'7','2024-11-22 04:46:35','2024-11-22 04:46:35'),(11,'asdasd',123,'7','2024-11-22 04:47:31','2024-11-22 04:47:31'),(12,'asdasd',123,'7','2024-11-22 04:47:32','2024-11-22 04:47:32'),(20,'Tuition fee',5600,'9','2024-11-25 17:55:22','2024-11-25 17:55:22');
/*!40000 ALTER TABLE `grade_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardians`
--

DROP TABLE IF EXISTS `guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guardians` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activation` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `guardians_student_id_foreign` (`student_id`),
  CONSTRAINT `guardians_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardians`
--

LOCK TABLES `guardians` WRITE;
/*!40000 ALTER TABLE `guardians` DISABLE KEYS */;
INSERT INTO `guardians` VALUES (1,'123456789012','$2y$12$ncGB93lsh/lgA2BE8kmPc.0.Ys7SK2dNSbUD1ipVxYvCx.7yoqose','proctantgaming@gmail.com',1,'2024-11-04 15:30:52','2024-11-23 16:57:27',0),(2,'102085080011','$2y$12$SgO.WELCQanW7X.TOLdj0uad6NPZW6yME66DZQMcFlp9ZajgG6NhS','maria@gmail.com',2,'2024-11-05 12:23:19','2024-11-05 12:44:58',0),(3,'839483746598',NULL,'23423@gmail.com',5,'2024-11-06 19:01:54','2024-11-06 19:01:54',0),(4,'981234567892','$2y$12$GVgECGOrLXJnwhDkvJGxp.8YoGNxtfE6wV2xNDUfg7DH8VO7e3zBG','susana@gmail.com',6,'2024-11-07 17:51:40','2024-11-24 06:36:55',1),(5,'029384758219','$2y$12$Xh0EQVoLlw5TwCfUvzVyAOOihcvhKnCnZHabZEqeFeGRYkg63KBUC','ivan.munoz.10072003@gmail.com',7,'2024-11-09 04:07:22','2024-11-09 04:07:22',0),(6,'126754378907','$2y$12$EtrCig2/Mjc5HPwn6uW/QO0OE/vHi8fCSGtQovyDOK1llfkxx5Do2','4233twr@gmail.com',8,'2024-11-09 04:14:03','2024-11-23 03:11:27',1),(7,'103085080010','$2y$12$/vrCULCM6UV2wlSDJ32Sj.AxmNHR9eMqC1jbkuh.ORAMwKgxGXeEC','mariarodrigo@gmail.com',9,'2024-11-13 13:09:26','2024-11-13 15:43:03',1),(8,'098764829385','$2y$12$8zdIsNyQ.YQOCvdTkbnOne.hAZFL5AiV6tdIc7ncJc2ZahCKWK/HW','dasdas@gmail.com',10,'2024-11-22 05:21:57','2024-11-22 05:21:57',0),(9,'938475617283','$2y$12$wJ/tItSVOItaeRbTUJUkGucRZp7wwR/4PHxqNnHVDFufD9Rl3b65a','ivan.munoz.50309277@gmail.com',11,'2024-11-25 18:13:51','2024-11-25 18:31:22',1);
/*!40000 ALTER TABLE `guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'default','{\"uuid\":\"ee1ee478-52e3-4229-a687-017ba10f1c7f\",\"displayName\":\"App\\\\Notifications\\\\EmployeePasswordNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Employee\\\";s:2:\\\"id\\\";a:1:{i:0;i:11;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\EmployeePasswordNotification\\\":3:{s:11:\\\"\\u0000*\\u0000employee\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:19:\\\"App\\\\Models\\\\Employee\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:11:\\\"\\u0000*\\u0000password\\\";s:11:\\\"TVB2W6J8EDZ\\\";s:2:\\\"id\\\";s:36:\\\"6ea84a2f-09c0-4a72-a88b-3eac4c98f171\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}',0,NULL,1731128423,1731128423);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_06_25_150323_create_personal_access_tokens_table',1),(5,'2024_06_25_152017_create_registrars_table',1),(6,'2024_06_26_130851_create_admins_table',1),(7,'2024_06_29_130020_create_employees_table',1),(8,'2024_07_06_134538_create_grade_fees_table',1),(9,'2024_07_08_140356_create_students_table',1),(10,'2024_07_17_134211_adds_soft_deletes_to_employees_table',1),(11,'2024_07_22_133541_create_student_fees_table',1),(12,'2024_08_02_130034_create_classrooms_table',1),(13,'2024_08_02_135346_create_classlists_table',1),(14,'2024_08_18_122927_create_subjects_table',1),(15,'2024_08_18_134524_create_subject_schedules_table',1),(16,'2024_08_28_013826_create_announcements_table',1),(17,'2024_08_31_040444_create_student_total_fees_table',1),(18,'2024_08_31_041214_create_student_payments_table',1),(19,'2024_08_31_143610_create_tasks_table',1),(20,'2024_08_31_150820_create_submissions_table',1),(21,'2024_09_04_143832_create_tests_table',1),(22,'2024_09_04_143856_create_questions_table',1),(23,'2024_09_05_123948_create_choices_table',1),(24,'2024_09_11_153925_create_test_submissions_table',1),(25,'2024_09_11_153959_create_student_answers_table',1),(26,'2024_09_30_144128_create_classworks_table',1),(27,'2024_09_30_144206_create_classwork_submissions_table',1),(28,'2024_10_06_155332_create_academic_years_table',1),(29,'2024_10_16_195959_create_enrollments_table',1),(30,'2024_10_17_224928_create_student_grades_table',1),(31,'2024_10_25_113450_create_guardians_table',1),(32,'2024_10_30_204650_create_audits_table',1),(33,'2024_11_05_115518_create_notifications_table',2),(34,'2024_11_23_202543_create_teacher_notifications_table',3),(35,'2024_11_25_221738_create_enrollmet_forms_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_user_id_foreign` (`user_id`),
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (5,2,'New Classwork Assigned','A new classwork titled \'Module 3\' has been assigned in the subject \'Mathematics\'.',1,'2024-11-05 15:25:31','2024-11-05 15:25:48'),(15,9,'New Classwork Assigned','A new task titled \'Module 1\' has been assigned in the subject \'Music\'.',0,'2024-11-13 14:40:25','2024-11-13 14:40:25'),(16,9,'New Classwork Assigned','A new classwork titled \'Module 1\' has been assigned in the subject \'Music\'.',0,'2024-11-13 14:43:20','2024-11-13 14:43:20'),(17,9,'New Classwork Assigned','A new classwork titled \'Module 1\' has been assigned in the subject \'Music\'.',0,'2024-11-13 14:43:21','2024-11-13 14:43:21'),(18,9,'New Classwork Assigned','A new classwork titled \'Module 1\' has been assigned in the subject \'Music\'.',0,'2024-11-13 14:43:22','2024-11-13 14:43:22'),(19,9,'New Test Assigned','A new test titled \'Quiz 1\' has been assigned in the subject \'Music\'.',0,'2024-11-13 14:56:05','2024-11-13 14:56:05'),(20,9,'New Test Assigned','A new test titled \'Quiz 1\' has been assigned in the subject \'Music\'.',0,'2024-11-13 14:56:06','2024-11-13 14:56:06'),(21,9,'New Test Assigned','A new test titled \'Quiz 1\' has been assigned in the subject \'Music\'.',0,'2024-11-13 14:56:07','2024-11-13 14:56:07'),(53,7,'New Classwork Assigned','A new classwork titled \'wet\' has been assigned in the subject \'Science\'.',0,'2024-11-18 13:05:41','2024-11-18 13:05:41'),(54,1,'New Classwork Assigned','A new classwork titled \'test\' has been assigned in the subject \'Test\'.',0,'2024-11-23 12:43:35','2024-11-23 12:43:35'),(55,1,'New Classwork Assigned','A new classwork titled \'qwerew\' has been assigned in the subject \'Test\'.',0,'2024-11-23 12:44:08','2024-11-23 12:44:08'),(56,1,'New Classwork Assigned','A new classwork titled \'as\' has been assigned in the subject \'Test\'.',0,'2024-11-23 12:51:14','2024-11-23 12:51:14'),(57,1,'New Classwork Assigned','A new classwork titled \'ac\' has been assigned in the subject \'Test\'.',0,'2024-11-23 12:55:48','2024-11-23 12:55:48'),(58,1,'New Classwork Assigned','A new classwork titled \'qwe\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:09:09','2024-11-23 13:09:09'),(59,1,'New Test Assigned','A new assessment titled \'test\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:12:59','2024-11-23 13:12:59'),(60,1,'New Test Assigned','A new assessment titled \'werwe\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:14:46','2024-11-23 13:14:46'),(61,1,'New Test Assigned','A new assessment titled \'werwe\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:14:47','2024-11-23 13:14:47'),(62,1,'New Test Assigned','A new assessment titled \'asdas\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:15:20','2024-11-23 13:15:20'),(63,1,'New Test Assigned','A new assessment titled \'asdas\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:15:21','2024-11-23 13:15:21'),(64,1,'New Test Assigned','A new assessment titled \'asdas\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:15:21','2024-11-23 13:15:21'),(65,1,'New Classwork Assigned','A new task titled \'er\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:15:30','2024-11-23 13:15:30'),(66,1,'New Test Assigned','A new assessment titled \'test\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:19:49','2024-11-23 13:19:49'),(67,1,'New Test Assigned','A new assessment titled \'test\' has been assigned in the subject \'Test\'.',0,'2024-11-23 13:21:14','2024-11-23 13:21:14'),(68,1,'New Classwork Assigned','A new task titled \'asfd\' has been assigned in the subject \'Test\'.',0,'2024-11-23 14:17:46','2024-11-23 14:17:46'),(69,1,'New Classwork Assigned','A new task titled \'asds\' has been assigned in the subject \'Test\'.',0,'2024-11-23 14:25:17','2024-11-23 14:25:17'),(70,1,'Teacher Announcement','An announcement titled \'asdasdasd\' has been made for the subject \'Test\'.',0,'2024-11-23 14:27:15','2024-11-23 14:27:15'),(71,2,'Teacher Announcement','An announcement titled \'Module 1\' has been made for the subject \'Philosopy\'.',0,'2024-11-25 18:29:32','2024-11-25 18:29:32'),(72,2,'New Classwork Assigned','A new classwork titled \'Module1\' has been assigned in the subject \'Philosopy\'.',0,'2024-11-25 18:30:08','2024-11-25 18:30:08'),(73,2,'New Test Assigned','A new assessment titled \'Quiz 2\' has been assigned in the subject \'Philosopy\'.',0,'2024-11-25 18:38:37','2024-11-25 18:38:37'),(74,2,'New Classwork Assigned','A new classwork titled \'as\' has been assigned in the subject \'Philosopy\'.',0,'2024-11-25 18:44:59','2024-11-25 18:44:59');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (7,'App\\Models\\Employee',3,'finance-token','b0652d756960d29bdba75d9e8bc020de289325ed7eebc6d4bef273e45a35f8d6','[\"role:finance\"]','2024-11-05 11:14:14',NULL,'2024-11-04 13:43:10','2024-11-05 11:14:14'),(18,'App\\Models\\Guardian',2,'parent-token','02400927c06de29657d77a92d27e0348db98972fd737cafddef2dd2a924ebea1','[\"role:parent\"]','2024-11-13 15:40:42',NULL,'2024-11-05 12:45:39','2024-11-13 15:40:42'),(27,'App\\Models\\Employee',8,'teacher-token','ee9413589546be009ebfb3fad0bc6accb575b876160a9bbf6946d29b79947b0f','[\"role:teacher\"]','2024-11-25 20:14:50',NULL,'2024-11-06 17:46:22','2024-11-25 20:14:50'),(43,'App\\Models\\Employee',7,'principal-token','99472129fea9fa236922d1ae64feca24387c7e02a89898b113e2a10e47ee46e5','[\"role:principal\"]','2024-11-23 18:36:53',NULL,'2024-11-09 03:29:29','2024-11-23 18:36:53'),(46,'App\\Models\\Employee',2,'teacher-token','c127a4ae8faebadc4bd5dac89adb49aab4e8267dd494115fb437f3853a330f50','[\"role:teacher\"]','2024-11-23 18:47:06',NULL,'2024-11-09 15:18:49','2024-11-23 18:47:06'),(54,'App\\Models\\Guardian',7,'parent-token','1fb7298b389cc5d60e592d0ecd48db7b2b7136afe97b2b91c21ada4b98df9aef','[\"role:parent\"]','2024-11-25 19:20:06',NULL,'2024-11-13 15:43:12','2024-11-25 19:20:06'),(58,'App\\Models\\Employee',3,'finance-token','db86fba38604b82cd7e0f9920a69575e125ab3f7dfa279db1ef6c72c6a9f405a','[\"role:finance\"]','2024-11-23 18:46:38',NULL,'2024-11-19 06:00:50','2024-11-23 18:46:38'),(60,'App\\Models\\Guardian',6,'parent-token','df2f4fc06707aff4c4e9acb1844dcd4fdb54e44aa028d67ce59ec22af44efda5','[\"role:parent\"]','2024-11-23 18:47:10',NULL,'2024-11-23 03:39:32','2024-11-23 18:47:10'),(62,'App\\Models\\Student',1,'student-token','516694c424890c6f943b4a718ea589b3e4a3a88a9174856bca3a01d4d602cd9a','[\"role:student\"]','2024-11-23 18:47:08',NULL,'2024-11-23 17:00:24','2024-11-23 18:47:08'),(64,'App\\Models\\Employee',6,'finance-token','c9e8f946f6721e28f011397f8651c32eeae983c9ffb99381588bd67b18081cb4','[\"role:finance\"]','2024-11-24 09:11:31',NULL,'2024-11-24 06:27:29','2024-11-24 09:11:31'),(65,'App\\Models\\Employee',14,'registrar-token','31208161722e2155bf2de56ddeca0eef8b5b6dc591125befda713cde053e206b','[\"role:registrar\"]','2024-11-24 09:11:55',NULL,'2024-11-24 06:29:11','2024-11-24 09:11:55'),(66,'App\\Models\\Employee',7,'principal-token','2d42ad5f08d1ae5a6e946ec858b1cbe4ac8bf42314425e0bc0999c328a5eda88','[\"role:principal\"]','2024-11-24 08:47:49',NULL,'2024-11-24 06:30:58','2024-11-24 08:47:49'),(67,'App\\Models\\Employee',8,'teacher-token','14b83cc3579e69a97dfd229a2b906112ea96169f8077a30404651a3f338fcea5','[\"role:teacher\"]','2024-11-24 06:41:04',NULL,'2024-11-24 06:31:28','2024-11-24 06:41:04'),(68,'App\\Models\\Student',6,'student-token','25a33312ab04bf61ed8335985b754790a9dad4454f66840fc6440257912ebe5d','[\"role:student\"]','2024-11-24 09:11:31',NULL,'2024-11-24 06:35:37','2024-11-24 09:11:31'),(70,'App\\Models\\Guardian',4,'parent-token','d1fa7f469f118398e1dc71825ec947e120de93b1cfb25401b8fbe1260ac9d8a4','[\"role:parent\"]','2024-11-24 06:38:28',NULL,'2024-11-24 06:38:21','2024-11-24 06:38:28'),(71,'App\\Models\\Guardian',4,'parent-token','61436a28133b5db1da6998160f30c6cdd8999b333228626a32dff644a3180152','[\"role:parent\"]','2024-11-24 08:47:44',NULL,'2024-11-24 06:39:38','2024-11-24 08:47:44'),(74,'App\\Models\\Employee',6,'finance-token','c24a01b4334816dbbfe05df67b5df85bd8f2709ca20d2ccaa98f0ca2ce023fcf','[\"role:finance\"]','2024-11-25 16:50:29',NULL,'2024-11-25 07:43:01','2024-11-25 16:50:29'),(75,'App\\Models\\Employee',7,'principal-token','fd614c9b84e73a9bae4465982d4af54abd62d7b5330d295b5756fefddc378616','[\"role:principal\"]','2024-11-26 04:59:32',NULL,'2024-11-25 07:44:55','2024-11-26 04:59:32'),(76,'App\\Models\\Admin',1,'admin','41fe76ea564f379042ec2e33d10184974a3168bedfb25a2af6e23ca152fdbd48','[\"role:admin\"]','2024-11-26 04:58:21',NULL,'2024-11-25 15:49:50','2024-11-26 04:58:21'),(77,'App\\Models\\Admin',1,'admin','46c59cefadc6756143509ab9c9916e022e494af1e62f3468b62c2d4f0c9b3bbd','[\"role:admin\"]','2024-11-25 17:55:23',NULL,'2024-11-25 16:56:00','2024-11-25 17:55:23'),(81,'App\\Models\\Employee',16,'registrar-token','4af76ad80f05e14f2445ec3407cd8d2847b77b622ba25f42cf0768ae8fb4f78f','[\"role:registrar\"]','2024-11-25 21:10:50',NULL,'2024-11-25 17:18:27','2024-11-25 21:10:50'),(82,'App\\Models\\Employee',18,'registrar-token','70e90ec4cba24438acb12a5848d06a3b0f46a413034d0c112b99ae39faa3afe1','[\"role:registrar\"]','2024-11-26 05:03:50',NULL,'2024-11-25 17:32:45','2024-11-26 05:03:50'),(83,'App\\Models\\Admin',1,'admin','5a2bee50662430a98d3ee6656f4b04bc102364f735d8c554ff6dc96095cdc4e2','[\"role:admin\"]','2024-11-25 20:22:01',NULL,'2024-11-25 17:43:51','2024-11-25 20:22:01'),(84,'App\\Models\\Employee',6,'finance-token','1ef185e02c9c190213680cf1d36a26005d822c1d4f08bb3d1511d5510ad22904','[\"role:finance\"]','2024-11-25 20:07:52',NULL,'2024-11-25 17:45:08','2024-11-25 20:07:52'),(85,'App\\Models\\Employee',7,'principal-token','10ef97f3e8e090d6a18d99a74864c20fedf69a2487f82315af5ad3009b88231c','[\"role:principal\"]','2024-11-25 19:03:54',NULL,'2024-11-25 17:49:52','2024-11-25 19:03:54'),(87,'App\\Models\\Employee',21,'principal-token','a9eb7fe625fa04080688764b3062053fc4de2e14446f016ff6b2aed803499d0c','[\"role:principal\"]','2024-11-25 21:08:13',NULL,'2024-11-25 18:05:22','2024-11-25 21:08:13'),(88,'App\\Models\\Student',2,'student-token','e567c9e91d507529bfdaa9d24ec3d9004300e96eac35813f5ecd4b17f192150e','[\"role:student\"]','2024-11-25 20:14:50',NULL,'2024-11-25 18:09:46','2024-11-25 20:14:50'),(91,'App\\Models\\Guardian',9,'parent-token','c6e8842e6da29ad7e15f43f73a978c1e0d7d0b4b7d18a525627fa3a7fa4054ec','[\"role:parent\"]','2024-11-25 20:24:05',NULL,'2024-11-25 18:31:28','2024-11-25 20:24:05'),(92,'App\\Models\\Employee',8,'teacher-token','fa282431847a156fa404bee02f8797f47ee848f7d1b1d6ab06cb250d43f2e4b2','[\"role:teacher\"]','2024-11-25 20:41:40',NULL,'2024-11-25 19:11:19','2024-11-25 20:41:40'),(93,'App\\Models\\Employee',8,'teacher-token','fd76c72189674164a747b9fd9ab525bf44895db101f592a12bb0bcd4c15401ba','[\"role:teacher\"]','2024-11-25 21:10:21',NULL,'2024-11-25 19:12:57','2024-11-25 21:10:21'),(94,'App\\Models\\Student',2,'student-token','ab3eefe68caa1b4e287a81c38e8b7d3e2b9c727a311fde9f2fe37d6ce25cad08','[\"role:student\"]','2024-11-25 21:10:21',NULL,'2024-11-25 20:24:45','2024-11-25 21:10:21'),(95,'App\\Models\\Employee',6,'finance-token','43287f0979708be0154f3d9cd1ed38a1f62c1306caf3d9c6c871ede072969f90','[\"role:finance\"]','2024-11-25 21:10:54',NULL,'2024-11-25 20:49:01','2024-11-25 21:10:54'),(96,'App\\Models\\Admin',1,'admin','bb601b587ddde3b2f22c010d39b0f70a28818cc65a7159b7c3f088121a94dc56','[\"role:admin\"]',NULL,NULL,'2024-11-25 21:11:09','2024-11-25 21:11:09'),(97,'App\\Models\\Employee',6,'finance-token','a9a80e726b275a841280e2854eeb2c492e05cdcc7dac0b04fa48dcf0dd9860bf','[\"role:finance\"]','2024-11-25 21:27:28',NULL,'2024-11-25 21:11:38','2024-11-25 21:27:28'),(98,'App\\Models\\Employee',13,'registrar-token','944942e51e4313e24af32996988b26283532231f1bc2c3e7c77a21b324c869cc','[\"role:registrar\"]','2024-11-25 21:27:27',NULL,'2024-11-25 21:13:35','2024-11-25 21:27:27'),(99,'App\\Models\\Employee',6,'finance-token','ef2df6f622e8cebd14d6f2a0750c3cfc7a7341a5f35d5212bf740a63deaf10c9','[\"role:finance\"]','2024-11-26 05:03:20',NULL,'2024-11-26 03:31:28','2024-11-26 05:03:20'),(100,'App\\Models\\Employee',13,'registrar-token','3cce574a10defbe23711b4caafe45b12b4a32ad9496723e1848c59f2f6d88f60','[\"role:registrar\"]','2024-11-26 05:03:20',NULL,'2024-11-26 03:54:36','2024-11-26 05:03:20'),(101,'App\\Models\\Employee',17,'teacher-token','21a3a2f659d996131a6caf4806702cbf1bf9fa80bac4ffdebe7ff1927766ceed','[\"role:teacher\"]','2024-11-26 05:03:20',NULL,'2024-11-26 04:38:50','2024-11-26 05:03:20'),(102,'App\\Models\\Admin',1,'admin','dda1edeb11f8b0a02c9068b60c9670543c592b27567740fdd014a3a0c208c7e8','[\"role:admin\"]','2024-11-26 04:55:28',NULL,'2024-11-26 04:46:45','2024-11-26 04:55:28');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `test_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `correct_answer` varchar(255) DEFAULT NULL,
  `pts` int(11) DEFAULT NULL,
  `index_position` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_test_id_foreign` (`test_id`),
  CONSTRAINT `questions_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'Test','Test',1,0,'identification','2024-11-04 19:25:49','2024-11-04 19:25:49'),(2,1,'Test','1',1,1,'multiple-choice','2024-11-04 19:25:49','2024-11-04 19:25:49'),(4,3,'234234',NULL,1,0,'essay','2024-11-06 16:39:40','2024-11-06 16:39:40'),(5,4,'Sample Essay',NULL,1,0,'essay','2024-11-07 18:18:30','2024-11-07 18:18:30'),(6,4,'Sample','Sample',1,1,'identification','2024-11-07 18:18:30','2024-11-07 18:18:30'),(7,4,'Sample','2',1,2,'multiple-choice','2024-11-07 18:18:30','2024-11-07 18:18:30'),(8,5,'ertert',NULL,1,0,'essay','2024-11-10 12:52:44','2024-11-10 12:52:44'),(9,5,'wjwjwj','testing',1,1,'identification','2024-11-10 12:52:44','2024-11-10 12:52:44'),(10,6,'Who is the main character in 7 Deadly Sins','D. Meliodas',1,0,'multiple-choice','2024-11-13 14:56:05','2024-11-13 14:56:05'),(11,7,'Who is the main character in 7 Deadly Sins','D. Meliodas',1,0,'multiple-choice','2024-11-13 14:56:06','2024-11-13 14:56:06'),(12,8,'Who is the main character in 7 Deadly Sins','D. Meliodas',1,0,'multiple-choice','2024-11-13 14:56:07','2024-11-13 14:56:07'),(13,9,'asdasdas',NULL,1,0,'essay','2024-11-17 05:50:52','2024-11-17 05:50:52'),(14,10,'werwer',NULL,1,0,'essay','2024-11-17 05:59:20','2024-11-17 05:59:20'),(15,11,'werwer',NULL,1,0,'essay','2024-11-17 05:59:21','2024-11-17 05:59:21'),(16,12,'werwer',NULL,1,0,'essay','2024-11-17 05:59:22','2024-11-17 05:59:22'),(17,13,'werwer',NULL,1,0,'essay','2024-11-17 05:59:23','2024-11-17 05:59:23'),(18,14,'werwer',NULL,1,0,'essay','2024-11-17 05:59:24','2024-11-17 05:59:24'),(19,15,'werwer',NULL,1,0,'essay','2024-11-17 05:59:24','2024-11-17 05:59:24'),(20,16,'werwer',NULL,1,0,'essay','2024-11-17 05:59:25','2024-11-17 05:59:25'),(21,17,'werwer',NULL,1,0,'essay','2024-11-17 05:59:26','2024-11-17 05:59:26'),(22,18,'test','test',1,0,'multiple-choice','2024-11-23 13:12:59','2024-11-23 13:12:59'),(23,19,'werewr',NULL,1,0,'essay','2024-11-23 13:14:46','2024-11-23 13:14:46'),(24,20,'werewr',NULL,1,0,'essay','2024-11-23 13:14:47','2024-11-23 13:14:47'),(25,21,'324234',NULL,1,0,'essay','2024-11-23 13:15:20','2024-11-23 13:15:20'),(26,22,'324234',NULL,1,0,'essay','2024-11-23 13:15:21','2024-11-23 13:15:21'),(27,23,'324234',NULL,1,0,'essay','2024-11-23 13:15:21','2024-11-23 13:15:21'),(28,24,'dasdasd',NULL,1,0,'essay','2024-11-23 13:19:49','2024-11-23 13:19:49'),(29,25,'asdasd',NULL,1,0,'essay','2024-11-23 13:21:14','2024-11-23 13:21:14'),(30,25,'asdas','das',1,1,'identification','2024-11-23 13:21:14','2024-11-23 13:21:14'),(31,25,'asdasd','asdas',1,2,'multiple-choice','2024-11-23 13:21:14','2024-11-23 13:21:14'),(32,26,'What is bird',NULL,10,0,'essay','2024-11-25 18:38:37','2024-11-25 18:38:37'),(33,26,'Give the meaning of UCU','Urdaneta City University',2,1000,'identification','2024-11-25 18:47:56','2024-11-25 18:47:56');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrars`
--

DROP TABLE IF EXISTS `registrars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `registrars_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrars`
--

LOCK TABLES `registrars` WRITE;
/*!40000 ALTER TABLE `registrars` DISABLE KEYS */;
/*!40000 ALTER TABLE `registrars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('Bt7GBBsW2z611wd1ZwsXvHYHWtMdVAhk1HifeBpg',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnBUV2VZSTlaUmxxMkVQaTRRSmpGVlBFM2JrMElERWduQTlKc2U2dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1730944985),('ihAfofb0jE0h4RZyTcOEHCeuG8PRNq85g9TfMNhr',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1l2bVEwQVBqVndoWnRYS1pibVA3RmpWeUNNblc2b2kxMW9GTk14aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1730955590);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_answers`
--

DROP TABLE IF EXISTS `student_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_answers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) unsigned NOT NULL,
  `question_id` bigint(20) unsigned NOT NULL,
  `answer` text DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_answers_submission_id_foreign` (`submission_id`),
  KEY `student_answers_question_id_foreign` (`question_id`),
  CONSTRAINT `student_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_answers_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `test_submissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_answers`
--

LOCK TABLES `student_answers` WRITE;
/*!40000 ALTER TABLE `student_answers` DISABLE KEYS */;
INSERT INTO `student_answers` VALUES (1,1,1,'Test',1,1,'2024-11-04 19:29:16','2024-11-04 19:29:16'),(2,1,2,'2',0,0,'2024-11-04 19:29:16','2024-11-04 19:29:16'),(3,2,5,'helo\nj',0,0,'2024-11-10 01:57:18','2024-11-10 01:57:18'),(4,2,6,'jjj',0,0,'2024-11-10 01:57:18','2024-11-10 01:57:18'),(5,2,7,'2',1,1,'2024-11-10 01:57:18','2024-11-10 01:57:18'),(6,3,8,'ddrfddfsdf',0,100,'2024-11-10 12:53:34','2024-11-10 12:54:04'),(7,3,9,'testing',1,1,'2024-11-10 12:53:34','2024-11-10 12:53:34'),(8,4,8,'ddrfddfsdf',0,0,'2024-11-10 12:53:34','2024-11-10 12:53:34'),(9,4,9,'testing',1,1,'2024-11-10 12:53:34','2024-11-10 12:53:34'),(10,5,12,'D. Meliodas',1,1,'2024-11-13 15:31:55','2024-11-13 15:31:55'),(11,6,12,'D. Meliodas',1,1,'2024-11-13 15:31:56','2024-11-13 15:31:56'),(12,7,12,'D. Meliodas',1,1,'2024-11-13 15:31:57','2024-11-13 15:31:57'),(13,8,12,'D. Meliodas',1,1,'2024-11-13 15:31:57','2024-11-13 15:31:57'),(14,9,12,'D. Meliodas',1,1,'2024-11-13 15:31:59','2024-11-13 15:31:59'),(15,10,13,'erwerwer',0,0,'2024-11-17 05:58:51','2024-11-17 05:58:51'),(16,11,21,'wtetwet',0,0,'2024-11-17 05:59:51','2024-11-17 05:59:51'),(17,12,21,'wtetwet',0,0,'2024-11-17 05:59:51','2024-11-17 05:59:51'),(18,13,21,'wtetwet',0,0,'2024-11-17 05:59:53','2024-11-17 05:59:53'),(19,14,21,'wtetwet',0,0,'2024-11-17 05:59:53','2024-11-17 05:59:53'),(20,15,21,'wtetwet',0,0,'2024-11-17 05:59:54','2024-11-17 05:59:54'),(21,16,21,'wtetwet',0,0,'2024-11-17 05:59:54','2024-11-17 05:59:54'),(22,17,20,'rwerwer',0,10,'2024-11-17 06:04:32','2024-11-18 14:18:40'),(23,18,18,'rerwrwerwer',0,0,'2024-11-17 06:33:52','2024-11-17 06:33:52'),(24,19,29,'wae',0,0,'2024-11-23 13:37:29','2024-11-23 13:37:29'),(25,19,30,'asdasd',0,0,'2024-11-23 13:37:29','2024-11-23 13:37:29'),(26,19,31,'asdas',1,1,'2024-11-23 13:37:29','2024-11-23 13:37:29'),(27,20,28,'asdasdasd',0,0,'2024-11-23 13:37:55','2024-11-23 13:37:55'),(28,21,26,'wqeqweqw',0,0,'2024-11-23 13:45:34','2024-11-23 13:45:34'),(29,22,27,'qweqweqw',0,0,'2024-11-23 13:46:14','2024-11-23 13:46:14'),(30,23,27,'asdsadas',0,0,'2024-11-23 13:46:42','2024-11-23 13:46:42'),(31,24,27,'weqwe',0,0,'2024-11-23 13:46:49','2024-11-23 13:46:49'),(32,25,25,'wrewrew',0,0,'2024-11-23 13:52:26','2024-11-23 13:52:26'),(33,26,25,'ewrewr',0,0,'2024-11-23 13:52:36','2024-11-23 13:52:36'),(34,27,24,'asdasdas',0,0,'2024-11-23 14:16:35','2024-11-23 14:16:35'),(35,28,32,'bird is bird',0,11,'2024-11-25 18:44:36','2024-11-25 20:17:12');
/*!40000 ALTER TABLE `student_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_classworks`
--

DROP TABLE IF EXISTS `student_classworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_classworks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_classworks_submission_id_foreign` (`submission_id`),
  KEY `student_classworks_student_id_foreign` (`student_id`),
  CONSTRAINT `student_classworks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_classworks_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `classwork_submissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_classworks`
--

LOCK TABLES `student_classworks` WRITE;
/*!40000 ALTER TABLE `student_classworks` DISABLE KEYS */;
INSERT INTO `student_classworks` VALUES (1,1,1,'classwork_submissions/OwaDrsRbYnUYznDuCji744VldrzLjDJnMo892pZa.jpg','2024-11-05 02:12:34','2024-11-05 02:12:34'),(2,2,1,'classwork_submissions/EimmomDfGhdH9yN0rmQQoKVqxUV906ZuC2u3iHfx.png','2024-11-05 02:28:06','2024-11-05 02:28:06'),(3,3,9,'classwork_submissions/hRcjuNOoqy3SseAo3pnzgWsN3lAfinnjrEgpEO0q.docx','2024-11-13 15:18:44','2024-11-13 15:18:44'),(4,4,1,'classwork_submissions/HHPkuT8UCz1aGvAFCTWjIRbgBVTxrmXPOfhsva6G.docx','2024-11-18 12:30:37','2024-11-18 12:30:37'),(5,5,1,'classwork_submissions/5edLoS0etFox1ITbnPQJ7v123h5AVt6gB7qfdnBx.docx','2024-11-18 12:30:38','2024-11-18 12:30:38'),(6,6,1,'classwork_submissions/8bR5XFYQRWQpTNOYv6oza0Bxp5PSt8sawdp3EIrF.docx','2024-11-18 12:30:38','2024-11-18 12:30:38'),(7,7,1,'classwork_submissions/3RqKUO8B0DiEBv2bbpBMCEMdxiG2fW5xRJSn93mx.docx','2024-11-18 12:30:38','2024-11-18 12:30:38'),(8,8,1,'classwork_submissions/spO6HElyKkXE6J3QG5Fp7fYR4OjC2pR9h71ZNc2u.docx','2024-11-18 12:30:39','2024-11-18 12:30:39'),(9,9,1,'classwork_submissions/DhiqQx3J3DgG7Nnro0IG6c7Rai4xWWqmNlOvJhrF.jpg','2024-11-18 12:31:41','2024-11-18 12:31:41'),(10,10,1,'classwork_submissions/QAr4jACbYGvi6DG4XEZdAPGYHb1JGnoSHorvYLrF.jpg','2024-11-18 12:39:02','2024-11-18 12:39:02'),(11,11,1,'classwork_submissions/R7SMQpgng0pS6fL4Lyb2YnUTNara1CcyV4mUUNq3.jpg','2024-11-18 12:40:56','2024-11-18 12:40:56'),(12,12,1,'classwork_submissions/pW9a3kH7FttLqKyT2wkhkZ3ZsrSYFvtDCuCJmyiN.jpg','2024-11-18 13:05:53','2024-11-18 13:05:53'),(13,13,1,'classwork_submissions/aAZdtcnjtM0kt4mlSEZHWPDIuyuZHODJ8fXvbCFP.jpg','2024-11-18 13:28:52','2024-11-18 13:28:52'),(14,14,1,'classwork_submissions/M6Q1KqSkm78MYxhjP0lmFRvRCApPhQ7PHiDrnntL.png','2024-11-23 12:43:44','2024-11-23 12:43:44'),(15,15,1,'classwork_submissions/hJEzDA88zt37IUQMcBrakrM05v3eKLcMBarjWkZJ.png','2024-11-23 12:44:18','2024-11-23 12:44:18'),(19,19,2,'classwork_submissions/hdHEUf9U9JsP1OM6q9RQIme3WPGkggzbDozLs3QL.png','2024-11-25 18:30:43','2024-11-25 18:30:43');
/*!40000 ALTER TABLE `student_classworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_fees`
--

DROP TABLE IF EXISTS `student_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_fees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_fees_student_id_foreign` (`student_id`),
  CONSTRAINT `student_fees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_fees`
--

LOCK TABLES `student_fees` WRITE;
/*!40000 ALTER TABLE `student_fees` DISABLE KEYS */;
INSERT INTO `student_fees` VALUES (1,'MISC',500,6,'2024-2025','2024-11-24 06:33:10','2024-11-24 06:33:10'),(2,'Tuition fee',5600,2,'2024-2025','2024-11-25 17:55:40','2024-11-25 17:55:40'),(3,'sadasd',91,11,'2024-2025','2024-11-25 18:13:51','2024-11-25 18:13:51'),(4,'asdasd',23,11,'2024-2025','2024-11-25 18:13:51','2024-11-25 18:13:51'),(5,'asdasd',123,11,'2024-2025','2024-11-25 18:13:51','2024-11-25 18:13:51'),(6,'asdasd',123,11,'2024-2025','2024-11-25 18:13:51','2024-11-25 18:13:51');
/*!40000 ALTER TABLE `student_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_grades`
--

DROP TABLE IF EXISTS `student_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_grades` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `first_quarter` double DEFAULT NULL,
  `second_quarter` double DEFAULT NULL,
  `third_quarter` double DEFAULT NULL,
  `fourth_quarter` double DEFAULT NULL,
  `academic_year` varchar(255) NOT NULL,
  `grade_level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_grades_student_id_foreign` (`student_id`),
  KEY `student_grades_subject_id_foreign` (`subject_id`),
  CONSTRAINT `student_grades_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_grades_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_grades`
--

LOCK TABLES `student_grades` WRITE;
/*!40000 ALTER TABLE `student_grades` DISABLE KEYS */;
INSERT INTO `student_grades` VALUES (1,1,1,'Science',87,90,98,94,'2021-2022','7','2024-11-04 18:06:57','2024-11-04 19:09:53'),(2,2,NULL,'Mathematics',90,89,93,95,'2021-2022','8','2024-11-05 16:28:12','2024-11-05 16:28:12'),(3,9,20,'Music',97,98,89,90,'2021-2022','11','2024-11-13 15:36:13','2024-11-13 15:36:13');
/*!40000 ALTER TABLE `student_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_payments`
--

DROP TABLE IF EXISTS `student_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `desc` varchar(255) NOT NULL,
  `encoder` varchar(255) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_payments_student_id_foreign` (`student_id`),
  CONSTRAINT `student_payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_payments`
--

LOCK TABLES `student_payments` WRITE;
/*!40000 ALTER TABLE `student_payments` DISABLE KEYS */;
INSERT INTO `student_payments` VALUES (1,1,500.00,'Registration','Adrian Negranza','2021-2022','2024-11-04 17:51:27','2024-11-04 17:51:27'),(2,2,500.00,'Registration Fee','Sosuke Aizen','2021-2022','2024-11-05 16:25:23','2024-11-05 16:25:23'),(3,1,500.00,'Sample','Sosuke Aizen','2021-2022','2024-11-07 17:55:02','2024-11-07 17:55:02'),(4,1,500.00,'testing','Sosuke Aizen','2021-2022','2024-11-10 12:55:42','2024-11-10 12:55:42'),(5,1,500.00,'Partial for registration fee','Sosuke Aizen','2021-2022','2024-11-12 03:26:43','2024-11-12 03:26:43'),(6,9,500.00,'Registration fee','Sosuke Aizen','2021-2022','2024-11-13 15:37:12','2024-11-13 15:37:12'),(7,1,100.00,'1234124','Adrian Negranza','2021-2022','2024-11-22 06:07:07','2024-11-22 06:07:07'),(8,1,50.00,'100','Adrian Negranza','2021-2022','2024-11-22 06:11:01','2024-11-22 06:11:01'),(9,1,49.10,'test','Adrian Negranza','2021-2022','2024-11-22 06:13:16','2024-11-22 06:13:16'),(10,1,234.00,'234234','Adrian Negranza','2021-2022','2024-11-22 13:18:50','2024-11-22 13:18:50'),(11,1,234.00,'234234','Adrian Negranza','2021-2022','2024-11-22 13:18:51','2024-11-22 13:18:51'),(12,5,334.00,'32423','Adrian Negranza','2021-2022','2024-11-22 13:23:38','2024-11-22 13:23:38'),(13,5,334.00,'32423','Adrian Negranza','2021-2022','2024-11-22 13:23:39','2024-11-22 13:23:39'),(14,5,334.00,'32423','Adrian Negranza','2021-2022','2024-11-22 13:23:39','2024-11-22 13:23:39'),(15,5,334.00,'32423','Adrian Negranza','2021-2022','2024-11-22 13:23:40','2024-11-22 13:23:40'),(16,5,18.00,'20','Adrian Negranza','2021-2022','2024-11-22 13:24:00','2024-11-22 13:24:00'),(17,5,18.00,'20','Adrian Negranza','2021-2022','2024-11-22 13:24:01','2024-11-22 13:24:01'),(18,5,18.00,'20','Adrian Negranza','2021-2022','2024-11-22 13:24:01','2024-11-22 13:24:01'),(19,5,18.00,'20','Adrian Negranza','2021-2022','2024-11-22 13:24:01','2024-11-22 13:24:01'),(20,5,18.00,'20','Adrian Negranza','2021-2022','2024-11-22 13:24:02','2024-11-22 13:24:02'),(21,1,23.00,'21312','Adrian Negranza','2021-2022','2024-11-22 13:27:50','2024-11-22 13:27:50'),(22,1,43.00,'34','Adrian Negranza','2021-2022','2024-11-22 13:29:28','2024-11-22 13:29:28'),(23,2,500.00,'Registration Fee','Sosuke Aizen','2024-2025','2024-11-25 17:59:35','2024-11-25 17:59:35'),(24,11,23.00,'23423','Sosuke Aizen','2024-2025','2024-11-26 03:37:33','2024-11-26 03:37:33'),(25,11,36.00,'123123','Sosuke Aizen','2024-2025','2024-11-26 03:37:58','2024-11-26 03:37:58'),(26,5,34.00,'asd','Sosuke Aizen','2024-2025','2024-11-26 03:44:56','2024-11-26 03:44:56'),(27,7,57.00,'123','Sosuke Aizen','2024-2025','2024-11-26 03:45:09','2024-11-26 03:45:09'),(28,5,-100.00,'21221','Sosuke Aizen','2024-2025','2024-11-26 03:45:39','2024-11-26 03:45:39'),(29,5,9000.00,'123123','Sosuke Aizen','2024-2025','2024-11-26 03:47:35','2024-11-26 03:47:35'),(30,5,-200.00,'asdasdasd','Sosuke Aizen','2024-2025','2024-11-26 04:05:46','2024-11-26 04:05:46');
/*!40000 ALTER TABLE `student_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_total_fees`
--

DROP TABLE IF EXISTS `student_total_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_total_fees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_total_fees_student_id_foreign` (`student_id`),
  CONSTRAINT `student_total_fees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_total_fees`
--

LOCK TABLES `student_total_fees` WRITE;
/*!40000 ALTER TABLE `student_total_fees` DISABLE KEYS */;
INSERT INTO `student_total_fees` VALUES (1,1,500.00,'2024-11-04 15:30:52','2024-11-23 07:05:30'),(2,2,5100.00,'2024-11-05 12:23:19','2024-11-25 17:59:35'),(3,5,100.00,'2024-11-06 19:01:54','2024-11-26 04:05:46'),(4,6,500.00,'2024-11-07 17:51:40','2024-11-24 06:33:10'),(5,7,10203.00,'2024-11-09 04:07:21','2024-11-26 03:45:09'),(6,8,10260.00,'2024-11-09 04:14:03','2024-11-09 04:14:03'),(7,9,0.00,'2024-11-13 13:09:25','2024-11-13 15:37:12'),(8,10,500.00,'2024-11-22 05:21:57','2024-11-22 05:21:57'),(9,11,300.67,'2024-11-25 18:13:51','2024-11-26 03:37:58');
/*!40000 ALTER TABLE `student_total_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lrn` varchar(255) DEFAULT NULL,
  `track` varchar(255) DEFAULT NULL,
  `strand` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `extension_name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `municipality` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `birth_municipality` varchar(255) DEFAULT NULL,
  `birth_province` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `social_media` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_occupation` varchar(255) DEFAULT NULL,
  `father_contact` varchar(255) DEFAULT NULL,
  `father_social` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_occupation` varchar(255) DEFAULT NULL,
  `mother_contact` varchar(255) DEFAULT NULL,
  `mother_social` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_occupation` varchar(255) DEFAULT NULL,
  `guardian_contact` varchar(255) DEFAULT NULL,
  `guardian_social` varchar(255) DEFAULT NULL,
  `previous_school_name` varchar(255) DEFAULT NULL,
  `previous_school_address` varchar(255) DEFAULT NULL,
  `birth_certificate` tinyint(1) DEFAULT NULL,
  `report_card` tinyint(1) DEFAULT NULL,
  `transcript_record` tinyint(1) DEFAULT NULL,
  `good_moral` tinyint(1) DEFAULT NULL,
  `enrolment_status` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `grade_level` varchar(255) DEFAULT NULL,
  `student_fee` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `guardian_email` varchar(255) DEFAULT NULL,
  `father_email` varchar(255) DEFAULT NULL,
  `mother_email` varchar(255) DEFAULT NULL,
  `activation` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'123456789012','null','null','Fernandez','Juan',NULL,NULL,'zone 1','Adams (Pob.)','Adams','Ilocos Norte','2024-11-08','Filipino','Umingan','Pangasinan','male','Catholic','09455382312','proctantgamings@gmail.com','234234','23423','423423','12345678901','4234','23423','4234','12345678901','234234','234','23423','12345678901','423423423','2342','3423423',1,0,0,0,'done','$2y$12$t7EovwvYXBk1kBCdYU5R4u.TkvexGvELcWXFjPOpgWDM7ePO5OX7u','8',NULL,'images/O8a5RdmzgzqhBqe93w8kozzftkPzXQX9sgrQlIWb.jpg','proctantgaming@gmail.com','proctantgaming@gmail.com','proctantgaming@gmail.com',1,'2024-11-04 15:30:52','2024-11-23 17:00:11'),(2,'102085080011','null','null','Freecs','Gon','Trey',NULL,'Purok 2','Caurdanetaan','Umingan','Pangasinan','2024-11-30','Filipino','Umingan','Pangasinan','male','Catholic','09096963957','gonfreecs@gmail.com','Gon Freecs','Ging Freecs','Hunter','09091123434','Ging Freecs','Maria Freecs','Hunter','09098762345','Maria Freecs','Maria Freecs','Hunter','09098762345','Maria Freecs','Quezon Memorial Academy','Burgos Umingan Pangasinan',1,0,0,0,'done','$2y$12$32JYIGEvkPq302/KQFHOs.Gpd2iDuZcS1VtDKSR6XoOxh/QxIRjZG','9',NULL,'images/EFKSKGIFRtB0i2niuQuabXDu3d3DXIeBZbCaY7og.jpg','maria@gmail.com','ging@gmail.com','maria@gmail.com',1,'2024-11-05 12:23:19','2024-11-25 20:24:38'),(5,'839483746598',NULL,NULL,'234234','234234','234234','23423','234','Barangay 685','Paco','City Of Manila','2024-10-28','2342','34234','23423','male','23423','23423423','proctantgaming@gmail.com','aaddfaf','234','234234','234234','32424','2423','4234','23423','423423','23423','423423','4234234','erewr','234','234234',0,0,0,0,'pre-enrolled','$2y$12$l/diTDDF.FQrVgXx4Qxqy.VcmWW5U0xjm3LhYFJf5u7IHe4vVqwbC','7',NULL,NULL,'23423@gmail.com','234234@gmail.com','sjsj@gmail.com',1,'2024-11-06 19:01:50','2024-11-06 19:06:41'),(6,'981234567892','null','null','Dela Cruz','John',NULL,NULL,'zone 2','Capas','Umingan','Pangasinan','2008-06-08','Filipino','Umingan','Pangasinan','male','Catholic','0945321897','sampleo@gmail.com','Juan D','Pedro Kupaz','Doctor','0921948392','Pedro D','Susan Kupaz','Housewife','0983923092','Susan D','Susan Kupaz','Housewife','0983923092','Susan D','sample name','Flores, Umingan, Pangasinan',1,1,0,0,'done','$2y$12$4nlP5Ghrj9QqGlrtcjY2leDfhQZT2SzQ2YpY0/BKDM8jIj7OV1a6G','8',NULL,NULL,'susana@gmail.com','pedorku@gmail.com','susana@gmail.com',1,'2024-11-07 17:51:37','2024-11-24 06:35:29'),(7,'029384758219',NULL,NULL,'erwr','werwer','rwerwe','rwer','werwer','Patpat (Lapu-lapu)','City Of Malaybalay (Capital)','Bukidnon','2024-11-27','werwe','rewrwer','werwe','male','werwer','09453829048','joshuaroymindaros25@gmail.com','asadasd','asdas','dasd','092323','ajsjasj','435345345','534534','234234234','23423423','234234','2342342','3423423','4234234','2342','3423423',0,1,0,0,'pre-enrolled','$2y$12$l0Ovfq7R6bpcGt3FVrAUQekt6k3W.hLgJwe4UZ.YpXAH3rwnplBhC','7',NULL,NULL,'ivan.munoz.10072003@gmail.com','34534534@gmail.com','423423@gmail.com',0,'2024-11-09 04:07:18','2024-11-09 04:07:18'),(8,'126754378907',NULL,NULL,'ewrwer','werew','rwer','wr','werwe','San Joaquin','Basco (Capital)','Batanes','2024-10-31','werew','rwerwe','rewrwe','male','werwerwe','09453829109','jaunddd@gmail.com','23423423','234','234234','23423','423423','23423','4234','23423','4234324','23423423423','423423','4234234','23423423','23423','4234',0,1,0,0,'pre-enrolled','$2y$12$CQe8ZzL3bnZJDukoQicLKOIGE8aH1PBPOihYg2vxnogG/FRNF7tiy','7',NULL,NULL,'4233twr@gmail.com','23432@gmail.com','2334df@gmail.com',0,'2024-11-09 04:14:00','2024-11-09 04:14:00'),(9,'103085080010','Academic','Stem','Rodrigo','Olivia',NULL,NULL,'Purok 2','Sinabaan','Umingan','Pangasinan','2005-06-09','Filipino','Umingan','Pangasinan','female','Catholic','09096963957','oliviarodrigo@gmail.com','Olivia Rodrigo','Pedro Rodrigo','Teacher','09091123434',NULL,'Maria Rodrigo','Doctor','09093324565','Maria Rodrigo','Maria Rodrigo','Doctor','09093324565','Maria Rodrigo','Flores National High School','Flores Umingan Pangasinan',1,1,0,0,'pre-enrolled','$2y$12$maEKfm91ECc5uAd/Tm/yju0qTTzEk1G2IIy86edEkS2AwpLb7eK4m','11',NULL,NULL,'mariarodrigo@gmail.com',NULL,'mariarodrigo@gmail.com',1,'2024-11-13 13:09:22','2024-11-13 14:42:24'),(10,'098764829385','Academic','Stem','234234','234234','23423','4234','No 15','Saclit','Sadanga','Mountain Province','2024-11-14','324232','5235','235','male','235235','09459012231','ksksks@gmail.com','sadasd','asdas','dasd','09453810924','dasd','asdas','dasd','09482937184','das','dasd','dasdas','02938564728','dasdasdas','asd','asdasd',1,0,0,0,'pre-enrolled','$2y$12$V/hB2DYJYOeyV4yjnbAH1OA2yKDFkfZi5KuQ5dJ5uxOF5HaNDGR3O','11',NULL,NULL,'dasdas@gmail.com','asdasd@gmail.com','asdas@gmail.com',0,'2024-11-22 05:21:52','2024-11-22 05:21:52'),(11,'938475617283',NULL,NULL,'asdasd','asdas','dasda','sd','asd','Bani','Bacarra','Ilocos Norte','2024-11-21','asdasd','asdas','dasd','male','asdasd','98475837281','ivan.munoz.50309277@gmail.com','qweqweqwe','qweqwe','qweqw','09839209382','asdasdas','asdasd','asdas','09453829108','asdas','asdasd','asdas','09839209382','sadasdas','asda','sdasd',1,0,0,0,'pre-enrolled','$2y$12$NWyMTF3oTXTS63Om1iDBJ.Sj9ZiCHBKKDyagw4eUcQ8Bb.5rqA/7a','7',NULL,NULL,'ivan.munoz.50309277@gmail.com','asdas@gmail.com','ivan.munoz.50309277@gmail.com',0,'2024-11-25 18:13:48','2024-11-25 18:22:56');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_schedules`
--

DROP TABLE IF EXISTS `subject_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_schedules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) unsigned NOT NULL,
  `classroom_id` bigint(20) unsigned NOT NULL,
  `teacher_id` bigint(20) unsigned DEFAULT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `day` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_schedules_subject_id_foreign` (`subject_id`),
  KEY `subject_schedules_classroom_id_foreign` (`classroom_id`),
  KEY `subject_schedules_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `subject_schedules_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_schedules_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_schedules`
--

LOCK TABLES `subject_schedules` WRITE;
/*!40000 ALTER TABLE `subject_schedules` DISABLE KEYS */;
INSERT INTO `subject_schedules` VALUES (1,34,26,8,'08:00:00','10:30:00','Monday','2024-11-25 18:12:28','2024-11-25 18:12:28'),(2,37,26,8,'11:31:00','13:00:00','Monday','2024-11-25 18:15:00','2024-11-25 18:15:00');
/*!40000 ALTER TABLE `subject_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `teacher_id` bigint(20) unsigned DEFAULT NULL,
  `classroom_id` bigint(20) unsigned DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjects_teacher_id_foreign` (`teacher_id`),
  KEY `subjects_classroom_id_foreign` (`classroom_id`),
  CONSTRAINT `subjects_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Science',2,1,1,'2024-11-04 14:44:38','2024-11-23 05:27:29'),(2,'English',2,1,1,'2024-11-04 19:12:02','2024-11-23 05:27:29'),(19,'Programming',8,3,1,'2024-11-09 03:45:03','2024-11-23 05:27:29'),(20,'Music',8,4,1,'2024-11-13 13:59:34','2024-11-23 05:27:29'),(22,'Science',8,2,1,'2024-11-13 14:12:42','2024-11-23 05:27:29'),(23,'Science',8,3,1,'2024-11-13 14:15:59','2024-11-23 05:27:29'),(31,'Test',2,15,1,'2024-11-23 12:42:59','2024-11-23 18:09:07'),(34,'Philosopy',8,26,0,'2024-11-25 18:12:28','2024-11-25 18:12:28'),(37,'Math',8,26,0,'2024-11-25 18:15:00','2024-11-25 18:15:00');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `status` enum('submitted','graded','late') NOT NULL,
  `score` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `submissions_task_id_foreign` (`task_id`),
  KEY `submissions_student_id_foreign` (`student_id`),
  CONSTRAINT `submissions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `submissions_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) unsigned NOT NULL,
  `teacher_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_subject_id_foreign` (`subject_id`),
  KEY `tasks_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `tasks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tasks_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,1,2,'test','test',NULL,NULL,'2024-11-04 15:05:56','2024-11-04 15:05:56'),(2,1,2,'Sample','Sample Desc',NULL,NULL,'2024-11-07 18:16:53','2024-11-07 18:16:53'),(3,2,2,'Hello','sample',NULL,NULL,'2024-11-09 15:27:04','2024-11-09 15:27:04'),(4,2,2,'lool','sadas',NULL,NULL,'2024-11-09 15:27:16','2024-11-09 15:27:16'),(5,2,2,'wr5we','rwerwer',NULL,NULL,'2024-11-09 15:27:23','2024-11-09 15:27:23'),(6,2,2,'werw','erwerwer',NULL,NULL,'2024-11-09 15:27:34','2024-11-09 15:27:34'),(7,1,2,'Module 1','Test','uploads/form.pdf',NULL,'2024-11-10 02:12:13','2024-11-10 02:12:13'),(8,20,8,'Module 1','Read the module','uploads/Appendix E.docx',NULL,'2024-11-13 14:40:25','2024-11-13 14:40:25'),(9,1,2,'rte','terter',NULL,NULL,'2024-11-17 07:37:09','2024-11-17 07:37:09'),(10,1,2,'rte','terter',NULL,NULL,'2024-11-17 07:37:10','2024-11-17 07:37:10'),(11,1,2,'rte','terter',NULL,NULL,'2024-11-17 07:37:10','2024-11-17 07:37:10'),(12,1,2,'rte','terter',NULL,NULL,'2024-11-17 07:37:11','2024-11-17 07:37:11'),(13,1,2,'rte','terter',NULL,NULL,'2024-11-17 07:37:11','2024-11-17 07:37:11'),(14,1,2,'rte','terter',NULL,NULL,'2024-11-17 07:37:12','2024-11-17 07:37:12'),(15,1,2,'refwer','werwer',NULL,NULL,'2024-11-18 03:33:08','2024-11-18 03:33:08'),(19,1,2,'rw','rwe',NULL,NULL,'2024-11-18 03:39:13','2024-11-18 03:39:13'),(20,1,2,'werwe','rwer',NULL,NULL,'2024-11-18 03:40:55','2024-11-18 03:40:55'),(21,1,2,'wtw','etwetwet',NULL,NULL,'2024-11-18 12:27:24','2024-11-18 12:27:24'),(22,31,2,'er','ertert',NULL,NULL,'2024-11-23 13:15:30','2024-11-23 13:15:30'),(23,31,2,'asfd','asfafas',NULL,NULL,'2024-11-23 14:17:46','2024-11-23 14:17:46'),(24,31,2,'asds','adasdasd',NULL,NULL,'2024-11-23 14:25:17','2024-11-23 14:25:17');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_notifications`
--

DROP TABLE IF EXISTS `teacher_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_notifications_user_id_foreign` (`user_id`),
  CONSTRAINT `teacher_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_notifications`
--

LOCK TABLES `teacher_notifications` WRITE;
/*!40000 ALTER TABLE `teacher_notifications` DISABLE KEYS */;
INSERT INTO `teacher_notifications` VALUES (5,2,'New Test Submission','Juan Fernandez has submitted the test titled \"werwe\".',0,'2024-11-23 14:16:35','2024-11-23 14:16:35'),(7,8,'New Test Submission','Gon Trey Freecs has submitted the assessment titled \"Quiz 2\".',0,'2024-11-25 18:44:36','2024-11-25 18:44:36');
/*!40000 ALTER TABLE `teacher_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_submissions`
--

DROP TABLE IF EXISTS `test_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_submissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `test_id` bigint(20) unsigned NOT NULL,
  `student_id` bigint(20) unsigned NOT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_submissions_test_id_foreign` (`test_id`),
  KEY `test_submissions_student_id_foreign` (`student_id`),
  CONSTRAINT `test_submissions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `test_submissions_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_submissions`
--

LOCK TABLES `test_submissions` WRITE;
/*!40000 ALTER TABLE `test_submissions` DISABLE KEYS */;
INSERT INTO `test_submissions` VALUES (1,1,1,0,'2024-11-04 19:29:16','2024-11-04 19:29:16'),(2,4,1,0,'2024-11-10 01:57:18','2024-11-10 01:57:18'),(3,5,1,0,'2024-11-10 12:53:34','2024-11-10 12:53:34'),(4,5,1,0,'2024-11-10 12:53:34','2024-11-10 12:53:34'),(5,8,9,0,'2024-11-13 15:31:55','2024-11-13 15:31:55'),(6,8,9,0,'2024-11-13 15:31:56','2024-11-13 15:31:56'),(7,8,9,0,'2024-11-13 15:31:57','2024-11-13 15:31:57'),(8,8,9,0,'2024-11-13 15:31:57','2024-11-13 15:31:57'),(9,8,9,0,'2024-11-13 15:31:59','2024-11-13 15:31:59'),(10,9,1,0,'2024-11-17 05:58:51','2024-11-17 05:58:51'),(11,17,1,0,'2024-11-17 05:59:51','2024-11-17 05:59:51'),(12,17,1,0,'2024-11-17 05:59:51','2024-11-17 05:59:51'),(13,17,1,0,'2024-11-17 05:59:53','2024-11-17 05:59:53'),(14,17,1,0,'2024-11-17 05:59:53','2024-11-17 05:59:53'),(15,17,1,0,'2024-11-17 05:59:54','2024-11-17 05:59:54'),(16,17,1,0,'2024-11-17 05:59:54','2024-11-17 05:59:54'),(17,16,1,0,'2024-11-17 06:04:32','2024-11-17 06:04:32'),(18,14,1,0,'2024-11-17 06:33:52','2024-11-17 06:33:52'),(19,25,1,0,'2024-11-23 13:37:29','2024-11-23 13:37:29'),(20,24,1,0,'2024-11-23 13:37:55','2024-11-23 13:37:55'),(21,22,1,0,'2024-11-23 13:45:34','2024-11-23 13:45:34'),(22,23,1,0,'2024-11-23 13:46:14','2024-11-23 13:46:14'),(23,23,1,0,'2024-11-23 13:46:42','2024-11-23 13:46:42'),(24,23,1,0,'2024-11-23 13:46:49','2024-11-23 13:46:49'),(25,21,1,0,'2024-11-23 13:52:26','2024-11-23 13:52:26'),(26,21,1,0,'2024-11-23 13:52:36','2024-11-23 13:52:36'),(27,20,1,0,'2024-11-23 14:16:35','2024-11-23 14:16:35'),(28,26,2,0,'2024-11-25 18:44:36','2024-11-25 18:44:36');
/*!40000 ALTER TABLE `test_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tests_subject_id_foreign` (`subject_id`),
  CONSTRAINT `tests_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,1,'Quiz 1','Quiz 1 is about water droplet','open',NULL,'2024-11-04 19:25:49','2024-11-04 19:25:49'),(3,2,'33234','234234','closed','2024-11-07 00:39:00','2024-11-06 16:39:40','2024-11-17 02:24:05'),(4,1,'Quiz 2','Sample Desc','open',NULL,'2024-11-07 18:18:30','2024-11-07 18:18:30'),(5,1,'Quiz 2','tert','open',NULL,'2024-11-10 12:52:44','2024-11-10 12:52:44'),(6,20,'Quiz 1','Answer','closed','2024-11-14 22:54:00','2024-11-13 14:56:05','2024-11-17 02:24:05'),(7,20,'Quiz 1','Answer','closed','2024-11-14 22:54:00','2024-11-13 14:56:06','2024-11-17 02:24:05'),(8,20,'Quiz 1','Answer','closed','2024-11-14 22:54:00','2024-11-13 14:56:07','2024-11-17 02:24:05'),(9,1,'sda','sadasd','open',NULL,'2024-11-17 05:50:52','2024-11-17 05:50:52'),(10,1,'wer','werwer','open',NULL,'2024-11-17 05:59:20','2024-11-17 05:59:20'),(11,1,'wer','werwer','open',NULL,'2024-11-17 05:59:21','2024-11-17 05:59:21'),(12,1,'wer','werwer','open',NULL,'2024-11-17 05:59:22','2024-11-17 05:59:22'),(13,1,'wer','werwer','open',NULL,'2024-11-17 05:59:23','2024-11-17 05:59:23'),(14,1,'wer','werwer','open',NULL,'2024-11-17 05:59:24','2024-11-17 05:59:24'),(15,1,'wer','werwer','open',NULL,'2024-11-17 05:59:24','2024-11-17 05:59:24'),(16,1,'wer','werwer','open',NULL,'2024-11-17 05:59:25','2024-11-17 05:59:25'),(17,1,'wer','werwer','open',NULL,'2024-11-17 05:59:26','2024-11-17 05:59:26'),(18,31,'test','test','open',NULL,'2024-11-23 13:12:59','2024-11-23 13:12:59'),(19,31,'werwe','rwerwer','Status',NULL,'2024-11-23 13:14:46','2024-11-23 13:14:46'),(20,31,'werwe','rwerwer','Status',NULL,'2024-11-23 13:14:47','2024-11-23 13:14:47'),(21,31,'asdas','dasdasd','Status',NULL,'2024-11-23 13:15:20','2024-11-23 13:15:20'),(22,31,'asdas','dasdasd','Status',NULL,'2024-11-23 13:15:21','2024-11-23 13:15:21'),(23,31,'asdas','dasdasd','Status',NULL,'2024-11-23 13:15:21','2024-11-23 13:15:21'),(24,31,'test','test','closed','2024-11-24 02:52:00','2024-11-23 13:19:49','2024-11-24 03:08:46'),(25,31,'test','test','open',NULL,'2024-11-23 13:21:14','2024-11-23 13:21:14'),(26,34,'Quiz 2','Read and answer the quqstions','open',NULL,'2024-11-25 18:38:37','2024-11-25 18:38:37');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 13:04:17
