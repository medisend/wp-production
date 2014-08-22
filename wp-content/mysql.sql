-- MySQL dump 10.13  Distrib 5.5.35, for Linux (i686)
--
-- Host: 127.0.0.1    Database: wp_medisend
-- ------------------------------------------------------
-- Server version	5.5.35-33.0-log

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','http://wordpress.org/','','2014-01-23 21:54:49','2014-01-23 21:54:49','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'post-trashed','','',0,0);
INSERT INTO `wp_comments` VALUES (10,170,'dsdsd','mike01082013@gmail.com','','127.0.0.1','2014-03-05 09:35:34','2014-03-05 09:35:34','dsdsdfs',0,'post-trashed','','',0,0);
INSERT INTO `wp_comments` VALUES (11,170,'admin','nitinvipin123@gmail.com','','117.220.71.244','2014-03-07 16:39:57','2014-03-07 16:39:57','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.',0,'post-trashed','','',0,2);
INSERT INTO `wp_comments` VALUES (12,170,'admin','nitinvipin123@gmail.com','','117.220.71.244','2014-03-07 16:40:14','2014-03-07 16:40:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.',0,'post-trashed','','',11,2);
INSERT INTO `wp_comments` VALUES (13,170,'italoq','italonleite@gmail.com','','187.67.5.57','2014-04-02 06:16:38','2014-04-01 19:16:38','teste',0,'post-trashed','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
INSERT INTO `wp_links` VALUES (1,'http://www.medisend.org/docstore/DahanBobMillerdoc.pdf','Dahan Foundation issues $250,000 challenge grant for MediSend','','_blank','','Y',2,0,'2014-04-10 20:48:00','','','');
INSERT INTO `wp_links` VALUES (2,'http://www.24x7mag.com/news/20735-medisend-launches-training-program-for-us-veterans/','MediSend Launches Training Program for US Veterans','','_blank','','Y',2,0,'2014-04-10 20:50:00','','','');
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links_extrainfo`
--

DROP TABLE IF EXISTS `wp_links_extrainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links_extrainfo` (
  `link_id` bigint(20) NOT NULL DEFAULT '0',
  `link_second_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_telephone` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `link_email` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `link_visits` bigint(20) DEFAULT '0',
  `link_reciprocal` varchar(255) DEFAULT NULL,
  `link_submitter` varchar(255) DEFAULT NULL,
  `link_submitter_name` varchar(128) DEFAULT NULL,
  `link_submitter_email` varchar(128) DEFAULT NULL,
  `link_textfield` text,
  `link_no_follow` varchar(1) DEFAULT NULL,
  `link_featured` varchar(1) DEFAULT NULL,
  `link_manual_updated` varchar(1) DEFAULT NULL,
  UNIQUE KEY `link_id` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links_extrainfo`
--

LOCK TABLES `wp_links_extrainfo` WRITE;
/*!40000 ALTER TABLE `wp_links_extrainfo` DISABLE KEYS */;
INSERT INTO `wp_links_extrainfo` VALUES (1,'','','',0,'','medisend',NULL,NULL,'','','','N');
INSERT INTO `wp_links_extrainfo` VALUES (2,'','','',0,'','medisend',NULL,NULL,'','','','N');
/*!40000 ALTER TABLE `wp_links_extrainfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=722 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://medisend.wpengine.com','yes');
INSERT INTO `wp_options` VALUES (2,'blogname','Medisend International','yes');
INSERT INTO `wp_options` VALUES (3,'blogdescription','Sending Hope. Saving Lives.','yes');
INSERT INTO `wp_options` VALUES (4,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (5,'admin_email','jeff@jeffdouglas.com','yes');
INSERT INTO `wp_options` VALUES (6,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (7,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (8,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (9,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (10,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (11,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (12,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (13,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (17,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (18,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (19,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_pingback_flag','0','yes');
INSERT INTO `wp_options` VALUES (21,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (22,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (23,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (24,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (28,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (29,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (30,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (31,'gzipcompression','0','yes');
INSERT INTO `wp_options` VALUES (32,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (33,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (34,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (35,'active_plugins','a:7:{i:0;s:19:\"akismet/akismet.php\";i:2;s:29:\"link-library/link-library.php\";i:3;s:27:\"press-news-events/index.php\";i:4;s:35:\"redux-framework/redux-framework.php\";i:5;s:47:\"smk-sidebar-generator/smk-sidebar-generator.php\";i:6;s:41:\"wordpress-importer/wordpress-importer.php\";i:7;s:33:\"wp-job-manager/wp-job-manager.php\";}','yes');
INSERT INTO `wp_options` VALUES (36,'home','http://medisend.wpengine.com','yes');
INSERT INTO `wp_options` VALUES (37,'category_base','','yes');
INSERT INTO `wp_options` VALUES (38,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (39,'advanced_edit','0','yes');
INSERT INTO `wp_options` VALUES (40,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (41,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (42,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (43,'recently_edited','a:3:{i:0;s:80:\"/nas/wp/www/cluster-2274/medisend/wp-content/plugins/press-news-events/index.php\";i:2;s:74:\"/nas/wp/www/cluster-2274/medisend/wp-content/themes/NativeChurch/style.css\";i:3;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (44,'template','NativeChurch','yes');
INSERT INTO `wp_options` VALUES (45,'stylesheet','NativeChurch','yes');
INSERT INTO `wp_options` VALUES (46,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (47,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (48,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (49,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (50,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (51,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (52,'db_version','27916','yes');
INSERT INTO `wp_options` VALUES (53,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (54,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (55,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (56,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (57,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (58,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (59,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (60,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (61,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (62,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (63,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (64,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (65,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (66,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (67,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (68,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (69,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (70,'image_default_link_type','file','yes');
INSERT INTO `wp_options` VALUES (71,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (72,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (73,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (74,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (75,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (76,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (77,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (78,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (79,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (80,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (81,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (82,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (83,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (84,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (85,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (86,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (87,'page_for_posts','23','yes');
INSERT INTO `wp_options` VALUES (88,'page_on_front','281','yes');
INSERT INTO `wp_options` VALUES (89,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (90,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (91,'initial_db_version','26691','yes');
INSERT INTO `wp_options` VALUES (92,'wp_user_roles','a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"manage_job_listings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"employer\";a:2:{s:4:\"name\";s:8:\"Employer\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}}','yes');
INSERT INTO `wp_options` VALUES (93,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (94,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (95,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (96,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'sidebars_widgets','a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"contact-sidebar\";a:0:{}s:13:\"inner-sidebar\";a:0:{}s:15:\"sermons-sidebar\";a:0:{}s:13:\"event-sidebar\";a:0:{}s:20:\"single-event-sidebar\";a:0:{}s:12:\"post-sidebar\";a:0:{}s:14:\"footer-sidebar\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (99,'cron','a:9:{i:1408538625;a:1:{s:34:\"job_manager_check_for_expired_jobs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1408561320;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1408566488;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1408566500;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1408567323;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1408568475;a:1:{s:14:\"redux_tracking\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1408616121;a:1:{s:13:\"imic_tracking\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1408617825;a:1:{s:31:\"job_manager_delete_old_previews\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (110,'wpe_notices','a:2:{s:4:\"read\";s:0:\"\";s:8:\"messages\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (111,'wpe_notices_ttl','1408321885','yes');
INSERT INTO `wp_options` VALUES (131,'_transient_twentyfourteen_category_count','1','yes');
INSERT INTO `wp_options` VALUES (134,'optionsframework','a:2:{s:2:\"id\";s:10:\"alexandria\";s:12:\"knownoptions\";a:1:{i:0;s:10:\"alexandria\";}}','yes');
INSERT INTO `wp_options` VALUES (136,'alexandria','a:26:{s:10:\"skin_style\";s:10:\"alexandria\";s:26:\"show_featured_image_single\";s:5:\"false\";s:18:\"show_rat_on_single\";s:4:\"true\";s:17:\"show_pd_on_single\";s:4:\"true\";s:19:\"show_cats_on_single\";s:4:\"true\";s:11:\"show_np_box\";s:4:\"true\";s:10:\"twitter_id\";s:0:\"\";s:8:\"redit_id\";s:0:\"\";s:11:\"facebook_id\";s:0:\"\";s:10:\"stumble_id\";s:0:\"\";s:9:\"flickr_id\";s:0:\"\";s:11:\"linkedin_id\";s:0:\"\";s:9:\"google_id\";s:0:\"\";s:17:\"logo_layout_style\";s:4:\"sbys\";s:13:\"header_slider\";s:3:\"one\";s:27:\"show_alexandria_slider_home\";s:4:\"true\";s:29:\"show_alexandria_slider_single\";s:5:\"false\";s:27:\"show_alexandria_slider_page\";s:5:\"false\";s:30:\"show_alexandria_slider_archive\";s:5:\"false\";s:15:\"homepage_layout\";s:4:\"bone\";s:28:\"show_alexandria_quote_bizone\";s:4:\"true\";s:17:\"show_bizone_posts\";s:4:\"true\";s:28:\"show_alexandria_quote_biztwo\";s:4:\"true\";s:17:\"show_biztwo_posts\";s:4:\"true\";s:19:\"show_comments_spage\";s:4:\"true\";s:13:\"footer_layout\";s:3:\"one\";}','yes');
INSERT INTO `wp_options` VALUES (137,'theme_mods_twentyfourteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1397162187;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (138,'current_theme','Native Church','yes');
INSERT INTO `wp_options` VALUES (139,'theme_mods_alexandria','a:7:{i:0;b:0;s:16:\"background_color\";s:6:\"ebeef1\";s:16:\"background_image\";s:93:\"http://medisend.wpengine.com/wp-content/themes/alexandria/skins/images/alexandria/page_bg.png\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_attachment\";s:5:\"fixed\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1397162290;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"footer-left\";a:0:{}s:13:\"footer-center\";a:0:{}s:12:\"footer-right\";N;}}}','yes');
INSERT INTO `wp_options` VALUES (140,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (143,'theme_mods_abaris','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1399162576;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";N;s:8:\"footer-4\";N;}}}','yes');
INSERT INTO `wp_options` VALUES (146,'recently_activated','a:1:{s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:1399943619;}','yes');
INSERT INTO `wp_options` VALUES (151,'job_manager_installed_terms','1','yes');
INSERT INTO `wp_options` VALUES (152,'wp_job_manager_version','1.10.0','yes');
INSERT INTO `wp_options` VALUES (154,'job_manager_per_page','10','yes');
INSERT INTO `wp_options` VALUES (155,'job_manager_hide_filled_positions','0','yes');
INSERT INTO `wp_options` VALUES (156,'job_manager_enable_categories','0','yes');
INSERT INTO `wp_options` VALUES (157,'job_manager_enable_registration','1','yes');
INSERT INTO `wp_options` VALUES (158,'job_manager_registration_role','employer','yes');
INSERT INTO `wp_options` VALUES (159,'job_manager_user_requires_account','1','yes');
INSERT INTO `wp_options` VALUES (160,'job_manager_submission_requires_approval','1','yes');
INSERT INTO `wp_options` VALUES (161,'job_manager_submission_duration','30','yes');
INSERT INTO `wp_options` VALUES (162,'job_manager_submit_page_slug','','yes');
INSERT INTO `wp_options` VALUES (165,'_transient_timeout_jm_geo_a20386ea0c81925ec36d1a9c5c29c534','1428698654','no');
INSERT INTO `wp_options` VALUES (166,'_transient_jm_geo_a20386ea0c81925ec36d1a9c5c29c534','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<GeocodeResponse>\n <status>OK</status>\n <result>\n  <type>locality</type>\n  <type>political</type>\n  <formatted_address>Dallas, TX, USA</formatted_address>\n  <address_component>\n   <long_name>Dallas</long_name>\n   <short_name>Dallas</short_name>\n   <type>locality</type>\n   <type>political</type>\n  </address_component>\n  <address_component>\n   <long_name>Dallas County</long_name>\n   <short_name>Dallas County</short_name>\n   <type>administrative_area_level_2</type>\n   <type>political</type>\n  </address_component>\n  <address_component>\n   <long_name>Texas</long_name>\n   <short_name>TX</short_name>\n   <type>administrative_area_level_1</type>\n   <type>political</type>\n  </address_component>\n  <address_component>\n   <long_name>United States</long_name>\n   <short_name>US</short_name>\n   <type>country</type>\n   <type>political</type>\n  </address_component>\n  <geometry>\n   <location>\n    <lat>32.7801399</lat>\n    <lng>-96.8004511</lng>\n   </location>\n   <location_type>APPROXIMATE</location_type>\n   <viewport>\n    <southwest>\n     <lat>32.6175370</lat>\n     <lng>-96.9989413</lng>\n    </southwest>\n    <northeast>\n     <lat>33.0237921</lat>\n     <lng>-96.4637379</lng>\n    </northeast>\n   </viewport>\n   <bounds>\n    <southwest>\n     <lat>32.6175370</lat>\n     <lng>-96.9989413</lng>\n    </southwest>\n    <northeast>\n     <lat>33.0237921</lat>\n     <lng>-96.4637379</lng>\n    </northeast>\n   </bounds>\n  </geometry>\n </result>\n</GeocodeResponse>\n','no');
INSERT INTO `wp_options` VALUES (172,'redux-framework-tracking','a:4:{s:8:\"dev_mode\";b:1;s:4:\"hash\";s:32:\"a8fa354dd8589ae5205ab829207df4b7\";s:14:\"allow_tracking\";s:3:\"yes\";s:4:\"tour\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (176,'urvr','a:46:{s:8:\"last_tab\";s:0:\"\";s:10:\"breadcrumb\";s:1:\"1\";s:15:\"breadcrumb-char\";s:1:\"1\";s:8:\"pagenavi\";s:1:\"1\";s:6:\"layout\";s:1:\"3\";s:9:\"custom-js\";s:0:\"\";s:10:\"custom-css\";s:28:\"                            \";s:10:\"site-title\";s:1:\"0\";s:11:\"custom-logo\";a:5:{s:3:\"url\";s:52:\"http://s.wordpress.org/style/images/codeispoetry.png\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:16:\"site-description\";s:1:\"1\";s:7:\"favicon\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:16:\"ipad-icon-retina\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:18:\"iphone-icon-retina\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:9:\"ipad-icon\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:11:\"iphone-icon\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:14:\"footer-widgets\";s:1:\"0\";s:11:\"footer-text\";s:130:\"Powered by <a href=\"http://wordpress.org/\" target=\"_blank\">WordPress</a>. Theme by <a href=\"http://www.webulous.in/\">Webulous</a>.\";s:6:\"slides\";a:1:{i:0;a:9:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"sort\";s:1:\"0\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";}}s:14:\"service-icon-1\";s:0:\"\";s:21:\"service-description-1\";s:0:\"\";s:14:\"service-icon-2\";s:0:\"\";s:21:\"service-description-2\";s:0:\"\";s:14:\"service-icon-3\";s:0:\"\";s:21:\"service-description-3\";s:0:\"\";s:8:\"features\";s:0:\"\";s:13:\"skill-heading\";s:0:\"\";s:7:\"skill-1\";s:0:\"\";s:12:\"percentage-1\";s:3:\"100\";s:12:\"skill-icon-1\";s:0:\"\";s:7:\"skill-2\";s:0:\"\";s:12:\"percentage-2\";s:3:\"100\";s:12:\"skill-icon-2\";s:0:\"\";s:7:\"skill-3\";s:0:\"\";s:12:\"percentage-3\";s:3:\"100\";s:12:\"skill-icon-3\";s:0:\"\";s:7:\"skill-4\";s:0:\"\";s:12:\"percentage-4\";s:3:\"100\";s:12:\"skill-icon-4\";s:0:\"\";s:7:\"skill-5\";s:0:\"\";s:12:\"percentage-5\";s:3:\"100\";s:12:\"skill-icon-5\";s:0:\"\";s:15:\"homepage_blocks\";a:2:{s:7:\"enabled\";a:2:{s:7:\"placebo\";s:7:\"placebo\";s:7:\"default\";s:15:\"Default content\";}s:8:\"disabled\";a:5:{s:7:\"placebo\";s:7:\"placebo\";s:6:\"slider\";s:6:\"Slider\";s:8:\"services\";s:8:\"Services\";s:8:\"features\";s:17:\"Why Us and Skills\";s:12:\"recent_posts\";s:12:\"Recent Posts\";}}s:14:\"featured-image\";s:1:\"0\";s:21:\"single-featured-image\";s:1:\"0\";s:16:\"REDUX_last_saved\";i:1397163717;s:14:\"REDUX_imported\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (177,'LinkLibraryPP1','a:166:{s:11:\"num_columns\";i:1;s:15:\"showdescription\";b:0;s:9:\"shownotes\";b:0;s:10:\"beforenote\";s:6:\"<br />\";s:9:\"afternote\";s:0:\"\";s:10:\"beforeitem\";s:4:\"<li>\";s:9:\"afteritem\";s:5:\"</li>\";s:10:\"beforedesc\";s:0:\"\";s:9:\"afterdesc\";s:0:\"\";s:14:\"displayastable\";b:0;s:10:\"beforelink\";s:0:\"\";s:9:\"afterlink\";s:0:\"\";s:17:\"showcolumnheaders\";b:0;s:10:\"linkheader\";s:0:\"\";s:10:\"descheader\";s:0:\"\";s:11:\"notesheader\";s:0:\"\";s:9:\"beforerss\";s:0:\"\";s:8:\"afterrss\";s:0:\"\";s:10:\"beforedate\";s:0:\"\";s:9:\"afterdate\";s:0:\"\";s:11:\"beforeimage\";s:0:\"\";s:10:\"afterimage\";s:0:\"\";s:13:\"beforeweblink\";s:0:\"\";s:12:\"afterweblink\";s:0:\"\";s:15:\"beforetelephone\";s:0:\"\";s:14:\"aftertelephone\";s:0:\"\";s:11:\"beforeemail\";s:0:\"\";s:10:\"afteremail\";s:0:\"\";s:14:\"beforelinkhits\";s:0:\"\";s:13:\"afterlinkhits\";s:0:\"\";s:5:\"order\";s:4:\"name\";s:13:\"hide_if_empty\";b:1;s:11:\"table_width\";i:100;s:9:\"catanchor\";b:1;s:8:\"flatlist\";s:5:\"table\";s:12:\"categorylist\";N;s:19:\"excludecategorylist\";N;s:10:\"showrating\";b:0;s:11:\"showupdated\";b:0;s:11:\"show_images\";b:0;s:13:\"use_html_tags\";b:0;s:8:\"show_rss\";b:0;s:8:\"nofollow\";b:0;s:15:\"catlistwrappers\";i:1;s:14:\"beforecatlist1\";s:0:\"\";s:14:\"beforecatlist2\";s:0:\"\";s:14:\"beforecatlist3\";s:0:\"\";s:11:\"divorheader\";b:0;s:13:\"catnameoutput\";s:15:\"linklistcatname\";s:13:\"show_rss_icon\";b:0;s:16:\"linkaddfrequency\";i:0;s:13:\"addbeforelink\";s:0:\"\";s:12:\"addafterlink\";s:0:\"\";s:10:\"linktarget\";s:0:\"\";s:23:\"showcategorydescheaders\";b:0;s:21:\"showcategorydesclinks\";b:0;s:15:\"settingssetname\";s:7:\"Default\";s:18:\"showadmineditlinks\";b:1;s:14:\"showonecatonly\";b:0;s:11:\"loadingicon\";s:22:\"/icons/Ajax-loader.gif\";s:16:\"defaultsinglecat\";s:0:\"\";s:10:\"rsspreview\";b:0;s:15:\"rsspreviewcount\";i:3;s:13:\"rssfeedinline\";b:0;s:20:\"rssfeedinlinecontent\";b:0;s:18:\"rssfeedinlinecount\";i:1;s:9:\"direction\";s:3:\"ASC\";s:13:\"linkdirection\";s:3:\"ASC\";s:9:\"linkorder\";s:4:\"name\";s:10:\"pagination\";b:0;s:12:\"linksperpage\";i:5;s:17:\"hidecategorynames\";b:0;s:13:\"showinvisible\";b:0;s:8:\"showdate\";b:0;s:10:\"catdescpos\";s:5:\"right\";s:14:\"catlistdescpos\";s:5:\"right\";s:13:\"showuserlinks\";b:0;s:13:\"addnewlinkmsg\";s:12:\"Add new link\";s:13:\"linknamelabel\";s:9:\"Link name\";s:13:\"linkaddrlabel\";s:12:\"Link address\";s:12:\"linkrsslabel\";s:8:\"Link RSS\";s:12:\"linkcatlabel\";s:13:\"Link Category\";s:13:\"linkdesclabel\";s:16:\"Link Description\";s:14:\"linknoteslabel\";s:10:\"Link Notes\";s:15:\"addlinkbtnlabel\";s:8:\"Add Link\";s:10:\"newlinkmsg\";s:19:\"New link submitted.\";s:11:\"moderatemsg\";s:53:\"It will appear in the list once moderated. Thank you.\";s:15:\"rsspreviewwidth\";i:900;s:16:\"rsspreviewheight\";i:700;s:8:\"imagepos\";s:10:\"beforename\";s:10:\"imageclass\";s:0:\"\";s:12:\"emailnewlink\";b:0;s:14:\"showaddlinkrss\";b:0;s:15:\"showaddlinkdesc\";b:0;s:14:\"showaddlinkcat\";b:0;s:16:\"showaddlinknotes\";b:0;s:22:\"usethumbshotsforimages\";b:0;s:15:\"addlinkreqlogin\";b:0;s:16:\"showcatlinkcount\";b:0;s:14:\"publishrssfeed\";b:0;s:16:\"numberofrssitems\";i:10;s:12:\"rssfeedtitle\";s:31:\"Link Library-Generated RSS Feed\";s:18:\"rssfeeddescription\";s:42:\"Description of Link Library-Generated Feed\";s:14:\"showonecatmode\";s:4:\"AJAX\";s:18:\"paginationposition\";s:5:\"AFTER\";s:16:\"addlinkcustomcat\";b:0;s:18:\"linkcustomcatlabel\";s:23:\"User-submitted category\";s:22:\"linkcustomcatlistentry\";s:38:\"User-submitted category (define below)\";s:11:\"searchlabel\";s:6:\"Search\";s:14:\"dragndroporder\";s:26:\"1,2,3,4,5,6,7,8,9,10,11,12\";s:8:\"showname\";b:1;s:16:\"cattargetaddress\";s:0:\"\";s:14:\"displayweblink\";s:5:\"false\";s:13:\"sourceweblink\";s:7:\"primary\";s:13:\"showtelephone\";s:5:\"false\";s:15:\"sourcetelephone\";s:7:\"primary\";s:9:\"showemail\";s:5:\"false\";s:12:\"showlinkhits\";b:0;s:12:\"weblinklabel\";s:0:\"\";s:14:\"telephonelabel\";s:0:\"\";s:10:\"emaillabel\";s:0:\"\";s:21:\"showaddlinkreciprocal\";b:0;s:19:\"linkreciprocallabel\";s:15:\"Reciprocal Link\";s:20:\"showaddlinksecondurl\";b:0;s:18:\"linksecondurllabel\";s:17:\"Secondary Address\";s:20:\"showaddlinktelephone\";b:0;s:18:\"linktelephonelabel\";s:9:\"Telephone\";s:16:\"showaddlinkemail\";b:0;s:14:\"linkemaillabel\";s:6:\"E-mail\";s:12:\"emailcommand\";s:0:\"\";s:11:\"sourceimage\";s:7:\"primary\";s:10:\"sourcename\";s:7:\"primary\";s:13:\"enablerewrite\";b:0;s:11:\"rewritepage\";s:0:\"\";s:18:\"storelinksubmitter\";b:0;s:8:\"maxlinks\";s:0:\"\";s:11:\"showcaptcha\";b:0;s:16:\"beforelinkrating\";s:0:\"\";s:15:\"afterlinkrating\";s:0:\"\";s:22:\"linksubmitternamelabel\";s:14:\"Submitter Name\";s:21:\"showlinksubmittername\";b:0;s:23:\"linksubmitteremaillabel\";s:16:\"Submitter E-mail\";s:25:\"showaddlinksubmitteremail\";b:0;s:25:\"linksubmittercommentlabel\";s:17:\"Submitter Comment\";s:24:\"showlinksubmittercomment\";b:0;s:22:\"addlinkcatlistoverride\";s:0:\"\";s:20:\"showlargedescription\";b:0;s:22:\"beforelargedescription\";s:0:\"\";s:21:\"afterlargedescription\";s:0:\"\";s:17:\"showcustomcaptcha\";b:0;s:21:\"customcaptchaquestion\";s:29:\"Is boiling water hot or cold?\";s:19:\"customcaptchaanswer\";s:3:\"hot\";s:14:\"rssfeedaddress\";s:0:\"\";s:16:\"addlinknoaddress\";b:0;s:13:\"featuredfirst\";b:0;s:18:\"linklargedesclabel\";s:17:\"Large Description\";s:24:\"showuserlargedescription\";b:0;s:29:\"usetextareaforusersubmitnotes\";b:0;s:22:\"showcatonsearchresults\";b:0;s:17:\"shownameifnoimage\";b:0;s:20:\"searchresultsaddress\";s:0:\"\";s:17:\"enable_link_popup\";b:0;s:15:\"link_popup_text\";s:53:\"%link_image%<br />Click through to visit %link_name%.\";s:11:\"popup_width\";i:300;s:12:\"popup_height\";i:400;s:14:\"nocatonstartup\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (178,'LinkLibraryGeneral','a:21:{s:15:\"numberstylesets\";i:1;s:16:\"includescriptcss\";s:0:\"\";s:9:\"debugmode\";b:0;s:13:\"schemaversion\";s:3:\"4.9\";s:15:\"pagetitleprefix\";s:0:\"\";s:15:\"pagetitlesuffix\";s:0:\"\";s:13:\"thumbshotscid\";s:0:\"\";s:18:\"emaillinksubmitter\";b:0;s:13:\"moderatorname\";s:0:\"\";s:14:\"moderatoremail\";s:0:\"\";s:18:\"approvalemailtitle\";s:0:\"\";s:17:\"approvalemailbody\";s:0:\"\";s:18:\"rejectedemailtitle\";s:0:\"\";s:17:\"rejectedemailbody\";s:0:\"\";s:27:\"moderationnotificationtitle\";s:0:\"\";s:25:\"linksubmissionthankyouurl\";s:0:\"\";s:25:\"usefirstpartsubmittername\";s:0:\"\";s:17:\"recipcheckaddress\";s:28:\"http://medisend.wpengine.com\";s:19:\"recipcheckdelete403\";b:0;s:13:\"imagefilepath\";s:8:\"absolute\";s:14:\"fullstylesheet\";s:3317:\".linktable {margin-top: 15px;}\r\n\r\n.linktable a {text-decoration:none}\r\n\r\ntable.linklisttable {\r\n	width:100%; \r\n	border-width: 0px 0px 0px 0px;\r\n	border-spacing: 5px;\r\n	/* border-style: outset outset outset outset;\r\n	border-color: gray gray gray gray; */\r\n	border-collapse: separate;\r\n}\r\ntable.linklisttable th {\r\n	border-width: 1px 1px 1px 1px;\r\n	padding: 3px 3px 3px 3px;\r\n	background-color: #f4f5f3;\r\n	/* border-style: none none none none;\r\n	border-color: gray gray gray gray;\r\n	-moz-border-radius: 3px 3px 3px 3px; */\r\n}\r\ntable.linklisttable td {\r\n	border-width: 1px 1px 1px 1px;\r\n	padding: 3px 3px 3px 3px;\r\n	background-color: #dee1d8;\r\n	/* border-style: dotted dotted dotted dotted;\r\n	border-color: gray gray gray gray;\r\n	-moz-border-radius: 3px 3px 3px 3px; */\r\n}\r\n\r\n.linklistcatname{\r\n	font-family: arial;\r\n	font-size: 16px;\r\n	font-weight: bold;\r\n	border: 0;\r\n	padding-bottom: 10px;\r\n	padding-top: 10px;\r\n}\r\n\r\n.linklistcatnamedesc{\r\n	font-family: arial;\r\n	font-size: 12px;\r\n	font-weight: normal;\r\n	border: 0;\r\n	padding-bottom: 10px;\r\n	padding-top: 10px;\r\n}\r\n\r\n\r\n.linklistcolumnheader{\r\n	font-weight: bold;	\r\n}\r\n\r\ndiv.rsscontent{color: #333333; font-family: \"Helvetica Neue\",Arial,Helvetica,sans-serif;font-size: 11px;line-height: 1.25em;\r\nvertical-align: baseline;letter-spacing: normal;word-spacing: normal;font-weight: normal;font-style: normal;font-variant: normal;text-transform: none;\r\ntext-decoration: none;text-align: left;text-indent: 0px;max-width:500px;}\r\n\r\n#ll_rss_results { border-style:solid;border-width:1px;margin-left:10px;margin-top:10px;padding-top:3px;background-color:#f4f5f3;}\r\n.rsstitle{font-weight:400;font-size:0.8em;color:#33352C;font-family:Georgia,\"Times New Roman\",Times,serif;}\r\n.rsstitle a{color:#33352C}\r\n\r\n#ll_rss_results img {\r\n    max-width: 400px; /* Adjust this value according to your content area size*/\r\n    height: auto;\r\n}\r\n\r\n.rsselements {float: right;}\r\n\r\n.highlight_word {background-color: #FFFF00}\r\n\r\n.previouspage {float:left;margin-top:10px;font-weight:bold}\r\n\r\n.nextpage {float: right;margin-top:10px;font-weight:bold}\r\n\r\n.resulttitle {padding-top:10px;}\r\n\r\n.catdropdown { width: 300px; }\r\n\r\n#llsearch {padding-top:10px;}\r\n\r\n.lladdlink {\r\n	margin-top: 16px;\r\n}\r\n\r\n.lladdlink #lladdlinktitle {\r\n	font-weight: bold;\r\n}\r\n\r\n.lladdlink table {\r\n	margin-top: 5px;\r\n	margin-bottom: 8px;\r\n	border: 0;\r\n	border-spacing: 0;\r\n	border-collapse: collapse;\r\n}\r\n\r\n.lladdlink table td {\r\n	border: 0;\r\n	height: 30px;\r\n}\r\n\r\n.lladdlink table th {\r\n	border: 0;\r\n	text-align: left;\r\n	font-weight: normal;\r\n	width: 400px;\r\n}\r\n\r\n.lladdlink input[type=\"text\"] {\r\n	width: 300px;\r\n}\r\n\r\n.lladdlink select {\r\n	width: 300px;\r\n}\r\n\r\n.llmessage {\r\n	margin: 8px;\r\n	border: 1px solid #ddd;\r\n	background-color: #ff0;\r\n}\r\n\r\n.pageselector {\r\n	margin-top: 20px;\r\n	text-align: center;\r\n}\r\n\r\n.selectedpage {\r\n	margin: 0px 4px 0px 4px;\r\n	border: 1px solid #000;\r\n	padding: 7px;\r\n	background-color: #f4f5f3;\r\n}\r\n\r\n.unselectedpage {\r\n	margin: 0px 4px 0px 4px;\r\n	border: 1px solid #000;\r\n	padding: 7px;\r\n	background-color: #dee1d8;\r\n}\r\n\r\n.previousnextactive {\r\n	margin: 0px 4px 0px 4px;\r\n	border: 1px solid #000;\r\n	padding: 7px;\r\n	background-color: #dee1d8;\r\n}\r\n\r\n.previousnextinactive {\r\n	margin: 0px 4px 0px 4px;\r\n	border: 1px solid #000;\r\n	padding: 7px;\r\n	background-color: #dddddd;\r\n	color: #cccccc;\r\n}\";}','yes');
INSERT INTO `wp_options` VALUES (262,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (301,'theme_mods_NativeChurch','a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:12:\"primary-menu\";i:28;s:8:\"top-menu\";i:25;s:11:\"footer-menu\";i:27;}}','yes');
INSERT INTO `wp_options` VALUES (303,'imic_options','a:38:{s:8:\"last_tab\";s:1:\"0\";s:18:\"enable_maintenance\";s:1:\"0\";s:17:\"switch-responsive\";s:1:\"1\";s:16:\"enable_backtotop\";s:1:\"1\";s:14:\"custom_favicon\";a:5:{s:3:\"url\";s:78:\"http://medisend.wpengine.com/wp-content/themes/NativeChurch/images/favicon.ico\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:13:\"tracking-code\";s:0:\"\";s:23:\"custom_admin_login_logo\";a:5:{s:3:\"url\";s:71:\"http://medisend.wpengine.com/wp-content/uploads/2014/05/logo_silver.gif\";s:2:\"id\";s:3:\"355\";s:6:\"height\";s:2:\"64\";s:5:\"width\";s:3:\"153\";s:9:\"thumbnail\";s:78:\"http://medisend.wpengine.com/wp-content/uploads/2014/05/logo_silver-150x64.gif\";}s:12:\"header_image\";a:5:{s:3:\"url\";s:67:\"http://medisend.wpengine.com/wp-content/uploads/2014/05/header1.jpg\";s:2:\"id\";s:3:\"354\";s:6:\"height\";s:4:\"1062\";s:5:\"width\";s:4:\"1600\";s:9:\"thumbnail\";s:75:\"http://medisend.wpengine.com/wp-content/uploads/2014/05/header1-150x150.jpg\";}s:11:\"logo_upload\";a:5:{s:3:\"url\";s:71:\"http://medisend.wpengine.com/wp-content/uploads/2014/05/logo_silver.gif\";s:2:\"id\";s:3:\"355\";s:6:\"height\";s:2:\"64\";s:5:\"width\";s:3:\"153\";s:9:\"thumbnail\";s:78:\"http://medisend.wpengine.com/wp-content/uploads/2014/05/logo_silver-150x64.gif\";}s:19:\"enable-header-stick\";s:1:\"1\";s:18:\"header_area_height\";s:3:\"100\";s:21:\"footer_copyright_text\";s:19:\"All Rights Reserved\";s:15:\"social-facebook\";s:25:\"https://www.facebook.com/\";s:14:\"social-twitter\";s:20:\"https://twitter.com/\";s:16:\"social-pinterest\";s:26:\"https://www.pinterest.com/\";s:17:\"social-googleplus\";s:25:\"https://www.google.co.in/\";s:14:\"social-youtube\";s:19:\"http://youtube.com/\";s:16:\"social-instagram\";s:21:\"http://instagram.com/\";s:12:\"social-vimeo\";s:17:\"http://vimeo.com/\";s:8:\"site-rss\";s:34:\"http://medisend.wpengine.com/feed/\";s:13:\"footer_layout\";s:1:\"4\";s:16:\"theme_color_type\";s:1:\"0\";s:18:\"theme_color_scheme\";s:10:\"color2.css\";s:18:\"custom_theme_color\";s:0:\"\";s:11:\"site_layout\";s:4:\"wide\";s:26:\"upload-repeatable-bg-image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:20:\"full-screen-bg-image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:19:\"calendar_month_name\";s:0:\"\";s:25:\"calendar_month_name_short\";s:0:\"\";s:17:\"calendar_day_name\";s:0:\"\";s:23:\"calendar_day_name_short\";s:0:\"\";s:10:\"custom_css\";s:56:\"                #header{\r\nmargin: 0 auto;\r\n}            \";s:9:\"custom_js\";s:69:\"                jQuery(document).ready(function(){\r\n\r\n});            \";s:13:\"IMIC_imported\";b:0;s:13:\"IMIC_COMPILER\";i:1399992631;s:19:\"repeatable-bg-image\";s:0:\"\";s:12:\"raw_new_info\";s:0:\"\";s:15:\"IMIC_last_saved\";i:1399992632;}','yes');
INSERT INTO `wp_options` VALUES (317,'job_listing_type_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (318,'gallery-category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (319,'sermons-category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (320,'sermons-speakers_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (321,'event-category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (359,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (376,'IMIC_Framework','a:1:{s:14:\"allow_tracking\";s:3:\"yes\";}','yes');
INSERT INTO `wp_options` VALUES (378,'IMIC_Tracking_Hash','8c35a29f88d7afe6a21aac63810fa7a8','yes');
INSERT INTO `wp_options` VALUES (460,'_transient_random_seed','e9930b6881a7332f506e5e7e59d0ab63','yes');
INSERT INTO `wp_options` VALUES (463,'bcn_options','a:94:{s:17:\"bmainsite_display\";b:0;s:18:\"Hmainsite_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hmainsite_template_no_anchor\";s:8:\"%htitle%\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hhome_template_no_anchor\";s:8:\"%htitle%\";s:13:\"bblog_display\";b:1;s:14:\"Hblog_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hblog_template_no_anchor\";s:8:\"%htitle%\";s:10:\"hseparator\";s:6:\" &gt; \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:19:\"Hpost_page_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:29:\"Hpost_page_template_no_anchor\";s:8:\"%htitle%\";s:15:\"apost_page_root\";s:3:\"281\";s:15:\"Hpaged_template\";s:13:\"Page %htitle%\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:29:\"Hpost_post_template_no_anchor\";s:8:\"%htitle%\";s:15:\"apost_post_root\";s:2:\"23\";s:27:\"bpost_post_taxonomy_display\";b:1;s:24:\"Spost_post_taxonomy_type\";s:8:\"category\";s:25:\"Hpost_attachment_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:35:\"Hpost_attachment_template_no_anchor\";s:8:\"%htitle%\";s:13:\"H404_template\";s:8:\"%htitle%\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:135:\"Search results for &#039;<a title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>&#039;\";s:26:\"Hsearch_template_no_anchor\";s:39:\"Search results for &#039;%htitle%&#039;\";s:18:\"Hpost_tag_template\";s:84:\"<a title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hpost_tag_template_no_anchor\";s:8:\"%htitle%\";s:21:\"Hpost_format_template\";s:84:\"<a title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:31:\"Hpost_format_template_no_anchor\";s:8:\"%htitle%\";s:16:\"Hauthor_template\";s:107:\"Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:26:\"Hauthor_template_no_anchor\";s:21:\"Articles by: %htitle%\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:18:\"Hcategory_template\";s:89:\"<a title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hcategory_template_no_anchor\";s:8:\"%htitle%\";s:14:\"Hdate_template\";s:80:\"<a title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hdate_template_no_anchor\";s:8:\"%htitle%\";s:20:\"Hpost_event_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:30:\"Hpost_event_template_no_anchor\";s:8:\"%htitle%\";s:27:\"bpost_event_archive_display\";b:1;s:16:\"apost_event_root\";i:23;s:28:\"bpost_event_taxonomy_display\";b:1;s:25:\"Spost_event_taxonomy_type\";s:14:\"event-category\";s:19:\"Hpost_news_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:29:\"Hpost_news_template_no_anchor\";s:8:\"%htitle%\";s:26:\"bpost_news_archive_display\";b:0;s:15:\"apost_news_root\";i:23;s:27:\"bpost_news_taxonomy_display\";b:0;s:24:\"Spost_news_taxonomy_type\";s:4:\"date\";s:28:\"Hpost_press-release_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:38:\"Hpost_press-release_template_no_anchor\";s:8:\"%htitle%\";s:35:\"bpost_press-release_archive_display\";b:0;s:24:\"apost_press-release_root\";i:23;s:36:\"bpost_press-release_taxonomy_display\";b:0;s:33:\"Spost_press-release_taxonomy_type\";s:4:\"date\";s:26:\"Hpost_job_listing_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hpost_job_listing_template_no_anchor\";s:8:\"%htitle%\";s:33:\"bpost_job_listing_archive_display\";b:0;s:22:\"apost_job_listing_root\";i:23;s:34:\"bpost_job_listing_taxonomy_display\";b:1;s:31:\"Spost_job_listing_taxonomy_type\";s:16:\"job_listing_type\";s:22:\"Hpost_gallery_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:32:\"Hpost_gallery_template_no_anchor\";s:8:\"%htitle%\";s:29:\"bpost_gallery_archive_display\";b:1;s:18:\"apost_gallery_root\";i:23;s:30:\"bpost_gallery_taxonomy_display\";b:1;s:27:\"Spost_gallery_taxonomy_type\";s:16:\"gallery-category\";s:20:\"Hpost_staff_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:30:\"Hpost_staff_template_no_anchor\";s:8:\"%htitle%\";s:27:\"bpost_staff_archive_display\";b:1;s:16:\"apost_staff_root\";i:23;s:28:\"bpost_staff_taxonomy_display\";b:0;s:25:\"Spost_staff_taxonomy_type\";s:4:\"date\";s:22:\"Hpost_sermons_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:32:\"Hpost_sermons_template_no_anchor\";s:8:\"%htitle%\";s:29:\"bpost_sermons_archive_display\";b:1;s:18:\"apost_sermons_root\";i:23;s:30:\"bpost_sermons_taxonomy_display\";b:1;s:27:\"Spost_sermons_taxonomy_type\";s:16:\"sermons-category\";s:26:\"Hjob_listing_type_template\";s:74:\"<a title=\"Go to the %title% Job Type archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hjob_listing_type_template_no_anchor\";s:8:\"%htitle%\";s:26:\"Hgallery-category_template\";s:84:\"<a title=\"Go to the %title% Gallery Categories archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hgallery-category_template_no_anchor\";s:8:\"%htitle%\";s:26:\"Hsermons-category_template\";s:84:\"<a title=\"Go to the %title% Sermons Categories archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hsermons-category_template_no_anchor\";s:8:\"%htitle%\";s:21:\"Hsermons-tag_template\";s:77:\"<a title=\"Go to the %title% Sermons Tag archives.\" href=\"%link%\">%htitle%</a>\";s:31:\"Hsermons-tag_template_no_anchor\";s:8:\"%htitle%\";s:26:\"Hsermons-speakers_template\";s:82:\"<a title=\"Go to the %title% Sermons Speakers archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hsermons-speakers_template_no_anchor\";s:8:\"%htitle%\";s:24:\"Hevent-category_template\";s:82:\"<a title=\"Go to the %title% Event Categories archives.\" href=\"%link%\">%htitle%</a>\";s:34:\"Hevent-category_template_no_anchor\";s:8:\"%htitle%\";}','yes');
INSERT INTO `wp_options` VALUES (464,'bcn_options_bk','a:94:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hmainsite_template_no_anchor\";s:8:\"%htitle%\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hhome_template_no_anchor\";s:8:\"%htitle%\";s:13:\"bblog_display\";b:1;s:14:\"Hblog_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hblog_template_no_anchor\";s:8:\"%htitle%\";s:10:\"hseparator\";s:6:\" &gt; \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:19:\"Hpost_page_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:29:\"Hpost_page_template_no_anchor\";s:8:\"%htitle%\";s:15:\"apost_page_root\";s:3:\"281\";s:15:\"Hpaged_template\";s:13:\"Page %htitle%\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:29:\"Hpost_post_template_no_anchor\";s:8:\"%htitle%\";s:15:\"apost_post_root\";s:2:\"23\";s:27:\"bpost_post_taxonomy_display\";b:1;s:24:\"Spost_post_taxonomy_type\";s:8:\"category\";s:25:\"Hpost_attachment_template\";s:67:\"<a title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:35:\"Hpost_attachment_template_no_anchor\";s:8:\"%htitle%\";s:13:\"H404_template\";s:8:\"%htitle%\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:133:\"Search results for &#39;<a title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>&#39;\";s:26:\"Hsearch_template_no_anchor\";s:37:\"Search results for &#39;%htitle%&#39;\";s:18:\"Hpost_tag_template\";s:84:\"<a title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hpost_tag_template_no_anchor\";s:8:\"%htitle%\";s:21:\"Hpost_format_template\";s:84:\"<a title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:31:\"Hpost_format_template_no_anchor\";s:8:\"%htitle%\";s:16:\"Hauthor_template\";s:107:\"Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:26:\"Hauthor_template_no_anchor\";s:21:\"Articles by: %htitle%\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:18:\"Hcategory_template\";s:89:\"<a title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:28:\"Hcategory_template_no_anchor\";s:8:\"%htitle%\";s:14:\"Hdate_template\";s:80:\"<a title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:24:\"Hdate_template_no_anchor\";s:8:\"%htitle%\";s:20:\"Hpost_event_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:30:\"Hpost_event_template_no_anchor\";s:8:\"%htitle%\";s:27:\"bpost_event_archive_display\";b:1;s:16:\"apost_event_root\";s:2:\"23\";s:28:\"bpost_event_taxonomy_display\";b:1;s:25:\"Spost_event_taxonomy_type\";s:14:\"event-category\";s:19:\"Hpost_news_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:29:\"Hpost_news_template_no_anchor\";s:8:\"%htitle%\";s:26:\"bpost_news_archive_display\";s:4:\"news\";s:15:\"apost_news_root\";s:2:\"23\";s:27:\"bpost_news_taxonomy_display\";b:0;s:24:\"Spost_news_taxonomy_type\";s:4:\"date\";s:28:\"Hpost_press-release_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:38:\"Hpost_press-release_template_no_anchor\";s:8:\"%htitle%\";s:35:\"bpost_press-release_archive_display\";s:14:\"press-releases\";s:24:\"apost_press-release_root\";s:2:\"23\";s:36:\"bpost_press-release_taxonomy_display\";b:0;s:33:\"Spost_press-release_taxonomy_type\";s:4:\"date\";s:26:\"Hpost_job_listing_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hpost_job_listing_template_no_anchor\";s:8:\"%htitle%\";s:33:\"bpost_job_listing_archive_display\";b:0;s:22:\"apost_job_listing_root\";s:2:\"23\";s:34:\"bpost_job_listing_taxonomy_display\";b:1;s:31:\"Spost_job_listing_taxonomy_type\";s:16:\"job_listing_type\";s:22:\"Hpost_gallery_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:32:\"Hpost_gallery_template_no_anchor\";s:8:\"%htitle%\";s:29:\"bpost_gallery_archive_display\";b:1;s:18:\"apost_gallery_root\";s:2:\"23\";s:30:\"bpost_gallery_taxonomy_display\";b:1;s:27:\"Spost_gallery_taxonomy_type\";s:16:\"gallery-category\";s:20:\"Hpost_staff_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:30:\"Hpost_staff_template_no_anchor\";s:8:\"%htitle%\";s:27:\"bpost_staff_archive_display\";b:1;s:16:\"apost_staff_root\";s:2:\"23\";s:28:\"bpost_staff_taxonomy_display\";b:0;s:25:\"Spost_staff_taxonomy_type\";s:4:\"date\";s:22:\"Hpost_sermons_template\";s:52:\"<a title=\"Go to %title%.\" href=\"%link%\">%htitle%</a>\";s:32:\"Hpost_sermons_template_no_anchor\";s:8:\"%htitle%\";s:29:\"bpost_sermons_archive_display\";b:1;s:18:\"apost_sermons_root\";s:2:\"23\";s:30:\"bpost_sermons_taxonomy_display\";b:1;s:27:\"Spost_sermons_taxonomy_type\";s:16:\"sermons-category\";s:26:\"Hjob_listing_type_template\";s:74:\"<a title=\"Go to the %title% Job Type archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hjob_listing_type_template_no_anchor\";s:8:\"%htitle%\";s:26:\"Hgallery-category_template\";s:84:\"<a title=\"Go to the %title% Gallery Categories archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hgallery-category_template_no_anchor\";s:8:\"%htitle%\";s:26:\"Hsermons-category_template\";s:84:\"<a title=\"Go to the %title% Sermons Categories archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hsermons-category_template_no_anchor\";s:8:\"%htitle%\";s:21:\"Hsermons-tag_template\";s:77:\"<a title=\"Go to the %title% Sermons Tag archives.\" href=\"%link%\">%htitle%</a>\";s:31:\"Hsermons-tag_template_no_anchor\";s:8:\"%htitle%\";s:26:\"Hsermons-speakers_template\";s:82:\"<a title=\"Go to the %title% Sermons Speakers archives.\" href=\"%link%\">%htitle%</a>\";s:36:\"Hsermons-speakers_template_no_anchor\";s:8:\"%htitle%\";s:24:\"Hevent-category_template\";s:82:\"<a title=\"Go to the %title% Event Categories archives.\" href=\"%link%\">%htitle%</a>\";s:34:\"Hevent-category_template_no_anchor\";s:8:\"%htitle%\";}','no');
INSERT INTO `wp_options` VALUES (465,'bcn_version','5.0.1','no');
INSERT INTO `wp_options` VALUES (469,'job_manager_allowed_application_method','','yes');
INSERT INTO `wp_options` VALUES (471,'widget_wpe_widget_powered_by','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (472,'widget_pages','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (473,'widget_calendar','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (474,'widget_links','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (475,'widget_tag_cloud','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (476,'widget_nav_menu','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (477,'widget_widget_recent_jobs','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (478,'widget_bcn_widget','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (479,'widget_upcoming_events','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (480,'widget_latest_gallery','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (481,'widget_selected_post','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (482,'widget_custom_category','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (483,'widget_recent_sermons','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (484,'widget_sermon_speakers','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (485,'widget_twitter_feeds','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (486,'widget_advertisement','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (489,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (549,'rewrite_rules','a:148:{s:15:\"events/archive$\";s:47:\"index.php?post_type=event&pne_archive_type=past\";s:29:\"events/archive/page/([0-9]+)$\";s:65:\"index.php?post_type=event&pne_archive_type=past&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:7:\"news/?$\";s:24:\"index.php?post_type=news\";s:37:\"news/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:32:\"news/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:24:\"news/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=news&paged=$matches[1]\";s:17:\"press-releases/?$\";s:33:\"index.php?post_type=press-release\";s:47:\"press-releases/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=press-release&feed=$matches[1]\";s:42:\"press-releases/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=press-release&feed=$matches[1]\";s:34:\"press-releases/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=press-release&paged=$matches[1]\";s:56:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"category/(.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"type/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:56:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:51:\"events/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:27:\"events/([^/]+)(/[0-9]+)?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:54:\"news/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:49:\"news/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:25:\"news/([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"press-releases/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"press-releases/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:81:\"press-releases/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:76:\"press-releases/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"press-releases/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"press-releases/([^/]+)/trackback/?$\";s:40:\"index.php?press-release=$matches[1]&tb=1\";s:64:\"press-releases/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?press-release=$matches[1]&feed=$matches[2]\";s:59:\"press-releases/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?press-release=$matches[1]&feed=$matches[2]\";s:43:\"press-releases/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?press-release=$matches[1]&paged=$matches[2]\";s:50:\"press-releases/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?press-release=$matches[1]&cpage=$matches[2]\";s:35:\"press-releases/([^/]+)(/[0-9]+)?/?$\";s:52:\"index.php?press-release=$matches[1]&page=$matches[2]\";s:31:\"press-releases/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"press-releases/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"press-releases/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"press-releases/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"press-releases/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"job/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"job/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"job/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"job/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"job/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:24:\"job/([^/]+)/trackback/?$\";s:38:\"index.php?job_listing=$matches[1]&tb=1\";s:32:\"job/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?job_listing=$matches[1]&paged=$matches[2]\";s:39:\"job/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?job_listing=$matches[1]&cpage=$matches[2]\";s:24:\"job/([^/]+)(/[0-9]+)?/?$\";s:50:\"index.php?job_listing=$matches[1]&page=$matches[2]\";s:20:\"job/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"job/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"job/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"job/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"job/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:41:\"feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:36:\"(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=281&cpage=$matches[1]\";s:50:\"comments/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:45:\"comments/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:53:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:48:\"search/(.+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"author/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:78:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:73:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:65:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:60:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:52:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:47:\"([0-9]{4})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:97:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:92:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:86:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:81:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:86:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:81:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:49:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:44:\"(.?.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (560,'akismet_available_servers','a:4:{s:12:\"192.0.80.244\";b:1;s:12:\"192.0.80.246\";b:1;s:12:\"66.135.58.61\";b:1;s:12:\"66.135.58.62\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (561,'akismet_connectivity_time','1399942481','yes');
INSERT INTO `wp_options` VALUES (562,'wordpress_api_key','8eb99148d369','yes');
INSERT INTO `wp_options` VALUES (563,'akismet_strictness','1','yes');
INSERT INTO `wp_options` VALUES (564,'akismet_show_user_comments_approved','1','yes');
INSERT INTO `wp_options` VALUES (579,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (650,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-3.9.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-3.9.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"3.9.2\";s:7:\"version\";s:5:\"3.9.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1408538435;s:15:\"version_checked\";s:5:\"3.9.2\";s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (664,'_site_transient_timeout_browser_49d5d8dd1140256727a340c38a742f7f','1408923084','yes');
INSERT INTO `wp_options` VALUES (665,'_site_transient_browser_49d5d8dd1140256727a340c38a742f7f','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"36.0.1985.143\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (701,'_transient_is_multi_author','0','yes');
INSERT INTO `wp_options` VALUES (720,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1408538435;s:7:\"checked\";a:6:{s:12:\"NativeChurch\";s:3:\"1.4\";s:6:\"abaris\";s:5:\"1.0.4\";s:10:\"alexandria\";s:6:\"2.0.15\";s:14:\"twentyfourteen\";s:3:\"1.0\";s:14:\"twentythirteen\";s:3:\"1.1\";s:12:\"twentytwelve\";s:3:\"1.3\";}s:8:\"response\";a:5:{s:6:\"abaris\";a:4:{s:5:\"theme\";s:6:\"abaris\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:35:\"https://wordpress.org/themes/abaris\";s:7:\"package\";s:54:\"https://wordpress.org/themes/download/abaris.1.0.8.zip\";}s:10:\"alexandria\";a:4:{s:5:\"theme\";s:10:\"alexandria\";s:11:\"new_version\";s:6:\"2.0.31\";s:3:\"url\";s:39:\"https://wordpress.org/themes/alexandria\";s:7:\"package\";s:59:\"https://wordpress.org/themes/download/alexandria.2.0.31.zip\";}s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfourteen\";s:7:\"package\";s:60:\"https://wordpress.org/themes/download/twentyfourteen.1.1.zip\";}s:14:\"twentythirteen\";a:4:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentythirteen\";s:7:\"package\";s:60:\"https://wordpress.org/themes/download/twentythirteen.1.2.zip\";}s:12:\"twentytwelve\";a:4:{s:5:\"theme\";s:12:\"twentytwelve\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:41:\"https://wordpress.org/themes/twentytwelve\";s:7:\"package\";s:58:\"https://wordpress.org/themes/download/twentytwelve.1.4.zip\";}}s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (721,'_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1408538435;s:8:\"response\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.0.2.zip\";}s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"1283\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.5.1.1.zip\";}s:43:\"breadcrumb-navxt/breadcrumb_navxt_admin.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"1283\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:43:\"breadcrumb-navxt/breadcrumb_navxt_admin.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.5.1.1.zip\";}s:29:\"link-library/link-library.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"176\";s:4:\"slug\";s:12:\"link-library\";s:6:\"plugin\";s:29:\"link-library/link-library.php\";s:11:\"new_version\";s:7:\"5.8.6.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/link-library/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/link-library.zip\";}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"45018\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:5:\"3.3.6\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/redux-framework.3.3.6.zip\";}s:33:\"wp-job-manager/wp-job-manager.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"41501\";s:4:\"slug\";s:14:\"wp-job-manager\";s:6:\"plugin\";s:33:\"wp-job-manager/wp-job-manager.php\";s:11:\"new_version\";s:6:\"1.13.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-job-manager/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-job-manager.1.13.0.zip\";}}s:12:\"translations\";a:0:{}}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=1606 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,4,'_edit_lock','1397162620:2');
INSERT INTO `wp_postmeta` VALUES (3,4,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (4,4,'_job_expires','2014-05-10');
INSERT INTO `wp_postmeta` VALUES (5,4,'_job_location','Dallas, TX');
INSERT INTO `wp_postmeta` VALUES (6,4,'_application','');
INSERT INTO `wp_postmeta` VALUES (7,4,'_company_name','');
INSERT INTO `wp_postmeta` VALUES (8,4,'_company_website','');
INSERT INTO `wp_postmeta` VALUES (9,4,'_company_tagline','');
INSERT INTO `wp_postmeta` VALUES (10,4,'_company_twitter','');
INSERT INTO `wp_postmeta` VALUES (11,4,'_company_logo','');
INSERT INTO `wp_postmeta` VALUES (12,4,'_filled','0');
INSERT INTO `wp_postmeta` VALUES (13,4,'_featured','0');
INSERT INTO `wp_postmeta` VALUES (14,4,'geolocation_lat','32.7801399');
INSERT INTO `wp_postmeta` VALUES (15,4,'geolocation_long','-96.8004511');
INSERT INTO `wp_postmeta` VALUES (16,4,'geolocation_formatted_address','Dallas, TX, USA');
INSERT INTO `wp_postmeta` VALUES (17,4,'geolocation_city','Dallas');
INSERT INTO `wp_postmeta` VALUES (18,4,'geolocation_state_short','TX');
INSERT INTO `wp_postmeta` VALUES (19,4,'geolocation_state_long','Texas');
INSERT INTO `wp_postmeta` VALUES (20,4,'geolocation_country_short','US');
INSERT INTO `wp_postmeta` VALUES (21,4,'geolocation_country_long','United States');
INSERT INTO `wp_postmeta` VALUES (22,4,'geolocated','1');
INSERT INTO `wp_postmeta` VALUES (29,7,'_edit_lock','1399941247:2');
INSERT INTO `wp_postmeta` VALUES (30,7,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (31,10,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (32,10,'_edit_lock','1397211582:2');
INSERT INTO `wp_postmeta` VALUES (37,48,'_wp_attached_file','2014/02/staff3.jpg');
INSERT INTO `wp_postmeta` VALUES (38,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:18:\"2014/02/staff3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"staff3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"staff3-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (39,50,'_wp_attached_file','2014/02/staff2.jpg');
INSERT INTO `wp_postmeta` VALUES (40,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:18:\"2014/02/staff2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"staff2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"staff2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (41,52,'_wp_attached_file','2014/02/staff1.jpg');
INSERT INTO `wp_postmeta` VALUES (42,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:18:\"2014/02/staff1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"staff1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"staff1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (43,56,'_wp_attached_file','2014/02/slide21.jpg');
INSERT INTO `wp_postmeta` VALUES (44,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:635;s:4:\"file\";s:19:\"2014/02/slide21.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide21-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide21-1024x508.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"slide21-958x475.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:475;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (45,59,'_wp_attached_file','2014/02/slide11.jpg');
INSERT INTO `wp_postmeta` VALUES (46,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:635;s:4:\"file\";s:19:\"2014/02/slide11.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide11-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide11-1024x508.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"slide11-958x475.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:475;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (47,60,'_wp_attached_file','2014/02/slide211.jpg');
INSERT INTO `wp_postmeta` VALUES (48,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:635;s:4:\"file\";s:20:\"2014/02/slide211.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide211-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slide211-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide211-1024x508.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"slide211-958x475.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:475;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (49,70,'_wp_attached_file','2014/03/gallery-img3.jpg');
INSERT INTO `wp_postmeta` VALUES (50,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/03/gallery-img3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery-img3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery-img3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (51,72,'_wp_attached_file','2014/03/gallery-img1.jpg');
INSERT INTO `wp_postmeta` VALUES (52,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/03/gallery-img1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery-img1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery-img1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (53,74,'_wp_attached_file','2014/03/staff.jpg');
INSERT INTO `wp_postmeta` VALUES (54,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:17:\"2014/03/staff.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"staff-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"staff-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (55,76,'_wp_attached_file','2014/03/gallery-img31.jpg');
INSERT INTO `wp_postmeta` VALUES (56,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:25:\"2014/03/gallery-img31.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery-img31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gallery-img31-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (57,77,'_wp_attached_file','2014/03/gallery-img11.jpg');
INSERT INTO `wp_postmeta` VALUES (58,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:25:\"2014/03/gallery-img11.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery-img11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gallery-img11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (59,78,'_wp_attached_file','2014/03/staff1.jpg');
INSERT INTO `wp_postmeta` VALUES (60,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2014/03/staff1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"staff1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"staff1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (61,79,'_wp_attached_file','2014/03/sermons.jpg');
INSERT INTO `wp_postmeta` VALUES (62,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2014/03/sermons.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sermons-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sermons-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (63,83,'_wp_attached_file','2014/03/gallery-img2.jpg');
INSERT INTO `wp_postmeta` VALUES (64,83,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/03/gallery-img2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery-img2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery-img2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (65,86,'_wp_attached_file','2014/03/newhere.jpg');
INSERT INTO `wp_postmeta` VALUES (66,86,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2014/03/newhere.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"newhere-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"newhere-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (67,90,'_wp_attached_file','2014/03/gallery-img12.jpg');
INSERT INTO `wp_postmeta` VALUES (68,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:25:\"2014/03/gallery-img12.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery-img12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gallery-img12-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (69,92,'_wp_attached_file','2014/03/blog-image3.jpg');
INSERT INTO `wp_postmeta` VALUES (70,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2014/03/blog-image3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"blog-image3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"blog-image3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (71,117,'_wp_attached_file','2014/03/Simple.pdf');
INSERT INTO `wp_postmeta` VALUES (72,118,'_wp_attached_file','2014/03/Miaow-02-Hidden.mp3');
INSERT INTO `wp_postmeta` VALUES (73,118,'_wp_attachment_metadata','a:21:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:128000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR128\";s:17:\"compression_ratio\";d:0.0907029478458049875921886950891348533332347869873046875;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:3923093;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:246;s:16:\"length_formatted\";s:4:\"4:05\";s:5:\"title\";s:4:\"Song\";s:6:\"artist\";s:5:\"Miaow\";s:5:\"album\";s:5:\"Miaow\";s:4:\"year\";s:4:\"2003\";s:7:\"comment\";s:0:\"\";s:5:\"track\";i:2;s:5:\"genre\";s:8:\"Trip-Hop\";}');
INSERT INTO `wp_postmeta` VALUES (74,123,'_wp_attached_file','2014/03/sample-pdf.pdf');
INSERT INTO `wp_postmeta` VALUES (75,126,'_wp_attached_file','2014/03/blog-image2.jpg');
INSERT INTO `wp_postmeta` VALUES (76,126,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2014/03/blog-image2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"blog-image2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"blog-image2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (77,144,'_wp_attached_file','2014/02/slide1.jpg');
INSERT INTO `wp_postmeta` VALUES (78,144,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:635;s:4:\"file\";s:18:\"2014/02/slide1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide1-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"slide1-1024x508.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-958x475.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:475;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (79,148,'_wp_attached_file','2014/03/event-img2.jpg');
INSERT INTO `wp_postmeta` VALUES (80,148,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:22:\"2014/03/event-img2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"event-img2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"event-img2-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (81,149,'_wp_attached_file','2014/03/Miaow-02-Hidden1.mp3');
INSERT INTO `wp_postmeta` VALUES (82,149,'_wp_attachment_metadata','a:21:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:128000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR128\";s:17:\"compression_ratio\";d:0.0907029478458049875921886950891348533332347869873046875;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:3923093;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:246;s:16:\"length_formatted\";s:4:\"4:05\";s:5:\"title\";s:4:\"Song\";s:6:\"artist\";s:5:\"Miaow\";s:5:\"album\";s:5:\"Miaow\";s:4:\"year\";s:4:\"2003\";s:7:\"comment\";s:0:\"\";s:5:\"track\";i:2;s:5:\"genre\";s:8:\"Trip-Hop\";}');
INSERT INTO `wp_postmeta` VALUES (83,149,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (84,178,'_wp_attached_file','2014/03/event-img1.jpg');
INSERT INTO `wp_postmeta` VALUES (85,178,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2014/03/event-img1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"event-img1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"event-img1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (86,189,'_wp_attached_file','2014/03/logo.png');
INSERT INTO `wp_postmeta` VALUES (87,189,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:236;s:6:\"height\";i:36;s:4:\"file\";s:16:\"2014/03/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x36.png\";s:5:\"width\";i:150;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (88,194,'_wp_attached_file','2014/03/favicon.ico');
INSERT INTO `wp_postmeta` VALUES (89,197,'_wp_attached_file','2014/03/gallery-img4.jpg');
INSERT INTO `wp_postmeta` VALUES (90,197,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/03/gallery-img4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery-img4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery-img4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (91,198,'_wp_attached_file','2014/03/gallery-img5.jpg');
INSERT INTO `wp_postmeta` VALUES (92,198,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/03/gallery-img5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery-img5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery-img5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (93,199,'_wp_attached_file','2014/03/gallery-img6.jpg');
INSERT INTO `wp_postmeta` VALUES (94,199,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/03/gallery-img6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery-img6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery-img6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (95,200,'_wp_attached_file','2014/03/gallery-img7.jpg');
INSERT INTO `wp_postmeta` VALUES (96,200,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/03/gallery-img7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery-img7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery-img7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (97,201,'_wp_attached_file','2014/03/gallery-img8.jpg');
INSERT INTO `wp_postmeta` VALUES (98,201,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/03/gallery-img8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery-img8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery-img8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (99,202,'_wp_attached_file','2014/03/gallery-img9.jpg');
INSERT INTO `wp_postmeta` VALUES (100,202,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/03/gallery-img9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"gallery-img9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"gallery-img9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (101,203,'_wp_attached_file','2014/03/gallery-img10.jpg');
INSERT INTO `wp_postmeta` VALUES (102,203,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:25:\"2014/03/gallery-img10.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"gallery-img10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"gallery-img10-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (103,204,'_wp_attached_file','2014/03/post-thumb2.jpg');
INSERT INTO `wp_postmeta` VALUES (104,204,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:23:\"2014/03/post-thumb2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (105,252,'_wp_attached_file','2014/03/logo1.png');
INSERT INTO `wp_postmeta` VALUES (106,252,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:236;s:6:\"height\";i:36;s:4:\"file\";s:17:\"2014/03/logo1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo1-150x36.png\";s:5:\"width\";i:150;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (107,259,'_wp_attached_file','2014/02/header1.jpg');
INSERT INTO `wp_postmeta` VALUES (108,259,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2014/02/header1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header1-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header1-1024x170.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"header1-958x159.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (109,261,'_wp_attached_file','2014/02/header11.jpg');
INSERT INTO `wp_postmeta` VALUES (110,261,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:200;s:4:\"file\";s:20:\"2014/02/header11.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"header11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"header11-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"header11-1024x170.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"header11-958x159.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (111,262,'_wp_attached_file','2014/03/header2.jpg');
INSERT INTO `wp_postmeta` VALUES (112,262,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2014/03/header2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header2-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header2-1024x170.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"header2-958x159.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (113,264,'_wp_attached_file','2014/02/header3.jpg');
INSERT INTO `wp_postmeta` VALUES (114,264,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2014/02/header3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header3-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header3-1024x170.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"header3-958x159.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (115,69,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (116,69,'imic_gallery_url','https://vimeo.com/19564018');
INSERT INTO `wp_postmeta` VALUES (117,69,'_thumbnail_id','76');
INSERT INTO `wp_postmeta` VALUES (118,69,'imic_gallery_video_url','https://vimeo.com/19564018');
INSERT INTO `wp_postmeta` VALUES (119,73,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (120,73,'imic_gallery_url','https://vimeo.com/19564018');
INSERT INTO `wp_postmeta` VALUES (121,73,'_thumbnail_id','78');
INSERT INTO `wp_postmeta` VALUES (122,73,'imic_gallery_video_url','http://youtu.be/NEFfnbQlGo8');
INSERT INTO `wp_postmeta` VALUES (123,75,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (124,75,'_thumbnail_id','79');
INSERT INTO `wp_postmeta` VALUES (125,82,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (126,82,'imic_gallery_images','83');
INSERT INTO `wp_postmeta` VALUES (127,82,'imic_gallery_images','76');
INSERT INTO `wp_postmeta` VALUES (128,85,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (129,85,'_thumbnail_id','86');
INSERT INTO `wp_postmeta` VALUES (130,85,'imic_gallery_link_url','http://www.imithemes.com');
INSERT INTO `wp_postmeta` VALUES (131,87,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (132,87,'_thumbnail_id','76');
INSERT INTO `wp_postmeta` VALUES (133,89,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (134,89,'imic_gallery_link_url','https://www.google.co.in/');
INSERT INTO `wp_postmeta` VALUES (135,89,'_thumbnail_id','83');
INSERT INTO `wp_postmeta` VALUES (136,93,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (137,93,'_thumbnail_id','90');
INSERT INTO `wp_postmeta` VALUES (138,93,'imic_gallery_link_url','https://www.google.co.in/');
INSERT INTO `wp_postmeta` VALUES (139,93,'imic_gallery_video_url','https://vimeo.com/19564018');
INSERT INTO `wp_postmeta` VALUES (180,266,'_wp_attached_file','2014/02/header4.jpg');
INSERT INTO `wp_postmeta` VALUES (181,266,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2014/02/header4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header4-300x50.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header4-1024x170.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"header4-958x159.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (182,270,'_wp_attached_file','2014/03/photodune-4841140-playing-little-boy-xs.jpg');
INSERT INTO `wp_postmeta` VALUES (183,270,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:365;s:6:\"height\";i:547;s:4:\"file\";s:51:\"2014/03/photodune-4841140-playing-little-boy-xs.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"photodune-4841140-playing-little-boy-xs-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"photodune-4841140-playing-little-boy-xs-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:3.20000000000000017763568394002504646778106689453125;s:6:\"credit\";s:17:\"contrastwerkstatt\";s:6:\"camera\";s:10:\"NIKON D800\";s:7:\"caption\";s:55:\"Little boy playing using his ipad tablet inside the car\";s:17:\"created_timestamp\";i:1366547052;s:9:\"copyright\";s:17:\"contrastwerkstatt\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:18:\"Playing little boy\";}}');
INSERT INTO `wp_postmeta` VALUES (184,273,'_wp_attached_file','2014/03/photodune-5112012-happiness-m.jpg');
INSERT INTO `wp_postmeta` VALUES (185,273,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1732;s:6:\"height\";i:1155;s:4:\"file\";s:41:\"2014/03/photodune-5112012-happiness-m.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"photodune-5112012-happiness-m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"photodune-5112012-happiness-m-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"photodune-5112012-happiness-m-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:41:\"photodune-5112012-happiness-m-958x638.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:638;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:2;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:45:\"Happy girl and her boyfriend laughing outside\";s:17:\"created_timestamp\";i:1371649740;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";i:0;s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:9:\"Happiness\";}}');
INSERT INTO `wp_postmeta` VALUES (197,278,'_wp_attached_file','2014/03/13439.jpg');
INSERT INTO `wp_postmeta` VALUES (198,278,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2014/03/13439.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"13439-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"13439-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"13439-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"13439-958x538.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (199,279,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (200,279,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (201,279,'_menu_item_object_id','279');
INSERT INTO `wp_postmeta` VALUES (202,279,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (203,279,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (204,279,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (205,279,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (206,279,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (207,279,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (217,281,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (218,281,'_wp_page_template','template-home.php');
INSERT INTO `wp_postmeta` VALUES (221,281,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (222,281,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (223,281,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (224,281,'imic_custom_gallery_title','Updates from our gallery');
INSERT INTO `wp_postmeta` VALUES (225,281,'imic_custom_more_galleries_title',' More Galleries');
INSERT INTO `wp_postmeta` VALUES (226,281,'imic_custom_more_galleries_url','http://preview.imithemes.com/native-church-wp/gallery-3-columns-filter/');
INSERT INTO `wp_postmeta` VALUES (227,281,'imic_galleries_to_show_on','3');
INSERT INTO `wp_postmeta` VALUES (228,281,'imic_custom_latest_news_title','Latest News');
INSERT INTO `wp_postmeta` VALUES (229,281,'imic_custom_upcoming_events_title','More Coming Events');
INSERT INTO `wp_postmeta` VALUES (230,281,'imic_home_featured_blocks','129,13,19');
INSERT INTO `wp_postmeta` VALUES (231,281,'imic_home_featured_blocks1','Our Pastors');
INSERT INTO `wp_postmeta` VALUES (232,281,'imic_home_featured_blocks2','New Here');
INSERT INTO `wp_postmeta` VALUES (233,281,'imic_home_featured_blocks3','Sermons Archive');
INSERT INTO `wp_postmeta` VALUES (234,282,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (235,282,'_wp_page_template','template-plan-visit.php');
INSERT INTO `wp_postmeta` VALUES (236,282,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (237,282,'_thumbnail_id','56');
INSERT INTO `wp_postmeta` VALUES (238,282,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (239,282,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (240,283,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (241,283,'_wp_page_template','template-donate.php');
INSERT INTO `wp_postmeta` VALUES (242,283,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (243,283,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (244,283,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (245,13,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (246,13,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (247,13,'imic_staff_member_to_show_on','3');
INSERT INTO `wp_postmeta` VALUES (248,13,'imic_our_staff_text','Our Staff ');
INSERT INTO `wp_postmeta` VALUES (249,13,'_thumbnail_id','86');
INSERT INTO `wp_postmeta` VALUES (250,13,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (251,13,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (252,13,'imic_read_More_text_about','New Here');
INSERT INTO `wp_postmeta` VALUES (253,13,'imic_header_image','261');
INSERT INTO `wp_postmeta` VALUES (254,15,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (255,15,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (256,17,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (257,17,'_wp_page_template','template-events.php');
INSERT INTO `wp_postmeta` VALUES (258,17,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (259,17,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (260,17,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (261,19,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (262,19,'_wp_page_template','template-sermons.php');
INSERT INTO `wp_postmeta` VALUES (263,19,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (264,19,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (265,19,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (266,19,'imic_read_More_text_sermons','Sermons Archive');
INSERT INTO `wp_postmeta` VALUES (267,19,'imic_header_image','266');
INSERT INTO `wp_postmeta` VALUES (268,19,'_thumbnail_id','79');
INSERT INTO `wp_postmeta` VALUES (269,21,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (270,21,'_wp_page_template','template-gallery-pagination.php');
INSERT INTO `wp_postmeta` VALUES (271,21,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (272,21,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (273,21,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (274,21,'imic_gallery_pagination_columns_layout','2');
INSERT INTO `wp_postmeta` VALUES (275,21,'imic_gallery_pagination_to_show_on','4');
INSERT INTO `wp_postmeta` VALUES (276,23,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (277,23,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (278,25,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (279,25,'_wp_page_template','template-contact.php');
INSERT INTO `wp_postmeta` VALUES (280,25,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (281,25,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (282,25,'imic_contact_address','Contact Form');
INSERT INTO `wp_postmeta` VALUES (283,25,'imic_our_location_text','Our Location');
INSERT INTO `wp_postmeta` VALUES (284,25,'imic_contact_map_display','yes');
INSERT INTO `wp_postmeta` VALUES (285,25,'imic_contact_bottom_box','<iframe src=\"https://maps.google.com/?ie=UTF8&amp;ll=40.717989,-74.002705&amp;spn=0.043846,0.077162&amp;t=m&amp;z=14&amp;output=embed\"></iframe>');
INSERT INTO `wp_postmeta` VALUES (286,25,'imic_contact_map_box_code','<iframe src=\"https://maps.google.com/?ie=UTF8&ll=40.717989,-74.002705&spn=0.043846,0.077162&t=m&z=14&output=embed\"></iframe>');
INSERT INTO `wp_postmeta` VALUES (287,25,'imic_header_image','264');
INSERT INTO `wp_postmeta` VALUES (288,94,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (289,94,'_wp_page_template','template-gallery-pagination.php');
INSERT INTO `wp_postmeta` VALUES (290,94,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (291,94,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (292,94,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (293,94,'imic_gallery_pagination_columns_layout','3');
INSERT INTO `wp_postmeta` VALUES (294,94,'imic_gallery_pagination_to_show_on','6');
INSERT INTO `wp_postmeta` VALUES (338,290,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (339,96,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (340,96,'_wp_page_template','template-gallery-pagination.php');
INSERT INTO `wp_postmeta` VALUES (341,96,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (342,96,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (343,96,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (344,96,'imic_gallery_pagination_columns_layout','4');
INSERT INTO `wp_postmeta` VALUES (345,96,'imic_gallery_pagination_to_show_on','8');
INSERT INTO `wp_postmeta` VALUES (346,98,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (347,98,'_wp_page_template','template-gallery-filter.php');
INSERT INTO `wp_postmeta` VALUES (348,98,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (349,98,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (350,98,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (351,98,'imic_gallery_filter_columns_layout','2');
INSERT INTO `wp_postmeta` VALUES (352,100,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (353,100,'_wp_page_template','template-gallery-filter.php');
INSERT INTO `wp_postmeta` VALUES (354,100,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (355,100,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (356,100,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (357,100,'imic_gallery_filter_columns_layout','3');
INSERT INTO `wp_postmeta` VALUES (358,102,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (359,102,'_wp_page_template','template-gallery-filter.php');
INSERT INTO `wp_postmeta` VALUES (360,102,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (361,102,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (362,102,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (363,102,'imic_gallery_filter_columns_layout','4');
INSERT INTO `wp_postmeta` VALUES (364,113,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (365,113,'_wp_page_template','template-gallery-masonry.php');
INSERT INTO `wp_postmeta` VALUES (366,113,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (367,113,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (368,113,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (376,124,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (377,124,'_thumbnail_id','126');
INSERT INTO `wp_postmeta` VALUES (378,129,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (379,129,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (380,129,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (381,129,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (382,129,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (383,129,'imic_staff_member_to_show_on','3');
INSERT INTO `wp_postmeta` VALUES (384,129,'_thumbnail_id','78');
INSERT INTO `wp_postmeta` VALUES (385,129,'imic_read_More_text_staff','Our Pastors');
INSERT INTO `wp_postmeta` VALUES (386,129,'imic_header_image','262');
INSERT INTO `wp_postmeta` VALUES (387,141,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (388,141,'_thumbnail_id','92');
INSERT INTO `wp_postmeta` VALUES (389,153,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (390,153,'_wp_page_template','template-event_calendar.php');
INSERT INTO `wp_postmeta` VALUES (391,153,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (392,153,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (393,153,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (394,155,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (395,155,'_wp_page_template','template-events_grid.php');
INSERT INTO `wp_postmeta` VALUES (396,155,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (397,155,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (398,155,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (404,163,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (405,163,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (406,163,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (407,163,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (408,163,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (409,170,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (410,170,'_thumbnail_id','126');
INSERT INTO `wp_postmeta` VALUES (411,170,'imic_post_custom_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas conval');
INSERT INTO `wp_postmeta` VALUES (412,179,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (413,179,'_thumbnail_id','144');
INSERT INTO `wp_postmeta` VALUES (414,179,'_wp_page_template','template-blog-masonry.php');
INSERT INTO `wp_postmeta` VALUES (415,179,'imic_our_staff_text','Our Staff');
INSERT INTO `wp_postmeta` VALUES (416,179,'imic_contact_email','info@imithemes.com');
INSERT INTO `wp_postmeta` VALUES (417,179,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (424,269,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (425,269,'_thumbnail_id','270');
INSERT INTO `wp_postmeta` VALUES (426,272,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (427,272,'_thumbnail_id','273');
INSERT INTO `wp_postmeta` VALUES (428,272,'imic_post_custom_description','A custom description of the post for blog pages');
INSERT INTO `wp_postmeta` VALUES (429,47,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (430,47,'imic_staff_member_facebook','https://www.facebook.com/');
INSERT INTO `wp_postmeta` VALUES (431,47,'imic_staff_member_twitter','https://twitter.com/');
INSERT INTO `wp_postmeta` VALUES (432,47,'imic_staff_member_google_plus','https://plus.google.com/');
INSERT INTO `wp_postmeta` VALUES (433,47,'imic_staff_member_pinterest','https://www.pinterest.com/');
INSERT INTO `wp_postmeta` VALUES (434,47,'_thumbnail_id','48');
INSERT INTO `wp_postmeta` VALUES (435,49,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (436,49,'_thumbnail_id','50');
INSERT INTO `wp_postmeta` VALUES (437,49,'imic_staff_member_facebook','https://www.facebook.com/');
INSERT INTO `wp_postmeta` VALUES (438,49,'imic_staff_member_twitter','https://twitter.com/');
INSERT INTO `wp_postmeta` VALUES (439,49,'imic_staff_member_google_plus','https://plus.google.com/');
INSERT INTO `wp_postmeta` VALUES (440,49,'imic_staff_member_pinterest','https://www.pinterest.com/');
INSERT INTO `wp_postmeta` VALUES (441,51,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (442,51,'_thumbnail_id','52');
INSERT INTO `wp_postmeta` VALUES (443,51,'imic_staff_member_facebook','https://www.facebook.com/');
INSERT INTO `wp_postmeta` VALUES (444,51,'imic_staff_member_twitter','https://twitter.com/');
INSERT INTO `wp_postmeta` VALUES (445,51,'imic_staff_member_google_plus','https://plus.google.com/');
INSERT INTO `wp_postmeta` VALUES (446,51,'imic_staff_member_pinterest','https://www.pinterest.com/');
INSERT INTO `wp_postmeta` VALUES (464,291,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (465,291,'_menu_item_menu_item_parent','299');
INSERT INTO `wp_postmeta` VALUES (466,291,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (467,291,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (468,291,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (469,291,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (470,291,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (471,291,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (472,291,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (482,293,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (483,293,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (484,293,'_menu_item_object_id','283');
INSERT INTO `wp_postmeta` VALUES (485,293,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (486,293,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (487,293,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (488,293,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (489,293,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (490,293,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (491,294,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (492,294,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (493,294,'_menu_item_object_id','281');
INSERT INTO `wp_postmeta` VALUES (494,294,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (495,294,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (496,294,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (497,294,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (498,294,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (499,294,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (500,295,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (501,295,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (502,295,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (503,295,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (504,295,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (505,295,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (506,295,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (507,295,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (508,295,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (509,296,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (510,296,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (511,296,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (512,296,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (513,296,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (514,296,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (515,296,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (516,296,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (517,296,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (518,297,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (519,297,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (520,297,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (521,297,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (522,297,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (523,297,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (524,297,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (525,297,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (526,297,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (527,298,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (528,298,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (529,298,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (530,298,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (531,298,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (532,298,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (533,298,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (534,298,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (535,298,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (536,299,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (537,299,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (538,299,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (539,299,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (540,299,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (541,299,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (542,299,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (543,299,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (544,299,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (545,300,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (546,300,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (547,300,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (548,300,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (549,300,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (550,300,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (551,300,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (552,300,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (553,300,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (554,301,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (555,301,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (556,301,'_menu_item_object_id','281');
INSERT INTO `wp_postmeta` VALUES (557,301,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (558,301,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (559,301,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (560,301,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (561,301,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (562,301,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (563,302,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (564,302,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (565,302,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (566,302,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (567,302,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (568,302,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (569,302,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (570,302,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (571,302,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (572,303,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (573,303,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (574,303,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (575,303,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (576,303,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (577,303,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (578,303,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (579,303,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (580,303,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (581,304,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (582,304,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (583,304,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (584,304,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (585,304,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (586,304,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (587,304,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (588,304,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (589,304,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (590,305,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (591,305,'_menu_item_menu_item_parent','298');
INSERT INTO `wp_postmeta` VALUES (592,305,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (593,305,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (594,305,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (595,305,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (596,305,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (597,305,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (598,305,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (599,306,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (600,306,'_menu_item_menu_item_parent','305');
INSERT INTO `wp_postmeta` VALUES (601,306,'_menu_item_object_id','94');
INSERT INTO `wp_postmeta` VALUES (602,306,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (603,306,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (604,306,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (605,306,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (606,306,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (607,306,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (608,307,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (609,307,'_menu_item_menu_item_parent','305');
INSERT INTO `wp_postmeta` VALUES (610,307,'_menu_item_object_id','96');
INSERT INTO `wp_postmeta` VALUES (611,307,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (612,307,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (613,307,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (614,307,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (615,307,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (616,307,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (617,308,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (618,308,'_menu_item_menu_item_parent','305');
INSERT INTO `wp_postmeta` VALUES (619,308,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (620,308,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (621,308,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (622,308,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (623,308,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (624,308,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (625,308,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (626,309,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (627,309,'_menu_item_menu_item_parent','298');
INSERT INTO `wp_postmeta` VALUES (628,309,'_menu_item_object_id','98');
INSERT INTO `wp_postmeta` VALUES (629,309,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (630,309,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (631,309,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (632,309,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (633,309,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (634,309,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (635,310,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (636,310,'_menu_item_menu_item_parent','309');
INSERT INTO `wp_postmeta` VALUES (637,310,'_menu_item_object_id','100');
INSERT INTO `wp_postmeta` VALUES (638,310,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (639,310,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (640,310,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (641,310,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (642,310,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (643,310,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (644,311,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (645,311,'_menu_item_menu_item_parent','309');
INSERT INTO `wp_postmeta` VALUES (646,311,'_menu_item_object_id','102');
INSERT INTO `wp_postmeta` VALUES (647,311,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (648,311,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (649,311,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (650,311,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (651,311,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (652,311,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (653,312,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (654,312,'_menu_item_menu_item_parent','309');
INSERT INTO `wp_postmeta` VALUES (655,312,'_menu_item_object_id','98');
INSERT INTO `wp_postmeta` VALUES (656,312,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (657,312,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (658,312,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (659,312,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (660,312,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (661,312,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (662,313,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (663,313,'_menu_item_menu_item_parent','298');
INSERT INTO `wp_postmeta` VALUES (664,313,'_menu_item_object_id','113');
INSERT INTO `wp_postmeta` VALUES (665,313,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (666,313,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (667,313,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (668,313,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (669,313,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (670,313,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (680,315,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (681,315,'_menu_item_menu_item_parent','295');
INSERT INTO `wp_postmeta` VALUES (682,315,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (683,315,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (684,315,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (685,315,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (686,315,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (687,315,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (688,315,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (689,316,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (690,316,'_menu_item_menu_item_parent','295');
INSERT INTO `wp_postmeta` VALUES (691,316,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (692,316,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (693,316,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (694,316,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (695,316,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (696,316,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (697,316,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (698,317,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (699,317,'_menu_item_menu_item_parent','295');
INSERT INTO `wp_postmeta` VALUES (700,317,'_menu_item_object_id','129');
INSERT INTO `wp_postmeta` VALUES (701,317,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (702,317,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (703,317,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (704,317,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (705,317,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (706,317,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (707,318,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (708,318,'_menu_item_menu_item_parent','297');
INSERT INTO `wp_postmeta` VALUES (709,318,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (710,318,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (711,318,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (712,318,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (713,318,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (714,318,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (715,318,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (716,319,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (717,319,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (718,319,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (719,319,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (720,319,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (721,319,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (722,319,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (723,319,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (724,319,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (725,320,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (726,320,'_menu_item_menu_item_parent','296');
INSERT INTO `wp_postmeta` VALUES (727,320,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (728,320,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (729,320,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (730,320,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (731,320,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (732,320,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (733,320,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (734,321,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (735,321,'_menu_item_menu_item_parent','296');
INSERT INTO `wp_postmeta` VALUES (736,321,'_menu_item_object_id','155');
INSERT INTO `wp_postmeta` VALUES (737,321,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (738,321,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (739,321,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (740,321,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (741,321,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (742,321,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (743,322,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (744,322,'_menu_item_menu_item_parent','296');
INSERT INTO `wp_postmeta` VALUES (745,322,'_menu_item_object_id','153');
INSERT INTO `wp_postmeta` VALUES (746,322,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (747,322,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (748,322,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (749,322,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (750,322,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (751,322,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (752,323,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (753,323,'_menu_item_menu_item_parent','328');
INSERT INTO `wp_postmeta` VALUES (754,323,'_menu_item_object_id','163');
INSERT INTO `wp_postmeta` VALUES (755,323,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (756,323,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (757,323,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (758,323,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (759,323,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (760,323,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (770,325,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (771,325,'_menu_item_menu_item_parent','299');
INSERT INTO `wp_postmeta` VALUES (772,325,'_menu_item_object_id','179');
INSERT INTO `wp_postmeta` VALUES (773,325,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (774,325,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (775,325,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (776,325,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (777,325,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (778,325,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (779,326,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (780,326,'_menu_item_menu_item_parent','299');
INSERT INTO `wp_postmeta` VALUES (781,326,'_menu_item_object_id','170');
INSERT INTO `wp_postmeta` VALUES (782,326,'_menu_item_object','post');
INSERT INTO `wp_postmeta` VALUES (783,326,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (784,326,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (785,326,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (786,326,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (787,326,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (806,329,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (807,329,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (808,329,'_menu_item_object_id','281');
INSERT INTO `wp_postmeta` VALUES (809,329,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (810,329,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (811,329,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (812,329,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (813,329,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (814,329,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (815,330,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (816,330,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (817,330,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (818,330,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (819,330,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (820,330,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (821,330,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (822,330,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (823,330,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (824,331,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (825,331,'_menu_item_menu_item_parent','330');
INSERT INTO `wp_postmeta` VALUES (826,331,'_menu_item_object_id','129');
INSERT INTO `wp_postmeta` VALUES (827,331,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (828,331,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (829,331,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (830,331,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (831,331,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (832,331,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (950,345,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (951,345,'_menu_item_menu_item_parent','388');
INSERT INTO `wp_postmeta` VALUES (952,345,'_menu_item_object_id','94');
INSERT INTO `wp_postmeta` VALUES (953,345,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (954,345,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (955,345,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (956,345,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (957,345,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (958,345,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1013,354,'_wp_attached_file','2014/05/header1.jpg');
INSERT INTO `wp_postmeta` VALUES (1014,354,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1062;s:4:\"file\";s:19:\"2014/05/header1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"header1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"header1-1024x679.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:679;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"header1-958x635.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (1015,355,'_wp_attached_file','2014/05/logo_silver.gif');
INSERT INTO `wp_postmeta` VALUES (1016,355,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:153;s:6:\"height\";i:64;s:4:\"file\";s:23:\"2014/05/logo_silver.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo_silver-150x64.gif\";s:5:\"width\";i:150;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (1017,13,'_edit_lock','1399937007:2');
INSERT INTO `wp_postmeta` VALUES (1018,356,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1019,356,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1020,356,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (1021,356,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1022,356,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1023,356,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1024,356,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1025,356,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1027,356,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1028,281,'_edit_lock','1399941168:2');
INSERT INTO `wp_postmeta` VALUES (1029,281,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1030,281,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1031,281,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1032,281,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1033,281,'imic_latest_sermon_events_to_show_on','letest_sermon');
INSERT INTO `wp_postmeta` VALUES (1034,281,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1035,281,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1036,357,'_wp_attached_file','2014/02/hope.jpg');
INSERT INTO `wp_postmeta` VALUES (1037,357,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1067;s:4:\"file\";s:16:\"2014/02/hope.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hope-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hope-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hope-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"hope-958x638.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:638;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (1055,358,'_wp_attached_file','2014/02/prwebphoto.jpg');
INSERT INTO `wp_postmeta` VALUES (1056,358,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:5162;s:6:\"height\";i:3424;s:4:\"file\";s:22:\"2014/02/prwebphoto.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"prwebphoto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"prwebphoto-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"prwebphoto-1024x679.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:679;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"prwebphoto-958x635.jpg\";s:5:\"width\";i:958;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:3.5;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T3i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1327402471;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (1058,281,'imic_slider_image','354');
INSERT INTO `wp_postmeta` VALUES (1059,281,'imic_slider_image','358');
INSERT INTO `wp_postmeta` VALUES (1060,281,'imic_slider_image','60');
INSERT INTO `wp_postmeta` VALUES (1064,359,'_edit_lock','1399894197:2');
INSERT INTO `wp_postmeta` VALUES (1065,359,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1066,129,'_edit_lock','1399894373:2');
INSERT INTO `wp_postmeta` VALUES (1067,359,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1068,359,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1069,359,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1070,359,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1071,359,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1072,359,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1073,359,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1074,359,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1075,359,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1076,359,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1077,360,'_edit_lock','1399894277:2');
INSERT INTO `wp_postmeta` VALUES (1078,360,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1079,360,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1080,360,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1081,360,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1082,360,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1083,360,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1084,360,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1085,360,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1086,360,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1087,360,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1088,360,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1089,361,'_edit_lock','1399896950:2');
INSERT INTO `wp_postmeta` VALUES (1090,361,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1091,361,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (1092,361,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1093,361,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1094,361,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1095,361,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1096,361,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1097,361,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1098,361,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1099,361,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1100,361,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1101,362,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1102,362,'_menu_item_menu_item_parent','330');
INSERT INTO `wp_postmeta` VALUES (1103,362,'_menu_item_object_id','361');
INSERT INTO `wp_postmeta` VALUES (1104,362,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1105,362,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1106,362,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1107,362,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1108,362,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1110,362,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1111,363,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1112,363,'_menu_item_menu_item_parent','330');
INSERT INTO `wp_postmeta` VALUES (1113,363,'_menu_item_object_id','360');
INSERT INTO `wp_postmeta` VALUES (1114,363,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1115,363,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1116,363,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1117,363,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1118,363,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1120,363,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1121,364,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1122,364,'_menu_item_menu_item_parent','330');
INSERT INTO `wp_postmeta` VALUES (1123,364,'_menu_item_object_id','359');
INSERT INTO `wp_postmeta` VALUES (1124,364,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1125,364,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1126,364,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1127,364,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1128,364,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1130,364,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1131,366,'_edit_lock','1399937037:2');
INSERT INTO `wp_postmeta` VALUES (1132,366,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1133,366,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1134,366,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1135,366,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1136,366,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1137,366,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1138,366,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1139,366,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1140,366,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1141,366,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1142,366,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1143,367,'_edit_lock','1399937346:2');
INSERT INTO `wp_postmeta` VALUES (1144,367,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1145,368,'_edit_lock','1399937271:2');
INSERT INTO `wp_postmeta` VALUES (1146,368,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1147,368,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1148,368,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1149,368,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1150,368,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1151,368,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1152,368,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1153,368,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1154,368,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1155,368,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1156,368,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1157,369,'_edit_lock','1399941320:2');
INSERT INTO `wp_postmeta` VALUES (1158,369,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1159,369,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1160,369,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1161,369,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1162,369,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1163,369,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1164,369,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1165,369,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1166,369,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1167,369,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1168,369,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1169,370,'_edit_lock','1399937347:2');
INSERT INTO `wp_postmeta` VALUES (1170,370,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1171,370,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1172,370,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1173,370,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1174,370,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1175,370,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1176,370,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1177,370,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1178,370,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1179,370,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1180,370,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1181,371,'_edit_lock','1399937384:2');
INSERT INTO `wp_postmeta` VALUES (1182,371,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1183,371,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1184,371,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1185,371,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1186,371,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1187,371,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1188,371,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1189,371,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1190,371,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1191,371,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1192,371,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1193,372,'_edit_lock','1399937423:2');
INSERT INTO `wp_postmeta` VALUES (1194,372,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1195,372,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1196,372,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1197,372,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1198,372,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1199,372,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1200,372,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1201,372,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1202,372,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1203,372,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1204,372,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1205,373,'_edit_lock','1399937480:2');
INSERT INTO `wp_postmeta` VALUES (1206,373,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1207,373,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1208,373,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1209,373,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1210,373,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1211,373,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1212,373,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1213,373,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1214,373,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1215,373,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1216,373,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1217,374,'_edit_lock','1399937522:2');
INSERT INTO `wp_postmeta` VALUES (1218,374,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1219,374,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1220,374,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1221,374,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1222,374,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1223,374,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1224,374,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1225,374,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1226,374,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1227,374,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1228,374,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1229,375,'_edit_lock','1399937564:2');
INSERT INTO `wp_postmeta` VALUES (1230,375,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1231,375,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1232,375,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1233,375,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1234,375,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1235,375,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1236,375,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1237,375,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1238,375,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1239,375,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1240,375,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1241,376,'_edit_lock','1399937618:2');
INSERT INTO `wp_postmeta` VALUES (1242,376,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1243,376,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1244,376,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1245,376,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1246,376,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1247,376,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1248,376,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1249,376,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1250,376,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1251,376,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1252,376,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1253,377,'_edit_lock','1399937710:2');
INSERT INTO `wp_postmeta` VALUES (1254,377,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1255,377,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1256,377,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1257,377,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1258,377,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1259,377,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1260,377,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1261,377,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1262,377,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1263,377,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1264,377,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1265,378,'_edit_lock','1399937895:2');
INSERT INTO `wp_postmeta` VALUES (1266,378,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1267,378,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1268,378,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1269,378,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1270,378,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1271,378,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1272,378,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1273,378,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1274,378,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1275,378,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1276,378,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1277,379,'_edit_lock','1399937793:2');
INSERT INTO `wp_postmeta` VALUES (1278,379,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1279,379,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1280,379,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1281,379,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1282,379,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1283,379,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1284,379,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1285,379,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1286,379,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1287,379,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1288,379,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1289,380,'_edit_lock','1399937819:2');
INSERT INTO `wp_postmeta` VALUES (1290,380,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1291,380,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1292,380,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1293,380,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1294,380,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1295,380,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1296,380,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1297,380,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1298,380,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1299,380,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1300,380,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1301,381,'_edit_lock','1399937852:2');
INSERT INTO `wp_postmeta` VALUES (1302,381,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1303,381,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1304,381,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1305,381,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1306,381,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1307,381,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1308,381,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1309,381,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1310,381,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1311,381,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1312,381,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1313,382,'_edit_lock','1399937887:2');
INSERT INTO `wp_postmeta` VALUES (1314,382,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1315,382,'_wp_page_template','template-fullwidth.php');
INSERT INTO `wp_postmeta` VALUES (1316,382,'imic_contact_email','jeff@jeffdouglas.com');
INSERT INTO `wp_postmeta` VALUES (1317,382,'imic_contact_map_display','no');
INSERT INTO `wp_postmeta` VALUES (1318,382,'imic_slider_pagination','yes');
INSERT INTO `wp_postmeta` VALUES (1319,382,'imic_slider_auto_slide','yes');
INSERT INTO `wp_postmeta` VALUES (1320,382,'imic_slider_direction_arrows','yes');
INSERT INTO `wp_postmeta` VALUES (1321,382,'imic_slider_effects','fade');
INSERT INTO `wp_postmeta` VALUES (1322,382,'imic_latest_sermon_events_to_show_on','letest_event');
INSERT INTO `wp_postmeta` VALUES (1323,382,'imic_category_to_show_on_home','a:1:{i:0;s:1:\"7\";}');
INSERT INTO `wp_postmeta` VALUES (1324,382,'imic_number_of_post_cat','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (1325,383,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1326,383,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1327,383,'_menu_item_object_id','366');
INSERT INTO `wp_postmeta` VALUES (1328,383,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1329,383,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1330,383,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1331,383,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1332,383,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1334,383,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1335,384,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1336,384,'_menu_item_menu_item_parent','383');
INSERT INTO `wp_postmeta` VALUES (1337,384,'_menu_item_object_id','371');
INSERT INTO `wp_postmeta` VALUES (1338,384,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1339,384,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1340,384,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1341,384,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1342,384,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1344,384,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1355,386,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1356,386,'_menu_item_menu_item_parent','383');
INSERT INTO `wp_postmeta` VALUES (1357,386,'_menu_item_object_id','370');
INSERT INTO `wp_postmeta` VALUES (1358,386,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1359,386,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1360,386,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1361,386,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1362,386,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1364,386,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1365,387,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1366,387,'_menu_item_menu_item_parent','383');
INSERT INTO `wp_postmeta` VALUES (1367,387,'_menu_item_object_id','368');
INSERT INTO `wp_postmeta` VALUES (1368,387,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1369,387,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1370,387,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1371,387,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1372,387,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1374,387,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1375,388,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1376,388,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1377,388,'_menu_item_object_id','372');
INSERT INTO `wp_postmeta` VALUES (1378,388,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1379,388,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1380,388,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1381,388,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1382,388,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1384,388,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1385,389,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1386,389,'_menu_item_menu_item_parent','388');
INSERT INTO `wp_postmeta` VALUES (1387,389,'_menu_item_object_id','375');
INSERT INTO `wp_postmeta` VALUES (1388,389,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1389,389,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1390,389,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1391,389,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1392,389,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1394,389,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1395,390,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1396,390,'_menu_item_menu_item_parent','388');
INSERT INTO `wp_postmeta` VALUES (1397,390,'_menu_item_object_id','373');
INSERT INTO `wp_postmeta` VALUES (1398,390,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1399,390,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1400,390,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1401,390,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1402,390,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1404,390,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1405,391,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1406,391,'_menu_item_menu_item_parent','388');
INSERT INTO `wp_postmeta` VALUES (1407,391,'_menu_item_object_id','374');
INSERT INTO `wp_postmeta` VALUES (1408,391,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1409,391,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1410,391,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1411,391,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1412,391,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1414,391,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1415,392,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1416,392,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1417,392,'_menu_item_object_id','376');
INSERT INTO `wp_postmeta` VALUES (1418,392,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1419,392,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1420,392,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1421,392,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1422,392,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1424,392,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1425,393,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1426,393,'_menu_item_menu_item_parent','392');
INSERT INTO `wp_postmeta` VALUES (1427,393,'_menu_item_object_id','377');
INSERT INTO `wp_postmeta` VALUES (1428,393,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1429,393,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1430,393,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1431,393,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1432,393,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1434,393,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1435,394,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1436,394,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1437,394,'_menu_item_object_id','378');
INSERT INTO `wp_postmeta` VALUES (1438,394,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1439,394,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1440,394,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1441,394,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1442,394,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1444,394,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1445,395,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1446,395,'_menu_item_menu_item_parent','394');
INSERT INTO `wp_postmeta` VALUES (1447,395,'_menu_item_object_id','382');
INSERT INTO `wp_postmeta` VALUES (1448,395,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1449,395,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1450,395,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1451,395,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1452,395,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1454,395,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1455,396,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1456,396,'_menu_item_menu_item_parent','394');
INSERT INTO `wp_postmeta` VALUES (1457,396,'_menu_item_object_id','381');
INSERT INTO `wp_postmeta` VALUES (1458,396,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1459,396,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1460,396,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1461,396,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1462,396,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1464,396,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1465,397,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1466,397,'_menu_item_menu_item_parent','394');
INSERT INTO `wp_postmeta` VALUES (1467,397,'_menu_item_object_id','380');
INSERT INTO `wp_postmeta` VALUES (1468,397,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1469,397,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1470,397,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1471,397,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1472,397,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1474,397,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1475,398,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1476,398,'_menu_item_menu_item_parent','394');
INSERT INTO `wp_postmeta` VALUES (1477,398,'_menu_item_object_id','379');
INSERT INTO `wp_postmeta` VALUES (1478,398,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1479,398,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1480,398,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1481,398,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1482,398,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1484,398,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1485,399,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1486,399,'_menu_item_menu_item_parent','394');
INSERT INTO `wp_postmeta` VALUES (1487,399,'_menu_item_object_id','283');
INSERT INTO `wp_postmeta` VALUES (1488,399,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1489,399,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1490,399,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1491,399,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1492,399,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1494,399,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1530,402,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (1531,402,'_menu_item_menu_item_parent','383');
INSERT INTO `wp_postmeta` VALUES (1532,402,'_menu_item_object_id','402');
INSERT INTO `wp_postmeta` VALUES (1533,402,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (1534,402,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1535,402,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1536,402,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1537,402,'_menu_item_url','/press-releases');
INSERT INTO `wp_postmeta` VALUES (1539,402,'_menu_is_mega','0');
INSERT INTO `wp_postmeta` VALUES (1552,4,'_wp_trash_meta_status','expired');
INSERT INTO `wp_postmeta` VALUES (1553,4,'_wp_trash_meta_time','1407386220');
INSERT INTO `wp_postmeta` VALUES (1554,404,'_edit_lock','1408319125:2');
INSERT INTO `wp_postmeta` VALUES (1555,404,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1557,404,'imic_gallery_audio_display','1');
INSERT INTO `wp_postmeta` VALUES (1559,170,'_edit_lock','1408318477:2');
INSERT INTO `wp_postmeta` VALUES (1560,170,'imic_gallery_audio_display','1');
INSERT INTO `wp_postmeta` VALUES (1561,124,'_edit_lock','1408318490:2');
INSERT INTO `wp_postmeta` VALUES (1562,141,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1563,141,'_wp_trash_meta_time','1408318671');
INSERT INTO `wp_postmeta` VALUES (1564,124,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1565,124,'_wp_trash_meta_time','1408318671');
INSERT INTO `wp_postmeta` VALUES (1566,272,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1567,272,'_wp_trash_meta_time','1408318671');
INSERT INTO `wp_postmeta` VALUES (1568,269,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1569,269,'_wp_trash_meta_time','1408318671');
INSERT INTO `wp_postmeta` VALUES (1570,170,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (1571,170,'_wp_trash_meta_time','1408318709');
INSERT INTO `wp_postmeta` VALUES (1572,170,'_wp_trash_meta_comments_status','a:4:{i:10;s:1:\"0\";i:11;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"0\";}');
INSERT INTO `wp_postmeta` VALUES (1573,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (1574,1,'_wp_trash_meta_time','1408318709');
INSERT INTO `wp_postmeta` VALUES (1575,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (1576,405,'_edit_lock','1408319499:2');
INSERT INTO `wp_postmeta` VALUES (1577,405,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1579,405,'imic_gallery_audio_display','1');
INSERT INTO `wp_postmeta` VALUES (1580,406,'_wp_attached_file','2014/07/vet-betp.jpg');
INSERT INTO `wp_postmeta` VALUES (1581,406,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:262;s:6:\"height\";i:260;s:4:\"file\";s:20:\"2014/07/vet-betp.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vet-betp-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (1583,404,'_thumbnail_id','406');
INSERT INTO `wp_postmeta` VALUES (1586,407,'_wp_attached_file','2014/07/veterans-fair1.jpg');
INSERT INTO `wp_postmeta` VALUES (1587,407,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:26:\"2014/07/veterans-fair1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"veterans-fair1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"veterans-fair1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:4;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 60D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1403791468;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"34\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:15:\"0.0166666666667\";s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (1588,408,'_wp_attached_file','2014/07/veterans-fair2.jpg');
INSERT INTO `wp_postmeta` VALUES (1589,408,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:333;s:6:\"height\";i:500;s:4:\"file\";s:26:\"2014/07/veterans-fair2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"veterans-fair2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"veterans-fair2-199x300.jpg\";s:5:\"width\";i:199;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:4;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 60D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1366975777;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"34\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:15:\"0.0166666666667\";s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (1592,405,'_thumbnail_id','407');
INSERT INTO `wp_postmeta` VALUES (1594,410,'_edit_lock','1408320102:2');
INSERT INTO `wp_postmeta` VALUES (1595,410,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (1596,411,'_wp_attached_file','2014/08/tacloban1.jpg');
INSERT INTO `wp_postmeta` VALUES (1597,411,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:368;s:4:\"file\";s:21:\"2014/08/tacloban1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tacloban1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tacloban1-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:12:\"ROMEO RANOCO\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:20:\"PHILIPPINES-TYPHOON/\";}}');
INSERT INTO `wp_postmeta` VALUES (1600,413,'_wp_attached_file','2014/08/tacloban6.jpg');
INSERT INTO `wp_postmeta` VALUES (1601,413,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:448;s:4:\"file\";s:21:\"2014/08/tacloban6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tacloban6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tacloban6-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:2.399999999999999911182158029987476766109466552734375;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"iPad\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1395835479;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.28\";s:3:\"iso\";s:2:\"50\";s:13:\"shutter_speed\";s:17:\"0.000859845227859\";s:5:\"title\";s:0:\"\";}}');
INSERT INTO `wp_postmeta` VALUES (1603,410,'imic_gallery_audio_display','1');
INSERT INTO `wp_postmeta` VALUES (1604,410,'_thumbnail_id','411');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2014-01-23 21:54:49','2014-01-23 21:54:49','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','trash','open','open','','hello-world','','','2014-08-17 23:38:29','2014-08-17 23:38:29','',0,'http://medisend.wpengine.com/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2014-01-23 21:54:49','2014-01-23 21:54:49','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://medisend.wpengine.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2014-01-23 21:54:49','2014-01-23 21:54:49','',0,'http://medisend.wpengine.com/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,2,'2014-04-10 20:43:40','2014-04-10 20:43:40','<p><b>Summary</b></p>\r\n<p><p>Applicants are invited for a full-time position at the level of Assistant Professor or Instructor in Biomedical Equipment Technology at MediSend International&rsquo;s Global Education Center. The successful candidate will provide academic instruction, research and leadership for students participating in the Biomedical Equipment Technology Program and is expected to demonstrate strong commitment to excellence in graduate education and the capability for establishing a strong educational program. </p></p>\r\n<p><strong>Responsibilities</strong></p>\r\n<ul><li>Conduct classes and teach students the relevant biomedical technology subjects to BMET students, with emphasis on installation, operation, engineering principles, troubleshooting and repair of general biomedical equipment, imaging modalities and clinical laboratory equipment. </li><li>Assist in preparing and developing the curriculum. </li><li>Modify and keep current course curriculum, laboratory procedures and demonstrations for a continuing education program that addresses the safe and effective use of medical equipment.\r\n</li><li>Perform administrative and supervisory work associated with the department. </li><li>Provide expert advice, consultation and guidance in biomedical engineering matters and support field activities as requested by management.\r\n</li><li>Maintain current knowledge of competitive technologies in addition to medical, technical and biomedical developments related to medical products. </li><li>Other duties as assigned </li></ul>\r\n<p><strong>Requirements</strong></p>\r\n<ul> <li>Minimum of three (3) years experience teaching and training in biomedical engineering technology or related subjects.\r\n</li><li>Minimum of five (5) years experience in the area of clinical engineering or biomedical engineering or medical physics.\r\n</li><li>Minimum of two (2) year post-graduate experience in related field. </li><li>Experience with complex medical instrumentation. </li><li>Applicant must hold a Master&rsquo;s Degree in Biomedical Engineering, Clinical Engineering, Electrical Engineering, Applied Physics, or a closely related field. A doctoral degree in Engineering, Applied Physics, or equivalent is highly preferred.\r\n</li><li>Certification as a Clinical Engineer, Medical Physicist or Professional Engineer would be a plus.\r\n</li><li>Advanced computer knowledge, able to diagnose and repair hardware/software problems. </li><li>Knowledge of organizational development, team management and technical, medical and financial subjects are required. </li><li>Strong written and verbal communication skills are required. </li><li>Excellent presentation and public speaking skills are required. </li><li>Must have, or be capable of receiving, vaccinations recommended by CDC.\r\n</li></ul>\r\n<p>Applicants must submit all of the following to <a href=\"mailto:employment@medisend.org\">employment@medisend.org</a> to be considered for this position:</p> <ol><li>A letter of application addressing how the applicant meets the qualifications and responsibilities, and addressing the applicant&rsquo;s philosophy of teaching. </li><li>A detailed r&eacute;sum&eacute; or a current curriculum vita that emphasizes educational preparation, professional experience, and abilities related to the position.</li></ol>\r\n</p>','Assistant Professor or Instructor','','trash','closed','closed','','assistant-professor-or-instructor','','','2014-08-07 04:37:00','2014-08-07 04:37:00','',0,'http://medisend.wpengine.com/?post_type=job_listing&#038;p=4',0,'job_listing','',0);
INSERT INTO `wp_posts` VALUES (7,2,'2014-04-10 20:56:03','2014-04-10 20:56:03','<p>Essah Mawutohou Emmanuel is returning to the Africa Mercy, the humanitarian hospital ship moored off the west coast of Africa, where he will maintain and repair essential medical equipment on-board, thanks to training at <a href=\"http://www.medisend.org\">MediSend International</a>. The floating hospital includes five state-of-the-art operating rooms, as well as intensive care and ward bed space for up to 82 patients. The charity <a href=\"http://www.mercyships.org\">Mercy Ships</a> (parent to Africa Mercy) sponsored Emmanuel\'s six-month biomedical equipment repair training at MediSend in Dallas, Texas. He recently graduated as valedictorian of the Fall 2013 MediSend Biomedical Equipment Technology Program&trade;. </p>\r\n\r\n<p><a href=\"http://www.youtube.com/watch?v=5XoacP2XrnE&feature=youtu.be\" target=\"_blank\">Watch Emmanuel\'s video.</a></p>\r\n\r\n<p>\"Emmanuel will be an important addition to the life-saving, life-changing work being performed every day on the Africa Mercy. We are proud to return him to the ship as a competent, professionally trained biomedical equipment repair technician,\" said Nick Hallack, President and CEO of MediSend International.</p>\r\n\r\n<p>Emmanuel is now capable of managing a biomedical repair laboratory as well as maintaining and repairing the often life-saving equipment. His proficiency will mean that vital equipment onboard the Africa Mercy can be repaired immediately rather than waiting for technicians to come from long distances at great expense. </p>\r\n\r\n<p>Emmanuel returns to the Africa Mercy with MediSend\'s Mobile Biomedical Equipment Test and Repair Kit&trade; that contains over 4000 laboratory supply items, including essential repair tools and state-of-the-art test and calibration equipment, enabling him to begin immediately accomplishing critical tasks.</p>\r\n\r\n<p>\"We are so pleased to have sponsored Emmanuel for MediSend\'s extensive training program.   Emmanuel\'s commitment to learning and to serving can be seen in his dedication. Emmanuel will serve on board the Africa Mercy for three years assisting in the maintenance of our hospital equipment.  Ultimately Emmanuel plans to return to Benin with the hope of making a long term difference in his community,\" said Becky Bynum, Mercy Ships Health Care Services Director.</p>\r\n\r\n<p>MediSend and Mercy Ships, both Texas-based humanitarian organizations, are committed to furnishing access to quality medical care as the key to providing desperately needed hope and healing worldwide.</p>\r\n\r\n<p><strong>About MediSend</strong><br/>\r\nMediSend offers critical healthcare support to communities in the greatest need by combining education and training and the delivery of safe and appropriate medical supplies and equipment. Since 2007 MediSend has trained over 100 biomedical equipment repair technicians for developing country hospitals and clinics in 18 countries worldwide and provided them with necessary tools and equipment to open and manage a biomedical equipment repair laboratory. In 2013, MediSend launched the General Richard B. Myers Veterans Biomedical Technology Program&trade; to offer its comprehensive training program and job opportunities to returning US veterans. For more information, go to <a href=\"http://www.medisend.org\">www.medisend.org</a>.<p>\r\n\r\n<p><strong>About Mercy Ships</strong><br/>\r\nMercy Ships uses hospital ships to deliver free, world-class healthcare services, capacity building and sustainable development to those without access in the developing world. Founded in 1978 by Don and Deyon Stephens, Mercy Ships has worked in more than 70 countries providing services valued at more than $1 billion, impacting more than 2.42 million direct beneficiaries. Each year Mercy Ships has more than 1,600 volunteers from more than 45 nations. Professionals including surgeons, dentists, nurses, healthcare trainers, teachers, cooks, seamen, engineers, and agriculturalists donate their time and skills to the effort. Mercy Ships seeks to transform individuals and serve nations one at a time. For more information click on <a href=\"http://www.mercyships.org\">www.mercyships.org</a>.</p>','MediSend and Mercy Ships Partner for the Africa Mercy','','publish','open','open','','medisend-and-mercy-ships-partner-for-the-africa-mercy','','','2014-04-10 20:56:03','2014-04-10 20:56:03','',0,'http://medisend.wpengine.com/?post_type=press-release&#038;p=7',0,'press-release','',0);
INSERT INTO `wp_posts` VALUES (10,2,'2014-04-10 20:59:29','2014-04-10 20:59:29','<table cellspacing=\"1\" cellpadding=\"1\">\r\n<tr>\r\n<td><strong><a href=\"mailto:nick.hallack@medisend.org\">Nick Hallack, MBA</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>President & CEO</td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:costel.rizescu@medisend.org\">Costel Rizescu, PhD</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Vice President, Biomedical Technology School</td>\r\n</tr>\r\n<tr>\r\n<td><em>Biomedical Equipment Technology School</em></td>\r\n</tr>\r\n<tr>\r\n<td>Director, Biomedical Equipment Technology School</td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:whitney.brookins@medisend.org\">Whitney Brookins, MSPH, MHA</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Manager</td>\r\n</tr>\r\n<tr>\r\n<td><em>Admissions and International Programs</em></td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:belinda.minyard@medisend.org\">Belinda Minyard</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Manager, Student Services</td>\r\n</tr>\r\n<tr>\r\n<td><em>Biomedical Equipment Technology School</em></td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:stephanie.pedroza@medisend.org\">Stephanie Pedroza</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Manager</td>\r\n</tr>\r\n<tr>\r\n<td><em>Accounting and HR</em></td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:jeff.douglas@medisend.org\">Jeff Douglas, MBA</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>IT Director</td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:terry.bracewell@medisend.org\">Terry Bracewell, CBET, CIT</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Instructor</td>\r\n</tr>\r\n<tr>\r\n<td><em>Biomedical Equipment Technology School</em></td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:shradha.prabhulkar@medisend.org\">Shradha Prabhulkar, PhD.</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Teaching Assistant </td>\r\n</tr>\r\n<tr>\r\n<td><em>Biomedical Equipment Technology School </em></td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:thanuja.alapati@medisend.org\">Thanuja Alapati, M.S.E.</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Teaching Assistant </td>\r\n</tr>\r\n<tr>\r\n<td><em>Biomedical Equipment Technology School </em></td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:james.howard@medisend.org\">James M. Howard, MD</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Instructor </td>\r\n</tr>\r\n<tr>\r\n<td><em>Biomedical Equipment Technology School</em></td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:louann.york@medisend.org\">Lou Ann York</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Communications</td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:dritan.voshtina@medisend.org\">Dritan Voshtina</a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>IT Manager</td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n<tr>\r\n<td><strong><a href=\"mailto:stephen.williams@medisend.org\">Stephen Williams </a></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Distribution Associate</td>\r\n</tr>\r\n<tr>\r\n<td><em>Warehouse</em></td>\r\n</tr>\r\n<tr>\r\n<td><br></td>\r\n</tr>\r\n</table>\r\n','Staff','','publish','open','open','','staff','','','2014-04-10 20:59:29','2014-04-10 20:59:29','',0,'http://medisend.wpengine.com/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,2,'2014-02-28 06:54:46','2014-02-28 06:54:46','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.\n<h3>Our Staff Members</h3>\n[staff number=\"3\"]','About Us','','publish','open','open','','about-us','','','2014-02-28 06:54:46','2014-02-28 06:54:46','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,2,'2014-02-28 06:55:03','2014-02-28 06:55:03','','Features','','publish','open','open','','features','','','2014-02-28 06:55:03','2014-02-28 06:55:03','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,2,'2014-02-28 06:55:22','2014-02-28 06:55:22','','Events','','publish','open','open','','events','','','2014-02-28 06:55:22','2014-02-28 06:55:22','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,2,'2014-02-28 06:55:51','2014-02-28 06:55:51','','Sermons','','publish','open','open','','sermons','','','2014-02-28 06:55:51','2014-02-28 06:55:51','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,2,'2014-02-28 06:56:09','2014-02-28 06:56:09','','Gallery 2 Columns Pagination','','publish','open','open','','gallery-2-columns-pagination','','','2014-02-28 06:56:09','2014-02-28 06:56:09','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,2,'2014-02-28 06:56:26','2014-02-28 06:56:26','','Blog','','publish','open','open','','blog','','','2014-02-28 06:56:26','2014-02-28 06:56:26','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,2,'2014-02-28 06:56:41','2014-02-28 06:56:41','','Contact','','publish','open','open','','contact','','','2014-02-28 06:56:41','2014-02-28 06:56:41','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (47,2,'2014-02-28 09:21:52','2014-02-28 09:21:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.','Ethan Kay','','publish','closed','closed','','ethan-kay','','','2014-02-28 09:21:52','2014-02-28 09:21:52','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=staff&amp;p=47',0,'staff','',0);
INSERT INTO `wp_posts` VALUES (48,2,'2014-02-28 09:22:19','2014-02-28 09:22:19','','staff3','','inherit','open','open','','staff3','','','2014-02-28 09:22:19','2014-02-28 09:22:19','',47,'http://medisend.wpengine.com/wp-content/uploads/2014/02/staff3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (49,2,'2014-02-28 09:23:15','2014-02-28 09:23:15','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.','Francisc Cazan','','publish','closed','closed','','francisc-cazan','','','2014-02-28 09:23:15','2014-02-28 09:23:15','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=staff&amp;p=49',0,'staff','',0);
INSERT INTO `wp_posts` VALUES (50,2,'2014-02-28 09:22:54','2014-02-28 09:22:54','','staff2','','inherit','open','open','','staff2','','','2014-02-28 09:22:54','2014-02-28 09:22:54','',49,'http://medisend.wpengine.com/wp-content/uploads/2014/02/staff2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (51,2,'2014-02-28 09:24:02','2014-02-28 09:24:02','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.','Melina Mironescu','','publish','closed','closed','','melina-mironescu','','','2014-02-28 09:24:02','2014-02-28 09:24:02','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=staff&amp;p=51',0,'staff','',0);
INSERT INTO `wp_posts` VALUES (52,2,'2014-02-28 09:23:43','2014-02-28 09:23:43','','staff1','','inherit','open','open','','staff1','','','2014-02-28 09:23:43','2014-02-28 09:23:43','',51,'http://medisend.wpengine.com/wp-content/uploads/2014/02/staff1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (56,2,'2014-02-28 11:05:16','2014-02-28 11:05:16','','slide2[1]','','inherit','open','open','','slide21','','','2014-02-28 11:05:16','2014-02-28 11:05:16','',13,'http://medisend.wpengine.com/wp-content/uploads/2014/02/slide21.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (59,2,'2014-02-28 12:50:41','2014-02-28 12:50:41','','slide1[1]','','inherit','open','open','','slide11','','','2014-02-28 12:50:41','2014-02-28 12:50:41','',281,'http://medisend.wpengine.com/wp-content/uploads/2014/02/slide11.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (60,2,'2014-02-28 12:50:58','2014-02-28 12:50:58','','slide2[1]','','inherit','open','open','','slide21-2','','','2014-02-28 12:50:58','2014-02-28 12:50:58','',281,'http://medisend.wpengine.com/wp-content/uploads/2014/02/slide211.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,2,'2014-03-01 06:00:54','2014-03-01 06:00:54','','Format Video1','','publish','closed','closed','','format-video1','','','2014-03-01 06:00:54','2014-03-01 06:00:54','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=gallery&amp;p=69',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (70,2,'2014-03-01 06:49:00','2014-03-01 06:49:00','','gallery-img3','','inherit','open','open','','gallery-img3','','','2014-03-01 06:49:00','2014-03-01 06:49:00','',69,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,2,'2014-03-01 06:50:06','2014-03-01 06:50:06','','gallery-img1','','inherit','open','open','','gallery-img1','','','2014-03-01 06:50:06','2014-03-01 06:50:06','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,2,'2014-03-01 06:51:30','2014-03-01 06:51:30','','Format Video2','','publish','closed','closed','','format-video2','','','2014-03-01 06:51:30','2014-03-01 06:51:30','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=gallery&amp;p=73',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (74,2,'2014-03-01 06:51:26','2014-03-01 06:51:26','','staff','','inherit','open','open','','staff-2','','','2014-03-01 06:51:26','2014-03-01 06:51:26','',73,'http://medisend.wpengine.com/wp-content/uploads/2014/03/staff.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,2,'2014-03-01 06:58:47','2014-03-01 06:58:47','','Format Image1','','publish','closed','closed','','format-image1','','','2014-03-01 06:58:47','2014-03-01 06:58:47','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=gallery&amp;p=75',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (76,2,'2014-03-01 06:56:44','2014-03-01 06:56:44','','gallery-img3','','inherit','open','open','','gallery-img3-2','','','2014-03-01 06:56:44','2014-03-01 06:56:44','',69,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img31.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,2,'2014-03-01 06:57:21','2014-03-01 06:57:21','','gallery-img1','','inherit','open','open','','gallery-img1-2','','','2014-03-01 06:57:21','2014-03-01 06:57:21','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img11.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,2,'2014-03-01 06:58:01','2014-03-01 06:58:01','','staff','','inherit','open','open','','staff-2-2','','','2014-03-01 06:58:01','2014-03-01 06:58:01','',73,'http://medisend.wpengine.com/wp-content/uploads/2014/03/staff1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,2,'2014-03-01 06:58:42','2014-03-01 06:58:42','','sermons','','inherit','open','open','','sermons-2','','','2014-03-01 06:58:42','2014-03-01 06:58:42','',75,'http://medisend.wpengine.com/wp-content/uploads/2014/03/sermons.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,2,'2014-03-02 07:01:54','2014-03-01 20:01:54','','Format Gallery1','','publish','closed','closed','','format-gallery1','','','2014-03-02 07:01:54','2014-03-01 20:01:54','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=gallery&amp;p=82',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (83,2,'2014-03-01 07:01:19','2014-03-01 07:01:19','','gallery-img2','','inherit','open','open','','gallery-img2','','','2014-03-01 07:01:19','2014-03-01 07:01:19','',82,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (85,2,'2014-03-01 07:03:03','2014-03-01 07:03:03','','Format Image2','','publish','closed','closed','','format-image2','','','2014-03-01 07:03:03','2014-03-01 07:03:03','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=gallery&amp;p=85',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (86,2,'2014-03-01 07:02:59','2014-03-01 07:02:59','','newhere','','inherit','open','open','','newhere','','','2014-03-01 07:02:59','2014-03-01 07:02:59','',85,'http://medisend.wpengine.com/wp-content/uploads/2014/03/newhere.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,2,'2014-03-01 07:03:55','2014-03-01 07:03:55','','Format Image3','','publish','closed','closed','','format-image3','','','2014-03-01 07:03:55','2014-03-01 07:03:55','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=gallery&amp;p=87',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (89,2,'2014-03-01 09:44:49','2014-03-01 09:44:49','','Format Link1','','publish','closed','closed','','format-link1','','','2014-03-01 09:44:49','2014-03-01 09:44:49','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=gallery&amp;p=89',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (90,2,'2014-03-01 09:45:09','2014-03-01 09:45:09','','gallery-img1','','inherit','open','open','','gallery-img1-3','','','2014-03-01 09:45:09','2014-03-01 09:45:09','',89,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img12.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,2,'2014-03-01 09:57:33','2014-03-01 09:57:33','','blog-image3','','inherit','open','open','','blog-image3','','','2014-03-01 09:57:33','2014-03-01 09:57:33','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/blog-image3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (93,2,'2014-03-01 10:05:15','2014-03-01 10:05:15','',' Format Link2','','publish','closed','closed','','format-link2','','','2014-03-01 10:05:15','2014-03-01 10:05:15','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?post_type=gallery&amp;p=93',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (94,2,'2014-03-01 10:45:18','2014-03-01 10:45:18','','Gallery 3 Columns Pagination','','publish','open','open','','gallery-3-columns-pagination','','','2014-03-01 10:45:18','2014-03-01 10:45:18','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=94',0,'page','',0);
INSERT INTO `wp_posts` VALUES (96,2,'2014-03-01 10:52:44','2014-03-01 10:52:44','','Gallery 4 Columns Pagination','','publish','open','open','','gallery-4-columns-pagination','','','2014-03-01 10:52:44','2014-03-01 10:52:44','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=96',0,'page','',0);
INSERT INTO `wp_posts` VALUES (98,2,'2014-03-01 11:08:11','2014-03-01 11:08:11','','Gallery 2 Columns Filter','','publish','open','open','','gallery-2-columns-filter','','','2014-03-01 11:08:11','2014-03-01 11:08:11','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=98',0,'page','',0);
INSERT INTO `wp_posts` VALUES (100,2,'2014-03-01 11:30:23','2014-03-01 11:30:23','','Gallery 3 Columns Filter','','publish','open','open','','gallery-3-columns-filter','','','2014-03-01 11:30:23','2014-03-01 11:30:23','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=100',0,'page','',0);
INSERT INTO `wp_posts` VALUES (102,2,'2014-03-01 11:36:43','2014-03-01 11:36:43','','Gallery 4 Columns Filter','','publish','open','open','','gallery-4-columns-filter','','','2014-03-01 11:36:43','2014-03-01 11:36:43','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=102',0,'page','',0);
INSERT INTO `wp_posts` VALUES (113,2,'2014-03-01 12:03:12','2014-03-01 12:03:12','','Gallery Masonry','','publish','open','open','','gallery-masonry','','','2014-03-01 12:03:12','2014-03-01 12:03:12','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=113',0,'page','',0);
INSERT INTO `wp_posts` VALUES (117,2,'2014-03-01 13:08:37','2014-03-01 13:08:37','','Simple','','inherit','open','open','','simple','','','2014-03-01 13:08:37','2014-03-01 13:08:37','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/Simple.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (118,2,'2014-03-03 04:55:09','2014-03-03 04:55:09','\"Song\" from Miaow by Miaow. Released: 2003. Genre: Trip-Hop.','Song','','inherit','open','open','','song','','','2014-03-03 04:55:09','2014-03-03 04:55:09','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/Miaow-02-Hidden.mp3',0,'attachment','audio/mpeg',0);
INSERT INTO `wp_posts` VALUES (123,2,'2014-03-03 13:44:44','2014-03-03 13:44:44','','sample-pdf','','inherit','open','open','','sample-pdf','','','2014-03-03 13:44:44','2014-03-03 13:44:44','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/sample-pdf.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (124,2,'2014-03-03 13:52:14','2014-03-03 02:52:14','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Aliquam pellentesque pellentesque turpis, ut bibendum sapien sollicitudin nec. Pellentesque posuere ornare placerat. Suspendisse potenti. Quisque massa tortor, tristique non tristique at, luctus sed massa. Donec libero eros, mollis ac fringilla eu, vestibulum sed lorem. Aenean aliquet tempor purus, sit amet ultricies neque bibendum venenatis. Suspendisse pulvinar massa sed odio semper mattis. Pellentesque vel nunc arcu, id rhoncus magna. Maecenas quis tempus ligula. Nunc ac tortor diam. Phasellus tincidunt rutrum diam, eget elementum lorem sagittis eget.</p>\n					<h3>Vivamus convallis</h3>\n					<p>Integer faucibus magna vitae augue suscipit a varius sem scelerisque. Nunc scelerisque tempus nunc in euismod. In sagittis congue sodales. Cras sit amet est nibh. Suspendisse eget ligula in nulla iaculis interdum nec a odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras massa odio, facilisis tincidunt blandit semper, lacinia semper dui. Donec viverra eros quis urna congue facilisis. Vivamus convallis imperdiet porta. Aliquam a nisi risus, vitae faucibus sem.</p>\n                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.</p>\n\n\n<blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.</p>\n</blockquote>\n\n','Beautifully Written','','trash','open','open','','post-title','','','2014-08-17 23:37:51','2014-08-17 23:37:51','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?p=124',0,'post','',0);
INSERT INTO `wp_posts` VALUES (126,2,'2014-03-03 13:57:34','2014-03-03 13:57:34','','blog-image2','','inherit','open','open','','blog-image2','','','2014-03-03 13:57:34','2014-03-03 13:57:34','',124,'http://medisend.wpengine.com/wp-content/uploads/2014/03/blog-image2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (129,2,'2014-03-04 04:30:04','2014-03-04 04:30:04','[staff number=\"3\"]','Our Staff','','publish','open','closed','','staff','','','2014-03-04 04:30:04','2014-03-04 04:30:04','',13,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=129',0,'page','',0);
INSERT INTO `wp_posts` VALUES (141,2,'2014-03-04 07:41:46','2014-03-03 20:41:46','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.','Now another title','','trash','open','open','','voluptatum-deleniti-atque-corrupti','','','2014-08-17 23:37:51','2014-08-17 23:37:51','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?p=141',0,'post','',0);
INSERT INTO `wp_posts` VALUES (144,2,'2014-03-04 10:05:17','2014-03-04 10:05:17','','slide1','','inherit','open','open','','slide1','','','2014-03-04 10:05:17','2014-03-04 10:05:17','',19,'http://medisend.wpengine.com/wp-content/uploads/2014/02/slide1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (148,2,'2014-03-04 11:27:50','2014-03-04 11:27:50','','event-img2','','inherit','open','open','','event-img2','','','2014-03-04 11:27:50','2014-03-04 11:27:50','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/event-img2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (149,2,'2014-03-04 11:29:47','2014-03-04 11:29:47','\"Song\" from Miaow by Miaow. Released: 2003. Genre: Trip-Hop.','Song','','inherit','open','open','','song-2','','','2014-03-04 11:29:47','2014-03-04 11:29:47','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/Miaow-02-Hidden1.mp3',0,'attachment','audio/mpeg',0);
INSERT INTO `wp_posts` VALUES (153,2,'2014-03-04 11:34:33','2014-03-04 11:34:33','[one_full extra=\"\" anim=\"\"]\n[container extra=\"calendar\"][/container]\n[/one_full]','Events Calendar','','publish','open','open','','events-calendar','','','2014-03-04 11:34:33','2014-03-04 11:34:33','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=153',0,'page','',0);
INSERT INTO `wp_posts` VALUES (155,2,'2014-03-04 11:34:54','2014-03-04 11:34:54','','Events Grid','','publish','open','open','','events-grid','','','2014-03-04 11:34:54','2014-03-04 11:34:54','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=155',0,'page','',0);
INSERT INTO `wp_posts` VALUES (163,2,'2014-03-04 11:53:07','2014-03-04 11:53:07','[section extra=\"container\"]\n[container extra=\"row\"]\n[one_half extra=\"\" anim=\"\"]\n[heading size=\"h1\" extra=\"\"]H1 heading style[/heading]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[heading size=\"h2\" extra=\"\"]H2 heading style[/heading]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[heading size=\"h3\" extra=\"\"]H3 heading style[/heading]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[heading size=\"h4\" extra=\"\"]H4 heading style[/heading]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[heading size=\"h5\" extra=\"\"]H5 heading style[/heading]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[heading size=\"h6\" extra=\"\"]H6 heading style[/heading]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[/one_half]\n[one_half extra=\"\" anim=\"\"]\n[heading size=\"h2\" extra=\"\"]Blockquote[/heading]\n[blockquote name=\"Author name here\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/blockquote]\n[heading size=\"h2\" extra=\"\"]Labels[/heading]\n[paragraph extra=\"\"][label type=\"label-primary\"]Lorem[/label] ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[paragraph extra=\"\"][label type=\"label-danger\"]Lorem[/label] ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[paragraph extra=\"\"][label type=\"label-info\"]Lorem[/label] ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[paragraph extra=\"\"][label type=\"label-success\"]Lorem[/label] ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[paragraph extra=\"\"][label type=\"label-warning\"]Lorem[/label] ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[heading size=\"h2\" extra=\"\"]Paragraph[/heading]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[/one_half]\n[/container]\n[divider extra=\"\"]\n[container extra=\"row\"]\n[one_full extra=\"\" anim=\"\"]\n[heading size=\"h2\" extra=\"\"]Dropcaps[/heading]\n[/one_full]\n[one_half extra=\"\" anim=\"\"]\n[dropcap type=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/dropcap]\n[/one_half]\n[one_half extra=\"\" anim=\"\"]\n[dropcap type=\"secondary\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/dropcap]\n[/one_half]\n[/container]\n[divider extra=\"\"]\n\n[container extra=\"row\"]\n[one_full extra=\"\"]\n[heading size=\"h2\" extra=\"\"]Lists[/heading]\n[/one_full]\n[/container]\n[container extra=\"row\"]\n[one_half extra=\"\"]\n[heading size=\"h4\" extra=\"\"]Unordered List[/heading]\n[list type=unordered]\n[list_item]Lorem ipsum dolor sit amet[/list_item]\n[list_item]Consectetur adipiscing elit[/list_item]\n[list_item] Integer molestie lorem at massa[/list_item]\n[list_item]Facilisis in pretium nisl aliquet[/list_item]\n[list_item]Nulla volutpat aliquam velit[/list_item]\n[list_item] Phasellus iaculis neque[/list_item]\n[list_item]Purus sodales ultricies[/list_item]\n[list_item]Vestibulum laoreet porttitor sem[/list_item]\n[list_item] Ac tristique libero volutpat at[/list_item]\n[list_item]Faucibus porta lacus fringilla vel[/list_item]\n[list_item]Aenean sit amet erat nunc[/list_item]\n[list_item] Eget porttitor lorem[/list_item]\n[/list]\n[heading size=\"h4\" extra=\"spaced\"]Description List[/heading]\n[list type=desc]\n[list_item_dt]Description lists[/list_item_dt][list_item_dd]A description list is perfect for defining terms.[/list_item_dd]\n[list_item_dt]Euismod[/list_item_dt][list_item_dd]Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.[/list_item_dd][list_item_dd]Donec id elit non mi porta gravida at eget metus.[/list_item_dd]\n[list_item_dt]Malesuada porta[/list_item_dt][list_item_dd]Etiam porta sem malesuada magna mollis euismod.[/list_item_dd]\n[/list]\n[/one_half]\n[one_half extra=\"\"]\n[heading size=\"h4\" extra=\"\"]Ordered List[/heading]\n[list type=ordered]\n[list_item]Facilisis in pretium nisl aliquet[/list_item]\n[list_item]Faucibus porta lacus fringilla vel[/list_item]\n[list_item]Aenean sit amet erat nunc[/list_item]\n[list_item]Eget porttitor lorem[/list_item]\n[list_item]Consectetur adipiscing elit[/list_item]\n[list_item]Integer molestie lorem at massa[/list_item]\n[list_item]Facilisis in pretium nisl aliquet[/list_item]\n[list_item]Faucibus porta lacus fringilla vel[/list_item]\n[list_item]Aenean sit amet erat nunc[/list_item]\n[/list]\n[heading size=\"h4\" extra=\"spaced\"]Icons List[/heading]\n[list type=icon extra=\"hearts\"]\n[list_item icon=\"icon-envelope-alt\" type=\"icon\"]Fusce sit amet orci quis arcu vestibulum vestibulum sed ut felis.[/list_item]\n[list_item icon=\"icon-film\" type=\"icon\"]Phasellus in risus quis lectus iaculis vulputate id quis nisl.[/list_item]\n[/list]\n[list type=icon extra=\"checks\"]\n[list_item icon=\"icon-envelope-alt\" type=\"icon\"]Fusce sit amet orci quis arcu vestibulum vestibulum sed ut felis.[/list_item]\n[list_item icon=\"icon-film\" type=\"icon\"]Phasellus in risus quis lectus iaculis vulputate id quis nisl.[/list_item]\n[/list]\n[list type=icon extra=\"carets\"]\n[list_item icon=\"icon-envelope-alt\" type=\"icon\"]Fusce sit amet orci quis arcu vestibulum vestibulum sed ut felis.[/list_item]\n[list_item icon=\"icon-film\" type=\"icon\"]Phasellus in risus quis lectus iaculis vulputate id quis nisl.[/list_item]\n[/list]\n[list type=icon extra=\"chevrons\"]\n[list_item icon=\"icon-envelope-alt\" type=\"icon\"]Fusce sit amet orci quis arcu vestibulum vestibulum sed ut felis.[/list_item]\n[list_item icon=\"icon-film\" type=\"icon\"]Phasellus in risus quis lectus iaculis vulputate id quis nisl.[/list_item]\n[/list]\n[heading size=\"h4\" extra=\"spaced\"]Inline[/heading]\n[list type=inline extra=]\n[list_item]Lorem ipsum[/list_item]\n[list_item]Phasellus iaculis[/list_item]\n[list_item]Nulla volutpat[/list_item]\n[/list]\n[/one_half]\n[/container]\n[divider extra=\"\"]\n[container extra=\"row\"]\n[one_full extra=\"\" anim=\"\"]\n[heading size=\"h2\" extra=\"\"]Code[/heading]\n[/one_full]\n[/container]\n[container extra=\"row\"]\n[one_half extra=\"\" anim=\"\"]\n[heading size=\"h4\" extra=\"\"]Inline[/heading]\n[paragraph extra=\"\"]For example, [code type=\"inline\"]&lt;section&gt;[/code] should be wrapped as inline.[/paragraph]\n[/one_half]\n[one_half extra=\"\" anim=\"\"]\n[heading size=\"h4\" extra=\"\"]Basic Block[/heading]\n[code type=\"\"]&lt;p&gt;Sample text here...&lt;/p&gt;[/code]\n[/one_half]\n[/container]\n[divider extra=\"\"]\n[container extra=\"row\"]\n[one_full extra=\"\" anim=\"\"]\n[heading size=\"h2\" extra=\"\"]Tables[/heading]\n[/one_full]\n[/container]\n[container extra=\"row\"]\n[one_full extra=\"\" anim=\"\"]\n[heading size=\"h4\" extra=\"\"]Striped[/heading]\n[htable type=\"table-striped\"]\n[thead][trow]\n[thcol] # [/thcol]\n[thcol] First Name [/thcol]\n[thcol] Last Name [/thcol]\n[thcol] Username [/thcol]\n[/trow][/thead]\n[tbody][trow]\n[tcol] 1 [/tcol]\n[tcol] Mark [/tcol]\n[tcol] Otto [/tcol]\n[tcol] @mdo [/tcol]\n[/trow]\n[trow]\n[tcol] 2 [/tcol]\n[tcol] Jacob [/tcol]\n[tcol] Thornton [/tcol]\n[tcol] @fat [/tcol]\n[/trow]\n[trow]\n[tcol] 3 [/tcol]\n[tcol] Larry [/tcol]\n[tcol] the Bird [/tcol]\n[tcol] @twitter [/tcol]\n[/trow][/tbody]\n[/htable]\n\n[/one_full]\n[/container]\n[container extra=\"row\"]\n[one_full extra=\"\" anim=\"\"]\n[heading size=\"h4\" extra=\"spaced\"]Bordered[/heading]\n[htable type=\"table-bordered\"]\n[thead][trow]\n[thcol] # [/thcol]\n[thcol] First Name [/thcol]\n[thcol] Last Name [/thcol]\n[thcol] Username [/thcol]\n[/trow][/thead]\n[tbody][trow]\n[tcol] 1 [/tcol]\n[tcol] Mark [/tcol]\n[tcol] Otto [/tcol]\n[tcol] @mdo [/tcol]\n[/trow]\n[trow]\n[tcol] 2 [/tcol]\n[tcol] Jacob [/tcol]\n[tcol] Thornton [/tcol]\n[tcol] @fat [/tcol]\n[/trow]\n[trow]\n[tcol] 3 [/tcol]\n[tcol] Larry [/tcol]\n[tcol] the Bird [/tcol]\n[tcol] @twitter [/tcol]\n[/trow][/tbody]\n[/htable]\n[/one_full]\n[/container]\n[/section]','Typography','','publish','open','open','','typography','','','2014-03-04 11:53:07','2014-03-04 11:53:07','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=163',0,'page','',0);
INSERT INTO `wp_posts` VALUES (170,2,'2014-03-04 12:21:52','2014-03-04 01:21:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.','A post title','','trash','open','open','','voluptatum-deleniti-atque-corrupti-2','','','2014-08-17 23:38:29','2014-08-17 23:38:29','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?p=170',0,'post','',2);
INSERT INTO `wp_posts` VALUES (178,2,'2014-03-04 12:35:53','2014-03-04 12:35:53','','event-img1','','inherit','open','open','','event-img1','','','2014-03-04 12:35:53','2014-03-04 12:35:53','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/event-img1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (179,2,'2014-03-04 14:43:10','2014-03-04 14:43:10','','Blog Masonry','','publish','open','open','','blog-masonry','','','2014-03-04 14:43:10','2014-03-04 14:43:10','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=179',0,'page','',0);
INSERT INTO `wp_posts` VALUES (189,2,'2014-03-06 18:54:23','2014-03-06 18:54:23','','logo','','inherit','open','open','','logo','','','2014-03-06 18:54:23','2014-03-06 18:54:23','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (194,2,'2014-03-06 20:14:58','2014-03-06 20:14:58','','favicon','','inherit','open','open','','favicon','','','2014-03-06 20:14:58','2014-03-06 20:14:58','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/favicon.ico',0,'attachment','image/x-icon',0);
INSERT INTO `wp_posts` VALUES (197,2,'2014-03-06 21:08:57','2014-03-06 21:08:57','','gallery-img4','','inherit','open','open','','gallery-img4','','','2014-03-06 21:08:57','2014-03-06 21:08:57','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (198,2,'2014-03-06 21:09:00','2014-03-06 21:09:00','','gallery-img5','','inherit','open','open','','gallery-img5','','','2014-03-06 21:09:00','2014-03-06 21:09:00','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (199,2,'2014-03-06 21:09:03','2014-03-06 21:09:03','','gallery-img6','','inherit','open','open','','gallery-img6','','','2014-03-06 21:09:03','2014-03-06 21:09:03','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img6.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (200,2,'2014-03-06 21:09:06','2014-03-06 21:09:06','','gallery-img7','','inherit','open','open','','gallery-img7','','','2014-03-06 21:09:06','2014-03-06 21:09:06','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img7.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (201,2,'2014-03-06 21:09:09','2014-03-06 21:09:09','','gallery-img8','','inherit','open','open','','gallery-img8','','','2014-03-06 21:09:09','2014-03-06 21:09:09','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img8.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (202,2,'2014-03-06 21:09:12','2014-03-06 21:09:12','','gallery-img9','','inherit','open','open','','gallery-img9','','','2014-03-06 21:09:12','2014-03-06 21:09:12','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img9.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (203,2,'2014-03-06 21:09:15','2014-03-06 21:09:15','','gallery-img10','','inherit','open','open','','gallery-img10','','','2014-03-06 21:09:15','2014-03-06 21:09:15','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/gallery-img10.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (204,2,'2014-03-06 21:09:17','2014-03-06 21:09:17','','post-thumb2','','inherit','open','open','','post-thumb2','','','2014-03-06 21:09:17','2014-03-06 21:09:17','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/post-thumb2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (252,2,'2014-03-07 16:32:22','2014-03-07 16:32:22','','logo','','inherit','open','open','','logo-2','','','2014-03-07 16:32:22','2014-03-07 16:32:22','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/logo1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (259,2,'2014-03-21 06:38:32','2014-03-20 19:38:32','','header1','','inherit','open','open','','header1','','','2014-03-21 06:38:32','2014-03-20 19:38:32','',13,'http://medisend.wpengine.com/wp-content/uploads/2014/02/header1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (261,2,'2014-03-21 06:40:12','2014-03-20 19:40:12','','header1','','inherit','open','open','','header1-2','','','2014-03-21 06:40:12','2014-03-20 19:40:12','',13,'http://medisend.wpengine.com/wp-content/uploads/2014/02/header11.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (262,2,'2014-03-21 06:47:15','2014-03-20 19:47:15','','header2','','inherit','open','open','','header2','','','2014-03-21 06:47:15','2014-03-20 19:47:15','',129,'http://medisend.wpengine.com/wp-content/uploads/2014/03/header2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (264,2,'2014-03-21 06:57:32','2014-03-20 19:57:32','','header3','','inherit','open','open','','header3','','','2014-03-21 06:57:32','2014-03-20 19:57:32','',25,'http://medisend.wpengine.com/wp-content/uploads/2014/02/header3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (266,2,'2014-03-21 07:03:40','2014-03-20 20:03:40','','header4','','inherit','open','open','','header4','','','2014-03-21 07:03:40','2014-03-20 20:03:40','',19,'http://medisend.wpengine.com/wp-content/uploads/2014/02/header4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (269,2,'2014-03-01 22:06:50','2014-03-01 11:06:50','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.','A beautiful post title','','trash','open','open','','a-beautiful-post-title','','','2014-08-17 23:37:51','2014-08-17 23:37:51','',0,'http://preview.imithemes.com/native-church-wp/?p=269',0,'post','',0);
INSERT INTO `wp_posts` VALUES (270,2,'2014-03-24 22:06:31','2014-03-24 11:06:31','Little boy playing using his ipad tablet inside the car','Playing little boy','','inherit','open','open','','playing-little-boy','','','2014-03-24 22:06:31','2014-03-24 11:06:31','',269,'http://medisend.wpengine.com/wp-content/uploads/2014/03/photodune-4841140-playing-little-boy-xs.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (272,2,'2014-03-01 22:10:36','2014-03-01 11:10:36','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam.','Here is a post with long title','','trash','open','open','','here-is-a-post-with-long-title','','','2014-08-17 23:37:51','2014-08-17 23:37:51','',0,'http://preview.imithemes.com/native-church-wp/?p=272',0,'post','',0);
INSERT INTO `wp_posts` VALUES (273,2,'2014-03-24 22:10:19','2014-03-24 11:10:19','Happy girl and her boyfriend laughing outside','Happiness','','inherit','open','open','','happiness','','','2014-03-24 22:10:19','2014-03-24 11:10:19','',272,'http://medisend.wpengine.com/wp-content/uploads/2014/03/photodune-5112012-happiness-m.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (278,2,'2014-03-25 06:21:37','2014-03-24 19:21:37','','13439','','inherit','open','open','','13439','','','2014-03-25 06:21:37','2014-03-24 19:21:37','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/03/13439.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (279,2,'2014-05-04 00:22:01','2014-05-04 00:22:01','','Veteran\'s BETP','','publish','open','open','','mega-menu','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/2014/05/04/mega-menu/',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (281,2,'2014-02-28 05:31:04','2014-02-28 05:31:04','','Home','','publish','open','open','','home','','','2014-05-13 00:30:00','2014-05-13 00:30:00','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (282,2,'2014-02-28 06:53:42','2014-02-28 06:53:42','[section extra=\"single-post-header clearfix\"]\n[heading size=\"h2\" extra=\"post-title\"]Here is how you can reach us[/heading]\n[/section]\n[section extra=\"post-content\"]\n[paragraph extra=\"\"][label type=\"label-danger\"]Lorem[/label] ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[container extra=\"row\"]\n[one_half extra=\"\" anim=\"\"]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[/one_half]\n[one_half extra=\"\" anim=\"\"]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[/one_half]\n[/container]\n[/section]','Plan your visit','','publish','open','open','','plan-your-visit','','','2014-02-28 06:53:42','2014-02-28 06:53:42','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (283,2,'2014-02-28 06:54:20','2014-02-28 06:54:20','[section extra=\"single-post-header clearfix\"]\n[heading size=\"h2\" extra=\"post-title\"]Here is how you can donate for our church[/heading]\n[/section]\n[section extra=\"post-content\"]\n[paragraph extra=\"\"][label type=\"label-danger\"]Lorem[/label] ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[container extra=\"row\"]\n[one_half extra=\"\" anim=\"\"]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[/one_half]\n[one_half extra=\"\" anim=\"\"]\n[paragraph extra=\"\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis, sem quis lacinia faucibus, orci ipsum gravida tortor, vel interdum mi sapien ut justo. Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci. Pellentesque ipsum erat, facilisis ut venenatis eu, sodales vel dolor.[/paragraph]\n[/one_half]\n[/container]\n[/section]','Donate','','publish','open','open','','donate','','','2014-02-28 06:54:20','2014-02-28 06:54:20','',0,'http://192.232.247.118/imithemes.com/dev/native-church/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (290,2,'2014-03-07 14:59:02','2014-03-07 14:59:02','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://imithemes.com/preview/native-church-wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page-2','','','2014-03-07 14:59:02','2014-03-07 14:59:02','',0,'http://imithemes.com/preview/native-church-wp/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (291,2,'2014-05-04 00:22:02','2014-05-04 00:22:02','','Medium Thumbnails','','publish','open','open','','medium-thumbnails-2','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/medium-thumbnails-2/',29,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (293,2,'2014-05-04 00:22:02','2014-05-04 00:22:02','','Donate Now','','publish','open','open','','donate-now','','','2014-05-12 11:05:30','2014-05-12 11:05:30','',0,'http://medisend.wpengine.com/2014/05/04/donate-now/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (294,2,'2014-05-04 00:22:02','2014-05-04 00:22:02',' ','','','publish','open','open','','294','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/294/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (295,2,'2014-05-04 00:22:02','2014-05-04 00:22:02',' ','','','publish','open','open','','295','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/295/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (296,2,'2014-05-04 00:22:02','2014-05-04 00:22:02',' ','','','publish','open','open','','296','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/296/',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (297,2,'2014-05-04 00:22:02','2014-05-04 00:22:02',' ','','','publish','open','open','','297','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/297/',14,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (298,2,'2014-05-04 00:22:02','2014-05-04 00:22:02','','Gallery','','publish','open','open','','gallery','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/gallery/',17,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (299,2,'2014-05-04 00:22:02','2014-05-04 00:22:02',' ','','','publish','open','open','','299','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/299/',27,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (300,2,'2014-05-04 00:22:02','2014-05-04 00:22:02',' ','','','publish','open','open','','300','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/300/',31,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (301,2,'2014-05-04 00:22:02','2014-05-04 00:22:02','','Church Home','','publish','open','open','','church-home','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/church-home/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (302,2,'2014-05-04 00:22:02','2014-05-04 00:22:02',' ','','','publish','open','open','','302','','','2014-05-04 00:22:02','2014-05-04 00:22:02','',0,'http://medisend.wpengine.com/2014/05/04/302/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (303,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','All Events','','publish','open','open','','all-events','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/all-events/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (304,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','Our Blog','','publish','open','open','','our-blog','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/our-blog/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (305,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','With Pagination','','publish','open','open','','with-pagination','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/with-pagination/',18,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (306,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','3 Columns','','publish','open','open','','3-columns','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/3-columns/',20,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (307,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','4 Columns','','publish','open','open','','4-columns','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/4-columns/',21,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (308,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','2 Columns','','publish','open','open','','2-columns-2','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/2-columns-2/',19,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (309,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','With Filter','','publish','open','open','','with-filter','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/with-filter/',22,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (310,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','3 Columns','','publish','open','open','','3-columns-2','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/3-columns-2/',24,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (311,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','4 Columns','','publish','open','open','','4-columns-2','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/4-columns-2/',25,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (312,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','2 Columns','','publish','open','open','','2-columns-3','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/2-columns-3/',23,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (313,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','Masonry Grid','','publish','open','open','','masonry-grid','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/masonry-grid/',26,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (315,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','Overview','','publish','open','open','','overview','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/overview/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (316,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','Where we meet','','publish','open','open','','where-we-meet','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/where-we-meet/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (317,2,'2014-05-04 00:22:03','2014-05-04 00:22:03',' ','','','publish','open','open','','317','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',13,'http://medisend.wpengine.com/2014/05/04/317/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (318,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','Sermons Archive','','publish','open','open','','sermons-archive','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/sermons-archive/',15,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (319,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','Sermons Archive','','publish','open','open','','sermons-archive-2','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/sermons-archive-2/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (320,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','Event Listing','','publish','open','open','','event-listing','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/event-listing/',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (321,2,'2014-05-04 00:22:03','2014-05-04 00:22:03',' ','','','publish','open','open','','321','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/321/',12,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (322,2,'2014-05-04 00:22:03','2014-05-04 00:22:03',' ','','','publish','open','open','','322','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/322/',11,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (323,2,'2014-05-04 00:22:03','2014-05-04 00:22:03',' ','','','publish','open','open','','323','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/323/',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (325,2,'2014-05-04 00:22:03','2014-05-04 00:22:03',' ','','','publish','open','open','','325','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/325/',28,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (326,2,'2014-05-04 00:22:03','2014-05-04 00:22:03','','Single Blog Post','','publish','open','open','','single-blog-post','','','2014-05-04 00:22:03','2014-05-04 00:22:03','',0,'http://medisend.wpengine.com/2014/05/04/single-blog-post/',30,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (329,2,'2014-05-04 00:22:04','2014-05-04 00:22:04',' ','','','publish','open','open','','329','','','2014-05-13 01:08:49','2014-05-13 01:08:49','',0,'http://medisend.wpengine.com/2014/05/04/329/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (330,2,'2014-05-04 00:22:04','2014-05-04 00:22:04',' ','','','publish','open','open','','330','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/2014/05/04/330/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (331,2,'2014-05-04 00:22:04','2014-05-04 00:22:04',' ','','','publish','open','open','','331','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',13,'http://medisend.wpengine.com/2014/05/04/331/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (345,2,'2014-05-04 00:22:04','2014-05-04 00:22:04','','Photo Gallery','','publish','open','open','','3-columns-4','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/2014/05/04/3-columns-4/',15,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (354,2,'2014-05-12 10:25:09','2014-05-12 10:25:09','','header1','','inherit','open','open','','header1-3','','','2014-05-12 10:25:09','2014-05-12 10:25:09','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/05/header1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (355,2,'2014-05-12 10:28:13','2014-05-12 10:28:13','','logo_silver','','inherit','open','open','','logo_silver','','','2014-05-12 10:28:13','2014-05-12 10:28:13','',0,'http://medisend.wpengine.com/wp-content/uploads/2014/05/logo_silver.gif',0,'attachment','image/gif',0);
INSERT INTO `wp_posts` VALUES (356,2,'2014-05-12 11:05:30','2014-05-12 11:05:30',' ','','','publish','open','open','','356','','','2014-05-12 11:05:30','2014-05-12 11:05:30','',0,'http://medisend.wpengine.com/?p=356',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (357,2,'2014-05-12 11:10:09','2014-05-12 11:10:09','','hope','','inherit','open','open','','hope','','','2014-05-12 11:10:09','2014-05-12 11:10:09','',281,'http://medisend.wpengine.com/wp-content/uploads/2014/02/hope.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (358,2,'2014-05-12 11:16:04','2014-05-12 11:16:04','','prwebphoto','','inherit','open','open','','prwebphoto','','','2014-05-12 11:16:04','2014-05-12 11:16:04','',281,'http://medisend.wpengine.com/wp-content/uploads/2014/02/prwebphoto.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (359,2,'2014-05-12 11:29:30','2014-05-12 11:29:30','<strong>Joe Boyd</strong>\r\nChairman\r\nMedSynergies\r\nIrving, TX\r\n\r\n<strong>Dan Butcher, Chairman</strong>\r\nPartner\r\nStrasburger &amp; Price LLP\r\nDallas, TX\r\n\r\n<strong>Woodrow W. Gandy, MD, Vice-Chairman</strong>\r\nPresident\r\nT-System Inc.\r\nDallas, TX\r\n\r\n<strong>Nick Hallack, President</strong>\r\nCEO\r\nMediSend International\r\nDallas, TX\r\n\r\n<strong>Barry Irani</strong>\r\nDirector\r\nThe Information Store\r\nHouston, TX\r\n\r\n<strong>Kenneth C. Lindemann, M.D., Ph.D.</strong>\r\nPrincipal\r\nStrategic Health Management Advisors\r\nThe Woodlands, TX\r\n\r\n<strong>Clete Madden, Treasurer</strong>\r\nChief Operating Officer\r\nTouchstone Medical Imaging, LLC\r\nDallas, TX','Board of Directors','','publish','open','open','','board-of-directors','','','2014-05-12 11:32:17','2014-05-12 11:32:17','',13,'http://medisend.wpengine.com/?page_id=359',0,'page','',0);
INSERT INTO `wp_posts` VALUES (360,2,'2014-05-12 11:31:12','2014-05-12 11:31:12','<strong>Rene Dahan</strong>\r\nChairman, Royal Ahold\r\nAmsterdam, The Netherlands\r\nExecutive Vice-President and Director (retired)\r\nExxonMobil Corporation\r\n\r\n<strong>Stephen F. Brown</strong>\r\nExecutive Vice President\r\nChief Information Officer\r\nTenet Healthcare Corp.\r\nDallas, TX\r\n\r\n<strong>Jane Goodall, PhD., DBE</strong>\r\nFounder\r\nThe Jane Goodall Institute &amp; UN Messenger of Peace\r\nSilver Spring, MD\r\n\r\n<strong>Nora Janjan MD, MPSA, MBA</strong>\r\nSenior Fellow, Healthcare Analysis\r\nNational Center for Policy Analysis\r\nDallas, TX\r\n\r\n<strong>Gary B. Lawson J.D. LL.M</strong>\r\nPartner\r\nStrasburger &amp; Price\r\nDallas, TX\r\n\r\n<strong>Mary Logan, JD, CAE</strong>\r\nPresident\r\nAAMI\r\nAssociation for the Advancement of Medical Instrumentation\r\nWashington, DC\r\n\r\n<strong>Julie McCashin, MPH</strong>\r\nVice President Health Services Department\r\nInternational SOS Assistance, Inc.\r\nHouston, TX\r\n\r\n<strong>Tom McQuaid, Principal</strong>\r\nPerformance Properties LLC\r\nDallas, TX 75230\r\n\r\n<strong>Dikembe Mutombo</strong>\r\nNBA Global Ambassador\r\nNational Basketball Association\r\nChairman\r\nDikembe Mutombo Foundation\r\n\r\n<strong>General Richard B. and Mary Jo Myers</strong>\r\nEx-Chairman of the Joint Chiefs of Staff\r\nWashington, D.C.\r\n\r\n<strong>James F. Reilly II, PhD</strong>\r\nAstronaut\r\nNASA Johnson Space Center\r\nHouston, TX\r\n\r\n<strong>Tom Reisenbichler</strong>\r\nPrincipal, Managing Director\r\nPerkins &amp; Will Architects\r\nDallas, TX\r\n\r\n<strong>Marion and Bob Rothstein</strong>\r\nMediSend Humanitarian Ambassadors\r\nDallas, TX\r\n\r\n<strong>Eric Suder</strong>\r\nFounder/CEO\r\nESI Estech Systems\r\nPlano, TX','International Advisory Board','','publish','open','open','','international-advisory-board','','','2014-05-12 11:33:28','2014-05-12 11:33:28','',13,'http://medisend.wpengine.com/?page_id=360',0,'page','',0);
INSERT INTO `wp_posts` VALUES (361,2,'2014-05-12 11:34:10','2014-05-12 11:34:10','<strong>Professor Emeritus E. Oluwole Akande, MD, FMCOG, FWACS, FRCOG</strong>\r\nChairman\r\nPresidential Project Implementation Committee\r\nFederal Government of Nigeria\'s Rehabilitation of University Teaching Hospitals\r\nIbadan, Nigeria\r\n\r\n<strong>Jocelyn Bradshaw</strong>\r\nVice President\r\nCCS Medical\r\nDallas, TX\r\n\r\n<strong>David Breutigam</strong>\r\nDirector, Biomedical Engineering\r\nBaylor Health Care System\r\nMember, US BMET Board of Examiners\r\nDallas, TX\r\n\r\n<strong>Richard C Johnston, MD</strong>\r\nPresident\r\nMedical Clinic of Las Colinas\r\nLas Colinas, TX\r\n\r\n<strong>Mireille Kanda MD, MPH, FAAP</strong>\r\nSenior Medical Advisor\r\nDikembe Mutombo Foundation\r\nAtlanta, GA\r\n\r\n<strong>Kenneth C. Lindemann, M.D., Ph.D.</strong>\r\nPrincipal\r\nStrategic Health Management Advisors\r\nThe Woodlands,, TX\r\n\r\n<strong>Kenneth Maddock</strong>\r\nVP of Clinical Engineering and Telecommunications Services\r\nBaylor Health Care System\r\nChairman, ICC/United States Certification Commission\r\nDallas, TX\r\n\r\n<strong>Nirmal Ravi, M.D., Ph.D.</strong>\r\nGeorgetown University\r\nWashington, DC','Medical Advisory Board','','publish','open','open','','medical-advisory-board','','','2014-05-12 11:34:59','2014-05-12 11:34:59','',0,'http://medisend.wpengine.com/?page_id=361',0,'page','',0);
INSERT INTO `wp_posts` VALUES (362,2,'2014-05-12 11:37:45','2014-05-12 11:37:45',' ','','','publish','open','open','','362','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/?p=362',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (363,2,'2014-05-12 11:37:45','2014-05-12 11:37:45',' ','','','publish','open','open','','363','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',13,'http://medisend.wpengine.com/?p=363',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (364,2,'2014-05-12 11:37:45','2014-05-12 11:37:45',' ','','','publish','open','open','','364','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',13,'http://medisend.wpengine.com/?p=364',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (366,2,'2014-05-12 23:26:17','2014-05-12 23:26:17','This is the info center page.','Info Center','','publish','open','open','','info-center','','','2014-05-12 23:26:17','2014-05-12 23:26:17','',0,'http://medisend.wpengine.com/?page_id=366',0,'page','',0);
INSERT INTO `wp_posts` VALUES (367,2,'2014-05-12 23:29:06','0000-00-00 00:00:00','','Info Center','','draft','open','open','','','','','2014-05-12 23:29:06','2014-05-12 23:29:06','',0,'http://medisend.wpengine.com/?page_id=367',0,'page','',0);
INSERT INTO `wp_posts` VALUES (368,2,'2014-05-12 23:30:09','2014-05-12 23:30:09','Videos','Videos','','publish','open','open','','videos','','','2014-05-12 23:30:09','2014-05-12 23:30:09','',366,'http://medisend.wpengine.com/?page_id=368',0,'page','',0);
INSERT INTO `wp_posts` VALUES (369,2,'2014-05-12 23:30:38','2014-05-12 23:30:38','pressd releases','Press Releases','','publish','open','open','','press-releases','','','2014-05-12 23:30:38','2014-05-12 23:30:38','',366,'http://medisend.wpengine.com/?page_id=369',0,'page','',0);
INSERT INTO `wp_posts` VALUES (370,2,'2014-05-12 23:31:12','2014-05-12 23:31:12','Trainee stories','Trainee Stories','','publish','open','open','','trainee-stories','','','2014-05-12 23:31:12','2014-05-12 23:31:12','',366,'http://medisend.wpengine.com/?page_id=370',0,'page','',0);
INSERT INTO `wp_posts` VALUES (371,2,'2014-05-12 23:31:48','2014-05-12 23:31:48','articles...','Articles','','publish','open','open','','articles','','','2014-05-12 23:31:48','2014-05-12 23:31:48','',366,'http://medisend.wpengine.com/?page_id=371',0,'page','',0);
INSERT INTO `wp_posts` VALUES (372,2,'2014-05-12 23:32:23','2014-05-12 23:32:23','International aid','International Aid','','publish','open','open','','international-aid','','','2014-05-12 23:32:23','2014-05-12 23:32:23','',0,'http://medisend.wpengine.com/?page_id=372',0,'page','',0);
INSERT INTO `wp_posts` VALUES (373,2,'2014-05-12 23:33:10','2014-05-12 23:33:10','<a style=\"color: #333333;\" href=\"http://www.medisend.org/biomedical-lab.html\">Biomedical Repair Lab</a>','Biomedical Repair Lab','','publish','open','open','','biomedical-repair-lab','','','2014-05-12 23:33:10','2014-05-12 23:33:10','',372,'http://medisend.wpengine.com/?page_id=373',0,'page','',0);
INSERT INTO `wp_posts` VALUES (374,2,'2014-05-12 23:34:06','2014-05-12 23:34:06','Sponsor a Container of Hope','Sponsor a Container of Hope','','publish','open','open','','sponsor-a-container-of-hope','','','2014-05-12 23:34:06','2014-05-12 23:34:06','',372,'http://medisend.wpengine.com/?page_id=374',0,'page','',0);
INSERT INTO `wp_posts` VALUES (375,2,'2014-05-12 23:34:44','2014-05-12 23:34:44','Apply for Medical Relief','Apply for Medical Relief','','publish','open','open','','apply-for-medical-relief','','','2014-05-12 23:34:44','2014-05-12 23:34:44','',372,'http://medisend.wpengine.com/?page_id=375',0,'page','',0);
INSERT INTO `wp_posts` VALUES (376,2,'2014-05-12 23:35:42','2014-05-12 23:35:42','While we recognize the importance and urgency of providing much needed medical supplies and equipment to developing countries, we believe that the best way to improve overall health conditions is to provide valuable healthcare and technical education to individuals, thereby enabling them to make a self-sustainable difference in their communities.\r\n\r\nMediSend\'s Global Education Center offers a unique and valuable opportunity for people in developing countries to be educated and trained in Biomedical Equipment Repair. Graduates of the program will return to their home countries with the ability to help improve the healthcare sytems and quality of life in their communities.','Education','','publish','open','open','','education','','','2014-05-12 23:35:42','2014-05-12 23:35:42','',0,'http://medisend.wpengine.com/?page_id=376',0,'page','',0);
INSERT INTO `wp_posts` VALUES (377,2,'2014-05-12 23:36:58','2014-05-12 23:36:58','<h2 style=\"color: #004b85;\">Education Program</h2>','Education Program','','publish','open','open','','education-program','','','2014-05-12 23:36:58','2014-05-12 23:36:58','',376,'http://medisend.wpengine.com/?page_id=377',0,'page','',0);
INSERT INTO `wp_posts` VALUES (378,2,'2014-05-12 23:37:58','2014-05-12 23:37:58','support us','Support Us','','publish','open','open','','support-us','','','2014-05-12 23:37:58','2014-05-12 23:37:58','',0,'http://medisend.wpengine.com/?page_id=378',0,'page','',0);
INSERT INTO `wp_posts` VALUES (379,2,'2014-05-12 23:38:34','2014-05-12 23:38:34','Become a Partner or Sponsor','Become a Partner or Sponsor','','publish','open','open','','become-a-partner-or-sponsor','','','2014-05-12 23:38:34','2014-05-12 23:38:34','',378,'http://medisend.wpengine.com/?page_id=379',0,'page','',0);
INSERT INTO `wp_posts` VALUES (380,2,'2014-05-12 23:39:11','2014-05-12 23:39:11','Gifts in Kind','Gifts in Kind','','publish','open','open','','gifts-in-kind','','','2014-05-12 23:39:11','2014-05-12 23:39:11','',378,'http://medisend.wpengine.com/?page_id=380',0,'page','',0);
INSERT INTO `wp_posts` VALUES (381,2,'2014-05-12 23:39:41','2014-05-12 23:39:41','Volunteer','Volunteer','','publish','open','open','','volunteer','','','2014-05-12 23:39:41','2014-05-12 23:39:41','',378,'http://medisend.wpengine.com/?page_id=381',0,'page','',0);
INSERT INTO `wp_posts` VALUES (382,2,'2014-05-12 23:40:10','2014-05-12 23:40:10','Donor Bill of Rights','Donor Bill of Rights','','publish','open','open','','donor-bill-of-rights','','','2014-05-12 23:40:10','2014-05-12 23:40:10','',378,'http://medisend.wpengine.com/?page_id=382',0,'page','',0);
INSERT INTO `wp_posts` VALUES (383,2,'2014-05-12 23:47:29','2014-05-12 23:47:29',' ','','','publish','open','open','','383','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/?p=383',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (384,2,'2014-05-12 23:47:29','2014-05-12 23:47:29',' ','','','publish','open','open','','384','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',366,'http://medisend.wpengine.com/?p=384',12,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (386,2,'2014-05-12 23:47:29','2014-05-12 23:47:29',' ','','','publish','open','open','','386','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',366,'http://medisend.wpengine.com/?p=386',11,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (387,2,'2014-05-12 23:47:29','2014-05-12 23:47:29',' ','','','publish','open','open','','387','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',366,'http://medisend.wpengine.com/?p=387',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (388,2,'2014-05-12 23:47:29','2014-05-12 23:47:29',' ','','','publish','open','open','','388','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/?p=388',13,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (389,2,'2014-05-12 23:47:29','2014-05-12 23:47:29',' ','','','publish','open','open','','389','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',372,'http://medisend.wpengine.com/?p=389',17,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (390,2,'2014-05-12 23:47:29','2014-05-12 23:47:29',' ','','','publish','open','open','','390','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',372,'http://medisend.wpengine.com/?p=390',14,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (391,2,'2014-05-12 23:47:29','2014-05-12 23:47:29',' ','','','publish','open','open','','391','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',372,'http://medisend.wpengine.com/?p=391',16,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (392,2,'2014-05-12 23:50:03','2014-05-12 23:50:03',' ','','','publish','open','open','','392','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/?p=392',18,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (393,2,'2014-05-12 23:50:03','2014-05-12 23:50:03',' ','','','publish','open','open','','393','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',376,'http://medisend.wpengine.com/?p=393',19,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (394,2,'2014-05-12 23:50:03','2014-05-12 23:50:03',' ','','','publish','open','open','','394','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/?p=394',20,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (395,2,'2014-05-12 23:50:03','2014-05-12 23:50:03',' ','','','publish','open','open','','395','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',378,'http://medisend.wpengine.com/?p=395',25,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (396,2,'2014-05-12 23:50:03','2014-05-12 23:50:03',' ','','','publish','open','open','','396','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',378,'http://medisend.wpengine.com/?p=396',24,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (397,2,'2014-05-12 23:50:03','2014-05-12 23:50:03',' ','','','publish','open','open','','397','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',378,'http://medisend.wpengine.com/?p=397',23,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (398,2,'2014-05-12 23:50:03','2014-05-12 23:50:03',' ','','','publish','open','open','','398','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',378,'http://medisend.wpengine.com/?p=398',22,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (399,2,'2014-05-12 23:50:03','2014-05-12 23:50:03',' ','','','publish','open','open','','399','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/?p=399',21,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (402,2,'2014-05-13 01:08:37','2014-05-13 01:08:37','','Press Releases','','publish','open','open','','press-releases','','','2014-05-13 01:08:50','2014-05-13 01:08:50','',0,'http://medisend.wpengine.com/?p=402',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (403,2,'2014-08-17 23:31:25','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-08-17 23:31:25','0000-00-00 00:00:00','',0,'http://medisend.wpengine.com/?p=403',0,'post','',0);
INSERT INTO `wp_posts` VALUES (404,2,'2014-07-25 23:33:46','2014-07-25 23:33:46','<em>The General Richard B. Myers Veterans Program™, an educational division of MediSend International, is training skilled professional technicians for the US Healthcare industry.</em>\r\n\r\nThe Spring 2014 class of the <a href=\"http://www.medisend.org/general-richard-b-myers-veterans-biomedical-.html\" target=\"_blank\">General Richard B. Myers Veterans Program™</a> graduated on June 28th and all have found employment in the US healthcare industry. MediSend International launched the new program in fall 2013 to offer veterans professional training in the growing field of biomedical technology. Graduate technicians have been employed by Baylor Scott & White Health, DaVita Dialysis, and Southeast Alaska Regional Health Consortium. <a href=\"http://www.medisend.org/docstore/PRWEBgradrelease.pdf\" target=\"_blank\">Read more...</a>','Spring 2014 Graduates of General Richard B. Myers Veterans Program™ Have Recently Found Careers in Healthcare','','publish','open','open','','spring-2014-graduates-of-general-richard-b-myers-veterans-program-have-recently-found-careers-in-healthcare','','','2014-08-17 23:47:38','2014-08-17 23:47:38','',0,'http://medisend.wpengine.com/?p=404',0,'post','',0);
INSERT INTO `wp_posts` VALUES (405,2,'2014-07-17 23:38:34','2014-07-17 23:38:34','<img src=\"http://medisend.wpengine.com/wp-content/uploads/2014/07/vet-betp.jpg\" alt=\"vet-betp\" class=\"alignleft size-full wp-image-406\" /> Dallas-based MediSend International launched the General Richard B. Myers Veterans Biomedical Equipment Technology Program™ in fall 2013 to offer training in the growing field of biomedical technology to returning US veterans. In only five months, graduates are professionally trained to enter the workplace as skilled biomedical repair technicians (BMETs) with a future in the healthcare industry.\r\n\r\nVeteran Anthony O\'Neal graduated from the inaugural class in December 2013. He had been hoping for a career that held the promise of a financially secure future and the opportunity for advancement. After five months of training in the Myers Veterans Program, Anthony received his BMET certificate and in a matter of weeks he was employed by DaVita, a major US dialysis company.\r\n\r\n<img src=\"http://medisend.wpengine.com/wp-content/uploads/2014/07/veterans-fair1-300x199.jpg\" alt=\"veterans-fair1\" class=\"alignright size-medium wp-image-407\" />The spring 2014 class has produced similar successes. Trainees graduated on Saturday June 28th and all have jobs or pending job offers. Carl Jones from Fort Worth, Texas will be working for Baylor Scott & White Health. Scott Rodriguez from Beaumont, Texas has accepted a position in Alaska working for Southeast Alaska Regional Health Consortium. He and his wife are adventuresome and nature loving so they are thrilled about the move to Sitka and the career opportunity. Scott calls his experience in the General Myers Program \"invaluable\". Nesredin Ali from Boston is currently working for the Medisend Biomedical Repair Laboratory until a job offer in Boston has been finalized.\r\n\r\n\"Veterans can bring a sense of leadership and dignity to any organization. MediSend\'s elite training program will create viable job opportunities and the potential for a lifetime of increased earning power for these men and women. It is an investment in the future for individuals who have served their country and protected our security both here and abroad,\" said General Richard B. Myers, 15th Chairman of the Joint Chiefs of Staff and namesake of the program.\r\n\r\n<img src=\"http://medisend.wpengine.com/wp-content/uploads/2014/07/veterans-fair2-199x300.jpg\" alt=\"veterans-fair2\" class=\"alignleft size-medium wp-image-408\" />The General Myers Biomedical Equipment Technology Program™ is entirely privately funded. Scholarships are provided through the generosity of corporations, foundations, organizations and individuals, and include tuition, travel, and supplies. ReserveAid has established an ongoing scholarship program that is transforming the lives of veterans and their families. Strasburger Law Firm, BP, Aon, American Airlines, Hillcrest Foundation and Hawn Foundation have also been major contributors to the program. Baylor Scott & White Health provides a professional internship for the trainees where they shadow seasoned biomedical equipment technicians and observe practical application of their training in a hospital setting.\r\n\r\n\"We are in hopes of growing this program to help many more veterans achieve a future of financial security in a respected, growing career. MediSend has successfully trained technicians for hospitals in twenty countries around the world and now we are seeing exciting outcomes for our veteran graduates,\" says Nick Hallack, MediSend\'s President and CEO. Hallack also says that he takes great pride in the sustainability and capacity-building aspects of MediSend\'s programs, \"Helping someone find a future that benefits them, their families and their community could not be more rewarding!\"','Veterans Find Careers in Healthcare After Training in General Richard B. Myers Veterans Biomedical Equipment Technology Program™','','publish','open','open','','veterans-find-careers-in-healthcare-after-training-in-general-richard-b-myers-veterans-biomedical-equipment-technology-program','','','2014-08-17 23:52:20','2014-08-17 23:52:20','',0,'http://medisend.wpengine.com/?p=405',0,'post','',0);
INSERT INTO `wp_posts` VALUES (406,2,'2014-08-17 23:45:14','2014-08-17 23:45:14','','vet-betp','','inherit','open','open','','vet-betp','','','2014-08-17 23:45:14','2014-08-17 23:45:14','',405,'http://medisend.wpengine.com/wp-content/uploads/2014/07/vet-betp.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (407,2,'2014-08-17 23:48:58','2014-08-17 23:48:58','','veterans-fair1','','inherit','open','open','','veterans-fair1','','','2014-08-17 23:48:58','2014-08-17 23:48:58','',405,'http://medisend.wpengine.com/wp-content/uploads/2014/07/veterans-fair1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (408,2,'2014-08-17 23:50:06','2014-08-17 23:50:06','','veterans-fair2','','inherit','open','open','','veterans-fair2','','','2014-08-17 23:50:06','2014-08-17 23:50:06','',405,'http://medisend.wpengine.com/wp-content/uploads/2014/07/veterans-fair2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (409,2,'2014-08-17 23:50:22','2014-08-17 23:50:22','<img src=\"http://medisend.wpengine.com/wp-content/uploads/2014/07/vet-betp.jpg\" alt=\"vet-betp\" class=\"alignnone size-full wp-image-406\" /> Dallas-based MediSend International launched the General Richard B. Myers Veterans Biomedical Equipment Technology Program™ in fall 2013 to offer training in the growing field of biomedical technology to returning US veterans. In only five months, graduates are professionally trained to enter the workplace as skilled biomedical repair technicians (BMETs) with a future in the healthcare industry.\n\nVeteran Anthony O\'Neal graduated from the inaugural class in December 2013. He had been hoping for a career that held the promise of a financially secure future and the opportunity for advancement. After five months of training in the Myers Veterans Program, Anthony received his BMET certificate and in a matter of weeks he was employed by DaVita, a major US dialysis company.\n\n<img src=\"http://medisend.wpengine.com/wp-content/uploads/2014/07/veterans-fair1-300x199.jpg\" alt=\"veterans-fair1\" class=\"alignright size-medium wp-image-407\" />The spring 2014 class has produced similar successes. Trainees graduated on Saturday June 28th and all have jobs or pending job offers. Carl Jones from Fort Worth, Texas will be working for Baylor Scott & White Health. Scott Rodriguez from Beaumont, Texas has accepted a position in Alaska working for Southeast Alaska Regional Health Consortium. He and his wife are adventuresome and nature loving so they are thrilled about the move to Sitka and the career opportunity. Scott calls his experience in the General Myers Program \"invaluable\". Nesredin Ali from Boston is currently working for the Medisend Biomedical Repair Laboratory until a job offer in Boston has been finalized.\n\n\"Veterans can bring a sense of leadership and dignity to any organization. MediSend\'s elite training program will create viable job opportunities and the potential for a lifetime of increased earning power for these men and women. It is an investment in the future for individuals who have served their country and protected our security both here and abroad,\" said General Richard B. Myers, 15th Chairman of the Joint Chiefs of Staff and namesake of the program.\n\nThe General Myers Biomedical Equipment Technology Program™ is entirely privately funded. Scholarships are provided through the generosity of corporations, foundations, organizations and individuals, and include tuition, travel, and supplies. ReserveAid has established an ongoing scholarship program that is transforming the lives of veterans and their families. Strasburger Law Firm, BP, Aon, American Airlines, Hillcrest Foundation and Hawn Foundation have also been major contributors to the program. Baylor Scott & White Health provides a professional internship for the trainees where they shadow seasoned biomedical equipment technicians and observe practical application of their training in a hospital setting.\n\n\"We are in hopes of growing this program to help many more veterans achieve a future of financial security in a respected, growing career. MediSend has successfully trained technicians for hospitals in twenty countries around the world and now we are seeing exciting outcomes for our veteran graduates,\" says Nick Hallack, MediSend\'s President and CEO. Hallack also says that he takes great pride in the sustainability and capacity-building aspects of MediSend\'s programs, \"Helping someone find a future that benefits them, their families and their community could not be more rewarding!\"','Veterans Find Careers in Healthcare After Training in General Richard B. Myers Veterans Biomedical Equipment Technology Program™','','inherit','open','open','','405-autosave-v1','','','2014-08-17 23:50:22','2014-08-17 23:50:22','',405,'http://medisend.wpengine.com/2014/08/17/405-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (410,2,'2014-05-07 23:54:03','2014-05-07 23:54:03','Typhoon Yolanda has fallen out of the headlines, but the people of the Philippines continue to suffer its aftereffects and a painfully slow recovery.\r\n\r\n<a href=\"http://medisend.wpengine.com/wp-content/uploads/2014/08/tacloban1.jpg\"><img src=\"http://medisend.wpengine.com/wp-content/uploads/2014/08/tacloban1-300x184.jpg\" alt=\"PHILIPPINES-TYPHOON/\" class=\"aligncenter size-medium wp-image-411\" /></a>\r\n\r\nHardest hit was the highly populated seaside city of Tacloban, left virtually in ruins. During the height of the 2013 storm, a doctor at the Tacloban City Hospital single-handedly continued treating patients until the roof of the hospital was blown away and most of the supplies were destroyed. Overcome by emotion and exhaustion, I am told that he wept openly when the first shipment of aid arrived. The hospital has been using tarps as temporary roofing material while still managing to take care of patients, even in dire circumstances. Roof repairs have only now begun.\r\n\r\nThanks to our good friends, Strasburger Law Firm, ESI-Estech Systems, MedSynergies, SB International and MAP International, MediSend is shipping Tacloban City Hospital a 40 foot ocean container filled with critically needed medical supplies. While the shipment will help replenish the hospital\'s badly depleted resources, there is still so much need.\r\n\r\n<a href=\"http://medisend.wpengine.com/wp-content/uploads/2014/08/tacloban6.jpg\"><img src=\"http://medisend.wpengine.com/wp-content/uploads/2014/08/tacloban6-300x224.jpg\" alt=\"tacloban6\" class=\"aligncenter size-medium wp-image-413\" /></a>\r\n\r\nHospitals and clinics throughout Tacloban lost their reserves to the storm and the ensuing tidal surge. The storm exacerbated the numerous diseases indigenous to the area and brought new problems such as injuries and tetanus from the rubble. Families experienced all the horrors of the typhoon and are still experiencing its cruel aftermath.\r\n\r\nMediSend is hoping to continue to replenish much needed resources, but we need your help. Please open your hearts to families desperately in need and help MediSend ship more medical supplies to Tacloban today!\r\n\r\nThanks to each of you for helping MediSend in its mission. With your ongoing support, we will continue in the tradition of Sending Hope and Saving Lives.','MediSend ships desperately needed medical supplies to Philippines','','publish','open','open','','medisend-ships-desperately-needed-medical-supplies-to-philippines','','','2014-08-17 23:57:13','2014-08-17 23:57:13','',0,'http://medisend.wpengine.com/?p=410',0,'post','',0);
INSERT INTO `wp_posts` VALUES (411,2,'2014-08-17 23:55:31','2014-08-17 23:55:31','','PHILIPPINES-TYPHOON/','','inherit','open','open','','philippines-typhoon','','','2014-08-17 23:55:31','2014-08-17 23:55:31','',410,'http://medisend.wpengine.com/wp-content/uploads/2014/08/tacloban1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (413,2,'2014-08-17 23:56:24','2014-08-17 23:56:24','','tacloban6','','inherit','open','open','','tacloban6','','','2014-08-17 23:56:24','2014-08-17 23:56:24','',410,'http://medisend.wpengine.com/wp-content/uploads/2014/08/tacloban6.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (124,1,0);
INSERT INTO `wp_term_relationships` VALUES (124,12,0);
INSERT INTO `wp_term_relationships` VALUES (124,13,0);
INSERT INTO `wp_term_relationships` VALUES (124,14,0);
INSERT INTO `wp_term_relationships` VALUES (141,1,0);
INSERT INTO `wp_term_relationships` VALUES (170,1,0);
INSERT INTO `wp_term_relationships` VALUES (269,1,0);
INSERT INTO `wp_term_relationships` VALUES (272,1,0);
INSERT INTO `wp_term_relationships` VALUES (279,34,0);
INSERT INTO `wp_term_relationships` VALUES (291,32,0);
INSERT INTO `wp_term_relationships` VALUES (293,31,0);
INSERT INTO `wp_term_relationships` VALUES (294,32,0);
INSERT INTO `wp_term_relationships` VALUES (295,32,0);
INSERT INTO `wp_term_relationships` VALUES (296,32,0);
INSERT INTO `wp_term_relationships` VALUES (297,32,0);
INSERT INTO `wp_term_relationships` VALUES (298,32,0);
INSERT INTO `wp_term_relationships` VALUES (299,32,0);
INSERT INTO `wp_term_relationships` VALUES (300,32,0);
INSERT INTO `wp_term_relationships` VALUES (301,33,0);
INSERT INTO `wp_term_relationships` VALUES (302,33,0);
INSERT INTO `wp_term_relationships` VALUES (303,33,0);
INSERT INTO `wp_term_relationships` VALUES (304,33,0);
INSERT INTO `wp_term_relationships` VALUES (305,32,0);
INSERT INTO `wp_term_relationships` VALUES (306,32,0);
INSERT INTO `wp_term_relationships` VALUES (307,32,0);
INSERT INTO `wp_term_relationships` VALUES (308,32,0);
INSERT INTO `wp_term_relationships` VALUES (309,32,0);
INSERT INTO `wp_term_relationships` VALUES (310,32,0);
INSERT INTO `wp_term_relationships` VALUES (311,32,0);
INSERT INTO `wp_term_relationships` VALUES (312,32,0);
INSERT INTO `wp_term_relationships` VALUES (313,32,0);
INSERT INTO `wp_term_relationships` VALUES (315,32,0);
INSERT INTO `wp_term_relationships` VALUES (316,32,0);
INSERT INTO `wp_term_relationships` VALUES (317,32,0);
INSERT INTO `wp_term_relationships` VALUES (318,32,0);
INSERT INTO `wp_term_relationships` VALUES (319,33,0);
INSERT INTO `wp_term_relationships` VALUES (320,32,0);
INSERT INTO `wp_term_relationships` VALUES (321,32,0);
INSERT INTO `wp_term_relationships` VALUES (322,32,0);
INSERT INTO `wp_term_relationships` VALUES (323,32,0);
INSERT INTO `wp_term_relationships` VALUES (325,32,0);
INSERT INTO `wp_term_relationships` VALUES (326,32,0);
INSERT INTO `wp_term_relationships` VALUES (329,34,0);
INSERT INTO `wp_term_relationships` VALUES (330,34,0);
INSERT INTO `wp_term_relationships` VALUES (331,34,0);
INSERT INTO `wp_term_relationships` VALUES (345,34,0);
INSERT INTO `wp_term_relationships` VALUES (356,31,0);
INSERT INTO `wp_term_relationships` VALUES (362,34,0);
INSERT INTO `wp_term_relationships` VALUES (363,34,0);
INSERT INTO `wp_term_relationships` VALUES (364,34,0);
INSERT INTO `wp_term_relationships` VALUES (383,34,0);
INSERT INTO `wp_term_relationships` VALUES (384,34,0);
INSERT INTO `wp_term_relationships` VALUES (386,34,0);
INSERT INTO `wp_term_relationships` VALUES (387,34,0);
INSERT INTO `wp_term_relationships` VALUES (388,34,0);
INSERT INTO `wp_term_relationships` VALUES (389,34,0);
INSERT INTO `wp_term_relationships` VALUES (390,34,0);
INSERT INTO `wp_term_relationships` VALUES (391,34,0);
INSERT INTO `wp_term_relationships` VALUES (392,34,0);
INSERT INTO `wp_term_relationships` VALUES (393,34,0);
INSERT INTO `wp_term_relationships` VALUES (394,34,0);
INSERT INTO `wp_term_relationships` VALUES (395,34,0);
INSERT INTO `wp_term_relationships` VALUES (396,34,0);
INSERT INTO `wp_term_relationships` VALUES (397,34,0);
INSERT INTO `wp_term_relationships` VALUES (398,34,0);
INSERT INTO `wp_term_relationships` VALUES (399,34,0);
INSERT INTO `wp_term_relationships` VALUES (402,34,0);
INSERT INTO `wp_term_relationships` VALUES (404,1,0);
INSERT INTO `wp_term_relationships` VALUES (405,1,0);
INSERT INTO `wp_term_relationships` VALUES (410,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'job_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'job_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'job_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'job_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'job_listing_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'event-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'sermons-speakers','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'event-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'event-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (19,9,'sermons-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (20,19,'event-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (21,10,'sermons-tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (22,11,'sermons-tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (23,20,'sermons-speakers','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (24,21,'event-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (25,22,'sermons-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (26,12,'sermons-tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (27,23,'event-category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (28,13,'sermons-tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (29,14,'sermons-tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (30,24,'sermons-tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (31,25,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (32,26,'nav_menu','',0,27);
INSERT INTO `wp_term_taxonomy` VALUES (33,27,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (34,28,'nav_menu','',0,25);
INSERT INTO `wp_term_taxonomy` VALUES (35,9,'sermons-tag','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'News','news',0);
INSERT INTO `wp_terms` VALUES (2,'Full Time','full-time',0);
INSERT INTO `wp_terms` VALUES (3,'Part Time','part-time',0);
INSERT INTO `wp_terms` VALUES (4,'Temporary','temporary',0);
INSERT INTO `wp_terms` VALUES (5,'Freelance','freelance',0);
INSERT INTO `wp_terms` VALUES (6,'Internship','internship',0);
INSERT INTO `wp_terms` VALUES (9,'Faith','faith',0);
INSERT INTO `wp_terms` VALUES (10,'Heart','heart',0);
INSERT INTO `wp_terms` VALUES (11,'Love','love',0);
INSERT INTO `wp_terms` VALUES (12,'Praise','praise',0);
INSERT INTO `wp_terms` VALUES (13,'Sin','sin',0);
INSERT INTO `wp_terms` VALUES (14,'Soul','soul',0);
INSERT INTO `wp_terms` VALUES (15,'About Us','about-us',0);
INSERT INTO `wp_terms` VALUES (16,'Adam John','adam-john',0);
INSERT INTO `wp_terms` VALUES (17,'All Events','all-events',0);
INSERT INTO `wp_terms` VALUES (18,'Church Home','church-home',0);
INSERT INTO `wp_terms` VALUES (19,'Fests','fests',0);
INSERT INTO `wp_terms` VALUES (20,'Mahalali','mahalali',0);
INSERT INTO `wp_terms` VALUES (21,'Meetings','meetings',0);
INSERT INTO `wp_terms` VALUES (22,'Missions','missions',0);
INSERT INTO `wp_terms` VALUES (23,'Prayers','prayers',0);
INSERT INTO `wp_terms` VALUES (24,'worship','worship',0);
INSERT INTO `wp_terms` VALUES (25,'Top Menu','top-menu',0);
INSERT INTO `wp_terms` VALUES (26,'Header Menu','header-menu',0);
INSERT INTO `wp_terms` VALUES (27,'Footer Menu','footer-menu',0);
INSERT INTO `wp_terms` VALUES (28,'Mega Menu','mega-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (2,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'nickname','wpengine');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (11,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks');
INSERT INTO `wp_usermeta` VALUES (13,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (14,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (15,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (16,2,'nickname','medisend');
INSERT INTO `wp_usermeta` VALUES (17,2,'description','');
INSERT INTO `wp_usermeta` VALUES (18,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (19,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (20,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (21,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (22,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (23,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (24,2,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (25,2,'wp_dashboard_quick_press_last_post_id','403');
INSERT INTO `wp_usermeta` VALUES (26,2,'dismissed_wp_pointers','wp330_saving_widgets,wp350_media,wp330_toolbar,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES (27,2,'wp_user-settings','editor=html&mfold=o&libraryContent=browse&urlbutton=none&align=center');
INSERT INTO `wp_usermeta` VALUES (28,2,'wp_user-settings-time','1408319792');
INSERT INTO `wp_usermeta` VALUES (29,2,'ignore_dev_notice_3.1.9.32','true');
INSERT INTO `wp_usermeta` VALUES (30,2,'ignore_dev_notice_3.1.9.34','true');
INSERT INTO `wp_usermeta` VALUES (31,2,'nav_menu_recently_edited','28');
INSERT INTO `wp_usermeta` VALUES (32,2,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (33,2,'metaboxhidden_nav-menus','a:12:{i:0;s:13:\"mega_nav_link\";i:1;s:8:\"add-post\";i:2;s:9:\"add-event\";i:3;s:8:\"add-news\";i:4;s:17:\"add-press-release\";i:5;s:11:\"add-sermons\";i:6;s:12:\"add-post_tag\";i:7;s:15:\"add-post_format\";i:8;s:20:\"add-job_listing_type\";i:9;s:20:\"add-gallery-category\";i:10;s:20:\"add-sermons-category\";i:11;s:18:\"add-event-category\";}');
INSERT INTO `wp_usermeta` VALUES (34,2,'closedpostboxes_page','a:1:{i:0;s:14:\"template-home1\";}');
INSERT INTO `wp_usermeta` VALUES (35,2,'metaboxhidden_page','a:17:{i:0;s:17:\"template-contact1\";i:1;s:17:\"template-contact2\";i:2;s:14:\"template-home1\";i:3;s:14:\"template-home2\";i:4;s:14:\"template-home3\";i:5;s:14:\"template-home4\";i:6;s:14:\"template-home5\";i:7;s:14:\"template-home6\";i:8;s:19:\"template-h-second-1\";i:9;s:28:\"template-gallery-pagination1\";i:10;s:25:\"template-gallery-masonry1\";i:11;s:24:\"template-gallery-filter1\";i:12;s:10:\"postcustom\";i:13;s:16:\"commentstatusdiv\";i:14;s:11:\"commentsdiv\";i:15;s:7:\"slugdiv\";i:16;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (36,2,'tgmpa_dismissed_notice','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'wpengine','$P$BZvAFXwglIrFrazbsnTrzwf0sNJIi1.','wpengine','bitbucket@wpengine.com','http://wpengine.com','2014-01-23 21:54:49','',0,'wpengine');
INSERT INTO `wp_users` VALUES (2,'medisend','$P$BbaKKZA.U.nde.0/XuPNmnXIjQ/jD7.','medisend','jeff.douglas@medisend.org','http://medisend.wpengine.com','2014-04-10 20:25:52','',0,'medisend');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-22  5:39:04
