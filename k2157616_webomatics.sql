-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2018 at 10:49 PM
-- Server version: 5.5.59-cll
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k2157616_webomatics`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_accounts`
--

CREATE TABLE `cms_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` tinyint(4) NOT NULL,
  `username` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_accounts`
--

INSERT INTO `cms_accounts` (`id`, `user_id`, `role_id`, `username`, `email`, `password`, `last_login`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 1, 1, 'Webomatics CEO', 'admin@yahoo.com', '62412f00317caaa6a74f790d6fc058f30cc6e8c0', '2017-03-21 15:15:21', '2013-01-04 00:00:00', 1, '2015-10-07 11:49:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_entries`
--

CREATE TABLE `cms_entries` (
  `id` int(11) NOT NULL,
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
  `lang_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_entries`
--

INSERT INTO `cms_entries` (`id`, `entry_type`, `title`, `slug`, `description`, `main_image`, `parent_id`, `status`, `count`, `created`, `created_by`, `modified`, `modified_by`, `sort_order`, `lang_code`) VALUES
(1, 'media', 'medium-logo', 'medium-logo', NULL, 0, 0, 1, 0, '2014-10-02 13:54:24', 1, '2014-10-02 13:54:24', 1, 1, 'en-1'),
(2, 'pages', 'Home', 'home', '<p>where the <i class=\"star-sign\">Website, Technology &amp; Informatics</i> boost your business</p>\r\n', 1, 0, 1, 0, '2014-10-02 13:55:41', 1, '2015-05-29 12:18:21', 1, 2, 'en-2'),
(3, 'pages', 'Your Solution to your Online Business Website', 'about', '<p><span style=\"font-size:18px;\">Do you run&nbsp;Trading Company, Survey Company, or maybe Online Shop Company? Need some fresh inventory website to ease your stock products? Or some online advertising technology?</span></p>\r\n\r\n<p><span style=\"color:#ce7b00;\"><span style=\"font-size:18px;\">Nowadays, all of these majors can be boosted up with <em><strong>website technology</strong></em>, which can be accessed from anywhere you are,&nbsp;for faster &amp; easier management (not&nbsp;using pencil &amp; paper anymore).</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\">Compound with <strong><em>informatics knowledge</em></strong>, we&#39;re ready to answer all of your business requirements.</span></p>\r\n', 0, 0, 1, 0, '2014-10-02 14:02:44', 1, '2016-02-23 16:29:11', 1, 3, 'en-3'),
(4, 'media', 'best-website-marketing-developer', 'best-website-marketing-developer', NULL, 0, 0, 1, 0, '2014-10-08 09:21:04', 1, '2014-10-08 09:21:04', 1, 4, 'en-4'),
(5, 'pages', 'Services Banner', 'services-banner', '<p><img alt=\"approved\" height=\"259\" src=\"/img/upload/33.png\" width=\"536\" /></p>\r\n', 4, 0, 1, 0, '2014-10-08 09:21:17', 1, '2015-05-29 12:18:21', 1, 5, 'en-5'),
(6, 'services', 'Website', 'website', '<p>Design &amp; programming phase arrive here, where you are talking about design and we are giving those codes <span style=\"color:#0000FF;\"><em>out of the box.</em></span> At webomatics, you can choose to set out design initialization for your website, or request us to help building design implementation that suite your desire.</p>\r\n\r\n<p>From those point out, we gather all the resources, like PSD format files that illustrate website looks &amp; feel. Then, starting to write bunch of codes that building your website right away.</p>\r\n\r\n<blockquote>\r\n<p class=\"wow bounceInRight\" data-wow-delay=\"700ms\"><em><span style=\"color:#0000FF;\"><strong>Being friends with technology makes life easier.</strong></span></em></p>\r\n</blockquote>\r\n\r\n<p><img alt=\"responsive-icon\" class=\"featurette-image pull-left\" height=\"243\" src=\"/img/upload/46.png\" width=\"320\" />Besides all of those, we also like to play with <em><span style=\"color:#0000FF;\">responsive website.</span></em>&nbsp;In short, all&nbsp;website contents on each device are automatically arranged neatly to suite the device layout width, so there&#39;ll be no&nbsp;horizontal scrollbar anymore.</p>\r\n\r\n<p><em><span style=\"color:#0000FF;\">Back-End administrator system</span></em> will gear up your website too, which&nbsp;work by obtaining user input and gathering input from other systems to provide responsive data output&nbsp;on&nbsp;<em><span style=\"color:#0000FF;\">Front-End website views.</span></em></p>', 15, 0, 1, 0, '2014-10-08 11:15:04', 1, '2016-02-23 13:21:32', 1, 7, 'en-6'),
(7, 'services', 'Analyst', 'analyst', '<p>After we&#39;ve done for the final concept, we would analyze how to make these concept to get into <span style=\"color:#FF8C00;\"><em>design &amp; programming phase.</em></span>&nbsp;<span style=\"line-height: 20.7999992370605px;\">This phenomena always produce a lot of questions.</span></p>\r\n\r\n<p>Do&nbsp;those workflow concept meet&nbsp;data &amp; system requirements?&nbsp;What is in &amp;&nbsp;out of scope for this project?&nbsp;When do you want the system to go online? How to synchronize all the concept entity to be <em><span style=\"color:#FF8C00;\">one final website?</span><span style=\"color:#FFA500;\">&nbsp;</span></em>And much more of those questions ahead we&#39;d love to solve.</p>\r\n\r\n<blockquote style=\"border-left: none; border-right: 5px solid #eee;\">\r\n<p class=\"wow bounceInLeft\" data-wow-delay=\"700ms\" style=\"text-align: right;\"><span style=\"color:#FF8C00;\"><em><strong>Let us analyze the whole system for you.</strong></em></span></p>\r\n</blockquote>', 13, 0, 1, 0, '2014-10-08 11:16:35', 1, '2016-02-23 13:21:32', 1, 8, 'en-7'),
(8, 'services', 'Conceptor', 'conceptor', '<p><strong>1st things 1st!</strong> Before beginning to do all your website campaign, what kind of preparation should you start? Just having campaign ideas&nbsp;actually not enough without <span style=\"color:#0000FF;\"><em>good workflow&nbsp;concept</em></span>.</p>\r\n\r\n<p>What kind of workflow system do you prefer? Is it inventory, survey, online e-commerce, or maybe POS system? What kind of market&nbsp;do your campaign targeted for? What services your company would like to help? We gladly like to <span style=\"color:#0000FF;\"><em>brainstorm it all</em></span> with your team.</p>\r\n\r\n<blockquote>\r\n<p class=\"wow bounceInRight\" data-wow-delay=\"700ms\"><span style=\"color:#0000FF;\"><em><strong>We got&nbsp;your ideas &amp; You got&nbsp;our concept!</strong></em></span></p>\r\n</blockquote>', 45, 0, 1, 0, '2014-10-08 11:16:43', 1, '2016-02-23 13:21:32', 1, 9, 'en-8'),
(9, 'services', 'Marketing', 'marketing', '<p><strong>Last, but not least!</strong>&nbsp;The main goal for this marketing phase is how to attract people around the world to find your website online. Using marketing tools, such as <em><span style=\"color:#FF8C00;\">SEO (Search Engine Optimization), AdWords (service by Google), and social media sites,</span></em> can boost website traffic significantly.</p>\r\n\r\n<blockquote style=\"border-left: none; border-right: 5px solid #eee;\">\r\n<p class=\"wow bounceInLeft\" data-wow-delay=\"700ms\" style=\"text-align: right;\"><span style=\"color:#FF8C00;\"><em><strong>Create something people want to share.</strong></em></span></p>\r\n</blockquote>\r\n\r\n<p><img alt=\"google-ranking\" class=\"featurette-image pull-right\" height=\"186\" src=\"/img/upload/47.png\" width=\"300\" />Improving your website&#39;s ranking at search engine, like Google, Yahoo, or Bing, is one of many ways to achieve those goal. <span style=\"color:#FF8C00;\"><em>Publish relevant content, update&nbsp;website content regularly, and have&nbsp;a link-worthy site</em></span> are some action that we need to accomplish.</p>\r\n\r\n<p>What kind of <em><span style=\"color:#FF8C00;\">marketing strategy</span></em> do we need to provoke customer to have interest for our campaign / products when they open the website online at very&nbsp;first sight? How to attract their eyes keep looking our website content without leaving? Our team ready to help you guys out of this challenge.</p>', 44, 0, 1, 0, '2014-10-08 11:16:52', 1, '2016-02-23 13:22:11', 1, 6, 'en-9'),
(10, 'media', 'logo', 'logo', NULL, 0, 0, 1, 0, '2014-10-09 14:22:51', 1, '2014-10-09 14:22:51', 1, 10, 'en-10'),
(11, 'developer', 'PT. Creazi Citra Cemerlang', 'creazi-citra-cemerlang', '', 10, 0, 1, 0, '2014-10-09 14:22:57', 1, '2015-02-27 17:46:32', 1, 11, 'en-11'),
(12, 'media', 'portfolio-1', 'portfolio-1', NULL, 0, 0, 1, 0, '2014-10-09 14:23:41', 1, '2014-10-09 14:23:41', 1, 12, 'en-12'),
(13, 'media', 'portfolio-2', 'portfolio-2', NULL, 0, 0, 1, 0, '2014-10-09 14:23:41', 1, '2014-10-09 14:23:41', 1, 13, 'en-13'),
(14, 'media', 'portfolio-4', 'portfolio-4', NULL, 0, 0, 1, 0, '2014-10-09 14:23:42', 1, '2014-10-09 14:23:42', 1, 14, 'en-14'),
(15, 'media', 'portfolio-3', 'portfolio-3', NULL, 0, 0, 1, 0, '2014-10-09 14:23:42', 1, '2014-10-09 14:23:42', 1, 15, 'en-15'),
(26, 'portfolio', 'I Ricchi Jewellery', 'i-ricchi-jewellery-1', '', 88, 0, 1, 2, '2014-10-09 17:01:57', 1, '2015-02-26 15:42:20', 1, 61, 'en-26'),
(23, 'portfolio', 'Maxipro Indonesia (Inventory Management)', 'maxipro-indonesia', '', 22, 0, 1, 0, '2014-10-09 15:33:52', 1, '2015-11-30 13:42:29', 1, 30, 'en-23'),
(22, 'media', 'portfolio_maxipro', 'portfolio-maxipro', NULL, 0, 0, 1, 0, '2014-10-09 15:31:10', 1, '2014-10-09 15:31:10', 1, 22, 'en-22'),
(24, 'portfolio', 'Igor`s Pastry', 'igor-s-pastry', '', 21, 0, 1, 0, '2014-10-09 15:34:14', 1, '2015-01-22 16:05:56', 1, 23, 'en-24'),
(89, 'media', 'I Ricchi Jewellery Collection', 'i-ricchi-jewellery-collection', NULL, 0, 0, 1, 0, '2015-02-26 15:42:03', 1, '2015-02-26 15:42:03', 1, 89, 'en-89'),
(21, 'media', 'igors-pastry', 'igors-pastry', NULL, 0, 0, 1, 0, '2014-10-09 14:34:47', 1, '2014-10-09 14:34:47', 1, 21, 'en-21'),
(27, 'media', 'Paloma', 'paloma', NULL, 0, 0, 1, 0, '2014-10-13 11:54:27', 1, '2014-10-13 11:54:27', 1, 27, 'en-27'),
(28, 'portfolio', 'Beautiful Paloma', 'beautiful-paloma', '', 27, 0, 1, 0, '2014-10-13 11:54:41', 1, '2015-01-22 16:05:56', 1, 32, 'en-28'),
(29, 'media', 'Ayobaking - fun baking craft', 'ayobaking-fun-baking-craft', NULL, 0, 0, 1, 0, '2014-10-13 14:23:18', 1, '2014-10-13 14:23:18', 1, 29, 'en-29'),
(30, 'portfolio', 'Ayobaking', 'ayobaking', '', 29, 0, 1, 0, '2014-10-13 14:23:45', 1, '2015-01-22 16:05:56', 1, 35, 'en-30'),
(31, 'media', 'insightcode', 'insightcode', NULL, 0, 0, 1, 0, '2014-10-14 10:17:05', 1, '2014-10-14 10:17:05', 1, 31, 'en-31'),
(32, 'portfolio', 'Insight Code', 'insight-code', '', 31, 0, 1, 2, '2014-10-14 10:17:21', 1, '2015-03-02 13:45:14', 1, 49, 'en-32'),
(33, 'media', 'approved', 'approved', NULL, 0, 0, 1, 0, '2014-10-14 14:05:44', 1, '2014-10-14 14:05:44', 1, 33, 'en-33'),
(96, 'media', 'Roti Kecil Bakery Shop - Testimonial', 'roti-kecil-bakery-shop-testimonial', NULL, 0, 0, 1, 0, '2015-02-26 16:18:33', 1, '2015-02-26 16:18:33', 1, 96, 'en-96'),
(35, 'portfolio', 'Roti Kecil Bakery Shop', 'roti-kecil-bakery-shop-1', '', 93, 0, 1, 2, '2014-10-14 15:28:06', 1, '2015-02-26 16:18:42', 1, 59, 'en-35'),
(37, 'media', 'hatisehat', 'hatisehat', NULL, 0, 0, 1, 0, '2014-10-14 15:40:39', 1, '2014-10-14 15:40:39', 1, 37, 'en-37'),
(38, 'portfolio', 'Helmig`s Curcumin', 'helmig-s-curcumin', '', 37, 0, 1, 0, '2014-10-14 15:42:10', 1, '2015-01-22 16:05:56', 1, 28, 'en-38'),
(39, 'media', 'callout', 'callout', NULL, 0, 0, 1, 0, '2014-10-15 15:21:45', 1, '2014-10-15 15:21:45', 1, 39, 'en-39'),
(40, 'pages', 'Contact Us', 'contact-us', '<p>Any questions? Feel free to ask &nbsp;<img alt=\"wink\" height=\"20\" src=\"http://webomatics.net/js/ckeditor/plugins/smiley/images/wink_smile.png\" title=\"wink\" width=\"20\" /></p>\r\n', 39, 0, 1, 0, '2014-10-15 15:22:12', 1, '2015-05-29 12:18:21', 1, 40, 'en-40'),
(42, 'pages', 'Services Header', 'services-header', '', 43, 0, 1, 0, '2014-10-22 15:53:43', 1, '2015-05-29 12:18:21', 1, 42, 'en-42'),
(43, 'media', 'website-service', 'website-service', NULL, 0, 0, 1, 0, '2014-10-23 14:47:56', 1, '2014-10-23 14:47:56', 1, 43, 'en-43'),
(44, 'media', 'marketing', 'marketing-1', NULL, 0, 0, 1, 0, '2014-10-23 15:54:36', 1, '2014-10-23 15:54:36', 1, 44, 'en-44'),
(45, 'media', 'concept', 'concept', NULL, 0, 0, 1, 0, '2014-10-23 16:30:31', 1, '2014-10-23 16:30:31', 1, 45, 'en-45'),
(46, 'media', 'responsive-icon', 'responsive-icon', NULL, 0, 0, 1, 0, '2014-10-29 10:46:40', 1, '2014-10-29 10:46:40', 1, 46, 'en-46'),
(47, 'media', 'google-ranking', 'google-ranking', NULL, 0, 0, 1, 0, '2014-10-29 10:47:08', 1, '2014-10-29 10:47:08', 1, 47, 'en-47'),
(48, 'media', 'alinea', 'alinea', NULL, 0, 0, 1, 0, '2014-11-04 15:47:49', 1, '2014-11-04 15:47:49', 1, 48, 'en-48'),
(49, 'portfolio', 'Alinea Light', 'alinea-light', '', 48, 0, 1, 2, '2014-11-04 15:49:22', 1, '2015-03-02 15:01:33', 1, 55, 'en-49'),
(50, 'media', 'Sutra Makmur Garment', 'sutra-makmur-garment', NULL, 0, 0, 1, 0, '2014-11-04 16:01:05', 1, '2014-11-04 16:01:05', 1, 50, 'en-50'),
(51, 'portfolio', 'Sutra Makmur Garment', 'sutra-makmur-garment-1', '', 50, 0, 1, 2, '2014-11-04 16:06:49', 1, '2015-03-02 16:22:56', 1, 51, 'en-51'),
(100, 'media', 'Trans Asia Pacific Aviation Training - Facilities', 'trans-asia-pacific-aviation-training-facilities', NULL, 0, 0, 1, 0, '2015-02-26 16:50:46', 1, '2015-02-26 16:50:46', 1, 100, 'en-100'),
(53, 'portfolio', 'Trans Asia Pacific Aviation Training', 'trans-asia-pacific-aviation-training', '', 99, 0, 1, 2, '2014-11-04 16:15:47', 1, '2015-02-26 16:51:02', 1, 57, 'en-53'),
(54, 'media', 'Saint Keyne', 'saint-keyne', NULL, 0, 0, 1, 0, '2014-11-04 16:29:28', 1, '2014-11-04 16:29:28', 1, 54, 'en-54'),
(55, 'portfolio', 'Saint Keyne', 'saint-keyne-1', '', 54, 0, 1, 0, '2014-11-04 16:30:09', 1, '2015-01-22 16:05:56', 1, 26, 'en-55'),
(56, 'media', 'promax', 'promax', NULL, 0, 0, 1, 0, '2014-11-04 16:40:54', 1, '2014-11-04 16:40:54', 1, 56, 'en-56'),
(57, 'portfolio', 'PRO/MAX DR. Sutomo', 'pro-max-dr-sutomo', '', 56, 0, 1, 0, '2014-11-04 16:42:11', 1, '2015-01-22 16:05:56', 1, 38, 'en-57'),
(58, 'media', 'Balikpapan Superblock', 'balikpapan-superblock', NULL, 0, 0, 1, 0, '2014-11-04 16:47:52', 1, '2014-11-04 16:47:52', 1, 58, 'en-58'),
(59, 'portfolio', 'Balikpapan Superblock', 'balikpapan-superblock-1', '', 58, 0, 1, 0, '2014-11-04 16:48:12', 1, '2015-01-22 16:05:56', 1, 53, 'en-59'),
(60, 'media', 'Bambang Syumanjaya', 'bambang-syumanjaya', NULL, 0, 0, 1, 0, '2014-11-10 10:39:18', 1, '2014-11-10 10:39:18', 1, 60, 'en-60'),
(61, 'portfolio', 'Bambang Syumanjaya', 'bambang-syumanjaya-1', '', 60, 0, 1, 0, '2014-11-10 10:40:54', 1, '2015-01-22 16:05:56', 1, 24, 'en-61'),
(74, 'media', 'tokomaju', 'tokomaju', NULL, 0, 0, 1, 0, '2015-02-13 15:10:10', 1, '2015-02-13 15:10:10', 1, 74, 'en-74'),
(63, 'portfolio', 'Toko Maju (Inventory Management)', 'toko-maju', '', 74, 0, 1, 3, '2015-01-22 15:42:00', 1, '2015-02-13 15:30:30', 1, 63, 'en-63'),
(69, 'media', 'Contoh Spesifikasi Barang Dagang - Toko Maju', 'contoh-spesifikasi-barang-dagang-toko-maju', NULL, 0, 0, 1, 0, '2015-02-13 15:00:08', 1, '2015-02-13 15:00:08', 1, 69, 'en-69'),
(88, 'media', 'I-Ricchi-Jewellery', 'i-ricchi-jewellery-2', NULL, 0, 0, 1, 0, '2015-02-26 15:34:26', 1, '2015-02-26 15:34:26', 1, 88, 'en-88'),
(67, 'media', 'Daftar Purchase Order - Toko Maju', 'daftar-purchase-order-toko-maju', NULL, 0, 0, 1, 0, '2015-02-13 11:59:18', 1, '2015-02-13 11:59:18', 1, 67, 'en-67'),
(85, 'portfolio', 'Contoh Spesifikasi Barang Dagang - Toko Maju', 'contoh-spesifikasi-barang-dagang-toko-maju-1', NULL, 69, 63, 1, 0, '2015-02-13 15:30:30', 1, '2015-02-13 15:30:30', 1, 85, 'en-85'),
(75, 'media', 'Pembuatan Surat Jalan Online - Toko Maju', 'pembuatan-surat-jalan-online-toko-maju', NULL, 0, 0, 1, 0, '2015-02-13 15:10:11', 1, '2015-02-13 15:10:11', 1, 75, 'en-75'),
(87, 'portfolio', 'Daftar Purchase Order - Toko Maju', 'daftar-purchase-order-toko-maju-1', NULL, 67, 63, 1, 0, '2015-02-13 15:30:30', 1, '2015-02-13 15:30:30', 1, 87, 'en-87'),
(86, 'portfolio', 'Pembuatan Surat Jalan Online - Toko Maju', 'pembuatan-surat-jalan-online-toko-maju-1', NULL, 75, 63, 1, 0, '2015-02-13 15:30:30', 1, '2015-02-13 15:30:30', 1, 86, 'en-86'),
(90, 'media', 'I Ricchi Jewellery News Updates', 'i-ricchi-jewellery-news-updates', NULL, 0, 0, 1, 0, '2015-02-26 15:42:03', 1, '2015-02-26 15:42:03', 1, 90, 'en-90'),
(91, 'portfolio', 'I Ricchi Jewellery News Updates', 'i-ricchi-jewellery-news-updates-1', NULL, 90, 26, 1, 0, '2015-02-26 15:42:20', 1, '2015-02-26 15:42:20', 1, 91, 'en-91'),
(92, 'portfolio', 'I Ricchi Jewellery Collection', 'i-ricchi-jewellery-collection-1', NULL, 89, 26, 1, 0, '2015-02-26 15:42:20', 1, '2015-02-26 15:42:20', 1, 92, 'en-92'),
(93, 'media', 'Roti-Kecil-Bakery-Shop', 'roti-kecil-bakery-shop-2', NULL, 0, 0, 1, 0, '2015-02-26 15:56:38', 1, '2015-02-26 15:56:38', 1, 93, 'en-93'),
(94, 'media', 'Roti Kecil Bakery Shop - Products', 'roti-kecil-bakery-shop-products', NULL, 0, 0, 1, 0, '2015-02-26 16:08:06', 1, '2015-02-26 16:08:06', 1, 94, 'en-94'),
(97, 'portfolio', 'Roti Kecil Bakery Shop - Products', 'roti-kecil-bakery-shop-products-1', NULL, 94, 35, 1, 0, '2015-02-26 16:18:42', 1, '2015-02-26 16:18:42', 1, 97, 'en-97'),
(98, 'portfolio', 'Roti Kecil Bakery Shop - Testimonial', 'roti-kecil-bakery-shop-testimonial-1', NULL, 96, 35, 1, 0, '2015-02-26 16:18:42', 1, '2015-02-26 16:18:42', 1, 98, 'en-98'),
(99, 'media', 'Trans-Asia-Pacific-Aviation-Training', 'trans-asia-pacific-aviation-training-1', NULL, 0, 0, 1, 0, '2015-02-26 16:30:54', 1, '2015-02-26 16:30:54', 1, 99, 'en-99'),
(101, 'media', 'Trans Asia Pacific Aviation Training - Events & News', 'trans-asia-pacific-aviation-training-events-news', NULL, 0, 0, 1, 0, '2015-02-26 16:50:46', 1, '2015-02-26 16:50:46', 1, 101, 'en-101'),
(102, 'portfolio', 'Trans Asia Pacific Aviation Training - Events & News', 'trans-asia-pacific-aviation-training-events-news-1', NULL, 101, 53, 1, 0, '2015-02-26 16:51:02', 1, '2015-02-26 16:51:02', 1, 102, 'en-102'),
(103, 'portfolio', 'Trans Asia Pacific Aviation Training - Facilities', 'trans-asia-pacific-aviation-training-facilities-1', NULL, 100, 53, 1, 0, '2015-02-26 16:51:02', 1, '2015-02-26 16:51:02', 1, 103, 'en-103'),
(104, 'media', 'Admin Management - Insight Code', 'admin-management-insight-code', NULL, 0, 0, 1, 0, '2015-03-02 13:44:50', 1, '2015-03-02 13:44:50', 1, 104, 'en-104'),
(105, 'media', 'Detail Survey - Insight Code', 'detail-survey-insight-code', NULL, 0, 0, 1, 0, '2015-03-02 13:44:51', 1, '2015-03-02 13:44:51', 1, 105, 'en-105'),
(106, 'portfolio', 'Detail Survey - Insight Code', 'detail-survey-insight-code-1', NULL, 105, 32, 1, 0, '2015-03-02 13:45:14', 1, '2015-03-02 13:45:14', 1, 106, 'en-106'),
(107, 'portfolio', 'Admin Management - Insight Code', 'admin-management-insight-code-1', NULL, 104, 32, 1, 0, '2015-03-02 13:45:14', 1, '2015-03-02 13:45:14', 1, 107, 'en-107'),
(108, 'media', 'Contact Page - Alinea', 'contact-page-alinea', NULL, 0, 0, 1, 0, '2015-03-02 14:59:26', 1, '2015-03-02 14:59:26', 1, 108, 'en-108'),
(109, 'media', 'Find Your Need - Alinea', 'find-your-need-alinea', NULL, 0, 0, 1, 0, '2015-03-02 14:59:29', 1, '2015-03-02 14:59:29', 1, 109, 'en-109'),
(110, 'portfolio', 'Find Your Need - Alinea', 'find-your-need-alinea-1', NULL, 109, 49, 1, 0, '2015-03-02 15:01:33', 1, '2015-03-02 15:01:33', 1, 110, 'en-110'),
(111, 'portfolio', 'Contact Page - Alinea', 'contact-page-alinea-1', NULL, 108, 49, 1, 0, '2015-03-02 15:01:33', 1, '2015-03-02 15:01:33', 1, 111, 'en-111'),
(112, 'media', 'Contact Page with Captcha Verification', 'contact-page-with-captcha-verification', NULL, 0, 0, 1, 0, '2015-03-02 16:19:39', 1, '2015-03-02 16:19:39', 1, 112, 'en-112'),
(113, 'media', 'Gallery - Sutra Makmur Garment', 'gallery-sutra-makmur-garment', NULL, 0, 0, 1, 0, '2015-03-02 16:19:39', 1, '2015-03-02 16:19:39', 1, 113, 'en-113'),
(114, 'portfolio', 'Gallery - Sutra Makmur Garment', 'gallery-sutra-makmur-garment-1', NULL, 113, 51, 1, 0, '2015-03-02 16:22:56', 1, '2015-03-02 16:22:56', 1, 114, 'en-114'),
(115, 'portfolio', 'Contact Page with Captcha Verification', 'contact-page-with-captcha-verification-1', NULL, 112, 51, 1, 0, '2015-03-02 16:22:56', 1, '2015-03-02 16:22:56', 1, 115, 'en-115'),
(116, 'media', 'Products-STI', 'products-sti', NULL, 0, 0, 1, 0, '2015-05-29 10:52:10', 1, '2015-05-29 10:52:10', 1, 116, 'en-116'),
(117, 'media', 'STI', 'sti', NULL, 0, 0, 1, 0, '2015-05-29 10:52:11', 1, '2015-05-29 10:52:11', 1, 117, 'en-117'),
(118, 'media', 'Contact-Us-STI', 'contact-us-sti', NULL, 0, 0, 1, 0, '2015-05-29 10:53:44', 1, '2015-05-29 10:53:44', 1, 118, 'en-118'),
(119, 'portfolio', 'PT. Sumber Teknik', 'pt-sumber-teknik', '', 117, 0, 1, 2, '2015-05-29 10:56:48', 1, '2015-05-29 10:56:48', 1, 119, 'en-119'),
(120, 'portfolio', 'Products-STI', 'products-sti-1', NULL, 116, 119, 1, 0, '2015-05-29 10:56:48', 1, '2015-05-29 10:56:48', 1, 120, 'en-120'),
(121, 'portfolio', 'Contact-Us-STI', 'contact-us-sti-1', NULL, 118, 119, 1, 0, '2015-05-29 10:56:48', 1, '2015-05-29 10:56:48', 1, 121, 'en-121'),
(122, 'media', 'mataharisakti', 'mataharisakti', NULL, 0, 0, 1, 0, '2015-05-29 11:43:07', 1, '2015-05-29 11:43:07', 1, 122, 'en-122'),
(123, 'media', 'MS - CSR', 'ms-csr', NULL, 0, 0, 1, 0, '2015-05-29 11:43:09', 1, '2015-05-29 11:43:09', 1, 123, 'en-123'),
(124, 'media', 'MS - Products', 'ms-products', NULL, 0, 0, 1, 0, '2015-05-29 11:43:09', 1, '2015-05-29 11:43:09', 1, 124, 'en-124'),
(125, 'portfolio', 'Matahari Sakti', 'matahari-sakti', '', 122, 0, 1, 2, '2015-05-29 11:44:03', 1, '2015-05-29 11:44:03', 1, 125, 'en-125'),
(126, 'portfolio', 'MS - Products', 'ms-products-1', NULL, 124, 125, 1, 0, '2015-05-29 11:44:03', 1, '2015-05-29 11:44:03', 1, 126, 'en-126'),
(127, 'portfolio', 'MS - CSR', 'ms-csr-1', NULL, 123, 125, 1, 0, '2015-05-29 11:44:03', 1, '2015-05-29 11:44:03', 1, 127, 'en-127'),
(128, 'media', 'Projects Detail - Tritan Warehouse', 'projects-detail-tritan-warehouse', NULL, 0, 0, 1, 0, '2015-11-30 13:38:41', 1, '2015-11-30 13:38:41', 1, 128, 'en-128'),
(129, 'media', 'Tritan Warehouse', 'tritan-warehouse', NULL, 0, 0, 1, 0, '2015-11-30 13:38:44', 1, '2015-11-30 13:38:44', 1, 129, 'en-129'),
(130, 'media', 'Projects List - Tritan Warehouse', 'projects-list-tritan-warehouse', NULL, 0, 0, 1, 0, '2015-11-30 13:38:48', 1, '2015-11-30 13:38:48', 1, 130, 'en-130'),
(131, 'portfolio', 'Tritan Warehouse', 'tritan-warehouse-1', '', 129, 0, 1, 2, '2015-11-30 13:39:31', 1, '2015-11-30 13:39:58', 1, 131, 'en-131'),
(132, 'portfolio', 'Projects List - Tritan Warehouse', 'projects-list-tritan-warehouse-1', NULL, 130, 131, 1, 0, '2015-11-30 13:39:58', 1, '2015-11-30 13:39:58', 1, 132, 'en-132'),
(133, 'portfolio', 'Projects Detail - Tritan Warehouse', 'projects-detail-tritan-warehouse-1', NULL, 128, 131, 1, 0, '2015-11-30 13:39:58', 1, '2015-11-30 13:39:58', 1, 133, 'en-133'),
(134, 'media', 'About - Bali Go Live', 'about-bali-go-live', NULL, 0, 0, 1, 0, '2015-11-30 14:18:35', 1, '2015-11-30 14:18:35', 1, 134, 'en-134'),
(135, 'media', 'Articles - Bali Go Live', 'articles-bali-go-live', NULL, 0, 0, 1, 0, '2015-11-30 14:18:43', 1, '2015-11-30 14:18:43', 1, 135, 'en-135'),
(136, 'media', 'Bali Go Live', 'bali-go-live', NULL, 0, 0, 1, 0, '2015-11-30 14:19:21', 1, '2015-11-30 14:19:21', 1, 136, 'en-136'),
(137, 'portfolio', 'Bali Go Live', 'bali-go-live-1', '', 136, 0, 1, 2, '2015-11-30 14:20:15', 1, '2015-11-30 14:20:15', 1, 137, 'en-137'),
(138, 'portfolio', 'Articles - Bali Go Live', 'articles-bali-go-live-1', NULL, 135, 137, 1, 0, '2015-11-30 14:20:15', 1, '2015-11-30 14:20:15', 1, 138, 'en-138'),
(139, 'portfolio', 'About - Bali Go Live', 'about-bali-go-live-1', NULL, 134, 137, 1, 0, '2015-11-30 14:20:15', 1, '2015-11-30 14:20:15', 1, 139, 'en-139'),
(140, 'media', 'Products - Kasakata', 'products-kasakata', NULL, 0, 0, 1, 0, '2016-07-22 11:35:21', 1, '2016-07-22 11:35:21', 1, 140, 'en-140'),
(141, 'media', 'Detail Products - Kasakata', 'detail-products-kasakata', NULL, 0, 0, 1, 0, '2016-07-22 11:35:57', 1, '2016-07-22 11:35:57', 1, 141, 'en-141'),
(142, 'media', 'Home - Kasakata', 'home-kasakata', NULL, 0, 0, 1, 0, '2016-07-22 11:36:00', 1, '2016-07-22 11:36:00', 1, 142, 'en-142'),
(143, 'portfolio', 'Kasakata Masterbatch', 'kasakata-masterbatch', '', 142, 0, 1, 2, '2016-07-22 11:37:20', 1, '2016-07-22 11:37:20', 1, 143, 'en-143'),
(144, 'portfolio', 'Products - Kasakata', 'products-kasakata-1', NULL, 140, 143, 1, 0, '2016-07-22 11:37:20', 1, '2016-07-22 11:37:20', 1, 144, 'en-144'),
(145, 'portfolio', 'Detail Products - Kasakata', 'detail-products-kasakata-1', NULL, 141, 143, 1, 0, '2016-07-22 11:37:20', 1, '2016-07-22 11:37:20', 1, 145, 'en-145'),
(146, 'media', 'Contact - Tumpeng Mini', 'contact-tumpeng-mini', NULL, 0, 0, 1, 0, '2016-07-22 14:58:21', 1, '2016-07-22 14:58:21', 1, 146, 'en-146'),
(147, 'media', 'Home - Tumpeng Mini', 'home-tumpeng-mini', NULL, 0, 0, 1, 0, '2016-07-22 14:58:23', 1, '2016-07-22 14:58:23', 1, 147, 'en-147'),
(148, 'media', 'Products - Tumpeng Mini', 'products-tumpeng-mini', NULL, 0, 0, 1, 0, '2016-07-22 14:58:26', 1, '2016-07-22 14:58:26', 1, 148, 'en-148'),
(149, 'portfolio', 'Tumpeng Mini', 'tumpeng-mini', '', 147, 0, 1, 2, '2016-07-22 14:59:06', 1, '2016-07-22 14:59:06', 1, 149, 'en-149'),
(150, 'portfolio', 'Products - Tumpeng Mini', 'products-tumpeng-mini-1', NULL, 148, 149, 1, 0, '2016-07-22 14:59:06', 1, '2016-07-22 14:59:06', 1, 150, 'en-150'),
(151, 'portfolio', 'Contact - Tumpeng Mini', 'contact-tumpeng-mini-1', NULL, 146, 149, 1, 0, '2016-07-22 14:59:06', 1, '2016-07-22 14:59:06', 1, 151, 'en-151'),
(152, 'media', 'Products - ICP', 'products-icp', NULL, 0, 0, 1, 0, '2016-07-25 14:42:36', 1, '2016-07-25 14:42:36', 1, 152, 'en-152'),
(153, 'media', 'Home - ICP', 'home-icp', NULL, 0, 0, 1, 0, '2016-07-25 14:42:41', 1, '2016-07-25 14:42:41', 1, 153, 'en-153'),
(154, 'media', 'News - ICP', 'news-icp', NULL, 0, 0, 1, 0, '2016-07-25 14:42:42', 1, '2016-07-25 14:42:42', 1, 154, 'en-154'),
(155, 'portfolio', 'Indera Ciptapratama Perkasa', 'indera-ciptapratama-perkasa', '', 153, 0, 1, 2, '2016-07-25 14:43:42', 1, '2016-07-25 14:43:42', 1, 155, 'en-155'),
(156, 'portfolio', 'Products - ICP', 'products-icp-1', NULL, 152, 155, 1, 0, '2016-07-25 14:43:42', 1, '2016-07-25 14:43:42', 1, 156, 'en-156'),
(157, 'portfolio', 'News - ICP', 'news-icp-1', NULL, 154, 155, 1, 0, '2016-07-25 14:43:42', 1, '2016-07-25 14:43:42', 1, 157, 'en-157'),
(158, 'media', 'Brands - KTG', 'brands-ktg', NULL, 0, 0, 1, 0, '2016-07-25 17:20:32', 1, '2016-07-25 17:20:32', 1, 158, 'en-158'),
(159, 'media', 'Clients - KTG', 'clients-ktg', NULL, 0, 0, 1, 0, '2016-07-25 17:20:54', 1, '2016-07-25 17:20:54', 1, 159, 'en-159'),
(160, 'media', 'Home - KTG', 'home-ktg', NULL, 0, 0, 1, 0, '2016-07-25 17:20:57', 1, '2016-07-25 17:20:57', 1, 160, 'en-160'),
(161, 'portfolio', 'Kencana Tiara Gemilang', 'kencana-tiara-gemilang', '', 160, 0, 1, 2, '2016-07-25 17:22:02', 1, '2016-07-25 17:22:02', 1, 161, 'en-161'),
(162, 'portfolio', 'Brands - KTG', 'brands-ktg-1', NULL, 158, 161, 1, 0, '2016-07-25 17:22:02', 1, '2016-07-25 17:22:02', 1, 162, 'en-162'),
(163, 'portfolio', 'Clients - KTG', 'clients-ktg-1', NULL, 159, 161, 1, 0, '2016-07-25 17:22:02', 1, '2016-07-25 17:22:02', 1, 163, 'en-163'),
(164, 'media', 'Catalogue Download - CMN', 'catalogue-download-cmn', NULL, 0, 0, 1, 0, '2016-07-27 12:14:31', 1, '2016-07-27 12:14:31', 1, 164, 'en-164'),
(165, 'media', 'Products - CMN', 'products-cmn', NULL, 0, 0, 1, 0, '2016-07-27 12:15:01', 1, '2016-07-27 12:15:01', 1, 165, 'en-165'),
(166, 'media', 'Home - CMN', 'home-cmn', NULL, 0, 0, 1, 0, '2016-07-27 12:15:01', 1, '2016-07-27 12:15:01', 1, 166, 'en-166'),
(167, 'portfolio', 'Creative Mega Network', 'creative-mega-network', '', 166, 0, 1, 2, '2016-07-27 12:16:08', 1, '2016-07-27 12:16:09', 1, 167, 'en-167'),
(168, 'portfolio', 'Catalogue Download - CMN', 'catalogue-download-cmn-1', NULL, 164, 167, 1, 0, '2016-07-27 12:16:09', 1, '2016-07-27 12:16:09', 1, 168, 'en-168'),
(169, 'portfolio', 'Products - CMN', 'products-cmn-1', NULL, 165, 167, 1, 0, '2016-07-27 12:16:09', 1, '2016-07-27 12:16:09', 1, 169, 'en-169'),
(170, 'media', 'Equipment - SWS', 'equipment-sws', NULL, 0, 0, 1, 0, '2016-07-28 13:52:44', 1, '2016-07-28 13:52:44', 1, 170, 'en-170'),
(171, 'media', 'Raw Material - SWS', 'raw-material-sws', NULL, 0, 0, 1, 0, '2016-07-28 13:52:44', 1, '2016-07-28 13:52:44', 1, 171, 'en-171'),
(172, 'media', 'Home - SWS', 'home-sws', NULL, 0, 0, 1, 0, '2016-07-28 13:52:46', 1, '2016-07-28 13:52:46', 1, 172, 'en-172'),
(173, 'portfolio', 'Sumber Wilis Seraya', 'sumber-wilis-seraya', '', 172, 0, 1, 2, '2016-07-28 13:56:12', 1, '2016-07-28 13:56:12', 1, 173, 'en-173'),
(174, 'portfolio', 'Equipment - SWS', 'equipment-sws-1', NULL, 170, 173, 1, 0, '2016-07-28 13:56:12', 1, '2016-07-28 13:56:12', 1, 174, 'en-174'),
(175, 'portfolio', 'Raw Material - SWS', 'raw-material-sws-1', NULL, 171, 173, 1, 0, '2016-07-28 13:56:12', 1, '2016-07-28 13:56:12', 1, 175, 'en-175'),
(176, 'media', 'Gallery - Taman Bhagawan', 'gallery-taman-bhagawan', NULL, 0, 0, 1, 0, '2016-07-28 14:15:33', 1, '2016-07-28 14:15:33', 1, 176, 'en-176'),
(177, 'media', 'Venues - Taman Bhagawan', 'venues-taman-bhagawan', NULL, 0, 0, 1, 0, '2016-07-28 14:15:39', 1, '2016-07-28 14:15:39', 1, 177, 'en-177'),
(178, 'media', 'Home - Taman Bhagawan', 'home-taman-bhagawan', NULL, 0, 0, 1, 0, '2016-07-28 14:15:40', 1, '2016-07-28 14:15:40', 1, 178, 'en-178'),
(179, 'portfolio', 'Taman Bhagawan', 'taman-bhagawan', '', 178, 0, 1, 2, '2016-07-28 14:17:26', 1, '2016-07-28 14:17:26', 1, 179, 'en-179'),
(180, 'portfolio', 'Venues - Taman Bhagawan', 'venues-taman-bhagawan-1', NULL, 177, 179, 1, 0, '2016-07-28 14:17:26', 1, '2016-07-28 14:17:26', 1, 180, 'en-180'),
(181, 'portfolio', 'Gallery - Taman Bhagawan', 'gallery-taman-bhagawan-1', NULL, 176, 179, 1, 0, '2016-07-28 14:17:26', 1, '2016-07-28 14:17:26', 1, 181, 'en-181'),
(182, 'media', 'Purchase Tickets - Jazz Market', 'purchase-tickets-jazz-market', NULL, 0, 0, 1, 0, '2016-07-28 16:13:41', 1, '2016-07-28 16:13:41', 1, 182, 'en-182'),
(183, 'media', 'Participate - Jazz Market', 'participate-jazz-market', NULL, 0, 0, 1, 0, '2016-07-28 16:13:45', 1, '2016-07-28 16:13:45', 1, 183, 'en-183'),
(184, 'media', 'Home - Jazz Market', 'home-jazz-market', NULL, 0, 0, 1, 0, '2016-07-28 16:13:45', 1, '2016-07-28 16:13:45', 1, 184, 'en-184'),
(185, 'portfolio', 'Jazz Market (E-Commerce)', 'jazz-market-e-commerce', '', 184, 0, 1, 2, '2016-07-28 16:15:30', 1, '2016-07-28 16:15:30', 1, 185, 'en-185'),
(186, 'portfolio', 'Purchase Tickets - Jazz Market', 'purchase-tickets-jazz-market-1', NULL, 182, 185, 1, 0, '2016-07-28 16:15:30', 1, '2016-07-28 16:15:30', 1, 186, 'en-186'),
(187, 'portfolio', 'Participate - Jazz Market', 'participate-jazz-market-1', NULL, 183, 185, 1, 0, '2016-07-28 16:15:30', 1, '2016-07-28 16:15:30', 1, 187, 'en-187'),
(188, 'media', 'Activities - The Shalimar', 'activities-the-shalimar', NULL, 0, 0, 1, 0, '2016-07-28 16:33:14', 1, '2016-07-28 16:33:14', 1, 188, 'en-188'),
(189, 'media', 'Rooms - The Shalimar', 'rooms-the-shalimar', NULL, 0, 0, 1, 0, '2016-07-28 16:33:16', 1, '2016-07-28 16:33:16', 1, 189, 'en-189'),
(190, 'media', 'Home - The Shalimar', 'home-the-shalimar', NULL, 0, 0, 1, 0, '2016-07-28 16:33:16', 1, '2016-07-28 16:33:16', 1, 190, 'en-190'),
(191, 'portfolio', 'The Shalimar - Boutique Hotel', 'the-shalimar-boutique-hotel', '', 190, 0, 1, 2, '2016-07-28 16:37:48', 1, '2016-07-28 16:42:44', 1, 191, 'en-191'),
(196, 'media', 'Calendar - U Property', 'calendar-u-property', NULL, 0, 0, 1, 0, '2017-03-01 11:43:32', 1, '2017-03-01 11:43:32', 1, 196, 'en-196'),
(195, 'portfolio', 'Rooms - The Shalimar', 'rooms-the-shalimar-1', NULL, 189, 191, 1, 0, '2016-07-28 16:42:44', 1, '2016-07-28 16:42:44', 1, 195, 'en-195'),
(194, 'portfolio', 'Activities - The Shalimar', 'activities-the-shalimar-1', NULL, 188, 191, 1, 0, '2016-07-28 16:42:44', 1, '2016-07-28 16:42:44', 1, 194, 'en-194'),
(197, 'media', 'Contact Us - U Property', 'contact-us-u-property', NULL, 0, 0, 1, 0, '2017-03-01 11:43:32', 1, '2017-03-01 11:43:32', 1, 197, 'en-197'),
(198, 'media', 'Home - U Property', 'home-u-property', NULL, 0, 0, 1, 0, '2017-03-01 11:43:33', 1, '2017-03-01 11:43:33', 1, 198, 'en-198'),
(199, 'portfolio', 'U Property Indonesia', 'u-property-indonesia', '', 198, 0, 1, 2, '2017-03-01 11:45:23', 1, '2017-03-01 11:45:23', 1, 199, 'en-199'),
(200, 'portfolio', 'Contact Us - U Property', 'contact-us-u-property-1', NULL, 197, 199, 1, 0, '2017-03-01 11:45:23', 1, '2017-03-01 11:45:23', 1, 200, 'en-200'),
(201, 'portfolio', 'Calendar - U Property', 'calendar-u-property-1', NULL, 196, 199, 1, 0, '2017-03-01 11:45:23', 1, '2017-03-01 11:45:23', 1, 201, 'en-201'),
(202, 'media', 'Home - Meridian', 'home-meridian', NULL, 0, 0, 1, 0, '2017-03-01 14:09:13', 1, '2017-03-01 14:09:13', 1, 202, 'en-202'),
(203, 'media', 'Articles - Meridian', 'articles-meridian', NULL, 0, 0, 1, 0, '2017-03-01 14:09:14', 1, '2017-03-01 14:09:14', 1, 203, 'en-203'),
(204, 'media', 'Products - Meridian', 'products-meridian', NULL, 0, 0, 1, 0, '2017-03-01 14:09:48', 1, '2017-03-01 14:09:48', 1, 204, 'en-204'),
(205, 'portfolio', 'Meridian - Pintu Harmonika', 'meridian-pintu-harmonika', '', 202, 0, 1, 2, '2017-03-01 14:12:22', 1, '2017-03-01 14:12:22', 1, 205, 'en-205'),
(206, 'portfolio', 'Articles - Meridian', 'articles-meridian-1', NULL, 203, 205, 1, 0, '2017-03-01 14:12:22', 1, '2017-03-01 14:12:22', 1, 206, 'en-206'),
(207, 'portfolio', 'Products - Meridian', 'products-meridian-1', NULL, 204, 205, 1, 0, '2017-03-01 14:12:22', 1, '2017-03-01 14:12:22', 1, 207, 'en-207'),
(208, 'media', 'Home - VASA', 'home-vasa', NULL, 0, 0, 1, 0, '2017-03-02 16:19:40', 1, '2017-03-02 16:19:40', 1, 208, 'en-208'),
(209, 'media', 'Weddings - VASA', 'weddings-vasa', NULL, 0, 0, 1, 0, '2017-03-02 16:19:40', 1, '2017-03-02 16:19:40', 1, 209, 'en-209'),
(210, 'media', 'Rooms - VASA', 'rooms-vasa', NULL, 0, 0, 1, 0, '2017-03-02 16:19:41', 1, '2017-03-02 16:19:41', 1, 210, 'en-210'),
(211, 'portfolio', 'VASA Hotel Surabaya', 'vasa-hotel-surabaya', '', 208, 0, 1, 2, '2017-03-02 16:20:45', 1, '2017-03-02 16:20:45', 1, 211, 'en-211'),
(212, 'portfolio', 'Weddings - VASA', 'weddings-vasa-1', NULL, 209, 211, 1, 0, '2017-03-02 16:20:45', 1, '2017-03-02 16:20:45', 1, 212, 'en-212'),
(213, 'portfolio', 'Rooms - VASA', 'rooms-vasa-1', NULL, 210, 211, 1, 0, '2017-03-02 16:20:45', 1, '2017-03-02 16:20:45', 1, 213, 'en-213');

-- --------------------------------------------------------

--
-- Table structure for table `cms_entry_metas`
--

CREATE TABLE `cms_entry_metas` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_entry_metas`
--

INSERT INTO `cms_entry_metas` (`id`, `entry_id`, `key`, `value`) VALUES
(108, 1, 'image_size', '25393'),
(107, 1, 'image_type', 'png'),
(106, 4, 'image_size', '882233'),
(105, 4, 'image_type', 'png'),
(363, 8, 'form-teaser', '<p><span style=\"line-height: 20.7999992370605px;\">Do you have an idea for&nbsp;website, but don&#39;t know what to do next? We&#39;re on your&nbsp;line.</span></p>\r\n'),
(37, 10, 'image_type', 'png'),
(38, 10, 'image_size', '37514'),
(300, 11, 'form-url_link', 'http://www.creazidigital.com'),
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
(352, 23, 'form-url_link', 'http://maxiprocare.com'),
(65, 24, 'form-url_link', 'http://www.igors-pastry.com'),
(95, 21, 'image_type', 'png'),
(273, 26, 'form-developer', 'creazi-citra-cemerlang'),
(75, 28, 'form-url_link', 'http://beautifulpaloma.com'),
(76, 28, 'form-developer', 'creazi-citra-cemerlang'),
(82, 30, 'form-url_link', 'http://ayobaking.com'),
(83, 30, 'form-developer', 'creazi-citra-cemerlang'),
(103, 27, 'image_type', 'png'),
(93, 29, 'image_type', 'png'),
(306, 32, 'form-url_link', 'http://insight-code.com'),
(97, 31, 'image_type', 'png'),
(94, 29, 'image_size', '271240'),
(96, 21, 'image_size', '296774'),
(98, 31, 'image_size', '83790'),
(268, 89, 'image_size', '147942'),
(104, 27, 'image_size', '350780'),
(113, 33, 'image_type', 'png'),
(114, 33, 'image_size', '86529'),
(286, 96, 'image_size', '126246'),
(285, 96, 'image_type', 'jpg'),
(288, 35, 'form-developer', 'creazi-citra-cemerlang'),
(122, 37, 'image_size', '634935'),
(121, 37, 'image_type', 'png'),
(123, 38, 'form-url_link', 'http://hatisehat.com'),
(124, 38, 'form-developer', 'creazi-citra-cemerlang'),
(126, 39, 'image_type', 'jpg'),
(127, 39, 'image_size', '68008'),
(369, 7, 'form-teaser', '<p><span style=\"line-height: 20.7999992370605px;\">At webomatics, we help you to analyze what kind of data &amp; system that suite your website.</span></p>\r\n'),
(366, 6, 'form-teaser', '<p><span style=\"line-height: 20.7999992370605px;\">Using&nbsp;</span><em style=\"line-height: 20.7999992370605px;\"><strong><a href=\"http://en.wikipedia.org/wiki/Web_application_framework\" target=\"_blank\"><span style=\"color: rgb(255, 255, 255);\">WAF</span></a></strong></em><span style=\"line-height: 20.7999992370605px;\">&nbsp;&amp;&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/HTML5\" style=\"line-height: 20.7999992370605px;\" target=\"_blank\"><em><strong><span style=\"color: rgb(255, 255, 255);\">HTML5&nbsp;Technology</span></strong></em></a><span style=\"line-height: 20.7999992370605px;\">, we guarantee your website are ready to be baked!</span></p>\r\n'),
(372, 9, 'form-teaser', '<p><span style=\"line-height: 20.7999992370605px;\">Attract&nbsp;business market to your website traffic with&nbsp;</span><em style=\"line-height: 20.7999992370605px;\"><strong><a href=\"http://en.wikipedia.org/wiki/Search_engine_optimization\" target=\"_blank\"><span style=\"color: rgb(255, 255, 255);\">SEO Technology</span></a></strong></em><span style=\"line-height: 20.7999992370605px;\">.</span></p>\r\n'),
(364, 8, 'form-icon', 'fa-puzzle-piece'),
(173, 43, 'image_size', '179959'),
(172, 43, 'image_type', 'jpg'),
(180, 44, 'image_size', '61914'),
(179, 44, 'image_type', 'jpg'),
(187, 45, 'image_size', '318493'),
(186, 45, 'image_type', 'jpg'),
(188, 46, 'image_type', 'png'),
(189, 46, 'image_size', '29870'),
(190, 47, 'image_type', 'png'),
(191, 47, 'image_size', '41556'),
(367, 6, 'form-icon', 'fa-html5'),
(368, 7, 'form-subtitle', 'look at the game like a coach'),
(365, 6, 'form-subtitle', 'talking with the codes'),
(371, 9, 'form-subtitle', 'building your traffic'),
(204, 48, 'image_type', 'png'),
(205, 48, 'image_size', '408165'),
(315, 49, 'form-developer', 'creazi-citra-cemerlang'),
(314, 49, 'form-url_link', 'http://alinealight.com'),
(208, 50, 'image_type', 'png'),
(209, 50, 'image_size', '349732'),
(322, 51, 'form-developer', 'creazi-citra-cemerlang'),
(321, 51, 'form-url_link', 'http://sutramakmur.com'),
(294, 100, 'image_size', '157456'),
(293, 100, 'image_type', 'jpg'),
(299, 53, 'form-developer', 'creazi-citra-cemerlang'),
(243, 54, 'image_size', '402873'),
(242, 54, 'image_type', 'png'),
(218, 55, 'form-url_link', 'http://saintkeyne.com'),
(219, 55, 'form-developer', 'creazi-citra-cemerlang'),
(228, 56, 'image_size', '229746'),
(227, 56, 'image_type', 'png'),
(222, 57, 'form-url_link', 'http://promaxv.com'),
(223, 57, 'form-developer', 'creazi-citra-cemerlang'),
(230, 58, 'image_size', '358442'),
(229, 58, 'image_type', 'png'),
(226, 59, 'form-url_link', 'http://www.balikpapansuperblock.com'),
(231, 60, 'image_type', 'png'),
(232, 60, 'image_size', '366167'),
(233, 61, 'form-url_link', 'http://bambangsyumanjaya.com'),
(234, 61, 'form-developer', 'creazi-citra-cemerlang'),
(362, 8, 'form-subtitle', 'great concept, great start'),
(254, 74, 'image_size', '54584'),
(253, 74, 'image_type', 'png'),
(260, 63, 'form-url_link', 'http://www.toko-maju.com'),
(244, 63, 'count-portfolio', '3'),
(246, 67, 'image_type', 'png'),
(247, 67, 'image_size', '145836'),
(249, 69, 'image_type', 'png'),
(250, 69, 'image_size', '129217'),
(255, 75, 'image_type', 'png'),
(256, 75, 'image_size', '121200'),
(267, 89, 'image_type', 'jpg'),
(263, 88, 'image_type', 'jpg'),
(264, 88, 'image_size', '109468'),
(272, 26, 'form-url_link', 'http://www.iricchijewellery.com'),
(269, 90, 'image_type', 'jpg'),
(270, 90, 'image_size', '139111'),
(271, 26, 'count-portfolio', '2'),
(281, 93, 'image_size', '185167'),
(280, 93, 'image_type', 'jpg'),
(289, 99, 'image_type', 'jpg'),
(278, 94, 'image_type', 'jpg'),
(279, 94, 'image_size', '200101'),
(282, 35, 'count-portfolio', '2'),
(287, 35, 'form-url_link', 'http://rotikecil.com'),
(290, 99, 'image_size', '177032'),
(298, 53, 'form-url_link', 'http://tapat.co.id'),
(295, 101, 'image_type', 'jpg'),
(296, 101, 'image_size', '132424'),
(297, 53, 'count-portfolio', '2'),
(308, 104, 'image_size', '84561'),
(307, 104, 'image_type', 'png'),
(303, 105, 'image_type', 'png'),
(304, 105, 'image_size', '91507'),
(305, 32, 'count-portfolio', '2'),
(309, 108, 'image_type', 'jpg'),
(310, 108, 'image_size', '71491'),
(311, 109, 'image_type', 'jpg'),
(312, 109, 'image_size', '114251'),
(313, 49, 'count-portfolio', '2'),
(316, 112, 'image_type', 'jpg'),
(317, 112, 'image_size', '66666'),
(318, 113, 'image_type', 'jpg'),
(319, 113, 'image_size', '116261'),
(320, 51, 'count-portfolio', '2'),
(323, 116, 'image_type', 'jpg'),
(324, 116, 'image_size', '136863'),
(325, 117, 'image_type', 'jpg'),
(326, 117, 'image_size', '260947'),
(327, 118, 'image_type', 'jpg'),
(328, 118, 'image_size', '139803'),
(329, 119, 'count-portfolio', '2'),
(330, 119, 'form-url_link', 'http://ptsumberteknik.com'),
(331, 119, 'form-developer', 'creazi-citra-cemerlang'),
(332, 122, 'image_type', 'jpg'),
(333, 122, 'image_size', '254143'),
(334, 123, 'image_type', 'jpg'),
(335, 123, 'image_size', '417091'),
(336, 124, 'image_type', 'jpg'),
(337, 124, 'image_size', '285948'),
(338, 125, 'count-portfolio', '2'),
(339, 125, 'form-url_link', 'http://mataharisakti.com/'),
(340, 125, 'form-developer', 'creazi-citra-cemerlang'),
(341, 128, 'image_type', 'png'),
(342, 128, 'image_size', '363059'),
(343, 129, 'image_type', 'png'),
(344, 129, 'image_size', '485635'),
(345, 130, 'image_type', 'png'),
(346, 130, 'image_size', '495410'),
(350, 131, 'form-url_link', 'http://tritanwarehouse.com'),
(349, 131, 'count-portfolio', '2'),
(351, 131, 'form-developer', 'creazi-citra-cemerlang'),
(353, 134, 'image_type', 'png'),
(354, 134, 'image_size', '135772'),
(355, 135, 'image_type', 'png'),
(356, 135, 'image_size', '463996'),
(357, 136, 'image_type', 'png'),
(358, 136, 'image_size', '542020'),
(359, 137, 'count-portfolio', '2'),
(360, 137, 'form-url_link', 'http://baligolive.com'),
(361, 137, 'form-developer', 'creazi-citra-cemerlang'),
(370, 7, 'form-icon', 'fa-lightbulb-o'),
(373, 9, 'form-icon', 'fa-users'),
(374, 140, 'image_type', 'jpg'),
(375, 140, 'image_size', '180281'),
(376, 141, 'image_type', 'jpg'),
(377, 141, 'image_size', '205343'),
(378, 142, 'image_type', 'jpg'),
(379, 142, 'image_size', '233304'),
(380, 143, 'count-portfolio', '2'),
(381, 143, 'form-url_link', 'http://www.kasakata.co.id'),
(382, 143, 'form-developer', 'creazi-citra-cemerlang'),
(383, 146, 'image_type', 'jpg'),
(384, 146, 'image_size', '262562'),
(385, 147, 'image_type', 'jpg'),
(386, 147, 'image_size', '342733'),
(387, 148, 'image_type', 'jpg'),
(388, 148, 'image_size', '433850'),
(389, 149, 'count-portfolio', '2'),
(390, 149, 'form-url_link', 'http://www.tumpengmini.com'),
(391, 149, 'form-developer', 'creazi-citra-cemerlang'),
(392, 152, 'image_type', 'jpg'),
(393, 152, 'image_size', '308756'),
(394, 153, 'image_type', 'jpg'),
(395, 153, 'image_size', '484342'),
(396, 154, 'image_type', 'jpg'),
(397, 154, 'image_size', '313885'),
(398, 155, 'count-portfolio', '2'),
(399, 155, 'form-url_link', 'http://www.inderacipta.com'),
(400, 155, 'form-developer', 'creazi-citra-cemerlang'),
(401, 158, 'image_type', 'png'),
(402, 158, 'image_size', '177593'),
(403, 159, 'image_type', 'jpg'),
(404, 159, 'image_size', '186568'),
(405, 160, 'image_type', 'jpg'),
(406, 160, 'image_size', '295982'),
(407, 161, 'count-portfolio', '2'),
(408, 161, 'form-url_link', 'http://www.ktgplastics.com'),
(409, 161, 'form-developer', 'creazi-citra-cemerlang'),
(410, 164, 'image_type', 'jpg'),
(411, 164, 'image_size', '333938'),
(412, 165, 'image_type', 'jpg'),
(413, 165, 'image_size', '380419'),
(414, 166, 'image_type', 'jpg'),
(415, 166, 'image_size', '266220'),
(416, 167, 'count-portfolio', '2'),
(417, 167, 'form-url_link', 'http://www.cmnbrands.com'),
(418, 167, 'form-developer', 'creazi-citra-cemerlang'),
(419, 170, 'image_type', 'jpg'),
(420, 170, 'image_size', '335105'),
(421, 171, 'image_type', 'jpg'),
(422, 171, 'image_size', '297656'),
(423, 172, 'image_type', 'jpg'),
(424, 172, 'image_size', '416857'),
(425, 173, 'count-portfolio', '2'),
(426, 173, 'form-url_link', 'http://www.sumberwilis.com'),
(427, 173, 'form-developer', 'creazi-citra-cemerlang'),
(428, 176, 'image_type', 'jpg'),
(429, 176, 'image_size', '167954'),
(430, 177, 'image_type', 'jpg'),
(431, 177, 'image_size', '364204'),
(432, 178, 'image_type', 'jpg'),
(433, 178, 'image_size', '445393'),
(434, 179, 'count-portfolio', '2'),
(435, 179, 'form-url_link', 'http://www.tamanbhagawan.com'),
(436, 179, 'form-developer', 'creazi-citra-cemerlang'),
(437, 182, 'image_type', 'jpg'),
(438, 182, 'image_size', '306643'),
(439, 183, 'image_type', 'jpg'),
(440, 183, 'image_size', '473471'),
(441, 184, 'image_type', 'jpg'),
(442, 184, 'image_size', '477590'),
(443, 185, 'count-portfolio', '2'),
(444, 185, 'form-url_link', 'http://www.jazz-market.com'),
(445, 185, 'form-developer', 'creazi-citra-cemerlang'),
(446, 188, 'image_type', 'jpg'),
(447, 188, 'image_size', '166708'),
(448, 189, 'image_type', 'jpg'),
(449, 189, 'image_size', '252884'),
(450, 190, 'image_type', 'jpg'),
(451, 190, 'image_size', '417073'),
(452, 191, 'count-portfolio', '2'),
(455, 191, 'form-url_link', 'http://www.theshalimarhotel.co.id'),
(456, 191, 'form-developer', 'creazi-citra-cemerlang'),
(457, 196, 'image_type', 'jpg'),
(458, 196, 'image_size', '340504'),
(459, 197, 'image_type', 'jpg'),
(460, 197, 'image_size', '192914'),
(461, 198, 'image_type', 'jpg'),
(462, 198, 'image_size', '306861'),
(463, 199, 'count-portfolio', '2'),
(464, 199, 'form-url_link', 'http://www.upropertyindonesia.com'),
(465, 199, 'form-developer', 'creazi-citra-cemerlang'),
(466, 202, 'image_type', 'jpg'),
(467, 202, 'image_size', '363875'),
(468, 203, 'image_type', 'jpg'),
(469, 203, 'image_size', '395633'),
(476, 204, 'image_size', '216012'),
(475, 204, 'image_type', 'jpg'),
(472, 205, 'count-portfolio', '2'),
(473, 205, 'form-url_link', 'http://www.meridianvdg.com'),
(474, 205, 'form-developer', 'creazi-citra-cemerlang'),
(477, 208, 'image_type', 'jpg'),
(478, 208, 'image_size', '363315'),
(479, 209, 'image_type', 'jpg'),
(480, 209, 'image_size', '158393'),
(481, 210, 'image_type', 'jpg'),
(482, 210, 'image_size', '341950'),
(483, 211, 'count-portfolio', '2'),
(484, 211, 'form-url_link', 'http://www.vasahotelsurabaya.com'),
(485, 211, 'form-developer', 'creazi-citra-cemerlang');

-- --------------------------------------------------------

--
-- Table structure for table `cms_roles`
--

CREATE TABLE `cms_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` text,
  `count` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `cms_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `key`, `value`) VALUES
