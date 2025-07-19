-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: ecom
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_email` varchar(255) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varbinary(255) DEFAULT NULL,
  `address` text,
  `agree` enum('on','off') DEFAULT NULL,
  `profilepic` varchar(15) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`admin_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('reshmavuyyuru08@gmail.com','reshmavuyyuru08@gmail.com',_binary '$2b$12$wK0cska/laZbHa/hR.0lN.agQX1pfD/gXzEZVzvwoymCs/nuGqHEG','patamata','on','Gj7Ju5.png','9296');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `itemid` binary(16) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` text,
  `quantity` mediumint DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `category` enum('Home Appliances','sports','Electronics','Grocery','Fashion') DEFAULT NULL,
  `imagename` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `admin` (`admin_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (_binary '(I  [\ðŽ¥¾‘›U\Ø>','Skechers Cotton 3Pk Mens Half Terry Ankle Length Socks-S20072Id-Wbkb, Assorted','Product details\r\nMaterial compositionNavy-77% Cotton, 20% Polyester, 3% Elastene Grey M-39% Cotton, 58% Polyester, 3% Elastene White-62% Cotton, 35% Polyester, 3% Elastene\r\nCare instructionsHand Wash Only\r\nSocks formAthletic Socks\r\nFit typeSlim\r\nCountry of OriginIndia\r\n',-3,599.00,'sports','Yy0Rz4.jpg','2025-07-07 14:18:30','reshmavuyyuru08@gmail.com'),(_binary 'ˆ¶C;W*\ðŽ¥¾‘›U\Ø>','Portronics Worldtag Item Finder with Upto 1 Year Battery Life, Bluetooth Tracker,MFi Certified, Item Locater for Keys, Wallets, Luggage, Pets, Gadgets etc,Only iOS Compatible with Apple Find My App','Brand	Portronics\r\nAre Batteries Included	Yes\r\nMaterial	ABS Plastic\r\nNumber of Batteries	1 CR2032 batteries required. (included)\r\nProduct Dimensions	12.5L x 3W x 10.5Th Centimeters',1,15000.00,'Electronics','Bq5Su5.jpg','2025-07-02 15:24:24','reshmavuyyuru08@gmail.com'),(_binary '\Å\Õ-W)\ðŽ¥¾‘›U\Ø>','Dekorly Artificial Potted Plants, 8 Pack Artificial Plastic Eucalyptus Plants Small Indoor Potted Houseplants, Small Faux Plants for Home Decor Bathroom Office Farmhouse (Set 0F 8)','About this item\r\nPerfect decoration: Different kinds of artificial plants indoors, using a unique design. Place it anywhere, it blends into the scene and brings comfort, making you prefer to stay there.\r\nSafe material: the fake plant is made of Quality plastic, realistic looking, straight and lush, the pot is covered with a layer of green grass, full of the feeling of nature.\r\nNo sunlight or water needed, artificial indoor plants do not wilt, change color and keep a fresh look in all seasons.',798,1.00,'Home Appliances','Ct2Xw9.jpg','2025-07-02 15:18:57','reshmavuyyuru08@gmail.com'),(_binary 'ÏŽ\ÜkX\Ä\ðŽ¥¾‘›U\Ø>','Sun Fashion And Lifestyle Women\'s Chanderi Stitched Printed Kurti for Girls Kurta','About this item\r\nKurti Fabric - Chanderi | Perfect choice for Gifting your loved ones\r\nStyle - Straight with front split | Length - Calf Length | Sleeves - Elbow Sleeves |Work -Floral Printed\r\nKurti Size -XS-34in, S-36in, M-38in, L-40in, XL-42in,2XL-44in\r\nBest for casual daily wear, office wear\r\nProduct Color May Slightly Vary Due To Photographic Lighting Sources Or Your Monitor Settings',1,499.00,'Fashion','Tc7Lg2.jpg','2025-07-04 16:21:16','reshmavuyyuru08@gmail.com');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_by` varchar(50) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Skechers Cotton 3Pk Mens Half Terry Ankle Length Socks-S20072Id-Wbkb, Assorted',59900.00,1,'2025-07-17 09:59:18','reshmavuyyuru08@gmail.com','patamata'),(2,'Skechers Cotton 3Pk Mens Half Terry Ankle Length Socks-S20072Id-Wbkb, Assorted',59900.00,1,'2025-07-17 10:00:30','reshmavuyyuru08@gmail.com','patamata'),(3,'Skechers Cotton 3Pk Mens Half Terry Ankle Length Socks-S20072Id-Wbkb, Assorted',59900.00,1,'2025-07-17 10:01:56','reshmavuyyuru08@gmail.com','patamata');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `reviewid` int unsigned NOT NULL AUTO_INCREMENT,
  `review` longtext,
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  `itemid` binary(16) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviewid`),
  KEY `itemid` (`itemid`),
  KEY `user` (`user`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'ghjk','4',_binary '(I  [\ðŽ¥¾‘›U\Ø>',NULL,'2025-07-15 16:21:29'),(2,'nice','4',_binary '(I  [\ðŽ¥¾‘›U\Ø>',NULL,'2025-07-15 16:21:53');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) DEFAULT NULL,
  `useremail` varchar(50) NOT NULL,
  `address` text,
  `password` varbinary(255) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  PRIMARY KEY (`useremail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('reshmavuyyuru','reshmavuyyuru08@gmail.com','patamata',_binary '$2b$12$/0w8QsEIHFeQ5eeFrnG1Q.JdNfOJzsygjfhQaWgRP4gFOPuKeyLBO','female');
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

-- Dump completed on 2025-07-19 15:26:25
