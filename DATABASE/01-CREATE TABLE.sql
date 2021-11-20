CREATE DATABASE  IF NOT EXISTS `wild` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wild`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: wild
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
-- Temporary view structure for view `count_players`
--

DROP TABLE IF EXISTS `count_players`;
/*!50001 DROP VIEW IF EXISTS `count_players`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `count_players` AS SELECT 
 1 AS `team_id`,
 1 AS `N_players`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gryffindor_wizard_by_role`
--

DROP TABLE IF EXISTS `gryffindor_wizard_by_role`;
/*!50001 DROP VIEW IF EXISTS `gryffindor_wizard_by_role`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gryffindor_wizard_by_role` AS SELECT 
 1 AS `name`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `role`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wizard_id` int NOT NULL,
  `team_id` int NOT NULL,
  `role` varchar(50) NOT NULL,
  `enrollment_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_player_team` (`wizard_id`),
  KEY `fk_wizard_noref` (`team_id`),
  CONSTRAINT `fk_player_team` FOREIGN KEY (`wizard_id`) REFERENCES `team` (`id`),
  CONSTRAINT `fk_wizard_noref` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,1,4,'beater','1995-10-09'),(2,2,1,'chaser','1995-08-17'),(3,3,1,'seeker','1994-12-03'),(4,4,3,'chaser','1995-03-24'),(5,5,3,'keeper','1997-07-16'),(6,6,1,'beater','1994-01-10'),(7,7,4,'chaser','1999-01-21'),(8,8,4,'keeper','1991-10-20'),(10,10,1,'beater','1991-08-03'),(11,11,3,'beater','1996-10-04'),(12,12,2,'chaser','1992-01-27'),(13,13,2,'beater','1991-01-11'),(14,14,2,'seeker','1995-08-17'),(16,16,3,'beater','1992-11-27'),(17,17,1,'seeker','1993-07-07'),(18,18,1,'keeper','1991-05-01'),(19,19,4,'keeper','1997-11-02'),(20,20,1,'keeper','1995-04-24'),(21,21,1,'chaser','1991-03-12'),(22,22,2,'chaser','1990-07-05'),(23,23,4,'beater','1995-01-06'),(24,24,1,'beater','1997-02-08'),(25,25,3,'beater','1996-12-16'),(26,26,2,'chaser','1997-02-07'),(27,27,2,'chaser','1999-07-31'),(28,28,3,'seeker','1994-05-13'),(29,29,1,'chaser','1997-08-14'),(30,30,1,'seeker','1993-08-30'),(31,31,1,'beater','1994-11-16'),(32,32,4,'seeker','1992-08-14'),(33,33,1,'keeper','1995-12-02'),(34,34,1,'chaser','1996-01-31'),(35,35,3,'chaser','1992-03-21'),(36,36,3,'seeker','1997-10-30'),(37,37,3,'chaser','1991-04-27'),(38,38,2,'chaser','1998-04-05'),(39,39,1,'beater','1992-02-17'),(40,40,1,'chaser','1995-10-15'),(41,41,1,'chaser','1999-10-25'),(42,42,1,'chaser','1998-05-06'),(43,43,2,'chaser','1998-03-01'),(44,44,2,'chaser','1991-03-11'),(46,46,3,'chaser','1993-11-02'),(47,47,3,'chaser','1992-03-12'),(48,48,3,'seeker','1993-03-17'),(49,49,1,'beater','1992-07-14'),(50,50,3,'chaser','1996-12-02'),(51,51,2,'chaser','1995-06-25'),(52,52,3,'beater','1991-12-14'),(55,55,1,'chaser','1991-05-14'),(56,56,1,'beater','1997-03-05'),(57,57,1,'beater','1996-12-07'),(58,58,1,'chaser','1999-02-23'),(59,59,2,'beater','1995-09-23'),(60,60,2,'beater','1992-04-12'),(61,61,2,'seeker','1992-10-09'),(62,62,3,'chaser','1990-02-27'),(64,64,4,'chaser','1999-01-12'),(66,66,3,'seeker','1991-02-23'),(67,67,4,'beater','1996-07-18'),(68,68,4,'keeper','1993-10-01'),(69,69,3,'beater','1997-03-06'),(70,70,1,'chaser','1995-11-08'),(71,71,4,'beater','1998-06-12'),(72,72,1,'beater','1997-11-23'),(73,73,3,'chaser','1994-01-28'),(74,74,4,'beater','1999-11-25'),(75,75,2,'seeker','1991-12-28'),(76,76,3,'seeker','1993-10-23'),(77,77,1,'seeker','1990-07-31'),(78,78,1,'beater','1992-01-01'),(79,79,1,'seeker','1991-04-27'),(81,81,1,'seeker','1998-03-29'),(82,82,1,'chaser','1991-08-26'),(83,83,1,'keeper','1992-04-17'),(85,85,1,'beater','1990-09-05'),(86,86,1,'seeker','1997-06-22'),(87,87,1,'chaser','1999-04-08'),(88,88,3,'beater','1991-07-08'),(89,89,3,'chaser','1996-09-25'),(90,90,1,'keeper','1993-01-04'),(91,91,4,'beater','1993-11-04'),(92,92,2,'beater','1997-12-14'),(93,93,1,'keeper','1992-05-27');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `role_team_group`
--

DROP TABLE IF EXISTS `role_team_group`;
/*!50001 DROP VIEW IF EXISTS `role_team_group`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `role_team_group` AS SELECT 
 1 AS `name`,
 1 AS `role`,
 1 AS `nb_players`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Gryffindor'),(2,'Ravenclaw'),(3,'Slytherin'),(4,'Hufflepuff');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizard`
--

DROP TABLE IF EXISTS `wizard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wizard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_wizard_player` FOREIGN KEY (`id`) REFERENCES `player` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizard`
--

LOCK TABLES `wizard` WRITE;
/*!40000 ALTER TABLE `wizard` DISABLE KEYS */;
INSERT INTO `wizard` VALUES (1,'Hannah','Abbott'),(2,'Katie','Bell'),(3,'Cuthbert','Binns'),(4,'Phineas','Nigellus'),(5,'Regulus','Black'),(6,'Sirius','Black'),(7,'Amelia','Bones'),(8,'Susan','Bones'),(9,'Terry','Boot'),(10,'Lavender','Brown'),(11,'Millicent','Bulstrode'),(12,'Cho','Chang'),(13,'Penelope','Clearwater'),(14,'Michael','Corner'),(15,'Crabbe',''),(16,'Vincent','Crabbe'),(17,'Colin','Creevey'),(18,'Dennis','Creevey'),(19,'Cedric','Diggory'),(20,'Aberforth','Dumbledore'),(21,'Albus','Dumbledore'),(22,'Marietta','Edgecombe'),(23,'Justin','Finch-Fletchley'),(24,'Seamus','Finnigan'),(25,'Marcus','Flint'),(26,'Filius','Flitwick'),(27,'Anthony','Goldstein'),(28,'Gregory','Goyle'),(29,'Hermione','Granger'),(30,'Godric','Gryffindor'),(31,'Rubeus','Hagrid'),(32,'Helga','Hufflepuff'),(33,'Angelina','Johnson'),(34,'Lee','Jordan'),(35,'Bellatrix','Lestrange'),(36,'Rabastan','Lestrange'),(37,'Rodolphus','Lestrange'),(38,'Gilderoy','Lockhart'),(39,'Alice','Longbottom'),(40,'Frank','Longbottom'),(41,'Augusta','Longbottom'),(42,'Neville','Longbottom'),(43,'Luna','Lovegood'),(44,'Xenophilius','Lovegood'),(45,'Remus','Lupin'),(46,'Draco','Malfoy'),(47,'Lucius','Malfoy'),(48,'Narcissa','Malfoy'),(49,'Minerva','McGonagall'),(50,'Theodore','Nott'),(51,'Garrick','Ollivander'),(52,'Pansy','Parkinson'),(53,'Padma','Patil'),(54,'Parvati','Patil'),(55,'Peter','Pettigrew'),(56,'Harry','Potter'),(57,'James','Potter'),(58,'Lily','J.'),(59,'Quirinus','Quirrell'),(60,'Helena','Ravenclaw'),(61,'Rowena','Ravenclaw'),(62,'Tom','Riddle'),(63,'Demelza','Robins'),(64,'Newton','Scamander'),(65,'Horace','Slughorn'),(66,'Salazar','Slytherin'),(67,'Hepzibah','Smith'),(68,'Zacharias','Smith'),(69,'Severus','Snape'),(70,'Alicia','Spinnet'),(71,'Pomona','Sprout'),(72,'Dean','Thomas'),(73,'Andromeda','Tonks'),(74,'Nymphadora','Tonks'),(75,'Sybill','Trelawney'),(76,'Dolores','Umbridge'),(77,'Romilda','Vane'),(78,'Arthur','Weasley'),(79,'William','Weasley'),(80,'Charles','Weasley'),(81,'Fred','Weasley'),(82,'George','Weasley'),(83,'Ginevra','Weasley'),(84,'Molly','Weasley'),(85,'Percy','Weasley'),(86,'Ronald','Weasley'),(87,'Oliver','Wood'),(88,'Blaise','Zabini'),(89,'Bloody','Baron'),(90,'Cadogan',''),(91,'Fat','Friar'),(92,'Myrtle','Warren'),(93,'Nicholas','de');
/*!40000 ALTER TABLE `wizard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `count_players`
--

/*!50001 DROP VIEW IF EXISTS `count_players`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_players` AS select `player`.`team_id` AS `team_id`,count(`player`.`wizard_id`) AS `N_players` from `player` group by `player`.`team_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gryffindor_wizard_by_role`
--

/*!50001 DROP VIEW IF EXISTS `gryffindor_wizard_by_role`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gryffindor_wizard_by_role` AS select `t`.`name` AS `name`,`w`.`firstname` AS `firstname`,`w`.`lastname` AS `lastname`,`p`.`role` AS `role` from ((`wizard` `w` join `player` `p` on((`w`.`id` = `p`.`wizard_id`))) join `team` `t` on((`p`.`team_id` = `t`.`id`))) where (`t`.`name` like 'Gryffindor') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `role_team_group`
--

/*!50001 DROP VIEW IF EXISTS `role_team_group`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `role_team_group` AS select `t`.`name` AS `name`,`p`.`role` AS `role`,count(0) AS `nb_players` from ((`wizard` `w` join `player` `p` on((`w`.`id` = `p`.`wizard_id`))) join `team` `t` on((`p`.`team_id` = `t`.`id`))) group by `t`.`name`,`p`.`role` order by `t`.`name`,`nb_players` desc */;
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

-- Dump completed on 2021-09-29 11:43:20
