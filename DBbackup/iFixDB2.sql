-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: iFixLaptops
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `account_status`
--

DROP TABLE IF EXISTS `account_status`;
/*!50001 DROP VIEW IF EXISTS `account_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `account_status` AS SELECT 
 1 AS `account_status_invoice`,
 1 AS `account_status_qty`,
 1 AS `account_status_unit_price`,
 1 AS `account_status_out`,
 1 AS `account_status_in`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `invoice_id` int(10) NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_time` varchar(45) DEFAULT NULL,
  `invoice_user_id` int(10) DEFAULT NULL,
  `invoice_status` tinyint(1) DEFAULT NULL,
  `invoice_delever_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop_model`
--

DROP TABLE IF EXISTS `laptop_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laptop_model` (
  `laptop_model_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `laptop_model_laptop_id` varchar(450) DEFAULT NULL,
  `laptop_model_hard_disk` varchar(450) DEFAULT NULL,
  `laptop_model_ram` varchar(450) DEFAULT NULL,
  `laptop_model_vga` varchar(450) DEFAULT NULL,
  `laptop_model_processor` varchar(450) DEFAULT NULL,
  `laptop_model_usb_type_1` varchar(450) DEFAULT NULL,
  `laptop_model_usb_type_2` varchar(450) DEFAULT NULL,
  `laptop_model_hdmi` varchar(450) DEFAULT NULL,
  `laptop_model_vga_output` varchar(450) DEFAULT NULL,
  `laptop_model_screen_size` varchar(450) DEFAULT NULL,
  `laptop_model_cache_memory` int(10) DEFAULT NULL,
  `laptop_model_status` int(10) DEFAULT '1',
  `laptop_model_image_path` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`laptop_model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop_model`
--

LOCK TABLES `laptop_model` WRITE;
/*!40000 ALTER TABLE `laptop_model` DISABLE KEYS */;
INSERT INTO `laptop_model` VALUES (7,'Acer E5-531','500 GB','2GB','2 GB','Core i3 4th Gen','2.0','3.0','Yes','yes','15.6\'',3,1,'files/150433120705827 acer.jpg'),(8,'Acer E5-534','500 GB','2GB','2 GB','Core i3 5th Gen','3.0','3.1','Yes','No','15.6\'',3,1,'files/150433161562528 acer.jpg'),(9,'Panasonic E7','500 GB','4GB','2 GB','Core i7 5th Gen','3.0','3.1','Yes','No','15.6\'',3,1,'files/15043326863897.JPG');
/*!40000 ALTER TABLE `laptop_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop_price_detail`
--

DROP TABLE IF EXISTS `laptop_price_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laptop_price_detail` (
  `laptop_price_detail_id` int(10) DEFAULT NULL,
  `laptop_price_detail_model_id` varchar(450) NOT NULL,
  `laptop_price_detail_buying_price` decimal(10,2) DEFAULT NULL,
  `laptop_price_detail_selling_price` decimal(10,2) DEFAULT NULL,
  `laptop_price_detail_min_selling_price` decimal(10,2) DEFAULT NULL,
  `laptop_price_detail_status` tinyint(1) DEFAULT NULL,
  `laptop_price_detail_qty` int(10) DEFAULT '0',
  `laptop_price_detail_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`laptop_price_detail_model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop_price_detail`
--

LOCK TABLES `laptop_price_detail` WRITE;
/*!40000 ALTER TABLE `laptop_price_detail` DISABLE KEYS */;
INSERT INTO `laptop_price_detail` VALUES (NULL,'Acer E5-531',35000.00,36000.00,34500.00,1,10,'2017-09-07 14:41:42'),(NULL,'Acer E5-534',64999.00,72999.00,70999.00,1,10,'2017-09-07 14:41:42'),(NULL,'Panasonic E7',375000.00,420000.00,410000.00,1,1,'2017-09-07 14:41:42');
/*!40000 ALTER TABLE `laptop_price_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_history`
--

DROP TABLE IF EXISTS `payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_history` (
  `payment_history_id` int(10) NOT NULL,
  `payment_history_amount` decimal(10,2) DEFAULT NULL,
  `payment_history_card_type` varchar(45) DEFAULT NULL,
  `payment_history_card-no` varchar(45) DEFAULT NULL,
  `payment_history_invoice_id` int(10) DEFAULT NULL,
  `payment_history_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`payment_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_history`
--

LOCK TABLES `payment_history` WRITE;
/*!40000 ALTER TABLE `payment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_history_detail`
--

DROP TABLE IF EXISTS `payment_history_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_history_detail` (
  `payment_history_detail_id` int(10) NOT NULL,
  `payment_history_detail_payment_id` int(10) DEFAULT NULL,
  `payment_history_detail_laptop_model_id` varchar(450) DEFAULT NULL,
  `payment_history_detail_qty` int(10) DEFAULT NULL,
  `payment_history_detail_sold_price` decimal(10,2) DEFAULT NULL,
  `payment_history_detail_status` tinyint(1) DEFAULT NULL,
  `payment_history_detail_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_history_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_history_detail`
--

LOCK TABLES `payment_history_detail` WRITE;
/*!40000 ALTER TABLE `payment_history_detail` DISABLE KEYS */;
INSERT INTO `payment_history_detail` VALUES (1,1,'Acer E5-531',2,50000.00,1,'2017-09-07 14:36:08');
/*!40000 ALTER TABLE `payment_history_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(450) DEFAULT NULL,
  `user_address` varchar(450) DEFAULT NULL,
  `user_contact` varchar(45) DEFAULT NULL,
  `user_email` varchar(450) DEFAULT NULL,
  `user_password` varchar(450) DEFAULT NULL,
  `user_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (21,'wimansa nethmini','maharagama, piliyandala','111123','wimansa2@gmail.com','499',1),(22,'shakethika pathirana','Tver, Russia','926383823','shaki@gmail.com','456',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_count`
--

DROP TABLE IF EXISTS `user_count`;
/*!50001 DROP VIEW IF EXISTS `user_count`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_count` AS SELECT 
 1 AS `user_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_logging_history`
--

DROP TABLE IF EXISTS `user_logging_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_logging_history` (
  `logging_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `logging_history_user_id` varchar(45) DEFAULT NULL,
  `logging_history_time` varchar(45) DEFAULT NULL,
  `logging_history_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`logging_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logging_history`
--

LOCK TABLES `user_logging_history` WRITE;
/*!40000 ALTER TABLE `user_logging_history` DISABLE KEYS */;
INSERT INTO `user_logging_history` VALUES (2,'0','20:17:44','2017-08-01'),(3,'3','20:35:44','2017-08-01'),(4,'2','07:05:59','2017-08-02'),(5,'2','07:11:28','2017-08-02');
/*!40000 ALTER TABLE `user_logging_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `account_status`
--

/*!50001 DROP VIEW IF EXISTS `account_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `account_status` AS select `laptop_price_detail`.`laptop_price_detail_model_id` AS `account_status_invoice`,`laptop_price_detail`.`laptop_price_detail_qty` AS `account_status_qty`,`laptop_price_detail`.`laptop_price_detail_selling_price` AS `account_status_unit_price`,(`laptop_price_detail`.`laptop_price_detail_selling_price` * `laptop_price_detail`.`laptop_price_detail_qty`) AS `account_status_out`,'0' AS `account_status_in` from `laptop_price_detail` union select `payment_history_detail`.`payment_history_detail_laptop_model_id` AS `account_status_invoice`,`payment_history_detail`.`payment_history_detail_qty` AS `account_status_qty`,`payment_history_detail`.`payment_history_detail_sold_price` AS `account_status_unit_price`,'0' AS `account_status_out`,(`payment_history_detail`.`payment_history_detail_sold_price` * `payment_history_detail`.`payment_history_detail_qty`) AS `account_status_in` from `payment_history_detail` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_count`
--

/*!50001 DROP VIEW IF EXISTS `user_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_count` AS select count(`user`.`user_id`) AS `user_count` from `user` */;
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

-- Dump completed on 2017-09-07 20:17:01
