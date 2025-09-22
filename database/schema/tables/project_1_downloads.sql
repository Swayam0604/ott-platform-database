CREATE DATABASE  IF NOT EXISTS `project_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project_1`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: project_1
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `downloads` (
  `download_Id` varchar(12) NOT NULL,
  `User_Id` varchar(12) DEFAULT NULL,
  `Movie_Id` varchar(12) DEFAULT NULL,
  `Episode_Id` varchar(12) DEFAULT NULL,
  `TV_Series_Id` varchar(12) DEFAULT NULL,
  `File_Size` varchar(20) DEFAULT NULL,
  `Device_Id` varchar(12) DEFAULT NULL,
  `Download_Date_Time` datetime DEFAULT NULL,
  `Download_Expiry_Date_Time` datetime DEFAULT NULL,
  `Download_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`download_Id`),
  UNIQUE KEY `download_Id` (`download_Id`),
  KEY `User_Id` (`User_Id`),
  KEY `Movie_Id` (`Movie_Id`),
  KEY `Episode_Id` (`Episode_Id`),
  KEY `TV_Show_Id` (`TV_Series_Id`),
  KEY `Device_Id` (`Device_Id`),
  CONSTRAINT `downloads_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_Id`),
  CONSTRAINT `downloads_ibfk_2` FOREIGN KEY (`Movie_Id`) REFERENCES `movies` (`Movie_Id`),
  CONSTRAINT `downloads_ibfk_3` FOREIGN KEY (`Episode_Id`) REFERENCES `episodes` (`Episode_Id`),
  CONSTRAINT `downloads_ibfk_4` FOREIGN KEY (`TV_Series_Id`) REFERENCES `tv_series` (`TV_Series_Id`),
  CONSTRAINT `downloads_ibfk_5` FOREIGN KEY (`Device_Id`) REFERENCES `devices` (`Device_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_download_insert_movie` AFTER INSERT ON `downloads` FOR EACH ROW BEGIN
    IF NEW.Movie_Id IS NOT NULL THEN
        UPDATE movies
        SET Download_Count = Download_Count + 1
        WHERE Movie_Id = NEW.Movie_Id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-22 22:54:40