(1, 'title', 'Webomatics - Website Services'),
(2, 'tagline', 'website, business, technology, informatics, marketing, inventory, online, simple, easy, survey, surabaya, indonesia, simplicity, design, premium, signature, storage management, conceptor, analyst'),
(3, 'description', 'where the Website, Technology & Informatics boost your business'),
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
(21, 'custom-phone_contact', '(+6281) 7525-5381'),
(22, 'custom-facebook_url', 'https://www.facebook.com/webomatics.net'),
(23, 'custom-twitter_url', '#'),
(24, 'custom-google_url', '#'),
(25, 'custom-whatsapp_contact', '(+6289) 67367-1110');

-- --------------------------------------------------------

--
-- Table structure for table `cms_types`
--

CREATE TABLE `cms_types` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_types`
--

INSERT INTO `cms_types` (`id`, `name`, `slug`, `description`, `parent_id`, `count`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 'Media Library', 'media', 'All media image is stored here.', 0, 0, '2013-01-15 03:35:14', 1, '2013-01-15 03:35:14', 1),
(2, 'Gallery', 'gallery', 'Our Gallery Projects.', 0, 0, '2013-01-15 03:37:26', 1, '2013-01-15 03:37:26', 1),
(3, 'Slideshow', 'slideshow', 'Home slideshow with details.', 0, 0, '2014-09-03 10:35:08', 1, '2014-09-03 10:35:08', 1),
(4, 'Services', 'services', '', 0, 0, '2014-10-08 11:14:25', 1, '2014-10-22 16:08:29', 1),
(5, 'Portfolio', 'portfolio', 'Webomatics Website Portfolio', 0, 0, '2014-10-09 14:16:09', 1, '2015-02-09 11:59:55', 1),
(6, 'Developer', 'developer', 'Outsource Project Developer.', 0, 0, '2014-10-09 14:16:52', 1, '2014-10-09 14:21:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_type_metas`
--

