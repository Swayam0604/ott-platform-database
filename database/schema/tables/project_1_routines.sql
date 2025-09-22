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
-- Temporary view structure for view `movie_details_with_genre_and_language_view`
--

DROP TABLE IF EXISTS `movie_details_with_genre_and_language_view`;
/*!50001 DROP VIEW IF EXISTS `movie_details_with_genre_and_language_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `movie_details_with_genre_and_language_view` AS SELECT 
 1 AS `Movie_Id`,
 1 AS `Movie_Title`,
 1 AS `Movie_Description`,
 1 AS `Movie_Duration`,
 1 AS `Movie_Release_Date`,
 1 AS `Download_Count`,
 1 AS `Available_Genres`,
 1 AS `Available_Languages`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tv_series_details_with_genre_and_language_view`
--

DROP TABLE IF EXISTS `tv_series_details_with_genre_and_language_view`;
/*!50001 DROP VIEW IF EXISTS `tv_series_details_with_genre_and_language_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tv_series_details_with_genre_and_language_view` AS SELECT 
 1 AS `TV_Series_Id`,
 1 AS `TV_Series_Title`,
 1 AS `TV_Series_Description`,
 1 AS `Episode_Count`,
 1 AS `TV_Series_Release_Date`,
 1 AS `Download_Count`,
 1 AS `Available_Genres`,
 1 AS `Available_Languages`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_subscription_dashboard`
--

DROP TABLE IF EXISTS `user_subscription_dashboard`;
/*!50001 DROP VIEW IF EXISTS `user_subscription_dashboard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_subscription_dashboard` AS SELECT 
 1 AS `User_Id`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `User_Name`,
 1 AS `Subscription_Id`,
 1 AS `Subscription_start_date`,
 1 AS `Subscription_end_date`,
 1 AS `subscription_status_text`,
 1 AS `subscription_status`,
 1 AS `Subscription_Plan_Id`,
 1 AS `Subscription_Plan_Name`,
 1 AS `subscription_price`,
 1 AS `Payment_Id`,
 1 AS `Payment_method`,
 1 AS `Payment_date`,
 1 AS `Payment_history_Id`,
 1 AS `Payment_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `movie_details_with_genre_and_language_view`
--

/*!50001 DROP VIEW IF EXISTS `movie_details_with_genre_and_language_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `movie_details_with_genre_and_language_view` AS select `m`.`Movie_Id` AS `Movie_Id`,`m`.`Movie_Title` AS `Movie_Title`,`m`.`Movie_description` AS `Movie_Description`,`m`.`Movie_Duration` AS `Movie_Duration`,`m`.`Movie_Release_Date` AS `Movie_Release_Date`,`m`.`Download_Count` AS `Download_Count`,group_concat(distinct `gt`.`Genre_Type_Name` order by `gt`.`Genre_Type_Name` ASC separator ', ') AS `Available_Genres`,group_concat(distinct `lo`.`Language_name` order by `lo`.`Language_name` ASC separator ', ') AS `Available_Languages` from (((`movies` `m` left join `genres` `g` on((`m`.`Movie_Id` = `g`.`Movie_Id`))) left join `genre_types` `gt` on((`g`.`Genre_Type_Id` = `gt`.`Genre_Type_Id`))) left join `language_options` `lo` on((`m`.`Movie_Id` = `lo`.`Movie_Id`))) group by `m`.`Movie_Id`,`m`.`Movie_Title`,`m`.`Movie_description`,`m`.`Movie_Duration`,`m`.`Movie_Release_Date`,`m`.`Download_Count` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tv_series_details_with_genre_and_language_view`
--

/*!50001 DROP VIEW IF EXISTS `tv_series_details_with_genre_and_language_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tv_series_details_with_genre_and_language_view` AS select `tv`.`TV_Series_Id` AS `TV_Series_Id`,`tv`.`TV_Series_Title` AS `TV_Series_Title`,`tv`.`TV_Series_Description` AS `TV_Series_Description`,`tv`.`Episode_Count` AS `Episode_Count`,`tv`.`TV_Series_Release_Date` AS `TV_Series_Release_Date`,`tv`.`Download_Count` AS `Download_Count`,group_concat(distinct `gt`.`Genre_Type_Name` order by `gt`.`Genre_Type_Name` ASC separator ', ') AS `Available_Genres`,group_concat(distinct `lo`.`Language_name` order by `lo`.`Language_name` ASC separator ', ') AS `Available_Languages` from (((`tv_series` `tv` left join `genres` `g` on((`tv`.`TV_Series_Id` = `g`.`TV_Series_Id`))) left join `genre_types` `gt` on((`g`.`Genre_Type_Id` = `gt`.`Genre_Type_Id`))) left join `language_options` `lo` on((`tv`.`TV_Series_Id` = `lo`.`TV_Series_Id`))) group by `tv`.`TV_Series_Id`,`tv`.`TV_Series_Title`,`tv`.`TV_Series_Description`,`tv`.`Episode_Count`,`tv`.`TV_Series_Release_Date`,`tv`.`Download_Count` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_subscription_dashboard`
--

/*!50001 DROP VIEW IF EXISTS `user_subscription_dashboard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_subscription_dashboard` AS select `u`.`User_Id` AS `User_Id`,`u`.`First_Name` AS `First_Name`,`u`.`Last_Name` AS `Last_Name`,`u`.`User_Name` AS `User_Name`,`s`.`Subscription_Id` AS `Subscription_Id`,`s`.`Subscription_start_date` AS `Subscription_start_date`,`s`.`Subscription_end_date` AS `Subscription_end_date`,(case when (`s`.`subscription_status` = 1) then 'Active' when (`s`.`subscription_status` = 0) then 'Inactive' else 'Unknown' end) AS `subscription_status_text`,`s`.`subscription_status` AS `subscription_status`,`sp`.`subscription_plan_Id` AS `Subscription_Plan_Id`,`sp`.`subscription_plan_Name` AS `Subscription_Plan_Name`,`sp`.`subscription_price` AS `subscription_price`,`p`.`Payment_Id` AS `Payment_Id`,`p`.`Payment_method` AS `Payment_method`,`p`.`Payment_date` AS `Payment_date`,`ph`.`Payment_history_Id` AS `Payment_history_Id`,`ph`.`Payment_status` AS `Payment_status` from ((((`user` `u` left join `subscription` `s` on((`u`.`User_Id` = `s`.`User_Id`))) left join `subscription_plan` `sp` on((`s`.`subscription_Plan_Id` = `sp`.`subscription_plan_Id`))) left join `payments` `p` on((`s`.`Subscription_Id` = `p`.`Subscription_Id`))) left join `payment_history` `ph` on((`p`.`Payment_Id` = `ph`.`Payment_Id`))) order by `u`.`User_Id`,`s`.`Subscription_start_date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-22 22:54:41
