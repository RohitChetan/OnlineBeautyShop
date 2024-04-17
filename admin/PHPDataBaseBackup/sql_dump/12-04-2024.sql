-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: onlinebeautyshop
-- ------------------------------------------------------
-- Server version 	10.4.28-MariaDB
-- Date: Fri, 12 Apr 2024 06:22:58 +0200

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `admin_users` VALUES (1,'admin','admin',0,'','',1),(3,'shivani','shivani',1,'shiavni@gmail.com','1234567890',1),(5,'vishal1','vishal',1,'vishal@gmail.com','1234567890',1);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `admin_users` with 3 row(s)
--

--
-- Table structure for table `allpage_banner`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allpage_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(155) NOT NULL,
  `pagelink` varchar(255) NOT NULL,
  `bannerTitle` varchar(255) NOT NULL,
  `page_image` varchar(555) NOT NULL,
  `status` int(11) NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allpage_banner`
--

LOCK TABLES `allpage_banner` WRITE;
/*!40000 ALTER TABLE `allpage_banner` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `allpage_banner` VALUES (1,'EDCD','SDSD','SADFSD','376593110_WhatsApp Image 2024-03-09 at 14.53.56 (2).jpeg',1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `allpage_banner` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `allpage_banner` with 1 row(s)
--

--
-- Table structure for table `banner`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading1` varchar(255) NOT NULL,
  `heading2` varchar(255) NOT NULL,
  `btn_txt` varchar(255) DEFAULT NULL,
  `btn_link` varchar(55) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `order_no` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `banner` VALUES (1,'collection 2024','Latest Brands','Share Now','cart.php','141838360_368356647_online-shopping-e-commerce-banner-concept-vector-25035204.jpg',2,1),(2,'Collection 2024','Beauty Shop','','','773049178_cat1.jpg',1,1);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `banner` with 2 row(s)
--