CREATE TABLE `cms_type_metas` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text,
  `input_type` varchar(500) DEFAULT NULL,
  `validation` text,
  `instruction` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_type_metas`
--

INSERT INTO `cms_type_metas` (`id`, `type_id`, `key`, `value`, `input_type`, `validation`, `instruction`) VALUES
(1, 3, 'form-url_link', '', 'text', 'is_url|', 'Example: http://www.yourdomain.com'),
(18, 5, 'form-developer', '', 'browse', '', 'Ignore this field if you develop this project yourself.'),
(11, 5, 'pagination', '4', NULL, NULL, NULL),
(5, 6, 'form-url_link', '', 'text', 'is_url|', 'Example: http://www.yourdomain.com'),
(9, 4, 'form-teaser', '', 'ckeditor', 'not_empty|', 'Short description about this service.'),
(8, 4, 'form-subtitle', '', 'text', '', 'more explanation for the title.'),
(10, 4, 'form-icon', '', 'text', '', 'icon symbol for services identity.'),
(16, 5, 'gallery', 'enable', NULL, NULL, NULL),
(17, 5, 'form-url_link', '', 'text', 'not_empty|is_url|', 'Example: http://www.yourdomain.com');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `firstname`, `lastname`, `created`, `created_by`, `modified`, `modified_by`, `status`) VALUES
(1, 'Andy', 'Basuki CEO', '2013-01-04 00:00:00', 1, '2015-01-13 15:25:02', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_user_metas`
--

