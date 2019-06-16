-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add blog',7,'add_blog'),(20,'Can change blog',7,'change_blog'),(21,'Can delete blog',7,'delete_blog'),(22,'Can add blog type',8,'add_blogtype'),(23,'Can change blog type',8,'change_blogtype'),(24,'Can delete blog type',8,'delete_blogtype'),(25,'Can add read num',9,'add_readnum'),(26,'Can change read num',9,'change_readnum'),(27,'Can delete read num',9,'delete_readnum'),(28,'Can add read num',10,'add_readnum'),(29,'Can change read num',10,'change_readnum'),(30,'Can delete read num',10,'delete_readnum'),(31,'Can add read detail',11,'add_readdetail'),(32,'Can change read detail',11,'change_readdetail'),(33,'Can delete read detail',11,'delete_readdetail'),(34,'Can add comment',12,'add_comment'),(35,'Can change comment',12,'change_comment'),(36,'Can delete comment',12,'delete_comment'),(37,'Can add profile',13,'add_profile'),(38,'Can change profile',13,'change_profile'),(39,'Can delete profile',13,'delete_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$c3UyxLnGbq9E$X8ms/BOHQpJobJR+SuXA3HAEiPQUVhIZMrf9qtxUpeg=','2019-06-16 14:42:05.543178',1,'lyj','','','2278429400@qq.com',1,1,'2019-04-25 07:34:00.000000'),(2,'pbkdf2_sha256$100000$ny3lZVbh6dDH$AvJHzqCUGSZiayfTD79mkV6xVFqEdL1jmrn8hmPhXJQ=','2019-06-16 14:41:58.176756',0,'111','','','11111@qq.com',0,1,'2019-06-12 06:31:49.693000'),(3,'pbkdf2_sha256$100000$NAExxvvbRc4S$bVcCkTOlbgRNTGibzp2hixh8EiKgoUt2d6ChRIIZLss=','2019-06-13 04:22:20.360000',0,'222','','','2222@qq.com',0,1,'2019-06-13 01:32:14.071000'),(4,'pbkdf2_sha256$100000$0u77rNuodoRl$jExS/ZB+lvre2warol+UDdvHK8fQziZV8NaPQ4wMB84=','2019-06-16 06:01:26.445000',0,'333','','','',0,1,'2019-06-15 13:59:00.000000'),(5,'pbkdf2_sha256$100000$hUqV73bHvvo9$98ov0kba51meZs2XvdMN6KIfckT4chLB4WBKApYSSOk=','2019-06-16 09:00:00.000000',0,'444','','','',0,1,'2019-06-16 07:05:00.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (3,'ONE','ASFGGdffsdcv地方规定的 地方fff','2019-04-25 09:59:27.716000','2019-04-25 10:14:38.583000',0,1,1),(4,'two','ASFGGdffsdcv地方规定的 地方','2019-04-25 09:59:42.532000','2019-04-25 09:59:42.532000',0,1,2),(5,'three','ASFGGdffsdcv地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方地方规定的 地方','2019-04-25 09:59:51.941000','2019-04-25 10:04:12.782000',0,1,3),(6,'four','sggdfdf','2019-04-25 10:49:37.374000','2019-04-25 10:49:37.374000',0,1,2),(7,'第五篇博客','来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费来说快递费','2019-04-26 14:27:10.035000','2019-04-26 14:27:10.035000',0,1,1),(8,'shell','sdfjslg','2019-04-27 12:22:15.377000','2019-04-27 12:22:15.377000',0,1,1),(9,'for 1','dfjsagdklsjf: 1','2019-04-27 12:36:51.288000','2019-04-27 12:36:51.288000',0,1,1),(10,'for 2','dfjsagdklsjf: 2','2019-04-27 12:36:51.402000','2019-04-27 12:36:51.402000',0,1,1),(11,'for 3','dfjsagdklsjf: 3','2019-04-27 12:36:51.504000','2019-04-27 12:36:51.504000',0,1,1),(12,'for 4','dfjsagdklsjf: 4','2019-04-27 12:36:51.614000','2019-04-27 12:36:51.615000',0,1,1),(13,'for 5','dfjsagdklsjf: 5','2019-04-27 12:36:51.812000','2019-04-27 12:36:51.812000',0,1,1),(14,'for 6','dfjsagdklsjf: 6','2019-04-27 12:36:51.930000','2019-04-27 12:36:51.931000',0,1,1),(15,'for 7','dfjsagdklsjf: 7','2019-04-27 12:36:52.103000','2019-04-27 12:36:52.103000',0,1,1),(16,'for 8','dfjsagdklsjf: 8','2019-04-27 12:36:52.197000','2019-04-27 12:36:52.197000',0,1,1),(17,'for 9','dfjsagdklsjf: 9','2019-04-27 12:36:52.279000','2019-04-27 12:36:52.279000',0,1,1),(18,'for 10','dfjsagdklsjf: 10','2019-04-27 12:36:52.390000','2019-04-27 12:36:52.390000',0,1,1),(19,'for 11','dfjsagdklsjf: 11','2019-04-27 12:36:52.501000','2019-04-27 12:36:52.501000',0,1,1),(20,'for 12','dfjsagdklsjf: 12','2019-04-27 12:36:52.583000','2019-04-27 12:36:52.583000',0,1,1),(21,'for 13','dfjsagdklsjf: 13','2019-04-27 12:36:52.678000','2019-04-27 12:36:52.678000',0,1,1),(22,'for 14','dfjsagdklsjf: 14','2019-04-27 12:36:52.762000','2019-04-27 12:36:52.763000',0,1,1),(23,'for 15','dfjsagdklsjf: 15','2019-04-27 12:36:52.840000','2019-04-27 12:36:52.840000',0,1,1),(24,'for 16','dfjsagdklsjf: 16','2019-04-27 12:36:52.933000','2019-04-27 12:36:52.933000',0,1,1),(25,'for 17','dfjsagdklsjf: 17','2019-04-27 12:36:53.016000','2019-04-27 12:36:53.016000',0,1,1),(26,'for 18','dfjsagdklsjf: 18','2019-04-27 12:36:53.112000','2019-04-27 12:36:53.112000',0,1,1),(27,'for 19','dfjsagdklsjf: 19','2019-04-27 12:36:53.201000','2019-04-27 12:36:53.201000',0,1,1),(28,'for 20','dfjsagdklsjf: 20','2019-04-27 12:36:53.438000','2019-04-27 12:36:53.438000',0,1,1),(29,'for 21','dfjsagdklsjf: 21','2019-04-27 12:36:53.633000','2019-04-27 12:36:53.633000',0,1,1),(30,'for 22','dfjsagdklsjf: 22','2019-04-27 12:36:53.760000','2019-04-27 12:36:53.760000',0,1,1),(31,'for 23','dfjsagdklsjf: 23','2019-04-27 12:36:53.845000','2019-04-27 12:36:53.845000',0,1,1),(32,'for 24','dfjsagdklsjf: 24','2019-04-27 12:36:54.013000','2019-04-27 12:36:54.013000',0,1,1),(33,'for 25','dfjsagdklsjf: 25','2019-04-27 12:36:54.165000','2019-04-27 12:36:54.165000',0,1,1),(34,'for 26','dfjsagdklsjf: 26','2019-04-27 12:36:54.255000','2019-04-27 12:36:54.255000',0,1,1),(35,'for 27','dfjsagdklsjf: 27','2019-04-27 12:36:54.367000','2019-04-27 12:36:54.367000',0,1,1),(36,'for 28','dfjsagdklsjf: 28','2019-04-27 12:36:54.476000','2019-04-27 12:36:54.476000',0,1,1),(37,'for 29','dfjsagdklsjf: 29','2019-04-27 12:36:54.564000','2019-04-27 12:36:54.564000',0,1,1),(38,'for 30','单身公害大<b>幅度个对方过</b><br>后发个短信个 飞得更高第三个是','2019-04-27 12:36:54.654000','2019-04-28 10:41:33.129000',0,1,1),(39,'水电费','<p><img alt=\"\" src=\"/media/upload/2019/04/28/znjhiz.png\" style=\"height:119px; width:637px\" /><img alt=\"cool\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/shades_smile.png\" style=\"height:23px; width:23px\" title=\"cool\" />dsgdsffdgd是否<span style=\"color:#e67e22\">是个第三</span>方桑好的第三方电话&euro;</p>\r\n\r\n<p>发的发<span style=\"background-color:#e74c3c\">的发生</span></p>','2019-04-28 11:00:51.883000','2019-04-28 12:09:14.963000',0,1,2),(40,'sdfads','<p>fdsfsdfsdgds</p>','2019-06-11 05:57:55.270000','2019-06-11 05:57:55.270000',0,1,3);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'Django'),(2,'随笔'),(3,'感悟'),(4,'学习');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (1,40,'ewww','2019-06-12 02:45:02.263000',7,1,NULL,NULL,NULL),(2,40,'cbgj','2019-06-12 03:02:48.105000',7,1,NULL,NULL,NULL),(3,40,'gfh','2019-06-12 03:23:08.658000',7,1,NULL,NULL,NULL),(4,35,'hbv','2019-06-12 04:32:15.985000',7,1,NULL,NULL,NULL),(5,35,'dsfds','2019-06-12 06:33:05.366000',7,1,NULL,NULL,NULL),(6,39,'dsfdsf','2019-06-12 06:33:40.045000',7,2,NULL,NULL,NULL),(7,40,'sdfgds','2019-06-12 06:33:50.114000',7,2,NULL,NULL,NULL),(8,40,'sdfds','2019-06-12 08:50:05.995000',7,1,NULL,NULL,NULL),(9,39,'999','2019-06-12 09:25:21.326000',7,1,NULL,NULL,NULL),(10,39,'123','2019-06-12 09:25:28.872000',7,1,NULL,NULL,NULL),(11,39,'<p>d<strong>sf</strong>s<em>dfdsf</em></p>','2019-06-12 09:36:02.718000',7,1,NULL,NULL,NULL),(12,39,'<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','2019-06-12 09:49:57.978000',7,1,NULL,NULL,NULL),(13,39,'<p>jj</p>','2019-06-12 10:22:11.376000',7,1,NULL,NULL,NULL),(14,40,'<p>444</p>','2019-06-12 10:28:59.720000',7,1,NULL,NULL,NULL),(15,40,'<p>444</p>','2019-06-12 10:34:29.707000',7,1,NULL,NULL,NULL),(16,40,'<p>444r</p>','2019-06-12 10:36:05.288000',7,1,NULL,NULL,NULL),(17,40,'<p>444rs</p>','2019-06-12 10:37:11.621000',7,1,NULL,NULL,NULL),(18,40,'<p>444rsg</p>','2019-06-12 10:37:59.519000',7,1,NULL,NULL,NULL),(19,40,'<p>444rsgj</p>','2019-06-12 10:44:09.372000',7,1,NULL,NULL,NULL),(20,40,'<p>fg</p>','2019-06-12 10:48:04.757000',7,1,NULL,NULL,NULL),(21,40,'<p>kk</p>','2019-06-12 10:49:55.144000',7,1,NULL,NULL,NULL),(22,40,'<p>dsf</p>','2019-06-12 11:04:35.159000',7,1,NULL,NULL,NULL),(23,40,'<p>454</p>','2019-06-12 11:06:55.582000',7,1,NULL,NULL,NULL),(24,40,'<p>454</p>','2019-06-12 11:07:02.458000',7,1,NULL,NULL,NULL),(25,40,'<p>454</p>','2019-06-12 11:07:21.493000',7,1,NULL,NULL,NULL),(26,38,'<p>fdg</p>','2019-06-12 11:11:35.271000',7,1,NULL,NULL,NULL),(27,40,'<p>ghghgf</p>','2019-06-12 11:12:54.684000',7,2,NULL,NULL,NULL),(28,39,'<p>jjk</p>','2019-06-12 11:30:33.148000',7,1,NULL,NULL,NULL),(29,39,'<p>jjkjghjh</p>','2019-06-12 11:30:54.504000',7,1,NULL,NULL,NULL),(30,40,'<p>1234</p>','2019-06-12 11:36:50.904000',7,1,NULL,NULL,NULL),(31,40,'<p>sadfds</p>','2019-06-12 11:41:20.421000',7,1,NULL,NULL,NULL),(32,40,'<p>fdgfdg</p>','2019-06-12 11:43:20.854000',7,1,NULL,NULL,NULL),(33,40,'<p>fdgfdg</p>','2019-06-12 11:43:25.864000',7,1,NULL,NULL,NULL),(34,38,'<p>dsdsds56567678</p>','2019-06-12 11:46:06.990000',7,1,NULL,NULL,NULL),(35,38,'<p>ewwwwwre</p>','2019-06-12 11:52:20.952000',7,1,NULL,NULL,NULL),(36,38,'<p>ewwwwwredsfdsfdsf</p>','2019-06-12 11:52:30.988000',7,1,NULL,NULL,NULL),(37,39,'<p>cfcf</p>','2019-06-12 12:10:17.032000',7,1,NULL,NULL,NULL),(38,34,'<p>r<strong>teres</strong></p>','2019-06-12 12:11:18.899000',7,1,NULL,NULL,NULL),(39,34,'<p>sddfff</p>','2019-06-12 13:45:56.243000',7,2,NULL,NULL,NULL),(40,38,'<p>sfdfgsd</p>','2019-06-12 14:25:13.226000',7,2,NULL,NULL,NULL),(41,38,'<p>sfdfgsd</p>','2019-06-12 14:31:43.187000',7,2,NULL,NULL,NULL),(42,35,'<p>ssdfd</p>','2019-06-12 15:34:23.737000',7,2,NULL,NULL,NULL),(43,35,'<p>dsdsad</p>','2019-06-12 16:19:28.579000',7,2,NULL,NULL,NULL),(44,35,'<p>dsdsad</p>','2019-06-12 16:19:44.367000',7,2,NULL,NULL,NULL),(45,35,'<p>dsfsf</p>','2019-06-12 16:26:02.084000',7,2,NULL,NULL,NULL),(46,35,'<p>df</p>','2019-06-12 16:29:02.094000',7,2,NULL,NULL,NULL),(47,21,'<p>dsf</p>','2019-06-12 16:48:28.194000',7,2,NULL,NULL,NULL),(48,21,'<p>fsdfsdg<img alt=\"crying\" height=\"23\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/cry_smile.png\" title=\"crying\" width=\"23\" /></p>','2019-06-12 16:48:46.643000',7,2,NULL,NULL,NULL),(49,21,'<p>222<img alt=\"cool\" height=\"23\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/shades_smile.png\" title=\"cool\" width=\"23\" /></p>','2019-06-13 01:32:41.349000',7,3,NULL,NULL,NULL),(51,39,'<p>ggffg</p>','2019-06-13 04:21:15.524000',7,1,NULL,NULL,NULL),(52,39,'<p><img alt=\"angry\" height=\"23\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/angry_smile.png\" title=\"angry\" width=\"23\" /></p>','2019-06-13 04:21:40.558000',7,1,51,1,51),(53,39,'<p>222的回复</p>','2019-06-13 04:22:38.099000',7,3,51,1,51),(54,39,'<p>000</p>','2019-06-13 04:24:44.203000',7,3,52,1,51),(55,39,'<p>0987</p>','2019-06-13 04:25:26.221000',7,3,NULL,NULL,NULL),(56,39,'<p>456</p>','2019-06-13 05:11:29.741000',7,3,52,1,51),(57,39,'<p>333</p>','2019-06-13 05:12:22.000000',7,3,55,3,55),(58,39,'<p>似懂非懂</p>','2019-06-13 05:12:30.142000',7,3,55,3,55),(59,39,'<p>水电费第十三</p>','2019-06-13 05:15:31.042000',7,3,NULL,NULL,NULL),(60,39,'<p>dsfds</p>','2019-06-13 05:15:38.031000',7,3,59,3,59),(61,39,'<p>45464354fg</p>','2019-06-13 05:15:51.471000',7,3,NULL,NULL,NULL),(62,39,'<p>fdsfdsf是</p>','2019-06-13 05:20:52.125000',7,3,NULL,NULL,NULL),(63,39,'<p>算得上是多</p>','2019-06-13 05:22:13.684000',7,3,62,3,62),(64,39,'<p>的受访者在</p>','2019-06-13 05:22:27.026000',7,3,62,3,62),(65,39,'<p>东山风动石</p>','2019-06-13 05:22:37.115000',7,3,63,3,62),(66,37,'<p>erect</p>','2019-06-13 06:50:33.110000',7,3,NULL,NULL,NULL),(67,39,'<p>佛挡杀佛</p>','2019-06-13 07:03:16.869000',7,3,NULL,NULL,NULL),(68,39,'<p>erect</p>','2019-06-13 07:03:22.986000',7,3,67,3,67),(69,39,'<p>官方挂号费</p>','2019-06-13 07:03:28.196000',7,3,NULL,NULL,NULL),(70,39,'<p>打</p>','2019-06-13 07:10:24.594000',7,3,NULL,NULL,NULL),(71,39,'<p>胜多负少的</p>','2019-06-13 07:10:29.119000',7,3,70,3,70),(72,39,'<p>胜多负少的</p>','2019-06-13 07:10:33.841000',7,3,71,3,70),(73,40,'<p>第那条</p>','2019-06-13 07:21:47.216000',7,1,NULL,NULL,NULL),(74,40,'<p>的说法是多少</p>','2019-06-13 07:21:59.465000',7,1,73,1,73),(75,40,'<p>投入和方法</p>','2019-06-13 07:22:10.969000',7,1,73,1,73),(79,40,'<p>东山风动石</p>','2019-06-13 07:33:38.495000',7,1,NULL,NULL,NULL),(80,40,'<p>水电费水电费</p>','2019-06-13 07:33:43.341000',7,1,32,1,32),(81,37,'<p>ssdssss</p>','2019-06-13 07:35:54.456000',7,1,NULL,NULL,NULL),(82,37,'<p>sdfds vffg</p>','2019-06-13 07:53:22.402000',7,1,NULL,NULL,NULL),(83,37,'<p>asaa水电费</p>','2019-06-13 07:53:42.725000',7,1,NULL,NULL,NULL),(84,37,'<p>防守打法sdsf sdfsd<img alt=\"angel\" height=\"23\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/angel_smile.png\" title=\"angel\" width=\"23\" /></p>','2019-06-13 07:54:40.098000',7,1,NULL,NULL,NULL),(85,37,'<p>fdfd</p>','2019-06-13 07:54:48.411000',7,1,NULL,NULL,NULL),(87,39,'<p>dfs</p>','2019-06-15 11:46:28.726000',7,2,NULL,NULL,NULL),(88,39,'<p>sdfdssDSF</p>','2019-06-15 11:46:42.448000',7,2,87,2,87),(89,34,'<p>sdfs ds&nbsp;&nbsp;</p>','2019-06-15 12:14:23.115000',7,1,39,2,39),(90,40,'<p>ddsf</p>','2019-06-15 13:58:28.595000',7,1,NULL,NULL,NULL),(91,40,'<p>dsfsf</p>','2019-06-15 13:59:08.287000',7,2,90,1,90),(92,39,'<p>sdfsa dsfds333</p>','2019-06-15 13:59:41.385000',7,4,88,2,87),(93,40,'<p>dsfsd</p>','2019-06-16 03:45:04.906000',7,1,NULL,NULL,NULL),(94,40,'<p>评论邮件测试</p>','2019-06-16 10:00:57.463000',7,1,NULL,NULL,NULL),(95,40,'<p>回复评论测试</p>','2019-06-16 10:03:06.884000',7,1,NULL,NULL,NULL),(96,40,'<p>回复评论测试</p>','2019-06-16 10:03:45.744000',7,1,94,1,94),(97,40,'<p>多线程发邮件</p>','2019-06-16 10:23:46.367000',7,1,NULL,NULL,NULL),(98,40,'<p>多线程回复</p>','2019-06-16 10:24:09.622000',7,1,97,1,97),(99,40,'<p>递四方速递</p>','2019-06-16 10:24:39.599000',7,1,NULL,NULL,NULL),(100,38,'<p>阿斯蒂芬第三个</p>','2019-06-16 10:32:23.959000',7,1,NULL,NULL,NULL),(101,38,'<p>多福多寿</p>','2019-06-16 10:33:54.065000',7,1,NULL,NULL,NULL),(102,38,'<p>html模板发送邮件测试</p>','2019-06-16 10:44:54.755000',7,1,NULL,NULL,NULL),(103,38,'<p>utf-8</p>','2019-06-16 10:52:23.389000',7,1,NULL,NULL,NULL),(104,38,'<p>rgds</p>','2019-06-16 10:56:35.979000',7,1,NULL,NULL,NULL),(105,38,'<p>sdfsd</p>','2019-06-16 11:01:05.899000',7,1,NULL,NULL,NULL),(106,38,'<p>sdafsd&nbsp;</p>','2019-06-16 11:04:27.826000',7,1,NULL,NULL,NULL),(107,39,'<p>sdfdsa</p>','2019-06-16 14:42:25.463317',7,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-04-25 07:44:06.927000','1','BlogType object (1)',1,'[{\"added\": {}}]',8,1),(2,'2019-04-25 07:44:34.400000','2','BlogType object (2)',1,'[{\"added\": {}}]',8,1),(3,'2019-04-25 07:44:40.942000','3','BlogType object (3)',1,'[{\"added\": {}}]',8,1),(4,'2019-04-25 07:46:20.759000','1','<Blog: 基于 Python 和 Django 框架的打车系统>',1,'[{\"added\": {}}]',7,1),(5,'2019-04-25 08:02:55.302000','2','<Blog: 第二篇>',1,'[{\"added\": {}}]',7,1),(6,'2019-04-25 08:13:18.350000','1','<Blog: 基于 Python 和 Django 框架的打车系统>',2,'[{\"changed\": {\"fields\": [\"is_deleted\"]}}]',7,1),(7,'2019-04-25 08:14:03.742000','1','<Blog: 基于 Python 和 Django 框架的打车系统>',2,'[{\"changed\": {\"fields\": [\"is_deleted\"]}}]',7,1),(8,'2019-04-25 08:14:13.077000','2','<Blog: 第二篇>',2,'[{\"changed\": {\"fields\": [\"is_deleted\"]}}]',7,1),(9,'2019-04-25 09:38:16.870000','1','<Blog: 基于 Python 和 Django 框架的打车系统>',2,'[{\"changed\": {\"fields\": [\"is_deleted\"]}}]',7,1),(10,'2019-04-25 09:56:01.162000','2','<Blog: 第二篇>',3,'',7,1),(11,'2019-04-25 09:56:01.276000','1','<Blog: 基于 Python 和 Django 框架的打车系统>',3,'',7,1),(12,'2019-04-25 09:59:27.718000','3','<Blog: ONE>',1,'[{\"added\": {}}]',7,1),(13,'2019-04-25 09:59:42.533000','4','<Blog: two>',1,'[{\"added\": {}}]',7,1),(14,'2019-04-25 09:59:51.942000','5','<Blog: three>',1,'[{\"added\": {}}]',7,1),(15,'2019-04-25 10:03:28.863000','5','<Blog: three>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(16,'2019-04-25 10:04:12.788000','5','<Blog: three>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(17,'2019-04-25 10:14:38.585000','3','<Blog: ONE>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(18,'2019-04-25 10:49:37.377000','6','<Blog: four>',1,'[{\"added\": {}}]',7,1),(19,'2019-04-26 14:27:10.065000','7','<Blog: 第五篇博客>',1,'[{\"added\": {}}]',7,1),(20,'2019-04-28 08:07:29.500000','4','学习',1,'[{\"added\": {}}]',8,1),(21,'2019-04-28 10:41:33.154000','38','<Blog: for 30>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(22,'2019-04-28 11:00:51.885000','39','<Blog: 水电费>',1,'[{\"added\": {}}]',7,1),(23,'2019-04-28 11:23:52.764000','39','<Blog: 水电费>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(24,'2019-04-28 12:57:07.552000','1','ReadNUM object (1)',1,'[{\"added\": {}}]',9,1),(25,'2019-04-28 13:13:18.263000','2','ReadNum object (2)',1,'[{\"added\": {}}]',9,1),(26,'2019-04-28 14:09:40.121000','1','ReadNum object (1)',1,'[{\"added\": {}}]',10,1),(27,'2019-04-28 14:09:59.443000','2','ReadNum object (2)',1,'[{\"added\": {}}]',10,1),(28,'2019-06-11 05:57:55.271000','40','<Blog: sdfads>',1,'[{\"added\": {}}]',7,1),(29,'2019-06-11 10:00:57.541000','3','ReadDetail object (3)',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',11,1),(30,'2019-06-13 02:29:19.774000','50','回复',1,'[{\"added\": {}}]',12,1),(31,'2019-06-13 02:35:36.804000','50','123123',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',12,1),(32,'2019-06-13 04:16:29.538000','50','123123',3,'',12,1),(33,'2019-06-13 08:00:02.959000','86','<p>sdfsd</p>',3,'',12,1),(34,'2019-06-15 12:21:35.138000','76','<p>的范德萨发</p>',3,'',12,1),(35,'2019-06-15 12:24:12.875000','76','<p>的范德萨发</p>',3,'',12,1),(36,'2019-06-15 16:02:11.847000','1','<Profile: 赖永均 for lyj',1,'[{\"added\": {}}]',13,1),(37,'2019-06-15 16:02:24.108000','2','<Profile: 111的昵称 for 111',1,'[{\"added\": {}}]',13,1),(38,'2019-06-15 16:10:59.213000','1','lyj',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(39,'2019-06-16 04:02:43.434000','1','lyj',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(40,'2019-06-16 05:36:25.442000','4','333',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(41,'2019-06-16 05:49:19.551000','1','lyj',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(42,'2019-06-16 05:59:49.596000','1','lyj',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',4,1),(43,'2019-06-16 06:02:22.024000','1','lyj',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(44,'2019-06-16 07:04:36.150000','1','lyj',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(45,'2019-06-16 09:56:53.968000','5','444',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(46,'2019-06-16 09:57:07.607000','1','lyj',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','blog'),(8,'blog','blogtype'),(9,'blog','readnum'),(12,'comment','comment'),(5,'contenttypes','contenttype'),(11,'read_statistics','readdetail'),(10,'read_statistics','readnum'),(6,'sessions','session'),(13,'user','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-06-16 14:24:36.188158'),(2,'auth','0001_initial','2019-06-16 14:24:47.539807'),(3,'admin','0001_initial','2019-06-16 14:24:50.344968'),(4,'admin','0002_logentry_remove_auto_add','2019-06-16 14:24:50.423972'),(5,'contenttypes','0002_remove_content_type_name','2019-06-16 14:24:52.026064'),(6,'auth','0002_alter_permission_name_max_length','2019-06-16 14:24:53.097125'),(7,'auth','0003_alter_user_email_max_length','2019-06-16 14:24:53.264135'),(8,'auth','0004_alter_user_username_opts','2019-06-16 14:24:53.348140'),(9,'auth','0005_alter_user_last_login_null','2019-06-16 14:24:54.171187'),(10,'auth','0006_require_contenttypes_0002','2019-06-16 14:24:54.393199'),(11,'auth','0007_alter_validators_add_error_messages','2019-06-16 14:24:54.501206'),(12,'auth','0008_alter_user_username_max_length','2019-06-16 14:24:56.805337'),(13,'auth','0009_alter_user_last_name_max_length','2019-06-16 14:24:57.787393'),(14,'blog','0001_initial','2019-06-16 14:25:01.636614'),(15,'blog','0002_remove_blog_readed_num','2019-06-16 14:25:02.706675'),(16,'blog','0003_auto_20190427_2045','2019-06-16 14:25:02.767678'),(17,'blog','0004_auto_20190428_1856','2019-06-16 14:25:02.846683'),(18,'blog','0005_auto_20190428_1922','2019-06-16 14:25:02.930688'),(19,'blog','0006_blog_readed_num','2019-06-16 14:25:04.209761'),(20,'blog','0007_auto_20190428_2054','2019-06-16 14:25:08.253992'),(21,'blog','0008_auto_20190428_2204','2019-06-16 14:25:10.047095'),(22,'blog','0009_auto_20190615_2351','2019-06-16 14:25:13.235277'),(23,'comment','0001_initial','2019-06-16 14:25:16.552467'),(24,'comment','0002_auto_20190613_0956','2019-06-16 14:25:17.807539'),(25,'comment','0003_auto_20190613_1003','2019-06-16 14:25:21.736763'),(26,'comment','0004_auto_20190613_1012','2019-06-16 14:25:26.666045'),(27,'comment','0005_auto_20190613_1017','2019-06-16 14:25:31.597327'),(28,'comment','0006_auto_20190615_2351','2019-06-16 14:25:41.335884'),(29,'read_statistics','0001_initial','2019-06-16 14:25:43.348999'),(30,'read_statistics','0002_readdetail','2019-06-16 14:25:45.302111'),(31,'read_statistics','0003_auto_20190615_2351','2019-06-16 14:25:48.429290'),(32,'sessions','0001_initial','2019-06-16 14:25:49.292339'),(33,'user','0001_initial','2019-06-16 14:25:51.212449'),(34,'user','0002_auto_20190616_0000','2019-06-16 14:25:51.362458');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('07ds6ibdt4j2gmvrk2a4kk8b13bjfmcb','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-06-30 09:56:32.922000'),('1hrbi84r8gvdz31s9i81k36igcmoumnk','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-06-26 06:35:48.425000'),('1ik96c6t8jgezswugd3hrp7suq1ikbl2','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-05-10 14:26:09.234000'),('56hu0gonpq2g2wjj3xyhcof3epm8t5m1','YTFhZmU2YjU2MjRlZmYzZTBlMzRhYTI2YTY4Mzk4ZDYyZGJjZDBhMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGUxNDA1NmE3NWNkYWQyODgxOGExNTJmMDU5MjU2OTEyNzQ1NDVkIn0=','2019-06-26 13:57:52.245000'),('76ksa3llxdmmisqqir5cunfp4pd2y2dk','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-06-25 05:57:17.389000'),('8ahwfy1wzz6ogrds1fcmji94njf72s8m','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-06-30 14:42:05.599181'),('b35jxbh1tfukqrk1y3tz0zez0axlsw1t','YTFhZmU2YjU2MjRlZmYzZTBlMzRhYTI2YTY4Mzk4ZDYyZGJjZDBhMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGUxNDA1NmE3NWNkYWQyODgxOGExNTJmMDU5MjU2OTEyNzQ1NDVkIn0=','2019-06-26 13:41:14.089000'),('dulh1jirmf1fxnibmnzgpgrv63719ftz','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-06-29 16:38:07.687000'),('ihqibtxz583yqhf4miedmi55qr6qipd9','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-06-29 14:10:11.804000'),('j070itonr0qg20ia3sfxsvqj8r1xqbvv','YTFhZmU2YjU2MjRlZmYzZTBlMzRhYTI2YTY4Mzk4ZDYyZGJjZDBhMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGUxNDA1NmE3NWNkYWQyODgxOGExNTJmMDU5MjU2OTEyNzQ1NDVkIn0=','2019-06-26 11:12:46.006000'),('jr3k3txm1p28zh78uxit8acfhaiui5s4','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-06-26 11:52:05.098000'),('jzi3ekn51qjpmec8fh0z5p3pfhdksvqv','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-05-13 08:02:57.317000'),('lal09ok15cfhm7lcr077jw3xc1ahgr4e','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-05-12 07:36:02.460000'),('mv2an6ck6x03b6y7o1szox1ibe66h70u','YTFhZmU2YjU2MjRlZmYzZTBlMzRhYTI2YTY4Mzk4ZDYyZGJjZDBhMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZGUxNDA1NmE3NWNkYWQyODgxOGExNTJmMDU5MjU2OTEyNzQ1NDVkIn0=','2019-06-29 11:46:22.594000'),('p1ugzh5v8izeynrxjrnythbpzvtwh9t7','Njc0Y2YzYWQxN2Q5YjExMjM1OGU1NTg4MmY1MzAwMWFjNjllOGU3Mjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMWU4NjZiNmU3YWZjNjFmZjU1ODYxMzljMTI4NjQyZDgwMzlmYjIwIn0=','2019-06-30 09:00:36.911000'),('sk1h5yfp5ecqirjpxs7sup4mojm15for','YWMwZWMyMzQzN2I4MjhkYmQ4MTU2NmIyZWNmMDIzZWRlYTk4NmI2Mzp7fQ==','2019-06-30 07:31:36.359000'),('tq4jlcsqq9lzdn7z60c42k5vqn9sq9ie','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-06-27 07:21:19.444000'),('uc3ap94wo6bzscp0ujv00j3zc3mekvue','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-05-09 07:42:12.044000'),('xp1ml4hw4y9yd2awa1jdh38teiybh4kz','MjI3Y2Q1MTgwMDk1ODJkMmQ1N2I5MmEyODE2ZmZmODE1MWQwZGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDY3ZmQ0N2QyNzlkNDJkODg1ZTQ5NDJhMmY4MjExYjA2MWNmZTJlIn0=','2019-06-25 15:45:48.581000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:seven_days_hot_blogs','gASVMgoAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgUaDdoOGgHaCqHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgUjAZ0YXJnZXSUaGJ1YmhdKYGUfZQoaGBoFGg3aDhoB4wFdGl0bGWUh5RSlIaUfZSGlGhmaG1oZ2gUaGhobXVihpSMBXdoZXJllIwaZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmWUjAlXaGVyZU5vZGWUk5QpgZR9lCiMCGNoaWxkcmVulF2UKIwYZGphbmdvLmRiLm1vZGVscy5sb29rdXBzlIwPTGVzc1RoYW5PckVxdWFslJOUKYGUfZQojANsaHOUaF0pgZR9lChoYGgVaDeMD3JlYWRfc3RhdGlzdGljc5RoPYwEZGF0ZZSHlFKUhpR9lIaUaGZohWhnaBVoaGiFjBJjb250YWluc19hZ2dyZWdhdGWUiXVijANyaHOUjAhkYXRldGltZZSMBGRhdGWUk5RDBAfjBhCUhZRSlIwUYmlsYXRlcmFsX3RyYW5zZm9ybXOUXZRoiYl1Ymh6jBJHcmVhdGVyVGhhbk9yRXF1YWyUk5QpgZR9lChof2iAaIpojUMEB+MGCZSFlFKUaJFdlGiJiXViZYwJY29ubmVjdG9ylIwDQU5ElIwHbmVnYXRlZJSJaImJdWKMC3doZXJlX2NsYXNzlGh1jAhncm91cF9ieZRoXmhphpSMCG9yZGVyX2J5lIwNLXJlYWRfbnVtX3N1bZSFlIwIbG93X21hcmuUSwCMCWhpZ2hfbWFya5RLB4wIZGlzdGluY3SUiYwPZGlzdGluY3RfZmllbGRzlCmMEXNlbGVjdF9mb3JfdXBkYXRllImMGHNlbGVjdF9mb3JfdXBkYXRlX25vd2FpdJSJjB1zZWxlY3RfZm9yX3VwZGF0ZV9za2lwX2xvY2tlZJSJjBRzZWxlY3RfZm9yX3VwZGF0ZV9vZpQpjA5zZWxlY3RfcmVsYXRlZJSJjAltYXhfZGVwdGiUSwWMDXZhbHVlc19zZWxlY3SUaCpoa4aUjAxfYW5ub3RhdGlvbnOUaBkpUpSMDHJlYWRfbnVtX3N1bZSMG2RqYW5nby5kYi5tb2RlbHMuYWdncmVnYXRlc5SMA1N1bZSTlCmBlH2UKGhgjBZyZWFkX2RldGFpbHNfX3JlYWRfbnVtlIWUfZSGlIwGZmlsdGVylE6MEnNvdXJjZV9leHByZXNzaW9uc5RdlGhdKYGUfZQoaGBoFWg3aIJoPYwIcmVhZF9udW2Uh5RSlIaUfZSGlGhmaMNoZ2gVaGhow4wVX291dHB1dF9maWVsZF9vcl9ub25llGjDaImJdWJhjAVleHRyYZR9lIwKaXNfc3VtbWFyeZSJaGZow3Vic4wWYW5ub3RhdGlvbl9zZWxlY3RfbWFza5SPlChospCMGF9hbm5vdGF0aW9uX3NlbGVjdF9jYWNoZZRoGSlSlGiyaLZzjApjb21iaW5hdG9ylE6MDmNvbWJpbmF0b3JfYWxslImMEGNvbWJpbmVkX3F1ZXJpZXOUKYwGX2V4dHJhlE6MEWV4dHJhX3NlbGVjdF9tYXNrlI+UjBNfZXh0cmFfc2VsZWN0X2NhY2hllE6MDGV4dHJhX3RhYmxlc5QpjA5leHRyYV9vcmRlcl9ieZQpjBBkZWZlcnJlZF9sb2FkaW5nlCiRlIiGlIwTX2ZpbHRlcmVkX3JlbGF0aW9uc5R9lIwNX2xvb2t1cF9qb2luc5RdlChoFGgVZYwKYmFzZV90YWJsZZRoFHVijA1fcmVzdWx0X2NhY2hllF2UjA5fc3RpY2t5X2ZpbHRlcpSJjApfZm9yX3dyaXRllImMGV9wcmVmZXRjaF9yZWxhdGVkX2xvb2t1cHOUKYwOX3ByZWZldGNoX2RvbmWUiYwWX2tub3duX3JlbGF0ZWRfb2JqZWN0c5R9lIwPX2l0ZXJhYmxlX2NsYXNzlGgAjA5WYWx1ZXNJdGVyYWJsZZSTlIwHX2ZpZWxkc5RoKmhrhpSMD19kamFuZ29fdmVyc2lvbpSMAzIuMJR1Yi4=','2019-06-16 15:27:38.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2019-06-11',10,40,7),(2,'2019-06-11',7,39,7),(3,'2019-06-10',1,38,7),(4,'2019-06-11',3,38,7),(5,'2019-06-11',2,35,7),(6,'2019-06-11',2,37,7),(7,'2019-06-11',1,34,7),(8,'2019-06-11',2,6,7),(9,'2019-06-11',1,3,7),(10,'2019-06-11',1,36,7),(11,'2019-06-11',1,19,7),(12,'2019-06-12',42,40,7),(13,'2019-06-12',35,39,7),(14,'2019-06-12',22,35,7),(15,'2019-06-12',9,38,7),(16,'2019-06-12',6,34,7),(17,'2019-06-12',4,36,7),(18,'2019-06-12',2,21,7),(19,'2019-06-13',1,21,7),(20,'2019-06-13',27,39,7),(21,'2019-06-13',7,40,7),(22,'2019-06-13',4,38,7),(23,'2019-06-13',7,37,7),(24,'2019-06-15',6,39,7),(25,'2019-06-15',7,40,7),(26,'2019-06-15',4,34,7),(27,'2019-06-16',4,40,7),(28,'2019-06-16',5,38,7),(29,'2019-06-16',1,39,7);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,91,39,7),(2,31,38,7),(3,12,37,7),(4,6,36,7),(5,25,35,7),(6,12,34,7),(7,1,25,7),(8,1,24,7),(9,1,23,7),(10,72,40,7),(11,2,6,7),(12,1,3,7),(13,1,19,7),(14,3,21,7);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'ccc',1),(2,'111的昵称',2),(3,'333',4);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17  3:22:44
