-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: webomatics
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `cms_accounts`
--

DROP TABLE IF EXISTS `cms_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` tinyint(4) NOT NULL,
  `username` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_accounts`
--

LOCK TABLES `cms_accounts` WRITE;
/*!40000 ALTER TABLE `cms_accounts` DISABLE KEYS */;
INSERT INTO `cms_accounts` VALUES (1,1,1,'admin','admin@yahoo.com','169e781bd52860b584879cbe117085da596238f3','2015-02-09 11:41:34','2013-01-04 00:00:00',1,'2013-01-04 00:00:00',1);
/*!40000 ALTER TABLE `cms_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_entries`
--

DROP TABLE IF EXISTS `cms_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_type` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text,
  `main_image` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `count` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_entries`
--

LOCK TABLES `cms_entries` WRITE;
/*!40000 ALTER TABLE `cms_entries` DISABLE KEYS */;
INSERT INTO `cms_entries` VALUES (1,'media','medium-logo','medium-logo',NULL,0,0,1,0,'2014-10-02 13:54:24',1,'2014-10-02 13:54:24',1,1,'en-1');
INSERT INTO `cms_entries` VALUES (2,'pages','Home','home','where the <i class=\"star-sign\">Website, Technology & Informatics</i> boost your business',1,0,1,0,'2014-10-02 13:55:41',1,'2015-01-13 15:36:44',1,2,'en-2');
INSERT INTO `cms_entries` VALUES (3,'pages','Your Solution to your Online Marketing Business','about','<p><span style=\"font-size:18px;\">Do you own Trading Company, Survey Company, or maybe Online Shop Company? Nowadays, all of these major can be boosted up with <em><strong>website technology</strong></em>, for faster &amp; easier management (not like using pencil &amp; paper anymore).</span></p>\r\n',0,0,1,0,'2014-10-02 14:02:44',1,'2014-10-29 13:41:00',1,3,'en-3');
INSERT INTO `cms_entries` VALUES (4,'media','best-website-marketing-developer','best-website-marketing-developer',NULL,0,0,1,0,'2014-10-08 09:21:04',1,'2014-10-08 09:21:04',1,4,'en-4');
INSERT INTO `cms_entries` VALUES (5,'pages','Services Banner','services-banner','<p><img alt=\"approved\" height=\"259\" src=\"/webomatics/img/upload/33.png\" width=\"536\" /></p>\r\n',4,0,1,0,'2014-10-08 09:21:17',1,'2014-10-14 14:06:11',1,5,'en-5');
INSERT INTO `cms_entries` VALUES (6,'services','Website','website','<p>Design &amp; programming phase arrive here, where you are talking about design and we are giving those codes <span style=\"color:#0000FF;\"><em>out of the box.</em></span> At webomatics, you can choose to set out design initialization for your website, or request us to help building design implementation that suite your desire.</p>\r\n\r\n<p>From those point out, we gather all the resources, like PSD format files that illustrate website looks &amp; feel. Then, starting to write bunch of codes that building your website right away.</p>\r\n\r\n<blockquote>\r\n<p><em><span style=\"color:#0000FF;\"><strong>Being friends with technology makes life easier.</strong></span></em></p>\r\n</blockquote>\r\n\r\n<p><img alt=\"responsive-icon\" class=\"featurette-image pull-left\" height=\"243\" src=\"/webomatics/img/upload/46.png\" width=\"320\" />Besides all of those, we also like to play with <em><span style=\"color:#0000FF;\">responsive website.</span></em>&nbsp;In short, all&nbsp;website contents on each device are automatically arranged neatly to suite the device layout width, so there&#39;ll be no&nbsp;horizontal scrollbar anymore.</p>\r\n\r\n<p><em><span style=\"color:#0000FF;\">Back-End administrator system</span></em> will gear up your website too, which&nbsp;work by obtaining user input and gathering input from other systems to provide responsive data output&nbsp;on&nbsp;<em><span style=\"color:#0000FF;\">Front-End website views.</span></em></p>\r\n',15,0,1,0,'2014-10-08 11:15:04',1,'2014-10-29 11:11:05',1,7,'en-6');
INSERT INTO `cms_entries` VALUES (7,'services','Analyst','analyst','<p>After we&#39;ve done for the final concept, we would analyze how to make these concept to get into <span style=\"color:#FF8C00;\"><em>design &amp; programming phase.</em></span>&nbsp;<span style=\"line-height: 20.7999992370605px;\">This phenomena always produce a lot of questions.</span></p>\r\n\r\n<p>Do&nbsp;those workflow concept meet&nbsp;data &amp; system requirements?&nbsp;What is in &amp;&nbsp;out of scope for this project?&nbsp;When do you want the system to go online? How to synchronize all the concept entity to be <em><span style=\"color:#FF8C00;\">one final website?</span><span style=\"color:#FFA500;\">&nbsp;</span></em>And much more of those questions ahead we&#39;d love to solve.</p>\r\n\r\n<blockquote style=\"border-left: none; border-right: 5px solid #eee;\">\r\n<p style=\"text-align: right;\"><span style=\"color:#FF8C00;\"><em><strong>Let us analyze the whole system for you.</strong></em></span></p>\r\n</blockquote>\r\n',13,0,1,0,'2014-10-08 11:16:35',1,'2014-10-29 10:59:41',1,8,'en-7');
INSERT INTO `cms_entries` VALUES (8,'services','Conceptor','conceptor','<p><strong>1st thing 1st!</strong> Before beginning to do all your website campaign, what kind of preparation should you start? Just having campaign ideas&nbsp;actually not enough without <span style=\"color:#0000FF;\"><em>good workflow&nbsp;concept</em></span>.</p>\r\n\r\n<p>What kind of workflow system do you prefer? Is it inventory, survey, online e-commerce, or maybe POS system? What kind of market&nbsp;do your campaign targeted for? What services your company would like to help? We gladly like to <span style=\"color:#0000FF;\"><em>brainstorm it all</em></span> with your team.</p>\r\n\r\n<blockquote>\r\n<p><span style=\"color:#0000FF;\"><em><strong>We got&nbsp;your ideas &amp; You got&nbsp;our concept!</strong></em></span></p>\r\n</blockquote>\r\n',45,0,1,0,'2014-10-08 11:16:43',1,'2014-10-29 10:49:16',1,9,'en-8');
INSERT INTO `cms_entries` VALUES (9,'services','Marketing','marketing','<p><strong>Last, but not least!</strong>&nbsp;The main goal for this marketing phase is how to attract people around the world to find your website online. Using marketing tools, such as <em><span style=\"color:#FF8C00;\">SEO (Search Engine Optimization), AdWords (service by Google), and social media sites,</span></em> can boost website traffic significantly.</p>\r\n\r\n<blockquote style=\"border-left: none; border-right: 5px solid #eee;\">\r\n<p style=\"text-align: right;\"><span style=\"color:#FF8C00;\"><em><strong>Create something people want to share.</strong></em></span></p>\r\n</blockquote>\r\n\r\n<p><img alt=\"google-ranking\" class=\"featurette-image pull-right\" height=\"186\" src=\"/webomatics/img/upload/47.png\" width=\"300\" />Improving your website&#39;s ranking at search engine, like Google, Yahoo, or Bing, is one of many ways to achieve those goal. <span style=\"color:#FF8C00;\"><em>Publish relevant content, update&nbsp;website content regularly, and have&nbsp;a link-worthy site</em></span> are some action that we need to accomplish.</p>\r\n\r\n<p>What kind of <em><span style=\"color:#FF8C00;\">marketing strategy</span></em> do we need to provoke customer to have interest for our campaign / products when they open the website online at very&nbsp;first sight? How to attract their eyes keep looking our website content without leaving? Our team ready to help you guys out of this challenge.</p>\r\n',44,0,1,0,'2014-10-08 11:16:52',1,'2014-10-29 11:14:51',1,6,'en-9');
INSERT INTO `cms_entries` VALUES (10,'media','logo','logo',NULL,0,0,1,0,'2014-10-09 14:22:51',1,'2014-10-09 14:22:51',1,10,'en-10');
INSERT INTO `cms_entries` VALUES (11,'developer','PT. Creazi Citra Cemerlang','creazi-citra-cemerlang','',10,0,1,0,'2014-10-09 14:22:57',1,'2014-10-13 13:39:47',1,11,'en-11');
INSERT INTO `cms_entries` VALUES (12,'media','portfolio-1','portfolio-1',NULL,0,0,1,0,'2014-10-09 14:23:41',1,'2014-10-09 14:23:41',1,12,'en-12');
INSERT INTO `cms_entries` VALUES (13,'media','portfolio-2','portfolio-2',NULL,0,0,1,0,'2014-10-09 14:23:41',1,'2014-10-09 14:23:41',1,13,'en-13');
INSERT INTO `cms_entries` VALUES (14,'media','portfolio-4','portfolio-4',NULL,0,0,1,0,'2014-10-09 14:23:42',1,'2014-10-09 14:23:42',1,14,'en-14');
INSERT INTO `cms_entries` VALUES (15,'media','portfolio-3','portfolio-3',NULL,0,0,1,0,'2014-10-09 14:23:42',1,'2014-10-09 14:23:42',1,15,'en-15');
INSERT INTO `cms_entries` VALUES (26,'portfolio','I Ricchi Jewellery','i-ricchi-jewellery-1','',25,0,1,0,'2014-10-09 17:01:57',1,'2014-10-14 15:44:42',1,23,'en-26');
INSERT INTO `cms_entries` VALUES (23,'portfolio','Maxipro Indonesia','maxipro-indonesia','',22,0,1,0,'2014-10-09 15:33:52',1,'2014-10-14 15:44:42',1,24,'en-23');
INSERT INTO `cms_entries` VALUES (22,'media','portfolio_maxipro','portfolio-maxipro',NULL,0,0,1,0,'2014-10-09 15:31:10',1,'2014-10-09 15:31:10',1,22,'en-22');
INSERT INTO `cms_entries` VALUES (24,'portfolio','Igor`s Pastry','igor-s-pastry','',21,0,1,0,'2014-10-09 15:34:14',1,'2014-10-14 15:44:42',1,26,'en-24');
INSERT INTO `cms_entries` VALUES (25,'media','I Ricchi Jewellery','i-ricchi-jewellery',NULL,0,0,1,0,'2014-10-09 16:48:36',1,'2014-10-09 16:48:36',1,25,'en-25');
INSERT INTO `cms_entries` VALUES (21,'media','igors-pastry','igors-pastry',NULL,0,0,1,0,'2014-10-09 14:34:47',1,'2014-10-09 14:34:47',1,21,'en-21');
INSERT INTO `cms_entries` VALUES (27,'media','Paloma','paloma',NULL,0,0,1,0,'2014-10-13 11:54:27',1,'2014-10-13 11:54:27',1,27,'en-27');
INSERT INTO `cms_entries` VALUES (28,'portfolio','Beautiful Paloma','beautiful-paloma','',27,0,1,0,'2014-10-13 11:54:41',1,'2014-10-14 15:44:42',1,28,'en-28');
INSERT INTO `cms_entries` VALUES (29,'media','Ayobaking - fun baking craft','ayobaking-fun-baking-craft',NULL,0,0,1,0,'2014-10-13 14:23:18',1,'2014-10-13 14:23:18',1,29,'en-29');
INSERT INTO `cms_entries` VALUES (30,'portfolio','Ayobaking','ayobaking','',29,0,1,0,'2014-10-13 14:23:45',1,'2014-10-14 15:44:42',1,30,'en-30');
INSERT INTO `cms_entries` VALUES (31,'media','insightcode','insightcode',NULL,0,0,1,0,'2014-10-14 10:17:05',1,'2014-10-14 10:17:05',1,31,'en-31');
INSERT INTO `cms_entries` VALUES (32,'portfolio','Insight Code','insight-code','',31,0,1,0,'2014-10-14 10:17:21',1,'2014-10-14 15:44:42',1,32,'en-32');
INSERT INTO `cms_entries` VALUES (33,'media','approved','approved',NULL,0,0,1,0,'2014-10-14 14:05:44',1,'2014-10-14 14:05:44',1,33,'en-33');
INSERT INTO `cms_entries` VALUES (34,'media','Roti Kecil Bakery Shop','roti-kecil-bakery-shop',NULL,0,0,1,0,'2014-10-14 15:27:28',1,'2014-10-14 15:27:28',1,34,'en-34');
INSERT INTO `cms_entries` VALUES (35,'portfolio','Roti Kecil Bakery Shop','roti-kecil-bakery-shop-1','',34,0,1,3,'2014-10-14 15:28:06',1,'2015-02-09 11:58:44',1,35,'en-35');
INSERT INTO `cms_entries` VALUES (37,'media','hatisehat','hatisehat',NULL,0,0,1,0,'2014-10-14 15:40:39',1,'2014-10-14 15:40:39',1,37,'en-37');
INSERT INTO `cms_entries` VALUES (38,'portfolio','Helmig`s Curcumin','helmig-s-curcumin','',37,0,1,0,'2014-10-14 15:42:10',1,'2014-10-14 15:44:42',1,38,'en-38');
INSERT INTO `cms_entries` VALUES (39,'media','callout','callout',NULL,0,0,1,0,'2014-10-15 15:21:45',1,'2014-10-15 15:21:45',1,39,'en-39');
INSERT INTO `cms_entries` VALUES (40,'pages','Contact Us','contact-us','<p>Any questions? Feel free to ask &nbsp;<img alt=\"wink\" height=\"20\" src=\"/webomatics/js/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"20\" /></p>\r\n',39,0,1,0,'2014-10-15 15:22:12',1,'2014-10-24 11:14:19',1,40,'en-40');
INSERT INTO `cms_entries` VALUES (42,'pages','Services Header','services-header','',43,0,1,0,'2014-10-22 15:53:43',1,'2014-10-23 14:48:11',1,42,'en-42');
INSERT INTO `cms_entries` VALUES (43,'media','website-service','website-service',NULL,0,0,1,0,'2014-10-23 14:47:56',1,'2014-10-23 14:47:56',1,43,'en-43');
INSERT INTO `cms_entries` VALUES (44,'media','marketing','marketing-1',NULL,0,0,1,0,'2014-10-23 15:54:36',1,'2014-10-23 15:54:36',1,44,'en-44');
INSERT INTO `cms_entries` VALUES (45,'media','concept','concept',NULL,0,0,1,0,'2014-10-23 16:30:31',1,'2014-10-23 16:30:31',1,45,'en-45');
INSERT INTO `cms_entries` VALUES (46,'media','responsive-icon','responsive-icon',NULL,0,0,1,0,'2014-10-29 10:46:40',1,'2014-10-29 10:46:40',1,46,'en-46');
INSERT INTO `cms_entries` VALUES (47,'media','google-ranking','google-ranking',NULL,0,0,1,0,'2014-10-29 10:47:08',1,'2014-10-29 10:47:08',1,47,'en-47');
INSERT INTO `cms_entries` VALUES (48,'portfolio','portfolio-1','portfolio-1-1',NULL,12,35,1,0,'2015-02-09 11:58:44',1,'2015-02-09 11:58:44',1,48,'en-48');
INSERT INTO `cms_entries` VALUES (49,'portfolio','callout','callout-1',NULL,39,35,1,0,'2015-02-09 11:58:44',1,'2015-02-09 11:58:44',1,49,'en-49');
INSERT INTO `cms_entries` VALUES (50,'portfolio','portfolio-3','portfolio-3-1',NULL,15,35,1,0,'2015-02-09 11:58:44',1,'2015-02-09 11:58:44',1,50,'en-50');
/*!40000 ALTER TABLE `cms_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_entry_metas`
--

DROP TABLE IF EXISTS `cms_entry_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_entry_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_entry_metas`
--

LOCK TABLES `cms_entry_metas` WRITE;
/*!40000 ALTER TABLE `cms_entry_metas` DISABLE KEYS */;
INSERT INTO `cms_entry_metas` VALUES (108,1,'image_size','25393');
INSERT INTO `cms_entry_metas` VALUES (107,1,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (106,4,'image_size','882233');
INSERT INTO `cms_entry_metas` VALUES (105,4,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (193,8,'form-teaser','<p><span style=\"line-height: 20.7999992370605px;\">Do you have an idea for&nbsp;website, but don&#39;t know what to do next? We&#39;re on your&nbsp;line.</span></p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (37,10,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (38,10,'image_size','37514');
INSERT INTO `cms_entry_metas` VALUES (77,11,'form-url_link','http://www.creazi.co.id');
INSERT INTO `cms_entry_metas` VALUES (40,12,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (41,12,'image_size','20674');
INSERT INTO `cms_entry_metas` VALUES (42,13,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (43,13,'image_size','35894');
INSERT INTO `cms_entry_metas` VALUES (44,14,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (45,14,'image_size','20898');
INSERT INTO `cms_entry_metas` VALUES (46,15,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (47,15,'image_size','38184');
INSERT INTO `cms_entry_metas` VALUES (66,24,'form-developer','creazi-citra-cemerlang');
INSERT INTO `cms_entry_metas` VALUES (100,22,'image_size','66608');
INSERT INTO `cms_entry_metas` VALUES (99,22,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (64,23,'form-url_link','http://www.maxipro.co.id');
INSERT INTO `cms_entry_metas` VALUES (65,24,'form-url_link','http://www.igors-pastry.com');
INSERT INTO `cms_entry_metas` VALUES (95,21,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (101,25,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (71,26,'form-url_link','http://www.iricchijewellery.com');
INSERT INTO `cms_entry_metas` VALUES (72,26,'form-developer','creazi-citra-cemerlang');
INSERT INTO `cms_entry_metas` VALUES (75,28,'form-url_link','http://beautifulpaloma.com');
INSERT INTO `cms_entry_metas` VALUES (76,28,'form-developer','creazi-citra-cemerlang');
INSERT INTO `cms_entry_metas` VALUES (82,30,'form-url_link','http://ayobaking.com');
INSERT INTO `cms_entry_metas` VALUES (83,30,'form-developer','creazi-citra-cemerlang');
INSERT INTO `cms_entry_metas` VALUES (103,27,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (93,29,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (90,32,'form-url_link','http://insight-code.com');
INSERT INTO `cms_entry_metas` VALUES (97,31,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (94,29,'image_size','271240');
INSERT INTO `cms_entry_metas` VALUES (96,21,'image_size','296774');
INSERT INTO `cms_entry_metas` VALUES (98,31,'image_size','83790');
INSERT INTO `cms_entry_metas` VALUES (102,25,'image_size','110693');
INSERT INTO `cms_entry_metas` VALUES (104,27,'image_size','350780');
INSERT INTO `cms_entry_metas` VALUES (113,33,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (114,33,'image_size','86529');
INSERT INTO `cms_entry_metas` VALUES (115,34,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (116,34,'image_size','160125');
INSERT INTO `cms_entry_metas` VALUES (206,35,'form-developer','creazi-citra-cemerlang');
INSERT INTO `cms_entry_metas` VALUES (205,35,'form-url_link','http://rotikecil.com');
INSERT INTO `cms_entry_metas` VALUES (122,37,'image_size','634935');
INSERT INTO `cms_entry_metas` VALUES (121,37,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (123,38,'form-url_link','http://hatisehat.com');
INSERT INTO `cms_entry_metas` VALUES (124,38,'form-developer','creazi-citra-cemerlang');
INSERT INTO `cms_entry_metas` VALUES (126,39,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (127,39,'image_size','68008');
INSERT INTO `cms_entry_metas` VALUES (196,7,'form-teaser','<p><span style=\"line-height: 20.7999992370605px;\">At webomatics, we help you to analyze what kind of data &amp; system that suite your website.</span></p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (199,6,'form-teaser','<p><span style=\"line-height: 20.7999992370605px;\">Using&nbsp;</span><em style=\"line-height: 20.7999992370605px;\"><strong><a href=\"http://en.wikipedia.org/wiki/Web_application_framework\" target=\"_blank\"><span style=\"color: rgb(255, 255, 255);\">WAF</span></a></strong></em><span style=\"line-height: 20.7999992370605px;\">&nbsp;&amp;&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/HTML5\" style=\"line-height: 20.7999992370605px;\" target=\"_blank\"><em><strong><span style=\"color: rgb(255, 255, 255);\">HTML5&nbsp;Technology</span></strong></em></a><span style=\"line-height: 20.7999992370605px;\">, we guarantee your website are ready to be baked!</span></p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (202,9,'form-teaser','<p><span style=\"line-height: 20.7999992370605px;\">Attract&nbsp;business market to your website traffic with&nbsp;</span><em style=\"line-height: 20.7999992370605px;\"><strong><a href=\"http://en.wikipedia.org/wiki/Search_engine_optimization\" target=\"_blank\"><span style=\"color: rgb(255, 255, 255);\">SEO Technology</span></a></strong></em><span style=\"line-height: 20.7999992370605px;\">.</span></p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (195,7,'form-subtitle','look at the game like a coach');
INSERT INTO `cms_entry_metas` VALUES (192,8,'form-subtitle','great concept, great start');
INSERT INTO `cms_entry_metas` VALUES (198,6,'form-subtitle','talking with the codes');
INSERT INTO `cms_entry_metas` VALUES (173,43,'image_size','179959');
INSERT INTO `cms_entry_metas` VALUES (172,43,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (180,44,'image_size','61914');
INSERT INTO `cms_entry_metas` VALUES (179,44,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (201,9,'form-subtitle','building your traffic');
INSERT INTO `cms_entry_metas` VALUES (187,45,'image_size','318493');
INSERT INTO `cms_entry_metas` VALUES (186,45,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (188,46,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (189,46,'image_size','29870');
INSERT INTO `cms_entry_metas` VALUES (190,47,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (191,47,'image_size','41556');
INSERT INTO `cms_entry_metas` VALUES (194,8,'form-icon','fa-puzzle-piece');
INSERT INTO `cms_entry_metas` VALUES (197,7,'form-icon','fa-lightbulb-o');
INSERT INTO `cms_entry_metas` VALUES (200,6,'form-icon','fa-html5');
INSERT INTO `cms_entry_metas` VALUES (203,9,'form-icon','fa-users');
INSERT INTO `cms_entry_metas` VALUES (204,35,'count-portfolio','3');
/*!40000 ALTER TABLE `cms_entry_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_roles`
--

DROP TABLE IF EXISTS `cms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `description` text,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_roles`
--

LOCK TABLES `cms_roles` WRITE;
/*!40000 ALTER TABLE `cms_roles` DISABLE KEYS */;
INSERT INTO `cms_roles` VALUES (1,'Super Admin','Administrator who has all access for the web without exceptions.',1);
INSERT INTO `cms_roles` VALUES (2,'Admin','Administrator from the clients.',NULL);
INSERT INTO `cms_roles` VALUES (3,'Regular User','Anyone with no access to admin panel.',NULL);
/*!40000 ALTER TABLE `cms_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (1,'title','Webomatics');
INSERT INTO `cms_settings` VALUES (2,'tagline','website, business, technology, informatic, marketing, inventory, online, simple, easy, survey');
INSERT INTO `cms_settings` VALUES (3,'description','where the Website, Technology & Informatics boost your business');
INSERT INTO `cms_settings` VALUES (4,'date_format','d F Y');
INSERT INTO `cms_settings` VALUES (5,'time_format','h:i A');
INSERT INTO `cms_settings` VALUES (6,'header','');
INSERT INTO `cms_settings` VALUES (7,'top_insert','');
INSERT INTO `cms_settings` VALUES (8,'bottom_insert','');
INSERT INTO `cms_settings` VALUES (9,'google_analytics_code','UA-42878281-3');
INSERT INTO `cms_settings` VALUES (10,'display_width','3200');
INSERT INTO `cms_settings` VALUES (11,'display_height','1800');
INSERT INTO `cms_settings` VALUES (12,'display_crop','0');
INSERT INTO `cms_settings` VALUES (13,'thumb_width','120');
INSERT INTO `cms_settings` VALUES (14,'thumb_height','120');
INSERT INTO `cms_settings` VALUES (15,'thumb_crop','0');
INSERT INTO `cms_settings` VALUES (16,'language','en_english');
INSERT INTO `cms_settings` VALUES (17,'table_view','complex');
INSERT INTO `cms_settings` VALUES (18,'usd_sell','9732.00');
INSERT INTO `cms_settings` VALUES (19,'custom-pagination','10');
INSERT INTO `cms_settings` VALUES (20,'custom-email_contact','info@webomatics.net');
INSERT INTO `cms_settings` VALUES (21,'custom-phone_contact','(+6281) 7525-5381');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_type_metas`
--

DROP TABLE IF EXISTS `cms_type_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_type_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text,
  `input_type` varchar(500) DEFAULT NULL,
  `validation` text,
  `instruction` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_type_metas`
--

LOCK TABLES `cms_type_metas` WRITE;
/*!40000 ALTER TABLE `cms_type_metas` DISABLE KEYS */;
INSERT INTO `cms_type_metas` VALUES (1,3,'form-url_link','','text','is_url|','Example: http://www.yourdomain.com');
INSERT INTO `cms_type_metas` VALUES (11,5,'pagination','4',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (28,5,'form-developer','','browse','','Ignore this field if you develop this project yourself.');
INSERT INTO `cms_type_metas` VALUES (5,6,'form-url_link','','text','is_url|','Example: http://www.yourdomain.com');
INSERT INTO `cms_type_metas` VALUES (9,4,'form-teaser','','ckeditor','not_empty|','Short description about this service.');
INSERT INTO `cms_type_metas` VALUES (8,4,'form-subtitle','','text','','more explanation for the title.');
INSERT INTO `cms_type_metas` VALUES (10,4,'form-icon','','text','','icon symbol for services identity.');
INSERT INTO `cms_type_metas` VALUES (26,5,'gallery','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (27,5,'form-url_link','','text','not_empty|is_url|','Example: http://www.yourdomain.com');
/*!40000 ALTER TABLE `cms_type_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_types`
--

DROP TABLE IF EXISTS `cms_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_types`
--

LOCK TABLES `cms_types` WRITE;
/*!40000 ALTER TABLE `cms_types` DISABLE KEYS */;
INSERT INTO `cms_types` VALUES (1,'Media Library','media','All media image is stored here.',0,0,'2013-01-15 03:35:14',1,'2013-01-15 03:35:14',1);
INSERT INTO `cms_types` VALUES (2,'Gallery','gallery','Our Gallery Projects.',0,0,'2013-01-15 03:37:26',1,'2013-01-15 03:37:26',1);
INSERT INTO `cms_types` VALUES (3,'Slideshow','slideshow','Home slideshow with details.',0,0,'2014-09-03 10:35:08',1,'2014-09-03 10:35:08',1);
INSERT INTO `cms_types` VALUES (4,'Services','services','',0,0,'2014-10-08 11:14:25',1,'2014-10-22 16:08:29',1);
INSERT INTO `cms_types` VALUES (5,'Portfolio','portfolio','Webomatics Website Portfolio',0,0,'2014-10-09 14:16:09',1,'2015-02-09 11:56:03',1);
INSERT INTO `cms_types` VALUES (6,'Developer','developer','Outsource Project Developer.',0,0,'2014-10-09 14:16:52',1,'2014-10-09 14:21:00',1);
/*!40000 ALTER TABLE `cms_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_metas`
--

DROP TABLE IF EXISTS `cms_user_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_metas`
--

LOCK TABLES `cms_user_metas` WRITE;
/*!40000 ALTER TABLE `cms_user_metas` DISABLE KEYS */;
INSERT INTO `cms_user_metas` VALUES (1,1,'gender','male');
INSERT INTO `cms_user_metas` VALUES (2,1,'address','Jl. Dharmahusada Indah 43');
INSERT INTO `cms_user_metas` VALUES (3,1,'zip_code','60258');
INSERT INTO `cms_user_metas` VALUES (4,1,'city','Surabaya, Indonesia');
INSERT INTO `cms_user_metas` VALUES (5,1,'mobile_phone','089 67367 1110');
INSERT INTO `cms_user_metas` VALUES (6,1,'dob_day','28');
INSERT INTO `cms_user_metas` VALUES (7,1,'dob_month','10');
INSERT INTO `cms_user_metas` VALUES (8,1,'dob_year','1988');
INSERT INTO `cms_user_metas` VALUES (9,1,'job','Web Developer');
INSERT INTO `cms_user_metas` VALUES (10,1,'company','PT. Creazi');
INSERT INTO `cms_user_metas` VALUES (11,1,'company_address','Jl. Nginden Semolo 101');
/*!40000 ALTER TABLE `cms_user_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'admin','zpanel','2013-01-04 00:00:00',1,'2014-02-06 10:50:29',1,1);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-04 21:50:48