CREATE TABLE `cms_user_metas` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_user_metas`
--

INSERT INTO `cms_user_metas` (`id`, `user_id`, `key`, `value`) VALUES
(20, 1, 'job', 'Web Developer'),
(19, 1, 'dob_year', '1988'),
(18, 1, 'dob_month', '10'),
(17, 1, 'dob_day', '28'),
(16, 1, 'mobile_phone', '089 67367 1110'),
(15, 1, 'city', 'Surabaya, Indonesia'),
(14, 1, 'zip_code', '60285'),
(13, 1, 'address', 'Jl. Dharmahusada Indah 43'),
(12, 1, 'gender', 'male'),
(21, 1, 'company', 'PT. Creazi Citra Cemerlang'),
(22, 1, 'company_address', 'Jl. Nginden Semolo 101');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_accounts`
--
ALTER TABLE `cms_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cms_entries`
--
ALTER TABLE `cms_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `cms_entry_metas`
--
ALTER TABLE `cms_entry_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_roles`
--
ALTER TABLE `cms_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_types`
--
ALTER TABLE `cms_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `cms_type_metas`
--
ALTER TABLE `cms_type_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_user_metas`
--
ALTER TABLE `cms_user_metas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_accounts`
--
ALTER TABLE `cms_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_entries`
--
ALTER TABLE `cms_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `cms_entry_metas`
--
ALTER TABLE `cms_entry_metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `cms_roles`
--
ALTER TABLE `cms_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cms_types`
--
ALTER TABLE `cms_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_type_metas`
--
ALTER TABLE `cms_type_metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_user_metas`
--
ALTER TABLE `cms_user_metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
