-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: restobasedb
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `branch_data`
--

DROP TABLE IF EXISTS `branch_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_data` (
  `branch_code` char(4) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `branch_status` int(11) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`branch_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_data`
--

LOCK TABLES `branch_data` WRITE;
/*!40000 ALTER TABLE `branch_data` DISABLE KEYS */;
INSERT INTO `branch_data` VALUES ('jkt','Jakarta',1,'ROOT','2016-04-13 14:10:28','ROOT','2016-04-13 14:10:28');
/*!40000 ALTER TABLE `branch_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_menu`
--

DROP TABLE IF EXISTS `category_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `category_desc` varchar(200) DEFAULT NULL,
  `use_sub` int(11) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_menu`
--

LOCK TABLES `category_menu` WRITE;
/*!40000 ALTER TABLE `category_menu` DISABLE KEYS */;
INSERT INTO `category_menu` VALUES (1,'BEVERAGE','KIND OF BEVERAGE',1,'ROOT','2016-04-18 15:56:26','ROOT','2016-04-18 15:56:26'),(3,'FOOD','All Kinds of food',0,'ROOT','2016-05-15 13:54:05','ROOT','2016-05-15 13:54:23');
/*!40000 ALTER TABLE `category_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_menu_detail`
--

DROP TABLE IF EXISTS `category_menu_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_menu_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_id` int(11) NOT NULL,
  `sub_menu_name` varchar(100) NOT NULL,
  `sub_menu_desc` varchar(200) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_menu_detail`
--

LOCK TABLES `category_menu_detail` WRITE;
/*!40000 ALTER TABLE `category_menu_detail` DISABLE KEYS */;
INSERT INTO `category_menu_detail` VALUES (1,1,'JUICE','JUICE','ROOT','2016-04-18 15:56:43','ROOT','2016-04-18 15:56:43'),(2,1,'SOFT DRINK','LIKE COCA COLA, FANTA ETC','ROOT','2016-04-18 15:56:43','ROOT','2016-04-18 15:56:43');
/*!40000 ALTER TABLE `category_menu_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `app_name` varchar(20) NOT NULL,
  `counter` int(11) NOT NULL,
  `period` datetime NOT NULL,
  PRIMARY KEY (`app_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('SALES_SEQ',1,'2016-05-10 14:08:38');
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_settings`
--

DROP TABLE IF EXISTS `discount_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_name` varchar(100) NOT NULL,
  `discount_type` int(11) NOT NULL COMMENT '0 = percent ; 1 = nominal',
  `discount_value` double NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `condition_qty` int(11) DEFAULT NULL,
  `condition_frequency` int(11) DEFAULT NULL COMMENT '1 : once ; 2 : multiply',
  `created_by` varchar(20) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_settings`
--

LOCK TABLES `discount_settings` WRITE;
/*!40000 ALTER TABLE `discount_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_settings_detail`
--

DROP TABLE IF EXISTS `discount_settings_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_settings_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_id` int(11) NOT NULL,
  `menu_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_settings_detail`
--

LOCK TABLES `discount_settings_detail` WRITE;
/*!40000 ALTER TABLE `discount_settings_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_settings_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insentif`
--

DROP TABLE IF EXISTS `insentif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insentif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trx_type` int(11) NOT NULL COMMENT '0 : take away ; 1 : dine in',
  `calc_type` int(11) NOT NULL,
  `value` double NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insentif`
--

LOCK TABLES `insentif` WRITE;
/*!40000 ALTER TABLE `insentif` DISABLE KEYS */;
/*!40000 ALTER TABLE `insentif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lookup_data`
--

DROP TABLE IF EXISTS `lookup_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lookup_data` (
  `lookup_cat` int(11) NOT NULL,
  `lookup_value` varchar(32) NOT NULL,
  `lookup_desc` varchar(255) DEFAULT NULL,
  `lookup_order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lookup_cat`,`lookup_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lookup_data`
--

LOCK TABLES `lookup_data` WRITE;
/*!40000 ALTER TABLE `lookup_data` DISABLE KEYS */;
INSERT INTO `lookup_data` VALUES (0,'0','Category Library',1),(0,'1','User Status',2),(0,'2','Personal Question',3),(0,'3','Status Menu',4),(0,'4','Status Inventori',5),(0,'5','Status Masak',6),(1,'1','Aktif',1),(1,'2','Tidak Aktif',2),(2,'1','Nama Ibu Kandung',1),(2,'2','Nama Binatang Peliharaan Kesayangan',2),(2,'3','Nama Pasangan Anda',3),(2,'4','Tempat Anda Lahir',4),(2,'5','Makanan/Minuman Favorit',5),(2,'6','Aktor Favorit',6),(2,'7','Quote Favorit',7),(2,'8','Aktor/Artis Favorit',8),(2,'9','Hal yang paling anda benci',9),(3,'0','Tidak Aktif',1),(3,'1','Aktif',2),(4,'0','Tidak Ada',1),(4,'1','Ada',2),(5,'0','Belum diproses',1),(5,'1','Sedang diproses',2),(5,'2','Selesai diproses',2),(5,'3','Batal',2);
/*!40000 ALTER TABLE `lookup_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `category_detail_id` int(11) NOT NULL,
  `menu_code` varchar(10) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `buying_price` double DEFAULT NULL,
  `selling_price` double NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1 = active; 0 = inactive',
  `stock_status` int(11) DEFAULT NULL COMMENT '1 : available ; 0 : unavailable',
  `created_by` varchar(20) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_code_UNIQUE` (`menu_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1,1,'J01','JUICE ORANGE',7000,15000,'juice for everybody',1,NULL,'ROOT','2016-04-18 16:53:12','ROOT','2016-04-18 16:53:12'),(2,1,2,'S01','FANTA',800,9500,'softdrink fanta',1,NULL,'ROOT','2016-04-18 16:53:12','ROOT','2016-04-18 16:53:12');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_setting`
--

DROP TABLE IF EXISTS `system_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_setting` (
  `id` int(11) NOT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_desc` varchar(200) NOT NULL,
  `setting_value` varchar(255) NOT NULL,
  `value_type` varchar(16) NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_setting`
--

LOCK TABLES `system_setting` WRITE;
/*!40000 ALTER TABLE `system_setting` DISABLE KEYS */;
INSERT INTO `system_setting` VALUES (1,'PASSWORD MIN LENGTH','Define required minimum character when creating password','4','INT','ROOT','2016-04-13 14:27:49'),(2,'PASSWORD MAX LENGTH','Define required maximum character when creating password','12','INT','ROOT','2016-04-13 14:27:49'),(3,'MAX INVALID LOGIN','Define how many times invalid login is allowed before user id is blocked','3','INT','ROOT','2016-04-13 14:27:49'),(4,'MAX WRONG PIN','Define how many times wrong pin allowed','3','INT','ROOT','2016-04-13 14:27:50'),(5,'ALLOWED IP','Allowed IP to Access Core System, multiple IP separated by comma (,)','127.0.0.1,192.168.0.101,192.168.0.104','STRING','ROOT','2016-04-13 14:27:50'),(6,'ONLINE SETUP','Define how user got default password after registration success (if N, password default is 111111)','N','STRING','ROOT','2016-05-07 12:40:14'),(7,'TAX_VALUE','Define value of tax','10','INT','ROOT','2016-05-07 12:40:14'),(8,'TAX_TYPE','Either Include or exclude','INCLUDE','STRING','ROOT','2016-05-07 12:40:14'),(9,'SERVICE_CHARGE','Define value of service charge','5','INT','ROOT','2016-05-07 12:40:14');
/*!40000 ALTER TABLE `system_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_data`
--

DROP TABLE IF EXISTS `table_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(20) NOT NULL,
  `table_status` int(11) DEFAULT NULL COMMENT '0 : available ; 1 : not available',
  `current_user` varchar(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_data`
--

LOCK TABLES `table_data` WRITE;
/*!40000 ALTER TABLE `table_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_sales`
--

DROP TABLE IF EXISTS `trx_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_sales` (
  `trx_sales_id` varchar(16) NOT NULL COMMENT 'e.g SO22051699999 (SO + ddMMyy + 5 digits running number',
  `total_qty` double NOT NULL,
  `total_price` double NOT NULL,
  `total_discount` double NOT NULL,
  `grand_total` double NOT NULL,
  `payment_method` int(11) NOT NULL COMMENT '0 = cash ; 1 = debit ; 2 = credit card',
  `payment_desc` varchar(250) DEFAULT NULL COMMENT 'if using debit or credit card, user must write data of thoose card. ',
  `trx_from` varchar(10) NOT NULL COMMENT 'WEB ; ANDROID; IOS',
  `table_name` varchar(40) NOT NULL,
  `trx_type` int(11) NOT NULL COMMENT '0 : take away ; 1 : dine in',
  `payment_status` int(11) NOT NULL COMMENT '0 : not yet paid ; 1 : paid',
  `total_insentif` double DEFAULT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`trx_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_sales`
--

LOCK TABLES `trx_sales` WRITE;
/*!40000 ALTER TABLE `trx_sales` DISABLE KEYS */;
INSERT INTO `trx_sales` VALUES ('10051610000',0,0,0,0,0,NULL,'ANDROID','',0,0,NULL,'ROOT','2016-05-10 14:11:05',NULL,NULL);
/*!40000 ALTER TABLE `trx_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx_sales_detail`
--

DROP TABLE IF EXISTS `trx_sales_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trx_sales_detail` (
  `trx_sales_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `trx_sales_id` varchar(16) NOT NULL,
  `menu_code` varchar(10) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `buying_price` double DEFAULT NULL,
  `price` double NOT NULL,
  `discount_value` double NOT NULL,
  `serve_status` int(11) DEFAULT NULL COMMENT '0 : not serve ; 1 : serve ; 2 : cancel',
  `cook_status` int(11) DEFAULT NULL COMMENT '0 : not cook ; 1 : on cook ; 2 : done ',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`trx_sales_detail_id`),
  KEY `trx_sales_id_idx` (`trx_sales_id`),
  CONSTRAINT `trx_sales_id` FOREIGN KEY (`trx_sales_id`) REFERENCES `trx_sales` (`trx_sales_id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx_sales_detail`
--

LOCK TABLES `trx_sales_detail` WRITE;
/*!40000 ALTER TABLE `trx_sales_detail` DISABLE KEYS */;
INSERT INTO `trx_sales_detail` VALUES (1,'10051610000','J01','JUICE ORANGE',0,NULL,15000,0,1,NULL,'less sugar'),(2,'10051610000','S01','FANTA',0,NULL,9500,0,1,NULL,'cool one');
/*!40000 ALTER TABLE `trx_sales_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_data` (
  `user_code` varchar(20) NOT NULL,
  `password` varchar(65) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  `invalid_count` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `last_login_on` datetime DEFAULT NULL,
  `pass_changed_on` datetime DEFAULT NULL,
  `need_change_pass` char(1) DEFAULT NULL,
  `branch_code` char(4) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `session_id` varchar(64) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `personal_question` int(11) NOT NULL,
  `personal_answer` varchar(200) NOT NULL,
  `last_reset_by` varchar(20) DEFAULT NULL,
  `last_reset_on` datetime DEFAULT NULL,
  `session_id_applet` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_code`),
  UNIQUE KEY `user_code_UNIQUE` (`user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` VALUES ('jktanto','B65CA32AD872E66E','Tri Harnanto',1,0,1,'2016-05-07 12:33:54','2016-05-07 12:43:52','Y','gnb1','ROOT','2016-05-07 12:07:59','jktanto','2016-05-07 12:43:52','','decimonoloki@gmail.com',2,'agong',NULL,NULL,NULL),('jktcumi','E591CDDA023A177A','Rm Cumi',1,0,1,'2016-05-07 12:56:57','2016-05-07 12:57:26','Y','jkt','ROOT','2016-05-07 12:56:38','jktcumi','2016-05-07 12:57:26','','decimonoloki@gmail.com',1,'gurita',NULL,NULL,NULL),('jktcyborg','331A9264AC576761','cyborg',1,0,1,NULL,'2016-05-07 13:19:59','Y','jkt','ROOT','2016-05-07 13:19:47','ROOT','2016-05-07 13:19:59',NULL,'decimonoloki@gmail.com',1,'computer','ROOT','2016-05-07 13:19:59',NULL),('ROOT','A0F8BED79569C2A3CBC9F764E5F58892','SUPER USER',1,0,1,'2016-05-15 16:36:22',NULL,'N','jkt','ROOT','2016-04-13 13:45:14','ROOT','2016-04-13 13:45:14','67CA7C5B43726E4BB7BC0604DD64152D',NULL,0,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_level`
--

DROP TABLE IF EXISTS `user_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(100) NOT NULL,
  `level_desc` varchar(250) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_level`
--

LOCK TABLES `user_level` WRITE;
/*!40000 ALTER TABLE `user_level` DISABLE KEYS */;
INSERT INTO `user_level` VALUES (1,'ADMINISTRATOR','ADMIN LEVEL','ROOT','2016-04-13 13:53:10','ROOT','2016-04-13 13:53:10');
/*!40000 ALTER TABLE `user_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_level_menu`
--

DROP TABLE IF EXISTS `user_level_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_level_menu` (
  `menu_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`,`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_level_menu`
--

LOCK TABLES `user_level_menu` WRITE;
/*!40000 ALTER TABLE `user_level_menu` DISABLE KEYS */;
INSERT INTO `user_level_menu` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(101,1),(102,1),(103,1),(104,1),(105,1),(201,1),(202,1),(203,1),(204,1),(301,1),(302,1),(303,1),(401,1);
/*!40000 ALTER TABLE `user_level_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_menu`
--

DROP TABLE IF EXISTS `user_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_menu` (
  `menu_id` int(11) NOT NULL,
  `parent_id` varchar(10) DEFAULT NULL,
  `menu_root_id` int(11) DEFAULT NULL,
  `menu_level` int(11) NOT NULL,
  `show_order` int(11) NOT NULL,
  `menu_leaf` int(11) DEFAULT NULL,
  `menu_description` varchar(500) DEFAULT NULL,
  `menu_url` varchar(100) DEFAULT NULL,
  `menu_group` varchar(40) DEFAULT NULL,
  `always_include` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_menu`
--

LOCK TABLES `user_menu` WRITE;
/*!40000 ALTER TABLE `user_menu` DISABLE KEYS */;
INSERT INTO `user_menu` VALUES (1,'1',1,1,1,0,'User Setting','','Security',0),(2,'2',2,1,2,0,'Master','','Master',0),(3,'3',3,1,3,0,'System Setting','','System Setting',0),(4,'4',4,1,4,0,'Transaksi','','Transaksi',0),(5,'5',5,1,5,0,'Report','','Report',0),(101,'1',1,2,1,1,'User Level','UserLevel','Security',0),(102,'1',1,2,2,1,'User Data','UserData','Security',0),(103,'1',1,2,3,1,'Change Password','ChangePassword','Security',1),(104,'1',1,2,4,1,'Reset Password','ResetPassword','Security',0),(105,'1',1,2,5,1,'User Preferences','UserPreference','Security',0),(201,'2',2,2,1,1,'Kategori Menu','CategoryMenu','Master',0),(202,'2',2,2,2,1,'Menu','Menu','Master',0),(203,'2',2,2,3,1,'Cabang','BranchData','Master',0),(204,'2',2,2,4,1,'Meja','TableData','Master',0),(301,'3',3,2,1,1,'Setting Insentif','SettingInsentif','System Setting',0),(302,'3',3,2,2,1,'Setting Discount','SettingDiscount','System Setting',0),(303,'3',3,2,3,1,'System Setting','SystemSetting','System Setting',0),(401,'4',4,2,1,1,'Kasir','TrxSales','Transaksi',0);
/*!40000 ALTER TABLE `user_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preference`
--

DROP TABLE IF EXISTS `user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preference` (
  `user_code` varchar(20) NOT NULL,
  `font_size` varchar(50) DEFAULT NULL,
  `font_family` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preference`
--

LOCK TABLES `user_preference` WRITE;
/*!40000 ALTER TABLE `user_preference` DISABLE KEYS */;
INSERT INTO `user_preference` VALUES ('anto','Medium','Utsaah Regular','English','Persian Blue'),('bimbim','Medium','Utsaah Regular','English','Persian Blue'),('jktanto','Medium','Utsaah Regular','English','Persian Blue'),('jktcumi','Medium','Utsaah Regular','English','Persian Blue'),('jktcyborg','Medium','Utsaah Regular','English','Persian Blue'),('ROOT','Medium','Utsaah Regular','Indonesia','Persian Blue');
/*!40000 ALTER TABLE `user_preference` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-05 14:34:45
