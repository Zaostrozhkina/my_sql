-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (arm64)
--
-- Host: localhost    Database: dostaevskiy
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_area_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `address_delivery_area_id_fk` (`delivery_area_id`),
  CONSTRAINT `address_delivery_area_id_fk` FOREIGN KEY (`delivery_area_id`) REFERENCES `delivery_area` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Адреса клиентов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'08510 Parker Garden',5,'2015-08-05 00:30:28','2022-02-13 16:26:05'),(2,'1916 Brandi Springs',2,'2014-09-12 11:49:31','2022-02-13 16:26:23'),(3,'8434 Wunsch Parkway Suite 312',5,'2016-04-28 18:15:39','2022-02-13 16:26:23'),(4,'9806 Cedrick Courts',3,'2018-10-02 18:29:07','2022-02-13 16:26:23'),(5,'99174 Osinski Dam Suite 048',4,'2015-01-30 16:13:05','2022-02-13 16:26:05'),(6,'75491 Baumbach Squares Suite 129',5,'2018-11-07 13:30:38','2022-02-13 16:26:23'),(7,'64273 Dickens Village Apt. 183',1,'2018-03-23 09:21:07','2022-02-13 16:26:23'),(8,'7919 Carter Gateway',5,'2013-08-22 21:21:41','2022-02-13 16:26:23'),(9,'4157 Lizeth Neck',1,'2019-02-24 20:45:32','2022-02-13 16:26:23'),(10,'453 Kris Grove',5,'2013-02-04 23:53:28','2022-02-13 16:26:23'),(11,'6828 Murray Row Apt. 355',6,'2013-06-11 18:58:51','2022-02-13 16:26:23'),(12,'73989 Robyn Glen',2,'2017-05-01 03:22:52','2022-02-13 16:26:23'),(13,'73972 Gibson Light',3,'2020-12-29 04:35:56','2022-02-13 16:26:23'),(14,'73339 Eloisa Pass',2,'2021-03-18 19:12:34','2022-02-13 16:26:23'),(15,'44434 Ashleigh Via',5,'2015-07-02 14:02:28','2022-02-13 16:26:23'),(16,'017 Lang Street',2,'2018-01-13 01:23:03','2022-02-13 16:26:23'),(17,'65201 Durward Forges',1,'2022-01-07 04:02:25','2022-02-13 16:26:23'),(18,'78144 Hyatt Spring',6,'2016-03-24 10:12:53','2022-02-13 16:26:23'),(19,'508 Durward Loop Apt. 668',6,'2016-02-15 02:59:55','2022-02-13 16:26:23'),(20,'665 Bethel Way',2,'2015-06-01 23:49:13','2022-02-13 16:26:23');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `catalogs_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Разделы меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'Горячие блюда','2021-10-08 03:19:14','2020-12-27 05:27:43'),(2,'Завтраки','2018-10-16 03:58:05','2016-08-23 06:20:00'),(3,'Пицца','2019-10-24 00:12:42','2014-01-31 03:59:46'),(4,'Пироги','2018-05-17 08:50:08','2020-09-01 08:03:17'),(5,'Суши и роллы','2021-06-11 18:11:00','2016-06-20 18:44:12'),(6,'Стритфуд','2013-11-23 10:36:04','2013-01-25 04:24:12'),(7,'Комбо и сеты','2015-12-07 05:26:17','2018-03-30 07:44:05'),(8,'Боулы','2012-12-01 15:47:50','2015-08-25 11:21:09'),(9,'Воки','2014-05-14 13:49:44','2018-11-06 20:29:31'),(10,'Салаты и закуски','2021-11-17 14:05:14','2014-12-20 20:12:50'),(11,'Супы','2017-05-20 16:49:14','2018-11-11 20:54:09'),(12,'Десерты','2016-08-09 22:26:09','2013-02-21 15:37:30'),(13,'Напитки','2019-03-05 20:53:50','2013-05-09 06:21:46'),(14,'Соусы','2014-08-23 23:13:03','2021-06-18 03:07:01');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couriers`
--

DROP TABLE IF EXISTS `couriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `couriers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_area_id` int unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `couriers_delivery_area_id_fk` (`delivery_area_id`),
  KEY `couriers_name_idx` (`name`),
  CONSTRAINT `couriers_delivery_area_id_fk` FOREIGN KEY (`delivery_area_id`) REFERENCES `delivery_area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Курьеры';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couriers`
--