--
-- Table structure for table `categories`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `categories` VALUES (1,'Mobile',1),(4,'Woman',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `categories` with 2 row(s)
--

--
-- Table structure for table `color_master`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_master`
--

LOCK TABLES `color_master` WRITE;
/*!40000 ALTER TABLE `color_master` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `color_master` VALUES (1,'Red',1),(3,'Black',1),(4,'Pink',1),(5,'Green',1),(6,'Gray',1);
/*!40000 ALTER TABLE `color_master` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `color_master` with 5 row(s)
--

--
-- Table structure for table `contact_us`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `contact_us` with 0 row(s)
--

--
-- Table structure for table `coupon_master`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_master`
--

LOCK TABLES `coupon_master` WRITE;
/*!40000 ALTER TABLE `coupon_master` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `coupon_master` VALUES (2,'First60',200,'Rupee',500,1);
/*!40000 ALTER TABLE `coupon_master` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `coupon_master` with 1 row(s)
--

--
-- Table structure for table `credentials_tbls`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credentials_tbls` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Ctype` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials_tbls`
--

LOCK TABLES `credentials_tbls` WRITE;
/*!40000 ALTER TABLE `credentials_tbls` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `credentials_tbls` VALUES (1,'Email','rrohit.chetu@gmail.com','cvps ymuy iywf onxl',1),(6,'instamojo','test_6a1b59d8aa35bb4914939a83f48','test_614cde173cc3a0f873549e11d51',1);
/*!40000 ALTER TABLE `credentials_tbls` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `credentials_tbls` with 2 row(s)
--

--
-- Table structure for table `order`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(200) NOT NULL,
  `mihpayid` varchar(200) NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` varchar(50) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `order` VALUES (1,0,'','',0,'payu',0,'Success',3,10,10,10,100,'','',0,0,'',0,'','','0000-00-00 00:00:00'),(2,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'COD',1500,'pending',1,0,0,0,0,'6d2b2873589e374892e3','',0,0,'',0,'','','2024-03-21 08:05:58'),(3,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'COD',1500,'pending',1,0,0,0,0,'bc7a88dbff4bd9949971','',0,0,'',0,'','','2024-03-21 08:08:30'),(4,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'COD',1500,'pending',1,0,0,0,0,'5ea5745b129e5a279c31','',0,0,'',0,'','','2024-03-21 08:14:20'),(5,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1500,'pending',1,0,0,0,0,'a15a075a83dd2e044902','',0,0,'',0,'','','2024-03-21 08:49:15'),(6,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1500,'pending',1,0,0,0,0,'7f167a60f9ac346a163e','',0,0,'',0,'','','2024-03-21 08:51:36'),(7,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1500,'pending',3,10,10,10,120,'3d4062c1fc5d454d5225','',510987879,509095339,'',0,'','','2024-03-21 08:51:50'),(8,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1500,'pending',3,10,101,10,132,'d911beae24c241a78cbc1fab3b2571ac','',0,0,'',0,'','','2024-03-21 08:58:05'),(9,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'26aa6349a8a424f762a3','',0,0,'',0,'','','2024-03-22 11:52:03'),(10,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'4aeac7919f69fe59dd4a','',0,0,'',0,'','','2024-03-22 12:00:59'),(11,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'a9baee09c5560cd243bc','',0,0,'',0,'','','2024-03-22 12:01:12'),(12,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'0e86193c86a49a19dd2e','',0,0,'',0,'','','2024-03-22 12:01:35'),(13,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'bdc463f8258d2fa28790','',0,0,'',0,'','','2024-03-22 12:02:25'),(14,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'14bc52e2df999753f05d','',0,0,'',0,'','','2024-03-22 12:21:00'),(15,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'8639f489bd76b069f97a','',0,0,'',0,'','','2024-03-22 12:23:47'),(16,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'71152ac29b2a99c693ed','',0,0,'',0,'','','2024-03-22 12:24:24'),(17,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'9f6f9dc6b4c6036ef3f5','',0,0,'',0,'','','2024-03-22 12:25:42'),(18,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',1,0,0,0,0,'04155ce3907e0c0b24f5','',0,0,'',0,'','','2024-03-22 12:26:46'),(19,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'instamojo',1350,'pending',3,20,20,20,200,'35950f9fccf38813256c','',511404642,509512101,'',0,'','','2024-03-22 12:51:26'),(20,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'COD',200,'pending',4,10,10,10,200,'af42b6254aeceead3257','',511433745,509541206,'',0,'','','2024-03-23 07:32:28'),(21,4,'TF-304, Siddharth Annexe-2, Oppo. Indian Oil Petrol Pump, Sama-Savli road, 390008','Vadodara',390008,'COD',600,'pending',3,10,10,10,200,'07688cd1c43a1977b1cb','',512856697,510964155,'',0,'','','2024-03-23 08:01:15');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `order` with 21 row(s)
--

--
-- Table structure for table `order_detail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attr_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `order_detail` VALUES (1,1,7,5,10,333),(2,2,6,8,1,1500),(3,3,6,8,1,1500),(4,4,6,8,1,1500),(5,5,6,8,1,1500),(6,6,6,8,1,1500),(7,7,6,8,1,1500),(8,8,6,8,1,1500),(9,9,7,6,1,1350),(10,10,7,6,1,1350),(11,11,7,6,1,1350),(12,12,7,6,1,1350),(13,13,7,6,1,1350),(14,14,7,6,1,1350),(15,15,7,6,1,1350),(16,16,7,6,1,1350),(17,17,7,6,1,1350),(18,18,7,6,1,1350),(19,19,7,6,1,1350),(20,20,24,17,1,200),(21,21,24,17,3,200);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `order_detail` with 21 row(s)
--

--
-- Table structure for table `order_status`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `order_status` VALUES (1,'Pending'),(2,'Processing'),(3,'Shipped'),(4,'Canceled'),(5,'Complete');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `order_status` with 5 row(s)
--

--
-- Table structure for table `product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `product` VALUES (10,4,3,'test',100,10,1,'977077907_651584201_Floral-Embroidered-Polo-T-shirt.jpg','test','test',0,'','','',0,1),(24,2,1,'ZXCzsXSX',0,0,0,'384450174_WhatsApp Image 2024-03-09 at 14.53.56 (1).jpeg','ZXSX','ASXASX',1,'aSXASX','AXASX','XaX',1,1),(27,4,3,'testing1',0,0,0,'961179558_WhatsApp Image 2024-04-11 at 11.45.48.jpeg','asdfasdf','asfasdf',1,'asdfasdf','asdfasf','asdfasdf',1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `product` with 3 row(s)
--

--
-- Table structure for table `product_attributes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `mrp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attributes`
--

LOCK TABLES `product_attributes` WRITE;
/*!40000 ALTER TABLE `product_attributes` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `product_attributes` VALUES (1,8,5,3,1900,1120,10),(2,8,4,5,1900,1120,8),(3,8,2,3,1900,1120,9),(4,8,4,3,1800,1050,4),(5,7,0,3,1900,1350,10),(6,7,0,5,1900,1350,8),(7,7,0,4,1900,1350,6),(8,6,5,0,1999,1500,10),(9,6,4,0,1989,1490,9),(10,5,0,0,2799,2399,10),(11,18,5,3,250,150,10),(12,19,5,3,250,200,10),(13,20,4,3,250,200,50),(14,21,5,3,250,200,25),(15,22,5,3,250,200,15),(16,23,5,3,250,200,15),(17,24,4,3,150,200,115),(18,25,5,3,250,200,15),(19,26,5,3,250,200,15),(20,26,4,6,200,150,10),(21,27,4,3,500,500,50),(22,27,1,6,450,400,25);
/*!40000 ALTER TABLE `product_attributes` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `product_attributes` with 22 row(s)
--

--
-- Table structure for table `product_images`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_images` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `product_images` VALUES (1,8,'479197953_526258680_Floral-Print-Polo-T-shirt1.jpg'),(2,8,'301120849_309027777_Floral-Print-Polo-T-shirt.jpg'),(4,18,'715194437_WhatsApp Image 2024-03-09 at 14.53.57 (3).jpeg'),(5,19,'765466186_WhatsApp Image 2024-03-09 at 14.53.58 (1).jpeg'),(6,20,'784733993_WhatsApp Image 2024-03-09 at 14.53.58 (1).jpeg'),(7,21,'871757063_WhatsApp Image 2024-03-09 at 14.53.58 (1).jpeg'),(8,23,'950917177_WhatsApp Image 2024-03-09 at 14.53.58 (1).jpeg');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `product_images` with 7 row(s)
--

--
-- Table structure for table `product_review`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review`
--

LOCK TABLES `product_review` WRITE;
/*!40000 ALTER TABLE `product_review` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `product_review` VALUES (2,9,1,'Good','asAS',0,'2021-05-05 08:31:39'),(8,24,4,'Very Good','It\'s Amazing',1,'2024-03-23 07:45:37');
/*!40000 ALTER TABLE `product_review` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `product_review` with 2 row(s)
--

--
-- Table structure for table `shiprocket_token`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiprocket_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(500) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiprocket_token`
--

LOCK TABLES `shiprocket_token` WRITE;
/*!40000 ALTER TABLE `shiprocket_token` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shiprocket_token` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE1Nzg2NTMsInNvdXJjZSI6InNyLWF1dGgtaW50IiwiZXhwIjoxNzEyMjkzNTI3LCJqdGkiOiI5TWp6RmgzbW1Ea2N4anV6IiwiaWF0IjoxNzExNDI5NTI3LCJpc3MiOiJodHRwczovL3NyLWF1dGguc2hpcHJvY2tldC5pbi9hdXRob3JpemUvdXNlciIsIm5iZiI6MTcxMTQyOTUyNywiY2lkIjoxNTI3NDE4LCJ0YyI6MzYwLCJ2ZXJib3NlIjpmYWxzZSwidmVuZG9yX2lkIjowLCJ2ZW5kb3JfY29kZSI6IiJ9.LYfQge-Uo4h7WijXdJkSEIwXprb4twOixYhcDMAfEmk','2024-03-26 05:05:27');
/*!40000 ALTER TABLE `shiprocket_token` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shiprocket_token` with 1 row(s)
--

--
-- Table structure for table `size_master`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `size_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `order_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size_master`
--

LOCK TABLES `size_master` WRITE;
/*!40000 ALTER TABLE `size_master` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `size_master` VALUES (1,'X',1,3),(2,'XL',1,4),(4,'M',1,2),(5,'S',1,1),(6,'XXL',1,5);
/*!40000 ALTER TABLE `size_master` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `size_master` with 5 row(s)
--

--
-- Table structure for table `sub_categories`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `sub_categories` VALUES (1,2,'T-Shirt',1),(2,2,'Trouser',1),(3,4,'Shirt',1),(4,2,'Shoes',1);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `sub_categories` with 4 row(s)
--

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `users` VALUES (4,'Shivani','123','cheturo2204@gmail.com','9104904864','2024-03-21 08:03:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `users` with 1 row(s)
--

--
-- Table structure for table `wishlist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `wishlist` VALUES (1,1,12,'2021-04-08 01:53:31');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `wishlist` with 1 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET AUTOCOMMIT=@OLD_AUTOCOMMIT */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Fri, 12 Apr 2024 06:22:58 +0200
