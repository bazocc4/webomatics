-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2014 at 02:49 AM
-- Server version: 5.5.37-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `k2157616_webomatics`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_accounts`
--

CREATE TABLE IF NOT EXISTS `cms_accounts` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_accounts`
--

INSERT INTO `cms_accounts` (`id`, `user_id`, `role_id`, `username`, `email`, `password`, `last_login`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 1, 1, 'admin', 'admin@yahoo.com', '169e781bd52860b584879cbe117085da596238f3', '2014-10-29 10:39:58', '2013-01-04 00:00:00', 1, '2013-01-04 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_entries`
--

CREATE TABLE IF NOT EXISTS `cms_entries` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `cms_entries`
--

INSERT INTO `cms_entries` (`id`, `entry_type`, `title`, `slug`, `description`, `main_image`, `parent_id`, `status`, `count`, `created`, `created_by`, `modified`, `modified_by`, `sort_order`, `lang_code`) VALUES
(1, 'media', 'medium-logo', 'medium-logo', NULL, 0, 0, 1, 0, '2014-10-02 13:54:24', 1, '2014-10-02 13:54:24', 1, 1, 'en-1'),
(2, 'pages', 'Home', 'home', '', 1, 0, 1, 0, '2014-10-02 13:55:41', 1, '2014-10-02 13:55:41', 1, 2, 'en-2'),
(3, 'pages', 'Your Solution to your Online Marketing Business', 'about', '<p><span style="font-size:18px;">Do you own Trading Company, Survey Company, or maybe Online Shop Company? Nowadays, all of these major can be boosted up with <em><strong>website technology</strong></em>, for faster &amp; easier management (not like using pencil &amp; paper anymore).</span></p>\r\n', 0, 0, 1, 0, '2014-10-02 14:02:44', 1, '2014-10-29 13:41:00', 1, 3, 'en-3'),
(4, 'media', 'best-website-marketing-developer', 'best-website-marketing-developer', NULL, 0, 0, 1, 0, '2014-10-08 09:21:04', 1, '2014-10-08 09:21:04', 1, 4, 'en-4'),
(5, 'pages', 'Services Banner', 'services-banner', '<p><img alt="approved" height="259" src="/img/upload/33.png" width="536" /></p>\r\n', 4, 0, 1, 0, '2014-10-08 09:21:17', 1, '2014-10-14 14:06:11', 1, 5, 'en-5'),
(6, 'services', 'Website', 'website', '<p>Design &amp; programming phase arrive here, where you are talking about design and we are giving those codes <span style="color:#0000FF;"><em>out of the box.</em></span> At webomatics, you can choose to set out design initialization for your website, or request us to help building design implementation that suite your desire.</p>\r\n\r\n<p>From those point out, we gather all the resources, like PSD format files that illustrate website looks &amp; feel. Then, starting to write bunch of codes that building your website right away.</p>\r\n\r\n<blockquote>\r\n<p><em><span style="color:#0000FF;"><strong>Being friends with technology makes life easier.</strong></span></em></p>\r\n</blockquote>\r\n\r\n<p><img alt="responsive-icon" class="featurette-image pull-left" height="243" src="/img/upload/46.png" width="320" />Besides all of those, we also like to play with <em><span style="color:#0000FF;">responsive website.</span></em>&nbsp;In short, all&nbsp;website contents on each device are automatically arranged neatly to suite the device layout width, so there&#39;ll be no&nbsp;horizontal scrollbar anymore.</p>\r\n\r\n<p><em><span style="color:#0000FF;">Back-End administrator system</span></em> will gear up your website too, which&nbsp;work by obtaining user input and gathering input from other systems to provide responsive data output&nbsp;on&nbsp;<em><span style="color:#0000FF;">Front-End website views.</span></em></p>\r\n', 15, 0, 1, 0, '2014-10-08 11:15:04', 1, '2014-10-29 11:11:05', 1, 7, 'en-6'),
(7, 'services', 'Analyst', 'analyst', '<p>After we&#39;ve done for the final concept, we would analyze how to make these concept to get into <span style="color:#FF8C00;"><em>design &amp; programming phase.</em></span>&nbsp;<span style="line-height: 20.7999992370605px;">This phenomena always produce a lot of questions.</span></p>\r\n\r\n<p>Do&nbsp;those workflow concept meet&nbsp;data &amp; system requirements?&nbsp;What is in &amp;&nbsp;out of scope for this project?&nbsp;When do you want the system to go online? How to synchronize all the concept entity to be <em><span style="color:#FF8C00;">one final website?</span><span style="color:#FFA500;">&nbsp;</span></em>And much more of those questions ahead we&#39;d love to solve.</p>\r\n\r\n<blockquote style="border-left: none; border-right: 5px solid #eee;">\r\n<p style="text-align: right;"><span style="color:#FF8C00;"><em><strong>Let us analyze the whole system for you.</strong></em></span></p>\r\n</blockquote>\r\n', 13, 0, 1, 0, '2014-10-08 11:16:35', 1, '2014-10-29 10:59:41', 1, 8, 'en-7'),
(8, 'services', 'Conceptor', 'conceptor', '<p><strong>1st thing 1st!</strong> Before beginning to do all your website campaign, what kind of preparation should you start? Just having campaign ideas&nbsp;actually not enough without <span style="color:#0000FF;"><em>good workflow&nbsp;concept</em></span>.</p>\r\n\r\n<p>What kind of workflow system do you prefer? Is it inventory, survey, online e-commerce, or maybe POS system? What kind of market&nbsp;do your campaign targeted for? What services your company would like to help? We gladly like to <span style="color:#0000FF;"><em>brainstorm it all</em></span> with your team.</p>\r\n\r\n<blockquote>\r\n<p><span style="color:#0000FF;"><em><strong>We got&nbsp;your ideas &amp; You got&nbsp;our concept!</strong></em></span></p>\r\n</blockquote>\r\n', 45, 0, 1, 0, '2014-10-08 11:16:43', 1, '2014-10-29 10:49:16', 1, 9, 'en-8'),
(9, 'services', 'Marketing', 'marketing', '<p><strong>Last, but not least!</strong>&nbsp;The main goal for this marketing phase is how to attract people around the world to find your website online. Using marketing tools, such as <em><span style="color:#FF8C00;">SEO (Search Engine Optimization), AdWords (service by Google), and social media sites,</span></em> can boost website traffic significantly.</p>\r\n\r\n<blockquote style="border-left: none; border-right: 5px solid #eee;">\r\n<p style="text-align: right;"><span style="color:#FF8C00;"><em><strong>Create something people want to share.</strong></em></span></p>\r\n</blockquote>\r\n\r\n<p><img alt="google-ranking" class="featurette-image pull-right" height="186" src="/img/upload/47.png" width="300" />Improving your website&#39;s ranking at search engine, like Google, Yahoo, or Bing, is one of many ways to achieve those goal. <span style="color:#FF8C00;"><em>Publish relevant content, update&nbsp;website content regularly, and have&nbsp;a link-worthy site</em></span> are some action that we need to accomplish.</p>\r\n\r\n<p>What kind of <em><span style="color:#FF8C00;">marketing strategy</span></em> do we need to provoke customer to have interest for our campaign / products when they open the website online at very&nbsp;first sight? How to attract their eyes keep looking our website content without leaving? Our team ready to help you guys out of this challenge.</p>\r\n', 44, 0, 1, 0, '2014-10-08 11:16:52', 1, '2014-10-29 11:14:51', 1, 6, 'en-9'),
(10, 'media', 'logo', 'logo', NULL, 0, 0, 1, 0, '2014-10-09 14:22:51', 1, '2014-10-09 14:22:51', 1, 10, 'en-10'),
(11, 'developer', 'PT. Creazi Citra Cemerlang', 'creazi-citra-cemerlang', '', 10, 0, 1, 0, '2014-10-09 14:22:57', 1, '2014-10-13 13:39:47', 1, 11, 'en-11'),
(12, 'media', 'portfolio-1', 'portfolio-1', NULL, 0, 0, 1, 0, '2014-10-09 14:23:41', 1, '2014-10-09 14:23:41', 1, 12, 'en-12'),
(13, 'media', 'portfolio-2', 'portfolio-2', NULL, 0, 0, 1, 0, '2014-10-09 14:23:41', 1, '2014-10-09 14:23:41', 1, 13, 'en-13'),
(14, 'media', 'portfolio-4', 'portfolio-4', NULL, 0, 0, 1, 0, '2014-10-09 14:23:42', 1, '2014-10-09 14:23:42', 1, 14, 'en-14'),
(15, 'media', 'portfolio-3', 'portfolio-3', NULL, 0, 0, 1, 0, '2014-10-09 14:23:42', 1, '2014-10-09 14:23:42', 1, 15, 'en-15'),
(26, 'portfolio', 'I Ricchi Jewellery', 'i-ricchi-jewellery-1', '', 25, 0, 1, 0, '2014-10-09 17:01:57', 1, '2014-10-14 15:44:42', 1, 23, 'en-26'),
(23, 'portfolio', 'Maxipro Indonesia', 'maxipro-indonesia', '', 22, 0, 1, 0, '2014-10-09 15:33:52', 1, '2014-10-14 15:44:42', 1, 24, 'en-23'),
(22, 'media', 'portfolio_maxipro', 'portfolio-maxipro', NULL, 0, 0, 1, 0, '2014-10-09 15:31:10', 1, '2014-10-09 15:31:10', 1, 22, 'en-22'),
(24, 'portfolio', 'Igor`s Pastry', 'igor-s-pastry', '', 21, 0, 1, 0, '2014-10-09 15:34:14', 1, '2014-10-14 15:44:42', 1, 26, 'en-24'),
(25, 'media', 'I Ricchi Jewellery', 'i-ricchi-jewellery', NULL, 0, 0, 1, 0, '2014-10-09 16:48:36', 1, '2014-10-09 16:48:36', 1, 25, 'en-25'),
(21, 'media', 'igors-pastry', 'igors-pastry', NULL, 0, 0, 1, 0, '2014-10-09 14:34:47', 1, '2014-10-09 14:34:47', 1, 21, 'en-21'),
(27, 'media', 'Paloma', 'paloma', NULL, 0, 0, 1, 0, '2014-10-13 11:54:27', 1, '2014-10-13 11:54:27', 1, 27, 'en-27'),
(28, 'portfolio', 'Beautiful Paloma', 'beautiful-paloma', '', 27, 0, 1, 0, '2014-10-13 11:54:41', 1, '2014-10-14 15:44:42', 1, 28, 'en-28'),
(29, 'media', 'Ayobaking - fun baking craft', 'ayobaking-fun-baking-craft', NULL, 0, 0, 1, 0, '2014-10-13 14:23:18', 1, '2014-10-13 14:23:18', 1, 29, 'en-29'),
(30, 'portfolio', 'Ayobaking', 'ayobaking', '', 29, 0, 1, 0, '2014-10-13 14:23:45', 1, '2014-10-14 15:44:42', 1, 30, 'en-30'),
(31, 'media', 'insightcode', 'insightcode', NULL, 0, 0, 1, 0, '2014-10-14 10:17:05', 1, '2014-10-14 10:17:05', 1, 31, 'en-31'),
(32, 'portfolio', 'Insight Code', 'insight-code', '', 31, 0, 1, 0, '2014-10-14 10:17:21', 1, '2014-10-14 15:44:42', 1, 32, 'en-32'),
(33, 'media', 'approved', 'approved', NULL, 0, 0, 1, 0, '2014-10-14 14:05:44', 1, '2014-10-14 14:05:44', 1, 33, 'en-33'),
(34, 'media', 'Roti Kecil Bakery Shop', 'roti-kecil-bakery-shop', NULL, 0, 0, 1, 0, '2014-10-14 15:27:28', 1, '2014-10-14 15:27:28', 1, 34, 'en-34'),
(35, 'portfolio', 'Roti Kecil Bakery Shop', 'roti-kecil-bakery-shop-1', '', 34, 0, 1, 0, '2014-10-14 15:28:06', 1, '2014-10-14 15:44:42', 1, 35, 'en-35'),
(37, 'media', 'hatisehat', 'hatisehat', NULL, 0, 0, 1, 0, '2014-10-14 15:40:39', 1, '2014-10-14 15:40:39', 1, 37, 'en-37'),
(38, 'portfolio', 'Helmig`s Curcumin', 'helmig-s-curcumin', '', 37, 0, 1, 0, '2014-10-14 15:42:10', 1, '2014-10-14 15:44:42', 1, 38, 'en-38'),
(39, 'media', 'callout', 'callout', NULL, 0, 0, 1, 0, '2014-10-15 15:21:45', 1, '2014-10-15 15:21:45', 1, 39, 'en-39'),
(40, 'pages', 'Contact Us', 'contact-us', '<p>Any questions? Feel free to ask &nbsp;<img alt="wink" height="20" src="http://webomatics.net/js/ckeditor/plugins/smiley/images/wink_smile.png" title="wink" width="20" /></p>\r\n', 39, 0, 1, 0, '2014-10-15 15:22:12', 1, '2014-10-24 11:14:19', 1, 40, 'en-40'),
(42, 'pages', 'Services Header', 'services-header', '', 43, 0, 1, 0, '2014-10-22 15:53:43', 1, '2014-10-23 14:48:11', 1, 42, 'en-42'),
(43, 'media', 'website-service', 'website-service', NULL, 0, 0, 1, 0, '2014-10-23 14:47:56', 1, '2014-10-23 14:47:56', 1, 43, 'en-43'),
(44, 'media', 'marketing', 'marketing-1', NULL, 0, 0, 1, 0, '2014-10-23 15:54:36', 1, '2014-10-23 15:54:36', 1, 44, 'en-44'),
(45, 'media', 'concept', 'concept', NULL, 0, 0, 1, 0, '2014-10-23 16:30:31', 1, '2014-10-23 16:30:31', 1, 45, 'en-45'),
(46, 'media', 'responsive-icon', 'responsive-icon', NULL, 0, 0, 1, 0, '2014-10-29 10:46:40', 1, '2014-10-29 10:46:40', 1, 46, 'en-46'),
(47, 'media', 'google-ranking', 'google-ranking', NULL, 0, 0, 1, 0, '2014-10-29 10:47:08', 1, '2014-10-29 10:47:08', 1, 47, 'en-47');

-- --------------------------------------------------------

--
-- Table structure for table `cms_entry_metas`
--

CREATE TABLE IF NOT EXISTS `cms_entry_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=204 ;

--
-- Dumping data for table `cms_entry_metas`
--

INSERT INTO `cms_entry_metas` (`id`, `entry_id`, `key`, `value`) VALUES
(108, 1, 'image_size', '25393'),
(107, 1, 'image_type', 'png'),
(106, 4, 'image_size', '882233'),
(105, 4, 'image_type', 'png'),
(193, 8, 'form-teaser', '<p><span style="line-height: 20.7999992370605px;">Do you have an idea for&nbsp;website, but don&#39;t know what to do next? We&#39;re on your&nbsp;line.</span></p>\r\n'),
(37, 10, 'image_type', 'png'),
(38, 10, 'image_size', '37514'),
(77, 11, 'form-url_link', 'http://www.creazi.co.id'),
(40, 12, 'image_type', 'jpg'),
(41, 12, 'image_size', '20674'),
(42, 13, 'image_type', 'jpg'),
(43, 13, 'image_size', '35894'),
(44, 14, 'image_type', 'jpg'),
(45, 14, 'image_size', '20898'),
(46, 15, 'image_type', 'jpg'),
(47, 15, 'image_size', '38184'),
(66, 24, 'form-developer', 'creazi-citra-cemerlang'),
(100, 22, 'image_size', '66608'),
(99, 22, 'image_type', 'png'),
(64, 23, 'form-url_link', 'http://www.maxipro.co.id'),
(65, 24, 'form-url_link', 'http://www.igors-pastry.com'),
(95, 21, 'image_type', 'png'),
(101, 25, 'image_type', 'png'),
(71, 26, 'form-url_link', 'http://www.iricchijewellery.com'),
(72, 26, 'form-developer', 'creazi-citra-cemerlang'),
(75, 28, 'form-url_link', 'http://beautifulpaloma.com'),
(76, 28, 'form-developer', 'creazi-citra-cemerlang'),
(82, 30, 'form-url_link', 'http://ayobaking.com'),
(83, 30, 'form-developer', 'creazi-citra-cemerlang'),
(103, 27, 'image_type', 'png'),
(93, 29, 'image_type', 'png'),
(90, 32, 'form-url_link', 'http://insight-code.com'),
(97, 31, 'image_type', 'png'),
(94, 29, 'image_size', '271240'),
(96, 21, 'image_size', '296774'),
(98, 31, 'image_size', '83790'),
(102, 25, 'image_size', '110693'),
(104, 27, 'image_size', '350780'),
(113, 33, 'image_type', 'png'),
(114, 33, 'image_size', '86529'),
(115, 34, 'image_type', 'png'),
(116, 34, 'image_size', '160125'),
(117, 35, 'form-url_link', 'http://rotikecil.com'),
(118, 35, 'form-developer', 'creazi-citra-cemerlang'),
(122, 37, 'image_size', '634935'),
(121, 37, 'image_type', 'png'),
(123, 38, 'form-url_link', 'http://hatisehat.com'),
(124, 38, 'form-developer', 'creazi-citra-cemerlang'),
(126, 39, 'image_type', 'jpg'),
(127, 39, 'image_size', '68008'),
(196, 7, 'form-teaser', '<p><span style="line-height: 20.7999992370605px;">At webomatics, we help you to analyze what kind of data &amp; system that suite your website.</span></p>\r\n'),
(199, 6, 'form-teaser', '<p><span style="line-height: 20.7999992370605px;">Using&nbsp;</span><em style="line-height: 20.7999992370605px;"><strong><a href="http://en.wikipedia.org/wiki/Web_application_framework" target="_blank"><span style="color: rgb(255, 255, 255);">WAF</span></a></strong></em><span style="line-height: 20.7999992370605px;">&nbsp;&amp;&nbsp;</span><a href="http://en.wikipedia.org/wiki/HTML5" style="line-height: 20.7999992370605px;" target="_blank"><em><strong><span style="color: rgb(255, 255, 255);">HTML5&nbsp;Technology</span></strong></em></a><span style="line-height: 20.7999992370605px;">, we guarantee your website are ready to be baked!</span></p>\r\n'),
(202, 9, 'form-teaser', '<p><span style="line-height: 20.7999992370605px;">Attract&nbsp;business market to your website traffic with&nbsp;</span><em style="line-height: 20.7999992370605px;"><strong><a href="http://en.wikipedia.org/wiki/Search_engine_optimization" target="_blank"><span style="color: rgb(255, 255, 255);">SEO Technology</span></a></strong></em><span style="line-height: 20.7999992370605px;">.</span></p>\r\n'),
(195, 7, 'form-subtitle', 'look at the game like a coach'),
(192, 8, 'form-subtitle', 'great concept, great start'),
(198, 6, 'form-subtitle', 'talking with the codes'),
(173, 43, 'image_size', '179959'),
(172, 43, 'image_type', 'jpg'),
(180, 44, 'image_size', '61914'),
(179, 44, 'image_type', 'jpg'),
(201, 9, 'form-subtitle', 'building your traffic'),
(187, 45, 'image_size', '318493'),
(186, 45, 'image_type', 'jpg'),
(188, 46, 'image_type', 'png'),
(189, 46, 'image_size', '29870'),
(190, 47, 'image_type', 'png'),
(191, 47, 'image_size', '41556'),
(194, 8, 'form-icon', 'fa-puzzle-piece'),
(197, 7, 'form-icon', 'fa-lightbulb-o'),
(200, 6, 'form-icon', 'fa-html5'),
(203, 9, 'form-icon', 'fa-users');

-- --------------------------------------------------------

--
-- Table structure for table `cms_roles`
--

CREATE TABLE IF NOT EXISTS `cms_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `description` text,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cms_roles`
--

INSERT INTO `cms_roles` (`id`, `name`, `description`, `count`) VALUES
(1, 'Super Admin', 'Administrator who has all access for the web without exceptions.', 1),
(2, 'Admin', 'Administrator from the clients.', NULL),
(3, 'Regular User', 'Anyone with no access to admin panel.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `key`, `value`) VALUES
(1, 'title', 'Webomatics'),
(2, 'tagline', 'website, business, technology, informatic, marketing, inventory, online, simple, easy, survey'),
(3, 'description', 'where the <i class=''star-sign''>Website, Technology & Informatics</i> boost your business.'),
(4, 'date_format', 'd F Y'),
(5, 'time_format', 'h:i A'),
(6, 'header', ''),
(7, 'top_insert', ''),
(8, 'bottom_insert', ''),
(9, 'google_analytics_code', 'UA-42878281-3'),
(10, 'display_width', '3200'),
(11, 'display_height', '1800'),
(12, 'display_crop', '0'),
(13, 'thumb_width', '120'),
(14, 'thumb_height', '120'),
(15, 'thumb_crop', '0'),
(16, 'language', 'en_english'),
(17, 'table_view', 'complex'),
(18, 'usd_sell', '9732.00'),
(19, 'custom-pagination', '10'),
(20, 'custom-email_contact', 'info@webomatics.net'),
(21, 'custom-phone_contact', '(+6281) 7525-5381');

-- --------------------------------------------------------

--
-- Table structure for table `cms_types`
--

CREATE TABLE IF NOT EXISTS `cms_types` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cms_types`
--

INSERT INTO `cms_types` (`id`, `name`, `slug`, `description`, `parent_id`, `count`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 'Media Library', 'media', 'All media image is stored here.', 0, 0, '2013-01-15 03:35:14', 1, '2013-01-15 03:35:14', 1),
(2, 'Gallery', 'gallery', 'Our Gallery Projects.', 0, 0, '2013-01-15 03:37:26', 1, '2013-01-15 03:37:26', 1),
(3, 'Slideshow', 'slideshow', 'Home slideshow with details.', 0, 0, '2014-09-03 10:35:08', 1, '2014-09-03 10:35:08', 1),
(4, 'Services', 'services', '', 0, 0, '2014-10-08 11:14:25', 1, '2014-10-22 16:08:29', 1),
(5, 'Portfolio', 'portfolio', 'Webomatics Website Portfolio', 0, 0, '2014-10-09 14:16:09', 1, '2014-10-09 14:16:09', 1),
(6, 'Developer', 'developer', 'Outsource Project Developer.', 0, 0, '2014-10-09 14:16:52', 1, '2014-10-09 14:21:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_type_metas`
--

CREATE TABLE IF NOT EXISTS `cms_type_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text,
  `input_type` varchar(500) DEFAULT NULL,
  `validation` text,
  `instruction` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cms_type_metas`
--

INSERT INTO `cms_type_metas` (`id`, `type_id`, `key`, `value`, `input_type`, `validation`, `instruction`) VALUES
(1, 3, 'form-url_link', '', 'text', 'is_url|', 'Example: http://www.yourdomain.com'),
(3, 5, 'form-url_link', '', 'text', 'not_empty|is_url|', 'Example: http://www.yourdomain.com'),
(4, 5, 'form-developer', '', 'browse', '', 'Ignore this field if you develop this project yourself.'),
(5, 6, 'form-url_link', '', 'text', 'is_url|', 'Example: http://www.yourdomain.com'),
(9, 4, 'form-teaser', '', 'ckeditor', 'not_empty|', 'Short description about this service.'),
(8, 4, 'form-subtitle', '', 'text', '', 'more explanation for the title.'),
(10, 4, 'form-icon', '', 'text', '', 'icon symbol for services identity.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `firstname`, `lastname`, `created`, `created_by`, `modified`, `modified_by`, `status`) VALUES
(1, 'admin', 'zpanel', '2013-01-04 00:00:00', 1, '2014-02-06 10:50:29', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_user_metas`
--

CREATE TABLE IF NOT EXISTS `cms_user_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `cms_user_metas`
--

INSERT INTO `cms_user_metas` (`id`, `user_id`, `key`, `value`) VALUES
(1, 1, 'gender', 'male'),
(2, 1, 'address', 'Jl. Dharmahusada Indah 43'),
(3, 1, 'zip_code', '60258'),
(4, 1, 'city', 'Surabaya, Indonesia'),
(5, 1, 'mobile_phone', '089 67367 1110'),
(6, 1, 'dob_day', '28'),
(7, 1, 'dob_month', '10'),
(8, 1, 'dob_year', '1988'),
(9, 1, 'job', 'Web Developer'),
(10, 1, 'company', 'PT. Creazi'),
(11, 1, 'company_address', 'Jl. Nginden Semolo 101');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