LOCK TABLES `couriers` WRITE;
/*!40000 ALTER TABLE `couriers` DISABLE KEYS */;
INSERT INTO `couriers` VALUES (1,'Kenneth Renner III','(057)199-4402x07995',1,'2016-04-24 04:52:10','2022-02-13 17:08:32'),(2,'Derick Blick','(900)456-3441x282',2,'2015-11-12 17:32:05','2022-02-13 17:08:32'),(3,'Cecile Marquardt DDS','+65(3)2155265333',3,'2017-04-16 18:43:48','2022-02-13 17:08:32'),(4,'Era Kshlerin','1-370-742-8166x4489',4,'2016-09-05 10:48:11','2020-04-07 16:11:47'),(5,'Marley Dicki','188.221.2611',5,'2020-03-05 08:11:48','2022-02-13 17:08:32'),(6,'Addison O\'Kon','1-042-445-3461x02442',6,'2016-05-15 05:12:52','2022-02-13 17:08:32'),(7,'Henderson Hoppe','226.572.4862',1,'2017-07-06 17:19:21','2018-02-17 01:00:25'),(8,'Rigoberto Nolan MD','+80(8)0400176935',2,'2016-06-17 16:12:18','2022-02-13 17:08:32'),(9,'Titus Mante','1-824-048-5407x76861',3,'2014-03-31 01:59:00','2017-02-27 03:55:09'),(10,'Prof. Vicente Schmidt MD','1-822-782-4730x10086',4,'2018-03-26 10:04:52','2022-02-13 17:08:32'),(11,'Jess Schaefer','1-869-730-9208x171',5,'2022-01-20 11:12:45','2022-02-13 17:08:32'),(12,'Yesenia Schmidt','357-773-4548',6,'2018-07-13 07:11:39','2022-02-13 17:08:32'),(13,'Bianka Rice','+51(7)6629588958',1,'2018-07-07 03:40:00','2022-02-13 17:08:32'),(14,'Theresia Buckridge','074.483.4152x6081',2,'2019-06-23 02:49:22','2021-01-31 13:34:02'),(15,'Lenny Dibbert','1-784-640-2782x04971',3,'2012-07-29 04:42:12','2021-01-22 09:30:56'),(16,'Magdalen Williamson','412-319-8559x21111',4,'2021-03-08 15:14:36','2022-02-13 17:08:32'),(17,'Joshua Wiza','1-577-168-8998',5,'2021-02-25 10:06:11','2022-02-13 17:08:32'),(18,'Celestine Krajcik','1-381-744-5657x338',6,'2015-03-27 12:02:51','2015-11-17 02:02:19'),(19,'Montana Fritsch','(766)293-9640x3649',1,'2022-02-12 16:22:09','2022-02-13 17:08:32'),(20,'Tyshawn Kertzmann','(433)756-1416',2,'2015-08-06 22:23:23','2016-06-27 06:35:27');
/*!40000 ALTER TABLE `couriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_area`
--

DROP TABLE IF EXISTS `delivery_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_area` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `delivery_area_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Зоны доставки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_area`
--

LOCK TABLES `delivery_area` WRITE;
/*!40000 ALTER TABLE `delivery_area` DISABLE KEYS */;
INSERT INTO `delivery_area` VALUES (1,'ALL','2018-09-29 07:46:29','2022-02-13 17:06:11'),(2,'Север','2014-12-03 21:21:17','2022-02-13 17:06:11'),(3,'Центр','2012-06-03 22:06:04','2019-04-19 20:14:26'),(4,'Юг','2015-12-23 19:11:52','2022-02-13 17:06:11'),(5,'Юго-запад','2017-03-11 21:19:42','2022-02-13 17:06:11'),(6,'Юго-восток','2015-07-19 19:06:36','2018-04-28 02:45:07');
/*!40000 ALTER TABLE `delivery_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `catalog_id` int unsigned NOT NULL,
  `discount` float unsigned DEFAULT NULL,
  `started_at` time DEFAULT NULL,
  `finished_at` time DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `discounts_user_id_fk` (`user_id`),
  KEY `discounts_catalod_id_fk` (`catalog_id`),
  KEY `discounts_discount_idx` (`discount`),
  CONSTRAINT `discounts_catalod_id_fk` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discounts_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Скидки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,20,11,18,'23:00:00','01:00:00','2019-05-02 19:28:21','2022-02-19 15:02:45'),(2,3,2,14,'23:00:00','01:00:00','2015-02-05 18:43:51','2022-02-13 17:09:13'),(3,2,3,19,'23:00:00','01:00:00','2020-10-24 00:08:51','2022-02-13 17:09:13'),(4,9,3,10,'23:00:00','01:00:00','2014-12-27 16:37:43','2017-12-11 20:46:15'),(5,7,1,23,'23:00:00','01:00:00','2020-03-01 16:12:20','2021-12-23 01:27:11'),(6,8,14,21,'23:00:00','01:00:00','2015-05-18 11:59:12','2018-09-20 06:00:33'),(7,19,12,24,'23:00:00','01:00:00','2015-03-28 03:08:21','2022-02-13 17:09:13'),(8,16,12,11,'23:00:00','01:00:00','2021-08-17 23:10:04','2022-02-13 17:09:13'),(9,12,1,17,'23:00:00','01:00:00','2012-09-17 00:14:28','2021-06-09 14:00:21'),(10,8,11,9,'23:00:00','01:00:00','2012-11-27 18:26:46','2014-09-08 18:27:58'),(11,19,7,23,'23:00:00','01:00:00','2021-12-31 08:40:21','2022-02-13 17:09:13'),(12,1,7,22,'23:00:00','01:00:00','2014-07-25 18:31:51','2016-09-25 11:31:43'),(13,20,13,15,'23:00:00','01:00:00','2014-05-06 20:48:15','2017-05-05 11:20:58'),(14,1,2,15,'23:00:00','01:00:00','2015-03-05 15:56:01','2022-02-13 17:09:13'),(15,2,7,10,'23:00:00','01:00:00','2013-10-21 18:04:04','2021-10-24 21:10:15'),(16,19,1,4,'23:00:00','01:00:00','2021-12-19 06:07:27','2022-02-13 17:09:13'),(17,6,1,12,'23:00:00','01:00:00','2016-03-20 20:21:41','2021-11-23 01:00:47'),(18,4,5,19,'23:00:00','01:00:00','2016-02-29 03:43:48','2016-03-14 14:25:24'),(19,4,9,24,'23:00:00','01:00:00','2021-02-03 01:54:43','2022-02-13 17:09:13'),(20,10,8,3,'23:00:00','01:00:00','2014-02-18 01:56:11','2022-02-13 17:09:13');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `grade_of_products`
--

DROP TABLE IF EXISTS `grade_of_products`;
/*!50001 DROP VIEW IF EXISTS `grade_of_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `grade_of_products` AS SELECT 
 1 AS `product`,
 1 AS `average_grade`,
 1 AS `total_order_product`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `catalog_id` int unsigned NOT NULL COMMENT 'Ссылка на размел меню',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ссылка на файл',
  `price` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `menu_catalog_id_fk` (`catalog_id`),
  KEY `name_2` (`name`,`price`),
  KEY `menu_price_idx` (`price`),
  CONSTRAINT `menu_catalog_id_fk` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,5,'mollitia','Autem assumenda ratione quasi consequatur dolorem voluptatem. In eos consequatur laborum. Aut vel laudantium quia nihil excepturi consequuntur voluptas.','http://lorempixel.com/600/400/food/',565,'2017-09-19 14:18:16','2022-02-12 18:48:58'),(2,8,'pariatur','Quo voluptate voluptas cupiditate. Voluptas rerum sequi sequi dolores est ea facilis. Consequatur ex incidunt eos excepturi omnis exercitationem necessitatibus.','http://lorempixel.com/600/400/food/',379,'2016-03-31 07:23:59','2020-09-12 18:18:15'),(3,11,'rerum','Architecto repudiandae tenetur ut ex ad. Quasi facere unde libero et. Temporibus sapiente hic accusamus esse cumque consequatur et atque.','http://lorempixel.com/600/400/food/',238,'2019-10-06 15:31:14','2022-02-13 17:17:05'),(4,11,'omnis','Quia aliquam enim soluta nulla. Optio sed porro omnis veniam. Temporibus sint qui dolor rerum esse consequatur.','http://lorempixel.com/600/400/food/',846,'2016-02-15 07:35:43','2022-02-13 17:17:05'),(5,8,'perferendis','Aut deleniti eos soluta corporis dolor quam. Beatae accusamus quidem sint delectus. Commodi totam et sint vel distinctio voluptates. Et totam minima nisi est neque.','http://lorempixel.com/600/400/food/',421,'2013-12-01 04:06:44','2021-05-14 14:49:34'),(6,1,'in','Aspernatur laudantium asperiores expedita consequatur reiciendis rerum voluptatem. Voluptatem ipsam molestiae asperiores consectetur sequi sint cupiditate. At culpa nostrum beatae et inventore ut est.','http://lorempixel.com/600/400/food/',741,'2015-05-11 16:40:42','2019-04-13 01:25:39'),(7,11,'libero','Deserunt similique dolor enim aperiam non voluptatem eum. Voluptatem corporis inventore omnis sint. Eos et tempora fuga ullam officiis. Eos ipsum in quia dignissimos voluptatem quidem excepturi.','http://lorempixel.com/600/400/food/',314,'2017-10-01 23:40:42','2021-07-26 09:09:52'),(8,5,'iste','Qui autem cupiditate provident. Sequi consequatur eius dolores veniam nam mollitia. Sit fugit impedit iure. Recusandae non fuga et minus.','http://lorempixel.com/600/400/food/',476,'2017-02-09 06:07:47','2022-02-13 17:17:05'),(9,12,'quasi','Qui rerum dolorum eos dolore pariatur et. Et esse incidunt facilis necessitatibus. Possimus dolores enim et eveniet omnis pariatur.','http://lorempixel.com/600/400/food/',354,'2014-06-18 06:54:00','2018-11-24 17:53:51'),(10,13,'porro','Inventore ut ut sapiente accusamus. Maxime qui aperiam est nostrum tenetur ut ut.','http://lorempixel.com/600/400/food/',769,'2021-12-29 05:54:08','2022-02-13 17:17:05'),(11,8,'eos','Voluptatum amet officiis tempora autem. Illum ea modi error cumque provident. Cupiditate voluptas accusamus fuga nemo fugiat ducimus. Voluptatem ut non vel.','http://lorempixel.com/600/400/food/',236,'2013-12-23 15:48:20','2016-12-16 12:58:14'),(12,7,'corrupti','Porro ipsam officia recusandae rerum. Reprehenderit iure quam nulla saepe voluptates. Magni illo nam earum quos architecto alias excepturi. Dolorem placeat amet iusto sed molestias nesciunt. Exercitationem ut debitis amet minima laboriosam.','http://lorempixel.com/600/400/food/',423,'2014-12-18 00:24:19','2019-08-12 21:38:10'),(13,6,'odio','Aut et id rem ut voluptatibus. Assumenda rem omnis omnis inventore praesentium. Odio cumque beatae quasi minus. Aut at ratione quos est.','http://lorempixel.com/600/400/food/',279,'2017-06-02 19:09:43','2021-08-01 05:25:38'),(14,10,'dolores','Aut incidunt fuga assumenda et quisquam ipsum. Nesciunt amet minima atque dolore quasi saepe.','http://lorempixel.com/600/400/food/',511,'2020-09-14 06:49:16','2022-02-13 17:17:05'),(15,5,'asperiores','Ea iste molestias omnis et impedit nemo illum. Ducimus rerum repellendus neque voluptatum eligendi ex libero. Voluptatibus voluptatem in exercitationem aliquam explicabo qui.','http://lorempixel.com/600/400/food/',990,'2014-07-09 17:53:27','2022-02-13 17:17:05'),(16,4,'explicabo','Minima sint deserunt placeat dolor nesciunt. Cum molestiae quod reprehenderit itaque qui culpa assumenda. Et similique cupiditate accusantium ipsa.','http://lorempixel.com/600/400/food/',899,'2012-02-16 08:56:42','2013-01-28 18:01:56'),(17,11,'sequi','Velit accusamus non est labore qui sequi et. Laudantium amet est temporibus consequatur pariatur.','http://lorempixel.com/600/400/food/',360,'2021-06-28 03:06:31','2022-02-13 17:17:05'),(18,3,'quisquam','Vero sint tempore illum dolorem. Inventore ea quas illum totam unde. Quis repellendus velit explicabo accusamus autem sed ipsam.','http://lorempixel.com/600/400/food/',597,'2020-12-29 01:55:34','2022-02-13 17:17:05'),(19,6,'quidem','Voluptatem et libero aliquam et eius. Laborum aut debitis officiis ipsam nihil facere hic. Aperiam quas neque quasi provident sunt quia.','http://lorempixel.com/600/400/food/',740,'2020-10-30 04:05:09','2022-02-13 17:17:05'),(20,9,'doloremque','Qui voluptatem cum sed dolor possimus sed est aut. Asperiores libero quaerat cupiditate nisi. Et explicabo impedit laudantium nostrum veritatis in temporibus. Est ut dolore iste est perferendis iste dolores.','http://lorempixel.com/600/400/food/',898,'2021-04-10 23:37:44','2022-02-13 17:17:05'),(21,11,'laudantium','Voluptas velit labore sed eveniet repellat similique enim similique. Totam quia eos qui. Et autem similique voluptatum tempora sequi. Aliquam sed occaecati sit quis temporibus voluptatibus ipsa. Maiores fugit totam dicta nihil voluptas.','http://lorempixel.com/600/400/food/',446,'2013-03-12 20:25:10','2022-02-13 17:17:05'),(22,12,'nisi','Quae quibusdam ullam et ab voluptatem. Praesentium ut repellat accusamus in sit repudiandae. Eius dolores dolores consectetur pariatur maiores est quisquam non. Dolorem aut omnis assumenda et.','http://lorempixel.com/600/400/food/',606,'2019-12-03 01:46:29','2022-02-13 17:17:05'),(23,2,'ducimus','Vitae qui molestiae totam dolores vel. Magni enim minus perspiciatis neque. Voluptatem et similique voluptas.','http://lorempixel.com/600/400/food/',421,'2016-06-11 21:52:48','2018-07-24 22:05:44'),(24,12,'maiores','Perferendis aliquid aut velit velit dolor. Itaque aperiam dignissimos minima cupiditate fuga. Hic earum distinctio a ex. Saepe et harum provident numquam non dolorem.','http://lorempixel.com/600/400/food/',525,'2017-09-06 14:27:11','2022-02-13 17:17:05'),(25,11,'saepe','Culpa alias qui ut illo rerum quia. Animi voluptatum soluta distinctio tempora ullam quia voluptatum facilis.','http://lorempixel.com/600/400/food/',691,'2019-01-14 00:41:18','2022-02-13 17:17:05'),(26,3,'eius','Iure aut est voluptatem exercitationem. Impedit ut adipisci provident rerum quo ducimus quis. Accusantium quia rerum eaque qui temporibus. Molestiae voluptate ratione magnam sint.','http://lorempixel.com/600/400/food/',447,'2022-01-24 07:18:15','2022-02-13 17:17:05'),(27,11,'atque','Tenetur doloribus vel dolor ut neque est. Doloremque et et accusamus ratione voluptate ratione. Deserunt dolorem fuga laboriosam voluptatem omnis. Nesciunt est aut distinctio perspiciatis eius sed id optio. Quo exercitationem adipisci eos consectetur pers','http://lorempixel.com/600/400/food/',432,'2014-02-20 21:40:08','2016-04-16 01:12:52'),(28,4,'sit','Dolore enim asperiores qui reprehenderit vero voluptate dolorum. Voluptatem repudiandae sed amet ipsa. Aut sint eaque aut eius quae tempore sunt. Eos autem harum nulla minus id dolorum.','http://lorempixel.com/600/400/food/',698,'2014-08-17 23:49:34','2018-09-15 14:03:31'),(29,12,'non','Libero quo veniam optio et a. Debitis voluptatem nam perferendis quia sed qui repellendus. Nihil temporibus voluptatem corporis voluptatem ratione pariatur. Sint maiores consequatur quia minima aut placeat.','http://lorempixel.com/600/400/food/',817,'2021-06-02 22:11:55','2022-02-13 17:17:05'),(30,10,'corporis','Voluptatem dolore sit doloremque ut velit in. Facilis incidunt velit ad eius omnis. Nesciunt quis deserunt quis cupiditate odit eligendi voluptas recusandae. Aut blanditiis ea et quam.','http://lorempixel.com/600/400/food/',343,'2014-10-26 22:37:23','2020-06-17 00:19:38'),(31,9,'sed','Aut dignissimos ullam a ea inventore. Distinctio id provident molestiae aut asperiores qui dolorum. Beatae atque natus voluptatem vel et.','http://lorempixel.com/600/400/food/',219,'2013-10-28 00:30:18','2020-02-01 23:25:49'),(32,2,'qui','Dicta ipsum incidunt temporibus voluptates. Quo quisquam ex qui voluptate ut. Est modi dignissimos deserunt quia at quasi non. Totam aliquam nihil odit dignissimos ex. Eos qui et veritatis at aperiam est harum consequuntur.','http://lorempixel.com/600/400/food/',838,'2013-04-19 15:02:40','2022-02-13 17:17:05'),(33,3,'reiciendis','Aspernatur laboriosam nobis repudiandae eum. Quae alias ab quidem adipisci. Ipsam quas soluta ea vel rem provident. Voluptate quo qui aut maiores blanditiis magnam.','http://lorempixel.com/600/400/food/',667,'2020-02-06 13:35:31','2022-02-13 17:17:05'),(34,5,'ad','Asperiores et ipsam qui. Tempore eum est quam dolor illum nobis. Consequuntur non molestiae vel ex hic. Est quibusdam quia omnis officiis expedita consequuntur molestiae.','http://lorempixel.com/600/400/food/',642,'2017-06-22 14:14:59','2022-02-13 17:17:05'),(35,12,'impedit','Dolor est quae iste consequatur dignissimos voluptas placeat. Molestias ea illum quas eligendi consectetur.','http://lorempixel.com/600/400/food/',833,'2013-06-10 21:02:21','2022-02-13 17:17:05'),(36,11,'tempore','Omnis perferendis nemo ab porro fugit unde ratione. Laborum est quo voluptatem vero aut. Possimus expedita facere vel alias.','http://lorempixel.com/600/400/food/',261,'2015-02-13 02:35:36','2016-04-18 12:36:56'),(37,5,'aut','Omnis in autem magni repellendus hic non quos. Voluptatem qui illum esse deleniti aut maxime expedita. Ipsa magni id aut. Harum aut esse est assumenda ab in. Perspiciatis sint corporis nobis et et.','http://lorempixel.com/600/400/food/',468,'2021-07-14 20:05:45','2022-02-13 17:17:05'),(38,8,'vitae','Tempore quis laudantium facilis fuga. Sunt sapiente omnis aspernatur esse quam blanditiis. Molestiae sunt aperiam molestiae qui.','http://lorempixel.com/600/400/food/',952,'2015-01-26 09:21:17','2017-05-30 18:50:02'),(39,2,'excepturi','Odio et praesentium modi et. Ducimus quia eos eum excepturi dicta. Nihil vero eius exercitationem cum non perspiciatis. A provident ex commodi non non.','http://lorempixel.com/600/400/food/',841,'2021-02-13 18:07:55','2022-02-13 17:17:05'),(40,2,'et','Harum quibusdam quia provident molestiae. Sed reiciendis sunt ab iusto ipsam. Placeat dolorem exercitationem magnam amet officiis deleniti nobis.','http://lorempixel.com/600/400/food/',568,'2021-08-10 03:45:14','2022-02-13 17:17:05'),(41,6,'sunt','Accusamus aliquid neque dolore est consequatur similique. Eum quasi consequatur explicabo quia ab magni. Recusandae perspiciatis aperiam non est eligendi. Voluptas officiis numquam nisi quae aut odio.','http://lorempixel.com/600/400/food/',829,'2014-07-21 22:28:01','2022-02-13 17:17:05'),(42,9,'voluptatum','Quam officia nisi et quasi sapiente rerum autem. Labore beatae quidem repellendus qui accusamus. Et debitis optio porro voluptatem. Excepturi consequuntur temporibus rerum harum.','http://lorempixel.com/600/400/food/',401,'2020-08-07 15:38:49','2020-10-08 15:19:16'),(43,8,'tempora','Recusandae ab quos fugiat officia iste occaecati. Esse optio illo beatae at et perferendis rem. Id et libero neque sunt incidunt porro tenetur blanditiis.','http://lorempixel.com/600/400/food/',473,'2016-11-24 04:44:33','2022-02-13 17:17:05'),(44,12,'consequatur','Accusantium soluta quaerat sunt eligendi aliquam saepe perspiciatis. Magni fugiat blanditiis odio non facilis at. Et suscipit pariatur distinctio aut dignissimos omnis numquam commodi.','http://lorempixel.com/600/400/food/',952,'2019-10-26 22:09:23','2022-02-13 17:17:05'),(45,5,'voluptas','Placeat qui similique fugiat consequatur iusto et. Dolores aut ut ut qui animi voluptas. Possimus nobis harum ipsum rerum nobis illum. Laborum facilis repellat corporis expedita voluptas at.','http://lorempixel.com/600/400/food/',372,'2021-06-23 10:38:54','2022-02-13 17:17:05'),(46,13,'dolorem','Ea eaque et et ut nihil. Exercitationem qui quisquam in sit in sint. Repellendus est non beatae quia quibusdam.','http://lorempixel.com/600/400/food/',854,'2012-05-04 21:58:33','2019-08-26 23:04:28'),(47,2,'culpa','Officiis et cum quia. Error optio et ipsum iusto atque magnam omnis. Non quaerat excepturi excepturi maiores. Voluptatum fugiat ullam aperiam animi vel voluptatibus ut.','http://lorempixel.com/600/400/food/',790,'2021-07-08 15:41:06','2022-02-13 17:17:05'),(48,1,'id','Doloribus vitae quia quia. Nemo unde illo in corrupti. Et molestiae sunt veritatis voluptatem atque et. Quidem quibusdam fuga veritatis.','http://lorempixel.com/600/400/food/',727,'2014-04-20 00:00:35','2022-01-11 07:32:38'),(49,2,'perspiciatis','Quasi hic mollitia quo. Impedit asperiores voluptatem possimus dolor totam ipsum. Fuga in qui quia doloremque suscipit quibusdam.','http://lorempixel.com/600/400/food/',300,'2012-10-06 02:28:39','2013-04-07 00:32:04'),(50,7,'repellat','Et accusantium facilis ut consequatur. Et aspernatur ut cupiditate facere dolor ut tempore corporis. Ullam quae fugiat ratione praesentium distinctio sint eveniet.','http://lorempixel.com/600/400/food/',784,'2020-12-26 19:37:37','2022-02-13 17:17:05'),(51,10,'sint','Incidunt est est atque voluptate cupiditate amet. Autem deleniti nulla voluptatem assumenda animi cupiditate. Explicabo aut delectus hic ut.','http://lorempixel.com/600/400/food/',475,'2018-07-06 03:56:47','2021-10-25 09:15:44'),(52,13,'at','Sit aut asperiores culpa. Et commodi rerum accusantium pariatur voluptas. Dolorum accusamus sunt earum non omnis possimus necessitatibus sint. Modi quia sit rem ea debitis corrupti at eaque.','http://lorempixel.com/600/400/food/',634,'2017-04-22 01:19:19','2020-02-02 05:45:19'),(53,5,'ratione','Illo est eaque omnis similique mollitia expedita. Molestiae eos dolorum sed voluptatem rerum sed voluptatibus. Sed harum animi doloribus explicabo ea.','http://lorempixel.com/600/400/food/',912,'2015-05-10 17:42:04','2020-02-12 06:44:30'),(54,12,'quia','Aut repellendus dolores consectetur aperiam porro reprehenderit. Sunt eveniet consequatur illum. Veniam sit aut explicabo accusantium harum totam.','http://lorempixel.com/600/400/food/',944,'2021-08-17 10:43:56','2022-02-13 17:17:05'),(55,10,'molestias','Velit corporis quasi labore quisquam. Saepe ut dolorem nihil ut. Voluptatem aperiam ad nihil odit voluptates dolorem nemo. Hic adipisci porro corporis.','http://lorempixel.com/600/400/food/',217,'2016-01-02 09:35:51','2020-03-23 07:33:06'),(56,1,'expedita','Explicabo expedita dolorum earum quae pariatur sit. Cum expedita excepturi in incidunt laborum distinctio voluptas. Aut enim qui labore iusto tenetur est non.','http://lorempixel.com/600/400/food/',861,'2016-07-06 12:53:19','2018-03-25 12:38:03'),(57,14,'placeat','Molestiae veritatis nobis laborum dolores suscipit consequuntur. Incidunt reprehenderit enim eaque iusto. Laborum veritatis nisi dicta dolores.','http://lorempixel.com/600/400/food/',998,'2014-08-13 16:24:17','2017-12-11 15:33:39'),(58,6,'nostrum','Accusantium qui nostrum animi repellendus. Dolor eos dolore esse aut. Dolores expedita earum consequuntur pariatur totam dolore recusandae. Ea perferendis est natus perspiciatis.','http://lorempixel.com/600/400/food/',878,'2020-10-20 13:26:56','2022-02-13 17:17:05'),(59,4,'quaerat','Ut qui voluptatem rerum esse fugit vitae qui. Alias sed aut alias culpa. Et velit ut incidunt sint. Quia sunt tempore quis asperiores. Nostrum velit eveniet dolorem libero dolorem sit iure.','http://lorempixel.com/600/400/food/',483,'2015-04-18 05:04:46','2017-11-09 16:51:30'),(60,11,'accusamus','Praesentium cum dolorem non cum id magnam recusandae. Culpa aut voluptatem dolorum voluptatibus et qui. Aspernatur iusto deserunt officiis quos tenetur suscipit reprehenderit. Vel et eos mollitia id.','http://lorempixel.com/600/400/food/',657,'2016-05-29 19:50:15','2017-10-09 19:08:57'),(61,2,'eum','Assumenda et eum voluptates perferendis. Numquam id et corrupti expedita possimus quia quo. Expedita omnis commodi animi voluptatem consectetur tempore et suscipit.','http://lorempixel.com/600/400/food/',494,'2016-10-13 00:25:46','2021-06-23 14:00:55'),(62,12,'hic','Quo voluptas nostrum reprehenderit commodi eaque est culpa. Maxime porro necessitatibus aut et. Sunt cumque sit ipsum ea odit.','http://lorempixel.com/600/400/food/',299,'2019-12-12 06:05:07','2022-02-13 17:17:05'),(63,12,'accusantium','Rerum culpa consequatur quia accusamus ut doloremque. Veritatis reiciendis rerum quas velit corrupti sunt magnam dolorem. Molestias possimus id cupiditate laborum consequuntur voluptatem quae. Possimus pariatur expedita voluptatem corporis iusto id et sin','http://lorempixel.com/600/400/food/',519,'2013-07-22 22:22:32','2016-07-16 19:35:43'),(64,4,'doloribus','Dolorum doloremque autem ea omnis sint commodi. Asperiores sint sit nihil voluptatem fuga. Reprehenderit qui eum fugit asperiores sunt sit. Ut vel impedit accusantium ut quod.','http://lorempixel.com/600/400/food/',661,'2014-05-25 01:12:55','2016-06-26 06:07:58'),(65,2,'nemo','Earum dolorem modi sit quaerat iste. Minus a architecto delectus ut. In id itaque et fugit consequatur eaque.','http://lorempixel.com/600/400/food/',773,'2021-02-13 03:01:06','2022-02-13 17:17:05'),(66,9,'reprehenderit','Amet pariatur aliquid perferendis harum quae facilis iusto. Dicta voluptas velit facere voluptas modi esse. Laudantium cum voluptate quo tenetur atque.','http://lorempixel.com/600/400/food/',845,'2019-08-31 17:10:16','2020-01-01 10:58:20'),(67,1,'molestiae','Quas recusandae numquam unde amet sequi quam. Saepe laudantium molestias magni numquam qui amet. Enim illo corrupti blanditiis placeat rem. Ratione porro quo suscipit et omnis blanditiis recusandae repudiandae.','http://lorempixel.com/600/400/food/',491,'2021-05-17 18:50:53','2022-02-13 17:17:05'),(68,7,'error','Voluptatum suscipit et ex voluptatem. Qui quod aut possimus tempora ut.','http://lorempixel.com/600/400/food/',995,'2021-03-27 20:19:41','2022-02-13 17:17:05'),(69,2,'est','Excepturi corporis qui nisi. In eligendi nemo asperiores illo. In quas velit suscipit. Doloribus et rerum consectetur fugit sunt rem. Aspernatur optio ipsum placeat.','http://lorempixel.com/600/400/food/',436,'2019-09-20 20:35:17','2022-02-13 17:17:05'),(70,2,'earum','Modi ipsam quaerat amet autem id est molestiae. Similique velit porro eos ut unde veritatis dolore. Optio aut voluptatem et laborum facere.','http://lorempixel.com/600/400/food/',584,'2019-08-30 09:01:27','2020-02-26 08:41:37'),(71,8,'aperiam','Sunt dolore sit saepe soluta possimus. Inventore non rerum porro. Ut qui et eius nostrum. Ut aut est et asperiores. Debitis laudantium in non debitis sapiente est.','http://lorempixel.com/600/400/food/',335,'2018-06-17 19:59:40','2022-02-13 17:17:05'),(72,8,'nesciunt','Natus voluptate animi veritatis molestiae quod. Cupiditate iusto tempora molestiae consequatur eius rerum rem sequi. Iusto laudantium est blanditiis sint. Necessitatibus repudiandae dicta commodi sint.','http://lorempixel.com/600/400/food/',566,'2020-10-04 22:44:39','2022-02-13 17:17:05'),(73,11,'ex','Neque quia autem ut maiores. Consequatur unde et qui ducimus incidunt voluptas deleniti corporis. Recusandae nihil voluptate blanditiis rem ea et dolor. Occaecati ut maxime aut itaque et eos quo accusamus.','http://lorempixel.com/600/400/food/',297,'2019-03-02 16:58:54','2022-02-13 17:17:05'),(74,2,'magnam','Inventore dolores tempora adipisci magni odit. Omnis qui est ut distinctio cum.','http://lorempixel.com/600/400/food/',225,'2016-02-29 18:43:20','2017-07-14 19:32:49'),(75,6,'nam','Totam omnis consequuntur consectetur sed vero. Quis tempore quia officia dolores ut. Facere autem repudiandae nobis quisquam excepturi. Quia nihil impedit dolores.','http://lorempixel.com/600/400/food/',443,'2017-10-05 15:18:24','2022-02-13 17:17:05'),(76,1,'dolor','Qui voluptatem ex officia corrupti distinctio consectetur quam quae. Eligendi quia ratione autem id dolorem ut.','http://lorempixel.com/600/400/food/',427,'2013-08-15 03:16:00','2015-07-28 04:57:41'),(77,14,'numquam','Eos placeat qui necessitatibus ipsa quia. Vitae non non excepturi vel id est. Delectus id repellendus eum inventore ipsa iste laudantium. Explicabo id eveniet nisi numquam.','http://lorempixel.com/600/400/food/',237,'2021-03-26 19:29:12','2022-02-13 17:17:05'),(78,7,'officiis','Reprehenderit et et assumenda eum alias ipsum sequi recusandae. Modi possimus eius voluptatibus reprehenderit. Iure quia natus qui.','http://lorempixel.com/600/400/food/',610,'2020-06-16 20:34:32','2022-02-13 17:17:05'),(79,1,'ut','Omnis modi dolores sit et provident voluptatem ut. Illo nisi eum fuga aliquid placeat inventore fuga. Ut eum fugiat tenetur in animi nobis.','http://lorempixel.com/600/400/food/',570,'2021-08-03 07:33:29','2022-02-13 17:17:05'),(80,1,'neque','Nihil suscipit placeat ea distinctio esse sint architecto omnis. Odio aliquid unde dolorem qui rerum. Dicta nemo consequatur et hic eum ut ut vel.','http://lorempixel.com/600/400/food/',222,'2013-09-18 13:11:49','2016-06-07 10:29:18'),(81,14,'sapiente','Pariatur consectetur quod doloremque nemo similique laborum. Minima est quia neque labore. Optio aut fugiat laborum. Aperiam accusamus quis error esse.','http://lorempixel.com/600/400/food/',207,'2018-03-10 21:51:15','2020-04-06 18:41:14'),(82,10,'tenetur','Sit non fuga odit aut aut sint. Est ea delectus eos sit ipsam qui.','http://lorempixel.com/600/400/food/',698,'2013-11-05 06:41:44','2014-01-17 09:57:40'),(83,13,'facere','Omnis a nostrum iusto est sit et voluptatem. Recusandae cum eum repudiandae at nemo cumque iusto distinctio. Est molestiae inventore quae maiores quia consequuntur. Vitae illum velit fugiat nam debitis quia minus.','http://lorempixel.com/600/400/food/',984,'2015-10-07 01:44:43','2022-02-13 17:17:05'),(84,4,'alias','Ducimus rerum veniam nihil praesentium sit aperiam. Quia est temporibus et doloremque nam quisquam ducimus. Non consequatur fugit qui.','http://lorempixel.com/600/400/food/',322,'2021-09-28 03:31:04','2022-02-13 17:17:05'),(85,8,'dignissimos','Praesentium officiis a rerum eaque iusto sint rerum. Nihil odit sed nihil quas dolor fugit qui. Excepturi quod sit dolor rem sed est nulla.','http://lorempixel.com/600/400/food/',380,'2013-10-02 10:39:15','2018-09-27 05:54:56'),(86,9,'maxime','Inventore quis ipsa non quibusdam fugiat. Dolor praesentium rerum pariatur provident autem neque. Qui sint rerum ipsam soluta fuga.','http://lorempixel.com/600/400/food/',363,'2017-03-17 12:04:03','2022-02-13 17:17:05'),(87,5,'dolore','A officia consectetur eaque a consequatur sint vel. Quod consequuntur labore est amet eveniet vero. Voluptatum aut reprehenderit sequi nulla.','http://lorempixel.com/600/400/food/',577,'2017-03-01 05:19:33','2019-04-05 15:51:12'),(88,7,'cumque','Dolores magnam sint expedita qui aut. Voluptas temporibus molestiae in laborum placeat reiciendis. Neque enim consequuntur laudantium distinctio dolores qui. Quidem ut molestiae soluta dolor.','http://lorempixel.com/600/400/food/',810,'2016-06-20 20:59:37','2022-02-13 17:17:05'),(89,1,'delectus','Harum et autem ipsa quos qui explicabo. Ipsam sint et quaerat deleniti sit sed porro sint. Qui voluptas porro numquam omnis. Deserunt enim architecto iste. Cum reiciendis delectus ea.','http://lorempixel.com/600/400/food/',397,'2012-06-07 16:52:30','2018-04-17 01:56:08'),(90,9,'beatae','Cumque veritatis suscipit ut aut. Neque sunt sed nostrum saepe molestiae. Consequatur ut qui corrupti quasi rerum.','http://lorempixel.com/600/400/food/',901,'2014-05-11 23:15:18','2020-09-24 04:11:18'),(91,3,'quis','Sit sequi accusamus quam. Corrupti sunt molestiae rerum ut unde iusto dicta sit. Voluptas eaque eos eum voluptatibus eaque maxime. Facere pariatur vero magnam placeat odio magnam quasi similique.','http://lorempixel.com/600/400/food/',359,'2016-11-01 19:10:53','2022-02-13 17:17:05'),(92,2,'totam','Eos ipsam iusto voluptatem perspiciatis. Consequatur enim neque et laborum est sed officiis. Cumque eius sint necessitatibus ut molestias aliquid amet quas.','http://lorempixel.com/600/400/food/',532,'2012-04-13 11:02:38','2016-08-10 11:21:12'),(93,6,'quae','Molestias asperiores architecto fuga deserunt optio libero. Ab non aut blanditiis et libero suscipit. Possimus ab praesentium culpa sint corrupti aut iste.','http://lorempixel.com/600/400/food/',683,'2019-11-15 21:40:19','2022-02-13 17:17:05'),(94,14,'architecto','Veritatis sit sapiente aut neque blanditiis adipisci sit. Similique eius veritatis voluptatem sapiente molestias. Quod consectetur dolorem quisquam rerum officiis esse. Et pariatur numquam dolores quia nesciunt.','http://lorempixel.com/600/400/food/',691,'2012-04-30 15:47:05','2019-05-11 03:24:37'),(95,6,'quo','Ullam voluptates unde alias et fuga velit quae. Aut est rerum fuga similique necessitatibus doloremque. Exercitationem deserunt ut eius qui error saepe. Debitis molestias quas et. Id est aliquid sed voluptatum repudiandae necessitatibus natus.','http://lorempixel.com/600/400/food/',897,'2017-09-21 12:19:00','2022-02-13 17:17:05'),(96,8,'autem','Doloribus quo ducimus quas dolores eos autem et. Officia nulla consequatur recusandae voluptatum ut quasi voluptatem. Recusandae voluptatem quidem temporibus sequi a assumenda. Adipisci placeat et ipsam fugit exercitationem voluptas.','http://lorempixel.com/600/400/food/',846,'2018-11-11 08:59:41','2022-02-13 17:17:05'),(97,9,'magni','Non doloribus et impedit ex minima reprehenderit. Hic dolores dolor animi iste aliquid. Minima voluptatum tenetur reprehenderit necessitatibus. Distinctio exercitationem aut tenetur veniam et.','http://lorempixel.com/600/400/food/',570,'2018-01-30 06:09:18','2022-02-13 17:17:05'),(98,6,'veniam','Velit ratione magni laborum velit consectetur numquam. Omnis enim dolorem sed dolore. Placeat et nisi itaque aut. Est nostrum non ut.','http://lorempixel.com/600/400/food/',935,'2016-05-01 05:34:07','2017-05-12 10:39:53'),(99,14,'voluptates','Aspernatur qui dolorum dolor illo architecto praesentium. Velit optio ea quam. Harum et exercitationem sunt fugiat rerum. Blanditiis aliquid aut omnis.','http://lorempixel.com/600/400/food/',323,'2021-06-28 17:25:40','2022-02-13 17:17:05'),(100,10,'aliquam','Numquam fugit fugit voluptatem hic dicta. Expedita unde et tempora. Veniam similique minima modi quos debitis est. In nemo eligendi id aut excepturi.','http://lorempixel.com/600/400/food/',922,'2016-04-14 16:47:49','2022-02-13 17:17:05');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_statuses_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_statuses`
--

LOCK TABLES `order_statuses` WRITE;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` VALUES (1,'Принят','2020-11-09 18:44:33','2022-02-13 17:18:02'),(2,'Готовится','2017-06-23 07:16:11','2019-07-27 00:38:26'),(3,'На доставке','2017-08-08 01:37:32','2018-11-24 23:23:33'),(4,'Выполнен','2014-07-27 17:37:29','2022-02-13 17:18:02');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `menu_id` int unsigned NOT NULL,
  `total` int unsigned DEFAULT '1' COMMENT 'Количество заказанных товарных позиций',
  `price` int unsigned NOT NULL,
  `address_id` int unsigned NOT NULL,
  `payment_id` int unsigned NOT NULL COMMENT 'Способ оплаты',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_fk` (`user_id`),
  KEY `orders_menu_id_fk` (`menu_id`),
  KEY `orders_address_id_fk` (`address_id`),
  KEY `orders_payment_id_fk` (`payment_id`),
  KEY `orders_price_idx` (`price`),
  CONSTRAINT `orders_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `orders_menu_id_fk` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  CONSTRAINT `orders_payment_id_fk` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  CONSTRAINT `orders_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,15,1,7,3955,17,2,'2022-02-13 08:51:27','2022-02-17 21:44:43'),(2,3,6,2,1482,4,3,'2022-01-28 13:12:55','2022-02-17 21:44:43'),(3,9,97,7,3990,4,4,'2022-01-19 17:46:26','2022-02-17 21:44:43'),(4,16,89,4,1588,11,3,'2022-01-26 03:29:36','2022-02-17 21:44:43'),(5,14,37,5,2340,14,3,'2022-01-23 14:24:53','2022-02-17 21:44:43'),(6,12,43,2,946,18,1,'2022-01-20 15:51:49','2022-02-17 21:44:43'),(7,14,43,6,2838,1,3,'2022-02-13 14:20:40','2022-02-17 21:44:43'),(8,10,32,8,6704,17,1,'2022-01-19 02:24:03','2022-02-17 21:44:43'),(9,7,66,5,4225,12,2,'2022-02-07 19:14:28','2022-02-17 21:44:43'),(10,15,76,6,2562,2,1,'2022-01-23 19:16:24','2022-02-17 21:44:43'),(11,15,26,5,2235,3,3,'2022-02-11 16:54:47','2022-02-17 21:44:43'),(12,3,62,10,2990,2,4,'2022-02-03 05:00:54','2022-02-17 21:44:43'),(13,20,77,8,1896,11,3,'2022-01-26 00:36:20','2022-02-17 21:44:43'),(14,4,38,2,1904,15,4,'2022-02-11 14:15:13','2022-02-17 21:44:43'),(15,16,75,10,4430,11,2,'2022-01-21 23:43:18','2022-02-17 21:44:43'),(16,2,34,1,642,9,2,'2022-01-26 06:07:00','2022-02-17 21:44:43'),(17,20,3,6,1428,17,3,'2022-02-14 09:41:17','2022-02-17 21:44:43'),(18,16,94,6,4146,17,3,'2022-02-09 08:21:38','2022-02-17 21:44:43'),(19,4,95,10,8970,1,2,'2022-02-17 15:00:33','2022-02-17 21:44:43'),(20,12,12,6,2538,4,3,'2022-02-08 04:14:03','2022-02-17 21:44:43'),(21,18,68,9,8955,2,1,'2022-02-05 02:24:48','2022-02-17 21:44:43'),(22,1,78,8,4880,19,4,'2022-02-12 01:38:00','2022-02-17 21:44:43'),(23,11,47,6,4740,2,3,'2022-01-28 03:11:51','2022-02-17 21:44:43'),(24,16,55,1,217,20,4,'2022-01-24 13:21:26','2022-02-17 21:44:43'),(25,12,81,2,414,10,2,'2022-02-17 11:27:51','2022-02-17 21:44:43'),(26,15,33,3,2001,17,4,'2022-01-30 19:31:07','2022-02-17 21:44:43'),(27,6,87,5,2885,5,4,'2022-02-16 17:28:16','2022-02-17 21:44:43'),(28,20,41,6,4974,8,4,'2022-02-08 07:04:12','2022-02-17 21:44:43'),(29,2,43,4,1892,19,1,'2022-02-03 09:12:21','2022-02-17 21:44:43'),(30,4,87,5,2885,20,3,'2022-02-05 03:05:22','2022-02-17 21:44:43'),(31,7,6,7,5187,7,1,'2022-01-29 14:05:58','2022-02-17 21:44:43'),(32,12,28,1,698,19,1,'2022-01-19 15:29:57','2022-02-17 21:44:43'),(33,2,41,5,4145,11,4,'2022-01-19 13:28:04','2022-02-17 21:44:43'),(34,15,37,2,936,15,4,'2022-01-19 23:06:41','2022-02-17 21:44:43'),(35,5,98,6,5610,17,1,'2022-01-27 05:25:25','2022-02-17 21:44:43'),(36,8,18,6,3582,2,2,'2022-01-25 08:03:12','2022-02-17 21:44:43'),(37,13,100,7,6454,12,4,'2022-01-26 02:15:57','2022-02-17 21:44:43'),(38,18,54,1,944,11,1,'2022-02-08 13:26:22','2022-02-17 21:44:43'),(39,12,84,2,644,7,1,'2022-02-07 14:40:11','2022-02-17 21:44:43'),(40,3,26,4,1788,8,1,'2022-01-27 11:18:01','2022-02-17 21:44:43'),(41,14,87,6,3462,1,2,'2022-02-01 14:45:43','2022-02-17 21:44:43'),(42,5,75,8,3544,8,2,'2022-01-29 18:10:45','2022-02-17 21:44:43'),(43,15,20,10,8980,14,1,'2022-01-30 00:52:48','2022-02-17 21:44:43'),(44,8,75,3,1329,11,4,'2022-01-19 00:07:58','2022-02-17 21:44:43'),(45,15,12,8,3384,16,3,'2022-02-12 00:17:35','2022-02-17 21:44:43'),(46,13,31,9,1971,17,1,'2022-01-23 03:20:15','2022-02-17 21:44:43'),(47,3,14,2,1022,9,2,'2022-01-25 18:04:41','2022-02-17 21:44:43'),(48,8,77,7,1659,9,1,'2022-02-08 10:38:54','2022-02-17 21:44:43'),(49,13,46,4,3416,9,4,'2022-02-11 01:16:37','2022-02-17 21:44:43'),(50,4,79,10,5700,7,4,'2022-02-16 00:42:37','2022-02-17 21:44:43'),(51,20,2,9,3411,1,2,'2022-01-29 01:59:26','2022-02-17 21:44:43'),(52,16,55,1,217,7,3,'2022-02-17 10:05:30','2022-02-17 21:44:43'),(53,14,10,6,4614,3,2,'2022-02-10 22:45:26','2022-02-17 21:44:43'),(54,8,92,3,1596,11,3,'2022-01-20 13:46:51','2022-02-17 21:44:43'),(55,2,95,9,8073,16,2,'2022-02-16 02:54:11','2022-02-17 21:44:43'),(56,15,24,10,5250,10,2,'2022-02-03 23:26:32','2022-02-17 21:44:43'),(57,14,90,3,2703,5,4,'2022-02-15 14:46:21','2022-02-17 21:44:43'),(58,14,57,1,998,16,3,'2022-02-16 05:48:21','2022-02-17 21:44:43'),(59,12,81,3,621,1,2,'2022-01-21 10:58:52','2022-02-17 21:44:43'),(60,8,34,8,5136,18,1,'2022-02-02 15:45:31','2022-02-17 21:44:43'),(61,9,97,2,1140,7,4,'2022-01-25 00:07:10','2022-02-17 21:44:43'),(62,18,84,8,2576,8,4,'2022-02-08 03:35:28','2022-02-17 21:44:43'),(63,16,14,4,2044,8,2,'2022-02-10 19:52:03','2022-02-17 21:44:43'),(64,8,87,2,1154,17,1,'2022-02-10 18:50:01','2022-02-17 21:44:43'),(65,16,6,8,5928,19,2,'2022-02-01 12:50:09','2022-02-17 21:44:43'),(66,13,75,6,2658,2,1,'2022-01-21 09:56:54','2022-02-17 21:44:43'),(67,11,11,9,2124,11,4,'2022-01-19 13:30:15','2022-02-17 21:44:43'),(68,9,41,5,4145,19,4,'2022-02-13 15:56:47','2022-02-17 21:44:43'),(69,8,22,5,3030,14,2,'2022-01-24 17:29:19','2022-02-17 21:44:43'),(70,2,4,8,6768,4,4,'2022-02-01 17:52:26','2022-02-17 21:44:43'),(71,4,58,4,3512,7,3,'2022-02-10 15:10:27','2022-02-17 21:44:43'),(72,9,17,10,3600,13,1,'2022-01-28 00:31:10','2022-02-17 21:44:43'),(73,5,56,3,2583,13,4,'2022-01-31 07:20:41','2022-02-17 21:44:43'),(74,6,74,5,1125,1,4,'2022-01-22 13:26:04','2022-02-17 21:44:43'),(75,17,59,3,1449,15,2,'2022-01-26 23:24:32','2022-02-17 21:44:43'),(76,20,66,2,1690,3,2,'2022-01-24 07:00:39','2022-02-17 21:44:43'),(77,18,83,8,7872,13,4,'2022-01-19 15:05:50','2022-02-17 21:44:43'),(78,18,81,2,414,16,1,'2022-02-06 08:43:25','2022-02-17 21:44:43'),(79,8,9,7,2478,12,4,'2022-01-19 00:35:49','2022-02-17 21:44:43'),(80,6,21,2,892,1,2,'2022-01-27 03:04:59','2022-02-17 21:44:43'),(81,16,65,1,773,7,1,'2022-01-30 15:53:41','2022-02-17 21:44:43'),(82,8,37,7,3276,18,1,'2022-01-19 00:29:42','2022-02-17 21:44:43'),(83,20,64,1,661,10,4,'2022-01-18 05:03:37','2022-02-17 21:44:43'),(84,6,64,3,1983,7,1,'2022-02-16 02:05:11','2022-02-17 21:44:43'),(85,10,93,1,683,2,2,'2022-02-11 21:31:18','2022-02-17 21:44:43'),(86,15,85,4,1520,8,1,'2022-01-21 07:37:06','2022-02-17 21:44:43'),(87,19,98,4,3740,19,1,'2022-01-22 23:47:50','2022-02-17 21:44:43'),(88,4,95,3,2691,14,4,'2022-02-01 02:24:04','2022-02-17 21:44:43'),(89,12,100,8,7376,20,4,'2022-02-14 14:53:02','2022-02-17 21:44:43'),(90,8,88,10,8100,4,2,'2022-01-19 21:29:08','2022-02-17 21:44:43'),(91,11,68,3,2985,6,4,'2022-02-02 17:02:48','2022-02-17 21:44:43'),(92,7,58,7,6146,20,4,'2022-01-30 23:02:49','2022-02-17 21:44:43'),(93,10,5,4,1684,3,1,'2022-02-08 18:21:50','2022-02-17 21:44:43'),(94,18,48,4,2908,7,4,'2022-01-23 00:56:57','2022-02-17 21:44:43'),(95,9,27,5,2160,20,3,'2022-02-06 23:55:28','2022-02-17 21:44:43'),(96,5,67,7,3437,12,4,'2022-02-14 23:02:40','2022-02-17 21:44:43'),(97,14,54,10,9440,16,1,'2022-02-07 21:43:08','2022-02-17 21:44:43'),(98,9,95,2,1794,7,4,'2022-02-02 17:43:51','2022-02-17 21:44:43'),(99,13,61,6,2964,15,4,'2022-01-31 01:46:04','2022-02-17 21:44:43'),(100,4,69,7,3052,14,3,'2022-02-10 05:54:59','2022-02-17 21:44:43');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_comments`
--

DROP TABLE IF EXISTS `orders_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` tinyint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_comments_order_id_fk` (`order_id`),
  KEY `grade` (`grade`),
  CONSTRAINT `orders_comments_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Оценка заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_comments`
--

LOCK TABLES `orders_comments` WRITE;
/*!40000 ALTER TABLE `orders_comments` DISABLE KEYS */;
INSERT INTO `orders_comments` VALUES (1,1,'Minima qui sit doloribus quia vero qui. Quia adipisci qui qui iure temporibus aut a eaque. Quo eum ut ut delectus eaque expedita nesciunt.',4,'2021-03-20 02:58:47','2022-02-13 17:52:57'),(2,2,'Est sed similique tempora alias. Vero non explicabo officia doloremque. Culpa eaque alias molestiae fugiat distinctio aut est. Ut sunt voluptas est aspernatur adipisci modi voluptatibus ut. Aut cumque qui voluptas rerum tempora.',2,'2015-10-21 08:36:08','2022-02-13 17:52:57'),(3,3,'Blanditiis omnis in et libero. Quo delectus molestias placeat autem consectetur. Nesciunt dolore aliquam in et. Et impedit laboriosam sint quia delectus. Beatae sapiente et facere architecto.',4,'2014-11-24 20:17:30','2021-02-06 01:41:43'),(4,4,'Dolores dolorem reprehenderit quis et dolor quibusdam ipsam tempore. Vel temporibus ut praesentium. Quae et explicabo aut laboriosam autem aut. Totam vel facilis fuga asperiores sequi excepturi qui.',2,'2014-03-23 20:21:17','2016-08-29 02:23:44'),(5,5,'Dolorem sit eaque rerum. Cum quae repellat natus aperiam. Velit ut aut excepturi natus soluta quod. Voluptatibus ut possimus laborum officia id nostrum ullam.',3,'2017-09-29 23:03:42','2022-02-13 17:52:57'),(6,6,'Quibusdam quaerat reprehenderit eligendi dicta et nisi. Nisi in in nisi molestias voluptas architecto autem. Deleniti iste sequi cupiditate atque dolores id possimus. Harum qui sunt qui.',5,'2019-02-17 23:22:16','2021-12-26 14:17:13'),(7,7,'Esse iure et qui magnam voluptas architecto unde quo. Error harum perferendis libero nihil omnis. Eos aut eius et voluptatibus.',1,'2016-10-30 22:35:46','2022-02-13 17:52:57'),(8,8,'Et officiis nesciunt sint ea delectus aut dolorem. Nesciunt minus expedita est corrupti harum aut quidem. Dolore beatae eum est deserunt non velit.',4,'2022-02-12 04:17:03','2022-02-13 17:52:57'),(9,9,'Nobis id fugit quia velit maxime. Dolor veniam est qui animi soluta. Qui iure aspernatur et ratione aut excepturi minus.',4,'2018-04-01 14:36:40','2022-02-13 17:52:57'),(10,10,'Sed est placeat dolorum ipsum at aut voluptatem. Ullam fugit ullam explicabo error alias aut vel. Dicta minima officiis quasi accusantium. Et eos aut expedita eum.',3,'2012-10-29 21:18:44','2018-01-28 18:21:47'),(11,11,'Vel est ut reiciendis debitis quia minus aut. Ex culpa quia sint alias et. Possimus placeat dolor sapiente qui sint quis.',4,'2012-09-13 03:47:50','2018-11-06 06:47:20'),(12,12,'Esse maxime placeat hic perferendis iure. Commodi omnis rerum atque culpa.',5,'2019-01-12 11:23:36','2021-03-12 06:46:28'),(13,13,'Velit soluta eos rem enim quia. Quia eum maiores consequuntur et enim in quis. Deserunt sunt iusto atque voluptas commodi. Enim autem aut eum veniam architecto voluptas voluptatem.',2,'2012-03-10 01:53:28','2013-07-01 05:20:30'),(14,14,'Praesentium voluptates magnam hic aut dolores itaque voluptatem. Delectus minima enim accusantium id. Id quae voluptate dolorum et qui sint odio iste. Reprehenderit laborum omnis ab.',4,'2021-02-21 22:28:09','2022-02-13 17:52:57'),(15,15,'Ad facilis voluptatem porro facere. Repellat illum esse culpa est. Voluptates ab eum iusto temporibus at.',4,'2015-01-06 12:51:29','2016-10-07 16:57:42'),(16,16,'Ex sint est magnam eveniet consequatur. Accusantium distinctio eveniet eaque fugit asperiores eos. Reiciendis voluptatum ex voluptas sit aut officia eos.',3,'2021-08-22 17:58:29','2022-02-13 17:52:57'),(17,17,'Maxime et et enim asperiores ad. Id culpa nostrum expedita. Repellendus natus animi quis natus possimus quas. Magni in adipisci voluptates pariatur.',1,'2013-05-07 04:47:50','2016-04-02 01:04:09'),(18,18,'Ut laudantium suscipit deserunt rerum consequatur qui ut. Et sint eaque aut quia velit id rerum. Et et voluptas quo id eum. Cupiditate dolore ipsa et eos aspernatur explicabo.',2,'2022-01-01 22:33:34','2022-02-13 17:52:57'),(19,19,'Rerum in cum et natus totam. Delectus omnis magni et. Dolore amet et magni.',5,'2021-10-08 20:19:55','2022-02-13 17:52:57'),(20,20,'Inventore quisquam accusamus numquam error beatae quod quia ut. Nulla occaecati aut doloribus similique sed accusantium doloremque velit. Ut dolores ea ut odit quaerat veritatis commodi. Id consequatur voluptatem est neque hic.',4,'2020-03-25 18:12:01','2022-02-13 17:52:57'),(21,21,'Quia esse sunt et in suscipit. Itaque aspernatur nihil repudiandae quis dolorem ex est. Expedita corrupti repellendus rerum sapiente. Soluta error nihil perferendis amet.',1,'2017-10-24 14:54:13','2018-05-22 23:33:05'),(22,22,'Odit rem minus et quasi et. Aliquam sed accusantium autem minus. Doloremque rerum repudiandae expedita sit.',4,'2017-05-30 03:09:12','2022-02-13 17:52:57'),(23,23,'Vitae eos officiis quasi delectus ab. Dolor iste recusandae itaque. Voluptate labore qui repudiandae illum quo dolorum.',1,'2016-06-25 04:22:13','2017-12-24 20:09:37'),(24,24,'Non ullam occaecati aut repudiandae qui reiciendis numquam. Ipsum animi dolorem rerum nesciunt laborum. Sed rerum fugit architecto tempore.',4,'2017-02-16 21:32:35','2022-02-13 17:52:57'),(25,25,'Animi accusantium ut necessitatibus in. Tempore quisquam mollitia natus excepturi. Laudantium dicta quo neque assumenda animi. Deleniti aut quaerat aut iure molestiae.',3,'2017-08-10 11:23:20','2022-02-13 17:52:57'),(26,26,'Officia numquam quia neque quia autem ut voluptatem. Suscipit et ad excepturi et ipsam modi numquam. Veritatis explicabo repellat nesciunt.',2,'2019-02-02 20:06:32','2021-12-20 17:25:23'),(27,27,'Reprehenderit voluptate aliquam saepe numquam reiciendis nihil. In perspiciatis quis sed eum dolorem dolorum necessitatibus.',5,'2014-06-22 05:48:45','2016-03-19 22:42:55'),(28,28,'Iste nulla aut eligendi dolores at autem consectetur. Velit eum voluptates distinctio voluptatibus dolores ullam sed. Rerum architecto ratione ut rerum optio cum.',5,'2017-08-02 04:51:52','2018-02-02 22:13:29'),(29,29,'Vel ea accusantium error dolores at. Pariatur quo laudantium ut qui ut adipisci non. Aut neque repellendus assumenda.',3,'2015-10-08 10:21:42','2019-01-25 16:10:39'),(30,30,'Molestiae et porro exercitationem rerum ut. In qui praesentium veniam libero explicabo. Placeat officia nihil perspiciatis non. Sint velit molestiae voluptatem unde.',5,'2018-07-14 21:01:48','2022-02-13 17:52:57'),(31,31,'Minima tenetur illo iure magni est. Delectus molestiae a consequatur exercitationem. Culpa est consectetur aliquam eius nesciunt voluptatem.',2,'2012-10-30 11:18:18','2015-09-22 23:47:48'),(32,32,'Non ratione maxime ea aut. Et id non cumque officiis a commodi error. Quibusdam veniam consequatur iusto delectus.',2,'2012-10-29 19:30:18','2013-05-25 08:02:04'),(33,33,'Repellat nihil distinctio aut quis dolorem. Ut atque enim numquam in quia et. Ipsa velit inventore nihil consectetur.',1,'2015-12-13 10:44:32','2017-04-07 08:06:49'),(34,34,'Neque et asperiores et. Culpa tenetur saepe qui ipsum et earum ipsum. Repudiandae nihil est odio atque tenetur dolorum. Tempora ullam velit necessitatibus quo.',3,'2021-07-27 00:57:49','2022-02-13 17:52:57'),(35,35,'Rerum ipsa magnam tenetur sunt qui. Molestiae pariatur velit molestiae occaecati consequatur. Voluptas impedit sit perspiciatis. Facilis quis quia et consectetur.',5,'2014-04-15 11:39:46','2018-11-29 06:58:57'),(36,36,'Sunt et provident voluptatem autem officiis quia. Earum alias aspernatur sint ducimus qui.',4,'2019-05-15 19:56:03','2022-02-13 17:52:57'),(37,37,'Minima dolorem et porro laudantium quo. In non blanditiis voluptatem ipsa rem voluptas. Minima provident omnis qui consequatur deleniti et sed. Ea quo aut culpa perferendis earum.',5,'2012-12-01 07:29:45','2017-06-03 19:22:02'),(38,38,'Quis aut omnis sunt saepe. Et ipsam quam est. Ut velit autem libero et eum. Necessitatibus harum neque et nisi et debitis laboriosam.',5,'2014-04-09 07:23:29','2018-09-02 03:48:31'),(39,39,'Voluptates rerum et quo eligendi vero. Commodi excepturi nihil occaecati. Aperiam praesentium voluptatibus omnis modi. Cum enim blanditiis temporibus sed tempore.',3,'2012-07-20 06:15:19','2016-01-24 09:33:51'),(40,40,'Repellendus qui consequatur aspernatur atque. Minima voluptas tempora porro facilis fugit laudantium omnis. Voluptate itaque aut aut autem molestias repellendus laudantium.',2,'2013-08-24 23:37:07','2017-11-18 01:10:22'),(41,41,'Architecto ab alias et non eligendi autem quasi. Labore odio saepe ea. Tempora delectus rerum est.',2,'2014-02-13 23:17:08','2018-07-12 15:28:23'),(42,42,'Veniam maiores iusto perspiciatis expedita. Ullam aut quibusdam dicta accusantium laborum ea. Voluptatibus quod corporis nisi et doloremque.',3,'2016-04-11 19:23:46','2020-09-30 20:44:24'),(43,43,'Nulla consequatur nobis omnis minus dicta. Aut ut nisi assumenda. Et non aspernatur qui debitis beatae. Id corrupti non sit dolorum sed labore recusandae fuga.',2,'2019-01-13 21:03:48','2022-02-13 17:52:57'),(44,44,'Dolorum sunt aut qui vero cumque quia. Doloribus quisquam qui eos delectus. Iusto qui et repudiandae beatae voluptate nihil. Nulla sint nulla corporis aperiam beatae aut.',5,'2015-04-13 22:30:22','2021-08-04 05:27:13'),(45,45,'Magni et ipsam rerum enim maiores illo earum. Veniam soluta nesciunt quae exercitationem eum. Minima ipsam odit ducimus qui commodi eum tempora rem.',1,'2018-04-16 18:45:43','2022-02-13 17:52:57'),(46,46,'Ut facilis quam nesciunt natus eius. Dicta ex alias quia est dicta. Molestiae molestiae iure deleniti at. Voluptatem quaerat reprehenderit sit eum.',5,'2021-07-11 21:43:28','2022-02-13 17:52:57'),(47,47,'Adipisci accusantium reprehenderit at ullam ad officiis voluptatem. Dolorum reprehenderit ea quia doloribus suscipit perferendis. Et dicta qui in et dolorem eum recusandae.',4,'2019-09-02 22:50:42','2022-02-13 17:52:57'),(48,48,'Corporis alias reiciendis accusantium maiores est tempore autem. Consequatur rerum aut neque totam tenetur quis rerum labore. Recusandae eum sit non nulla. Autem sunt unde ipsam. Voluptatem nihil illo adipisci modi.',4,'2017-04-04 18:38:40','2018-07-06 04:11:49'),(49,49,'Blanditiis veritatis quidem quaerat nesciunt itaque quo. Asperiores officia voluptatum dicta est corporis adipisci impedit ea. Et animi dicta dolores. Cum et quibusdam ea pariatur.',5,'2012-04-26 16:26:00','2018-06-14 11:49:12'),(50,50,'Et id est officia minus impedit voluptas. Numquam molestias est inventore rerum enim et autem nihil. Assumenda est commodi aut enim voluptatibus vitae. Eos ipsum tempore aliquam in aspernatur.',3,'2015-08-31 00:23:00','2018-08-07 14:04:28'),(51,51,'Dignissimos non aspernatur expedita. Et quis eos et ratione atque. Dolor iure aut eius voluptatum corporis exercitationem tenetur mollitia.',4,'2013-11-28 21:22:25','2020-11-01 04:50:50'),(52,52,'Ut rerum ipsam rerum inventore ipsa. Mollitia ad fuga veniam laborum et eos et. Et omnis amet iste dolores voluptatibus asperiores hic cupiditate. Sed vitae nihil fugiat dolores dolorum ea.',5,'2017-09-06 19:27:33','2022-02-13 17:52:57'),(53,53,'Aut nostrum maxime nulla dolorum cum earum laborum. Dicta dolorem laborum quo accusantium et beatae rerum. Quis est veniam commodi et. Facere dolorem vel omnis ex ut nihil.',3,'2019-01-14 06:37:40','2022-02-13 17:52:57'),(54,54,'Quam tenetur saepe maiores provident et dignissimos soluta. Veritatis qui est officia impedit. Mollitia quia maiores maiores ullam architecto occaecati.',5,'2018-03-26 17:02:32','2018-06-29 07:16:51'),(55,55,'Eligendi assumenda nemo in id corporis. Minima at dolor nihil est.',4,'2019-09-27 02:03:25','2019-10-19 04:40:09'),(56,56,'Quibusdam repellendus perspiciatis molestiae possimus voluptas. Ducimus iste repellendus doloremque quidem. Sed qui eaque voluptas illo. Repudiandae quo quia nulla consectetur.',5,'2019-01-04 23:24:59','2020-10-29 16:13:24'),(57,57,'Recusandae dignissimos ut non mollitia aut molestiae. Ea id nemo rerum voluptas maxime. Quasi voluptatem rerum quo laboriosam. Qui sit rerum molestias nesciunt eius.',5,'2019-05-25 19:32:07','2022-02-13 17:52:57'),(58,58,'Laboriosam omnis animi aut sit atque soluta. Sit maiores quisquam omnis quia aspernatur. Impedit itaque soluta voluptates accusamus. Nobis hic a dolores et repellendus quaerat.',4,'2014-10-24 23:45:48','2020-06-04 10:56:08'),(59,59,'Quasi ea omnis culpa sint nisi non error. Dolore qui consequatur nihil consequatur porro. Dolorem qui earum et totam cum.',2,'2018-08-17 17:30:06','2019-10-11 13:19:10'),(60,60,'Iusto est numquam ut doloremque aut ratione adipisci. Sit praesentium laboriosam accusamus nostrum consectetur aut. Dolores facilis maxime repellat autem sequi. Non minima ipsam quia.',1,'2016-07-12 01:47:21','2022-02-13 17:52:57'),(61,61,'Voluptate vel velit sint quae rerum mollitia. Quidem et et aut explicabo. Omnis dolor quia corrupti minus odio ea doloremque. Minus consequatur perferendis ad unde.',3,'2020-10-04 01:11:53','2022-02-13 17:52:57'),(62,62,'Vero et ipsam voluptas. Quasi rerum ut omnis tempora voluptatem. In error itaque rerum nemo iste voluptas eum.',2,'2019-03-06 05:53:39','2022-02-13 17:52:57'),(63,63,'Nemo accusamus maiores dolor fuga. Animi in eum cupiditate iure dolorem repudiandae tempore. Voluptas optio dolorem quasi ut aperiam similique ab.',1,'2018-08-17 20:17:37','2022-02-13 17:52:57'),(64,64,'Quis deleniti libero aut minus aut fugit molestiae voluptatem. Vel aliquid voluptas laborum.',3,'2012-03-01 22:42:45','2014-09-28 11:01:00'),(65,65,'Sunt et sed tenetur labore amet qui minus. Placeat quam rerum dolorem necessitatibus. Occaecati harum voluptatem aut quis. Non ipsam ut doloremque et beatae.',1,'2015-08-09 19:30:14','2021-09-10 11:18:17'),(66,66,'Veniam error natus rerum voluptates ea dolorem. Cum nostrum ut debitis. Fugiat doloremque est veritatis et odit.',1,'2014-05-30 18:20:49','2020-01-23 09:11:40'),(67,67,'Magnam beatae odit quia occaecati sint iste. Dolorum magni ratione est nihil assumenda non hic. Numquam harum eum error eveniet error ut. Quis nostrum aspernatur ea officia sit nobis.',3,'2021-03-23 20:24:40','2022-02-13 17:52:57'),(68,68,'Molestiae est eaque deleniti autem. Error consectetur mollitia asperiores veniam.',3,'2013-02-09 18:38:19','2020-04-20 22:28:11'),(69,69,'Cumque sit quisquam ipsam et quod dolorem sequi. Sit doloribus non debitis itaque. Accusamus laborum debitis non aperiam voluptates nobis.',1,'2017-11-17 10:25:20','2022-02-13 17:52:57'),(70,70,'Modi at sunt labore consequatur labore ut officia. Quidem natus animi placeat amet. Similique quo tempore quod reiciendis ab magni. Fuga vel dolore vel velit.',5,'2018-09-16 14:03:16','2022-02-13 17:52:57'),(71,71,'Consectetur ea esse dolorem quasi. Debitis enim et quasi aut cupiditate id. Minima placeat a qui aut consequuntur neque dolore minima.',4,'2012-11-04 09:32:30','2020-04-25 00:25:25'),(72,72,'Alias velit eaque qui debitis et placeat eos. Dolorum rerum explicabo maxime aspernatur qui veniam sit. Molestiae quaerat excepturi harum libero dicta omnis incidunt sed.',4,'2013-04-28 09:12:04','2021-07-22 17:29:10'),(73,73,'Saepe excepturi aut quis dolores id excepturi nostrum. Molestiae accusantium sed sed aperiam optio aut. Id corrupti sed ipsam.',4,'2018-10-29 22:18:33','2020-05-31 16:58:10'),(74,74,'Ut nihil quidem quod laboriosam qui in. Tenetur quia quas nesciunt aut. Et dolorum neque aperiam ea voluptatem adipisci sint. Ut perferendis enim reiciendis fuga et. Qui eveniet delectus sit corrupti eum totam quidem.',2,'2013-10-15 02:19:44','2014-07-19 03:26:25'),(75,75,'Dolor possimus aut tempore sit vel dolor modi. Nihil voluptatem porro facilis quod non et. Magni optio corporis architecto amet amet vel dolor nobis. At laboriosam qui voluptate reiciendis natus id sed.',2,'2017-12-06 07:16:52','2019-04-20 10:23:12'),(76,76,'Eum sapiente mollitia consequatur deleniti. Minima omnis impedit quibusdam. Iure qui sint architecto dolor ratione enim. Quod magni modi sit autem laborum alias.',2,'2021-09-29 04:49:44','2022-02-13 17:52:57'),(77,77,'Quam ipsam vel amet ea dicta. Possimus maiores vel voluptas expedita. Qui ut laborum maiores sunt perspiciatis repellat corrupti.',1,'2015-06-28 21:41:24','2022-02-13 17:52:57'),(78,78,'Est mollitia quas aut inventore occaecati minus. Natus et mollitia quia at ea repellat. Quos accusamus eligendi sed. Tenetur eum dolorem eligendi aliquid amet.',1,'2016-09-07 07:30:36','2020-10-30 07:36:21'),(79,79,'Quam reprehenderit qui modi dolorem mollitia odit vel. Consequatur voluptas optio et est maiores sunt. Recusandae nulla molestiae veniam perferendis veniam amet repellendus totam.',5,'2018-05-10 18:40:44','2022-02-13 17:52:57'),(80,80,'Dolorem autem iusto accusantium sunt tenetur qui debitis. Tempora eos quia quia blanditiis aliquid aliquam. Delectus vel qui aut dicta voluptatem. Velit tenetur porro aperiam exercitationem eum et.',1,'2020-05-31 01:31:12','2021-10-10 04:16:12');
/*!40000 ALTER TABLE `orders_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `exist_order` BEFORE INSERT ON `orders_comments` FOR EACH ROW BEGIN 
	IF NOT if_row_exists(NEW.order_id) THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'ERROR ADDING COMMENTS! This order does not exist.';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders_couriers`
--

DROP TABLE IF EXISTS `orders_couriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_couriers` (
  `order_id` int unsigned NOT NULL,
  `courier_id` int unsigned NOT NULL,
  `order_status_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deliver_before` datetime DEFAULT ((`created_at` + interval 1 hour)),
  `delivery_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`,`courier_id`),
  KEY `orders_couriers_order_status_id_fk` (`order_status_id`),
  KEY `orders_couriers_courier_id_fk` (`courier_id`),
  KEY `orders_couriers_deliver_before_idx` (`deliver_before`),
  KEY `orders_couriers_delivery_at_idx` (`delivery_at`),
  CONSTRAINT `orders_couriers_courier_id_fk` FOREIGN KEY (`courier_id`) REFERENCES `couriers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_couriers_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_couriers_order_status_id_fk` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Заказы в работе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_couriers`
--

LOCK TABLES `orders_couriers` WRITE;
/*!40000 ALTER TABLE `orders_couriers` DISABLE KEYS */;
INSERT INTO `orders_couriers` VALUES (1,18,2,'2021-08-03 13:13:11','2021-08-03 14:13:11',NULL,'2022-02-13 17:29:32'),(2,19,4,'2021-11-01 17:38:09','2021-11-01 18:38:09','2021-11-01 18:25:09','2022-02-17 20:44:11'),(3,9,1,'2017-03-17 17:00:28','2017-03-17 18:00:28',NULL,'2022-02-13 17:29:32'),(4,10,1,'2014-12-04 21:49:36','2014-12-04 22:49:36',NULL,'2022-02-13 17:29:32'),(5,16,4,'2019-04-23 22:18:56','2019-04-23 23:18:56','2019-04-23 23:33:56','2022-02-17 20:44:11'),(6,16,1,'2012-10-06 04:39:07','2012-10-06 05:39:07',NULL,'2022-02-13 17:29:32'),(7,11,1,'2016-05-14 06:15:42','2016-05-14 07:15:42',NULL,'2022-02-13 17:29:32'),(8,18,2,'2017-02-21 09:38:18','2017-02-21 10:38:18',NULL,'2022-02-13 17:29:32'),(9,13,3,'2017-02-02 07:22:08','2017-02-02 08:22:08',NULL,'2022-02-13 17:29:32'),(10,14,2,'2021-12-27 01:06:52','2021-12-27 02:06:52',NULL,'2022-02-13 17:29:32'),(11,5,4,'2018-03-26 22:41:02','2018-03-26 23:41:02','2018-03-27 00:04:02','2022-02-17 20:44:11'),(12,11,3,'2015-02-07 11:15:49','2015-02-07 12:15:49',NULL,'2022-02-13 17:29:32'),(13,10,1,'2021-08-18 09:41:45','2021-08-18 10:41:45',NULL,'2022-02-13 17:29:32'),(14,13,2,'2021-10-18 00:18:35','2021-10-18 01:18:35',NULL,'2022-02-13 17:29:32'),(15,1,1,'2014-11-26 16:48:25','2014-11-26 17:48:25',NULL,'2022-02-13 17:29:32'),(16,17,4,'2016-08-15 18:11:15','2016-08-15 19:11:15','2016-08-15 18:53:15','2022-02-17 20:44:11'),(17,12,3,'2012-12-08 06:34:34','2012-12-08 07:34:34',NULL,'2022-02-13 17:29:32'),(18,17,1,'2015-10-01 03:54:15','2015-10-01 04:54:15',NULL,'2022-02-13 17:29:32'),(19,15,2,'2014-02-15 16:33:45','2014-02-15 17:33:45',NULL,'2022-02-13 17:29:32'),(20,3,2,'2017-04-18 03:12:58','2017-04-18 04:12:58',NULL,'2022-02-13 17:29:32'),(21,4,4,'2015-06-30 16:05:09','2015-06-30 17:05:09','2015-06-30 16:56:09','2022-02-17 20:44:11'),(22,14,3,'2021-09-22 11:11:11','2021-09-22 12:11:11',NULL,'2022-02-13 17:29:32'),(23,1,3,'2014-09-30 01:29:41','2014-09-30 02:29:41',NULL,'2022-02-13 17:29:32'),(24,4,3,'2020-12-16 01:16:10','2020-12-16 02:16:10',NULL,'2022-02-13 17:29:32'),(25,5,4,'2014-07-04 22:49:34','2014-07-04 23:49:34','2014-07-04 23:27:34','2022-02-17 20:44:11'),(26,1,2,'2016-03-26 20:39:53','2016-03-26 21:39:53',NULL,'2022-02-13 17:29:32'),(27,16,3,'2015-03-19 17:02:52','2015-03-19 18:02:52',NULL,'2022-02-13 17:29:32'),(28,2,1,'2014-06-28 20:09:14','2014-06-28 21:09:14',NULL,'2022-02-13 17:29:32'),(29,13,3,'2015-06-05 03:16:38','2015-06-05 04:16:38',NULL,'2022-02-13 17:29:32'),(30,12,3,'2021-08-29 02:43:50','2021-08-29 03:43:50',NULL,'2022-02-13 17:29:32'),(31,19,2,'2019-12-07 07:55:59','2019-12-07 08:55:59',NULL,'2022-02-13 17:29:32'),(32,11,3,'2020-06-16 21:00:24','2020-06-16 22:00:24',NULL,'2022-02-13 17:29:32'),(33,3,2,'2016-11-16 05:38:48','2016-11-16 06:38:48',NULL,'2022-02-13 17:29:32'),(34,12,4,'2014-05-11 07:20:23','2014-05-11 08:20:23','2014-05-11 08:28:23','2022-02-17 20:43:29'),(35,13,3,'2017-02-22 15:49:43','2017-02-22 16:49:43',NULL,'2022-02-13 17:29:32'),(36,7,4,'2021-04-04 09:57:47','2021-04-04 10:57:47','2021-04-04 11:12:47','2022-02-17 20:44:11'),(37,13,1,'2014-10-12 10:06:02','2014-10-12 11:06:02',NULL,'2022-02-13 17:29:32'),(38,11,3,'2022-01-28 13:19:55','2022-01-28 14:19:55',NULL,'2022-02-13 17:29:32'),(39,12,3,'2020-07-22 00:29:03','2020-07-22 01:29:03',NULL,'2022-02-13 17:29:32'),(40,6,4,'2017-05-18 08:51:06','2017-05-18 09:51:06','2017-05-18 10:13:06','2022-02-17 20:44:11'),(41,13,2,'2020-09-07 05:48:27','2020-09-07 06:48:27',NULL,'2022-02-13 17:29:32'),(42,6,2,'2013-04-21 09:48:30','2013-04-21 10:48:30',NULL,'2022-02-13 17:29:32'),(43,17,2,'2014-10-14 11:13:25','2014-10-14 12:13:25',NULL,'2022-02-13 17:29:32'),(44,12,2,'2014-01-03 11:24:48','2014-01-03 12:24:48',NULL,'2022-02-13 17:29:32'),(45,2,1,'2019-10-27 05:46:14','2019-10-27 06:46:14',NULL,'2022-02-13 17:29:32'),(46,3,1,'2017-04-19 19:37:03','2017-04-19 20:37:03',NULL,'2022-02-13 17:29:32'),(47,11,3,'2017-05-16 04:05:57','2017-05-16 05:05:57',NULL,'2022-02-13 17:29:32'),(48,12,3,'2017-04-25 15:09:12','2017-04-25 16:09:12',NULL,'2022-02-13 17:29:32'),(49,1,1,'2015-08-11 01:02:14','2015-08-11 02:02:14',NULL,'2022-02-13 17:29:32'),(50,10,3,'2021-11-05 17:54:26','2021-11-05 18:54:26',NULL,'2022-02-13 17:29:32'),(51,18,4,'2017-03-24 23:53:09','2017-03-25 00:53:09','2017-03-25 00:29:09','2022-02-17 20:44:11'),(52,10,2,'2012-09-30 00:21:49','2012-09-30 01:21:49',NULL,'2022-02-13 17:29:32'),(53,17,1,'2016-04-28 20:51:04','2016-04-28 21:51:04',NULL,'2022-02-13 17:29:32'),(54,3,2,'2014-09-17 07:21:31','2014-09-17 08:21:31',NULL,'2022-02-13 17:29:32'),(55,16,2,'2016-08-12 21:02:45','2016-08-12 22:02:45',NULL,'2022-02-13 17:29:32'),(56,6,2,'2020-11-07 20:18:43','2020-11-07 21:18:43',NULL,'2022-02-13 17:29:32'),(57,14,3,'2012-03-04 20:46:54','2012-03-04 21:46:54',NULL,'2022-02-13 17:29:32'),(58,15,3,'2015-04-02 12:33:20','2015-04-02 13:33:20',NULL,'2022-02-13 17:29:32'),(59,20,2,'2021-11-13 16:16:24','2021-11-13 17:16:24',NULL,'2022-02-13 17:29:32'),(60,20,1,'2014-08-30 17:13:35','2014-08-30 18:13:35',NULL,'2022-02-13 17:29:32'),(61,10,1,'2019-10-03 22:30:03','2019-10-03 23:30:03',NULL,'2022-02-13 17:29:32'),(62,2,1,'2019-02-14 11:00:54','2019-02-14 12:00:54',NULL,'2022-02-13 17:29:32'),(63,16,3,'2021-02-17 23:58:32','2021-02-18 00:58:32',NULL,'2022-02-13 17:29:32'),(64,14,4,'2017-07-06 16:51:29','2017-07-06 17:51:29','2017-07-06 18:15:29','2022-02-17 20:44:11'),(65,17,1,'2018-10-03 22:08:44','2018-10-03 23:08:44',NULL,'2022-02-13 17:29:32'),(66,9,3,'2012-11-19 21:59:10','2012-11-19 22:59:10',NULL,'2022-02-13 17:29:32'),(67,20,4,'2013-12-16 17:26:01','2013-12-16 18:26:01','2013-12-16 18:06:01','2022-02-17 20:44:11'),(68,4,4,'2014-02-20 12:12:36','2014-02-20 13:12:36','2014-02-20 12:52:36','2022-02-17 20:44:11'),(69,20,2,'2018-07-17 04:53:22','2018-07-17 05:53:22',NULL,'2022-02-13 17:29:32'),(70,5,4,'2019-12-26 23:42:49','2019-12-27 00:42:49','2019-12-27 00:32:49','2022-02-17 20:44:11'),(71,15,3,'2019-02-26 11:41:33','2019-02-26 12:41:33',NULL,'2022-02-13 17:29:32'),(72,3,2,'2020-04-08 06:40:29','2020-04-08 07:40:29',NULL,'2022-02-13 17:29:32'),(73,2,4,'2020-05-16 10:29:30','2020-05-16 11:29:30','2020-05-16 11:07:30','2022-02-17 20:44:11'),(74,18,1,'2021-02-21 17:06:32','2021-02-21 18:06:32',NULL,'2022-02-13 17:29:32'),(75,5,4,'2018-03-22 09:57:51','2018-03-22 10:57:51','2018-03-22 11:06:51','2022-02-17 20:44:11'),(76,2,3,'2018-09-10 11:24:13','2018-09-10 12:24:13',NULL,'2022-02-13 17:29:32'),(77,1,1,'2020-01-19 02:35:00','2020-01-19 03:35:00',NULL,'2022-02-13 17:29:32'),(78,15,4,'2013-05-03 03:01:24','2013-05-03 04:01:24','2013-05-03 04:24:24','2022-02-17 20:44:11'),(79,18,2,'2016-08-18 20:53:28','2016-08-18 21:53:28',NULL,'2022-02-13 17:29:32'),(80,12,3,'2013-10-22 18:09:44','2013-10-22 19:09:44',NULL,'2022-02-13 17:29:32'),(81,11,1,'2015-09-13 03:29:46','2015-09-13 04:29:46',NULL,'2022-02-13 17:29:32'),(82,9,2,'2013-12-25 11:11:14','2013-12-25 12:11:14',NULL,'2022-02-13 17:29:32'),(83,19,3,'2012-06-29 04:11:12','2012-06-29 05:11:12',NULL,'2022-02-13 17:29:32'),(84,6,4,'2020-10-27 00:16:54','2020-10-27 01:16:54','2020-10-27 01:14:54','2022-02-17 20:44:11'),(85,18,3,'2016-09-21 21:43:11','2016-09-21 22:43:11',NULL,'2022-02-13 17:29:32'),(86,14,3,'2012-05-14 23:38:38','2012-05-15 00:38:38',NULL,'2022-02-13 17:29:32'),(87,1,4,'2016-12-26 15:02:51','2016-12-26 16:02:51','2016-12-26 16:11:51','2022-02-17 20:44:11'),(88,20,1,'2017-03-30 04:08:09','2017-03-30 05:08:09',NULL,'2022-02-13 17:29:32'),(89,14,4,'2021-04-28 03:58:05','2021-04-28 04:58:05','2021-04-28 05:20:05','2022-02-17 20:44:11'),(90,3,4,'2012-05-12 13:09:06','2012-05-12 14:09:06','2012-05-12 14:04:06','2022-02-17 20:44:11'),(91,16,1,'2018-10-16 17:07:29','2018-10-16 18:07:29',NULL,'2022-02-13 17:29:32'),(92,13,4,'2017-01-12 20:38:33','2017-01-12 21:38:33','2017-01-12 21:34:33','2022-02-17 20:44:11'),(93,9,2,'2020-08-20 06:08:51','2020-08-20 07:08:51',NULL,'2022-02-13 17:29:32'),(94,12,2,'2015-10-17 22:51:30','2015-10-17 23:51:30',NULL,'2022-02-13 17:29:32'),(95,15,1,'2019-11-18 22:06:43','2019-11-18 23:06:43',NULL,'2022-02-13 17:29:32'),(96,1,1,'2016-04-07 18:25:14','2016-04-07 19:25:14',NULL,'2022-02-13 17:29:32'),(97,3,2,'2017-07-08 19:29:33','2017-07-08 20:29:33',NULL,'2022-02-13 17:29:32'),(98,15,1,'2016-04-30 22:54:47','2016-04-30 23:54:47',NULL,'2022-02-13 17:29:32'),(99,1,1,'2017-09-01 12:27:27','2017-09-01 13:27:27',NULL,'2022-02-13 17:29:32'),(100,20,4,'2013-11-12 17:20:26','2013-11-12 18:20:26','2013-11-12 18:46:26','2022-02-17 20:44:11');
/*!40000 ALTER TABLE `orders_couriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orders_in_work`
--

DROP TABLE IF EXISTS `orders_in_work`;
/*!50001 DROP VIEW IF EXISTS `orders_in_work`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_in_work` AS SELECT 
 1 AS `order_id`,
 1 AS `created_at`,
 1 AS `product`,
 1 AS `amount`,
 1 AS `courier`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `payments_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Споособы оплаты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'Наличными курьеру','2016-11-20 17:40:32','2022-02-13 18:00:59'),(2,'Картой курьеру','2015-03-11 03:27:14','2019-11-14 06:30:08'),(3,'Картой онлайн','2020-04-04 18:36:47','2022-02-13 18:00:59'),(4,'Apple pay','2018-09-26 08:24:42','2022-02-13 18:00:59');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_address_id_fk` (`address_id`),
  KEY `name` (`name`),
  CONSTRAINT `users_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Клиенты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mrs. Hulda Heidenreich PhD','vonrueden.shana@example.net','258-022-3616x805',18,'2014-04-22 14:05:41','2021-06-20 06:17:59'),(2,'Elenor Conn','yessenia.schultz@example.net','(085)075-2583x1820',18,'2021-06-07 09:39:04','2022-02-13 17:11:59'),(3,'Rupert Toy','martina.ziemann@example.net','008.690.9692x37086',12,'2021-06-14 01:42:31','2022-02-13 17:11:59'),(4,'Vincent Jakubowski II','rigoberto15@example.org','1-434-295-0684x37815',18,'2014-01-18 13:22:15','2016-02-20 08:07:01'),(5,'Marge Towne','kilback.zetta@example.net','1-560-372-6103',1,'2012-05-02 08:09:09','2017-11-07 09:43:26'),(6,'Blair Lesch III','darien.sipes@example.com','(968)268-7172',7,'2015-01-02 19:42:26','2018-02-21 16:45:53'),(7,'Ms. Katheryn Tillman','ronaldo.anderson@example.net','1-788-667-9167x1066',16,'2017-05-01 16:19:26','2017-09-27 10:01:20'),(8,'Lora Heathcote','deshaun.collins@example.net','(998)829-0867x06239',12,'2018-12-17 01:48:23','2021-07-10 03:15:38'),(9,'Wilson Christiansen PhD','qschmeler@example.org','620.681.8805x978',1,'2020-07-17 07:36:17','2021-10-24 02:01:42'),(10,'Grady O\'Conner','bridie47@example.com','1-102-217-2936x65080',10,'2020-10-08 19:49:41','2022-02-13 17:11:59'),(11,'Leopoldo Schroeder','roob.arely@example.com','05485953788',19,'2013-11-11 22:43:09','2020-06-29 02:54:36'),(12,'Erika Friesen','yhettinger@example.org','1-846-523-3441',10,'2018-08-05 06:07:20','2022-02-13 17:11:59'),(13,'Prof. Alexandrine Auer Jr.','elenora.boyle@example.net','1-485-999-7671x41527',15,'2016-12-04 00:38:28','2022-02-13 17:11:59'),(14,'Mrs. Mozell Jacobs Jr.','oberbrunner.clemmie@example.net','1-247-109-1226x309',7,'2015-01-23 12:49:15','2017-04-20 14:33:38'),(15,'Desiree Paucek','daphney.gusikowski@example.org','1-887-593-2437',10,'2021-05-20 02:41:55','2022-02-13 17:11:59'),(16,'Prof. Erna Marvin','ibaumbach@example.com','(382)321-6965x4152',19,'2013-04-29 17:46:21','2022-02-13 17:11:59'),(17,'Mrs. Mabelle Frami III','chloe.lindgren@example.com','909.656.4643x8889',8,'2021-08-30 12:44:33','2022-02-13 17:11:59'),(18,'Alexane Runolfsson','bashirian.jodie@example.org','1-785-898-0940',16,'2021-01-19 10:56:34','2022-02-13 17:11:59'),(19,'Tyra Corkery','bhoppe@example.com','(647)113-5999x109',14,'2019-03-01 14:28:21','2020-03-11 19:13:45'),(20,'Mr. Claude Roob','koepp.leonor@example.org','(938)828-0072x156',1,'2019-07-15 15:14:26','2022-02-13 17:11:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `grade_of_products`
--

/*!50001 DROP VIEW IF EXISTS `grade_of_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `grade_of_products` AS select distinct `m`.`name` AS `product`,avg(`oc`.`grade`) OVER (PARTITION BY `m`.`name` )  AS `average_grade`,count(`o`.`menu_id`) OVER (PARTITION BY `m`.`name` )  AS `total_order_product` from ((`menu` `m` left join `orders` `o` on((`m`.`id` = `o`.`menu_id`))) left join `orders_comments` `oc` on((`oc`.`order_id` = `o`.`id`))) order by `average_grade` desc,`total_order_product` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_in_work`
--

/*!50001 DROP VIEW IF EXISTS `orders_in_work`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_in_work` AS select `o`.`id` AS `order_id`,cast(`o`.`created_at` as time) AS `created_at`,`m`.`name` AS `product`,`o`.`total` AS `amount`,`c`.`name` AS `courier` from ((((`orders` `o` left join `menu` `m` on((`m`.`id` = `o`.`menu_id`))) left join `orders_couriers` `oc` on((`o`.`id` = `oc`.`order_id`))) left join `couriers` `c` on((`c`.`id` = `oc`.`courier_id`))) left join `order_statuses` `os` on((`os`.`id` = `oc`.`order_status_id`))) where (`os`.`name` = 'Готовится') order by `o`.`created_at` */;
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

-- Dump completed on 2022-02-19 16:38:50
