-- phpMyAdmin SQL Dump
-- version 4.4.15.6
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 09 Juin 2016 à 10:35
-- Version du serveur :  5.5.49-0+deb7u1-log
-- Version de PHP :  5.4.45-0+deb7u2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sonata`
--

-- --------------------------------------------------------

--
-- Structure de la table `acl_classes`
--

CREATE TABLE IF NOT EXISTS `acl_classes` (
  `id` int(10) unsigned NOT NULL,
  `class_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `acl_entries`
--

CREATE TABLE IF NOT EXISTS `acl_entries` (
  `id` int(10) unsigned NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `object_identity_id` int(10) unsigned DEFAULT NULL,
  `security_identity_id` int(10) unsigned NOT NULL,
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ace_order` smallint(5) unsigned NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `acl_object_identities`
--

CREATE TABLE IF NOT EXISTS `acl_object_identities` (
  `id` int(10) unsigned NOT NULL,
  `parent_object_identity_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `object_identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entries_inheriting` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `acl_object_identity_ancestors`
--

CREATE TABLE IF NOT EXISTS `acl_object_identity_ancestors` (
  `object_identity_id` int(10) unsigned NOT NULL,
  `ancestor_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `acl_security_identities`
--

CREATE TABLE IF NOT EXISTS `acl_security_identities` (
  `id` int(10) unsigned NOT NULL,
  `identifier` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `app_campaign`
--

CREATE TABLE IF NOT EXISTS `app_campaign` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `channel_one` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel_two` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel_three` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel_four` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nb_clients` int(11) NOT NULL,
  `nb_contacted` int(11) NOT NULL,
  `nb_opt_out` int(11) NOT NULL,
  `active_campaign` tinyint(1) DEFAULT NULL,
  `emails_sent` int(11) NOT NULL,
  `sms_sent` int(11) NOT NULL,
  `mails_sent` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `ca` int(11) NOT NULL,
  `tx_o` decimal(9,2) NOT NULL,
  `tx_c` decimal(9,2) NOT NULL,
  `active_kpi` tinyint(1) DEFAULT NULL,
  `id_campaign_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_campaign`
--

INSERT INTO `app_campaign` (`id`, `name`, `description`, `channel_one`, `channel_two`, `channel_three`, `channel_four`, `start_date`, `end_date`, `state`, `nb_clients`, `nb_contacted`, `nb_opt_out`, `active_campaign`, `emails_sent`, `sms_sent`, `mails_sent`, `image_id`, `ca`, `tx_o`, `tx_c`, `active_kpi`, `id_campaign_name`, `brand`) VALUES
(11, 'Lotus', 'Marque à la une', 'Email', '', NULL, NULL, '2016-05-02', '2016-05-31', 'finished', 0, 0, 0, 0, 184587, 0, 0, 8, 0, 18.80, 9.80, 1, NULL, 'LOUIS PION'),
(12, 'OUVERTURE BOUTIQUE ST DENIS', 'Outlet', 'Email', '', NULL, NULL, '2016-05-04', '2016-05-31', 'finished', 0, 0, 0, 0, 4324, 0, 0, 9, 0, 20.80, 8.10, 1, NULL, 'LOUIS PION'),
(13, 'Fête des mères #1', 'Premier envoi', 'Email', '', NULL, NULL, '2016-05-08', '2016-05-31', 'finished', 0, 0, 0, 0, 185806, 0, 0, 10, 0, 18.20, 8.20, 1, NULL, 'LOUIS PION'),
(14, 'Fermeture GL Toulon', 'Destockage jusqu’à fermeture', 'Email', '', NULL, NULL, '2016-05-14', '2016-05-31', 'finished', 0, 0, 0, 0, 3109, 0, 0, 11, 0, 21.20, 13.00, 1, NULL, 'LOUIS PION'),
(15, 'Fête des mères #2', 'Envoi 2', 'Email', '', NULL, NULL, '2016-05-24', '2016-05-31', 'finished', 0, 0, 0, 0, 172073, 0, 0, 12, 0, 20.40, 0.00, 1, NULL, 'LOUIS PION'),
(16, 'Festina', 'Marque à la une : Festina', 'Email', '', NULL, NULL, '2016-05-26', '2016-05-31', 'finished', 0, 0, 0, 0, 169206, 0, 0, 13, 0, 21.10, 0.00, 1, NULL, 'LOUIS PION');

-- --------------------------------------------------------

--
-- Structure de la table `app_campaign_channel`
--

CREATE TABLE IF NOT EXISTS `app_campaign_channel` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `app_campaign_field`
--

CREATE TABLE IF NOT EXISTS `app_campaign_field` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `app_channel`
--

CREATE TABLE IF NOT EXISTS `app_channel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_channel`
--

INSERT INTO `app_channel` (`id`, `name`, `count`) VALUES
(1, 'Email', 0),
(2, 'Mail', 0),
(3, 'Phone', 0),
(4, 'SMS', 0);

-- --------------------------------------------------------

--
-- Structure de la table `app_client`
--

CREATE TABLE IF NOT EXISTS `app_client` (
  `id` int(11) NOT NULL,
  `id_client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_campaign_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress1` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `phone_err` tinyint(1) NOT NULL,
  `adress_err` tinyint(1) NOT NULL,
  `email_err` tinyint(1) NOT NULL,
  `opt_out_email` tinyint(1) NOT NULL,
  `opt_out_mail` tinyint(1) NOT NULL,
  `opt_out_phone` tinyint(1) NOT NULL,
  `opt_out_sms` tinyint(1) NOT NULL,
  `score` int(11) NOT NULL,
  `campaign_entry_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `ca_3_years` int(11) DEFAULT NULL,
  `ca_12_months` int(11) DEFAULT NULL,
  `frequence_3_years` int(11) DEFAULT NULL,
  `frequence_12_months` int(11) DEFAULT NULL,
  `max_price_3_years` int(11) DEFAULT NULL,
  `max_price_12_months` int(11) DEFAULT NULL,
  `segment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_uvc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ligne_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_paid` int(11) DEFAULT NULL,
  `empty_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `channel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_client`
--

INSERT INTO `app_client` (`id`, `id_client`, `id_campaign_name`, `store`, `firstname`, `lastname`, `email`, `phone1`, `phone2`, `adress1`, `adress2`, `adress3`, `city`, `postal_code`, `country`, `nationality`, `birthday`, `last_contact`, `phone_err`, `adress_err`, `email_err`, `opt_out_email`, `opt_out_mail`, `opt_out_phone`, `opt_out_sms`, `score`, `campaign_entry_at`, `created_at`, `modified_at`, `ca_3_years`, `ca_12_months`, `frequence_3_years`, `frequence_12_months`, `max_price_3_years`, `max_price_12_months`, `segment`, `code_uvc`, `sku_desc`, `genre_desc`, `ligne_desc`, `price_paid`, `empty_1`, `empty_2`, `empty_3`, `empty_4`, `empty_5`, `empty_6`, `empty_7`, `empty_8`, `empty_9`, `vendor_code`, `active`, `channel`, `empty_10`) VALUES
(15, '019019', NULL, NULL, 'qsdd', 'qsd', 'qsd@gmail.Com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2016-06-07 16:04:09', '2016-06-07 16:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ssdq', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `app_field`
--

CREATE TABLE IF NOT EXISTS `app_field` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_field`
--

INSERT INTO `app_field` (`id`, `name`, `count`) VALUES
(1, 'email', 0),
(2, 'adress1', 0),
(3, 'adress2', 0),
(4, 'postalCode', 0),
(5, 'city', 0),
(6, 'country', 0),
(7, 'phone', 0),
(8, 'mobile', 0),
(10, 'nationality', 0),
(11, 'birthday', 0),
(12, 'last_contact', 0),
(13, 'ca3Years', 0),
(14, 'ca12Months', 0),
(15, 'maxPrice3Years', 0),
(16, 'maxPrice12Months', 0),
(17, 'frequence3Years', 0),
(18, 'frequence12Months', 0),
(19, 'segment', 0),
(20, 'codeUvc', 0),
(21, 'genreDesc', 0),
(22, 'ligneDesc', 0),
(23, 'pricePaid', 0),
(24, 'empty1', 0),
(25, 'empty2', 0),
(26, 'empty3', 0),
(27, 'empty4', 0),
(28, 'empty5', 0),
(29, 'empty6', 0),
(30, 'empty7', 0),
(31, 'empty8', 0),
(32, 'empty9', 0),
(33, 'empty10', 0);

-- --------------------------------------------------------

--
-- Structure de la table `app_file_imports`
--

CREATE TABLE IF NOT EXISTS `app_file_imports` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `errorCount` int(11) DEFAULT NULL,
  `successCount` int(11) DEFAULT NULL,
  `totalProcessedCount` int(11) DEFAULT NULL,
  `hasErrors` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_file_imports`
--

INSERT INTO `app_file_imports` (`id`, `name`, `startTime`, `endTime`, `errorCount`, `successCount`, `totalProcessedCount`, `hasErrors`) VALUES
(1, 'cron_import_05122016110501', '2016-05-12 11:24:02', '2016-05-12 11:24:02', 0, 3, 3, 0),
(2, 'cron_import_05312016110548', '2016-05-31 11:41:49', '2016-05-31 11:41:49', 0, 1, 1, 0),
(3, 'cron_import_05312016120515', '2016-05-31 12:11:15', '2016-05-31 12:11:15', 0, 1, 1, 0),
(4, 'cron_import_05312016120505', '2016-05-31 12:12:05', '2016-05-31 12:12:05', 0, 1, 1, 0),
(5, 'cron_import_05312016120527', '2016-05-31 12:20:27', '2016-05-31 12:20:27', 0, 1, 1, 0),
(6, 'cron_import_05312016120513', '2016-05-31 12:21:13', '2016-05-31 12:21:13', 0, 1, 1, 0),
(7, 'cron_import_05312016140508', '2016-05-31 14:00:08', '2016-05-31 14:00:08', 0, 1, 1, 0),
(8, 'cron_import_05312016140551', '2016-05-31 14:00:51', '2016-05-31 14:00:51', 0, 1, 1, 0),
(9, 'cron_import_05312016140532', '2016-05-31 14:35:32', '2016-05-31 14:35:35', 0, 167, 167, 0),
(10, 'cron_import_05312016150532', '2016-05-31 15:21:32', '2016-05-31 15:21:35', 0, 167, 167, 0),
(11, 'cron_import_05312016150530', '2016-05-31 15:52:30', '2016-05-31 15:52:33', 0, 167, 167, 0),
(12, 'cron_import_05312016150549', '2016-05-31 15:56:49', '2016-05-31 15:56:53', 0, 167, 167, 0),
(13, 'cron_import_06082016100616', '2016-06-08 10:49:16', '2016-06-08 10:49:19', 0, 167, 167, 0);

-- --------------------------------------------------------

--
-- Structure de la table `app_image`
--

CREATE TABLE IF NOT EXISTS `app_image` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_image`
--

INSERT INTO `app_image` (`id`, `url`, `alt`) VALUES
(8, '207d95d3926b236ccb9a415f8e258ab3.jpeg', NULL),
(9, 'f31afb844d0ce631233298ae71c654cb.jpeg', NULL),
(10, '8d605fb81099698960717551ae647dd1.jpeg', NULL),
(11, 'a641fb5be71329ed076ed40d90d3b2d6.jpeg', NULL),
(12, 'd51a4695ae91a5d6a043d51d90f9ebe2.jpeg', NULL),
(13, 'a7a818f19678141324e574e19db94274.jpeg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `app_import_clients`
--

CREATE TABLE IF NOT EXISTS `app_import_clients` (
  `id` int(11) NOT NULL,
  `id_client` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `app_kpi_month`
--

CREATE TABLE IF NOT EXISTS `app_kpi_month` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `nb_transac_m0` int(11) NOT NULL,
  `tx_transac_npe_m0` decimal(9,2) NOT NULL,
  `tx_transac_nve_m0` decimal(9,2) NOT NULL,
  `tx_transac_npes_m0` decimal(9,2) NOT NULL,
  `tx_transac_nves_m0` decimal(9,2) NOT NULL,
  `tx_transac_npesa_m0` decimal(9,2) NOT NULL,
  `tx_transac_nvesa_m0` decimal(9,2) NOT NULL,
  `nbre_clients_contactables_email_h` int(11) NOT NULL,
  `nbre_clients_inactifs_email_h` int(11) NOT NULL,
  `nbre_clients_animes_m0` int(11) NOT NULL,
  `nbre_clients_transformes_m0` int(11) NOT NULL,
  `CA_clients_transformes_m0` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank_npe_m0` int(11) NOT NULL,
  `rank_npes_m0` int(11) NOT NULL,
  `rank_npesa_m0` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_kpi_month`
--

INSERT INTO `app_kpi_month` (`id`, `user_id`, `date`, `nb_transac_m0`, `tx_transac_npe_m0`, `tx_transac_nve_m0`, `tx_transac_npes_m0`, `tx_transac_nves_m0`, `tx_transac_npesa_m0`, `tx_transac_nvesa_m0`, `nbre_clients_contactables_email_h`, `nbre_clients_inactifs_email_h`, `nbre_clients_animes_m0`, `nbre_clients_transformes_m0`, `CA_clients_transformes_m0`, `username`, `rank_npe_m0`, `rank_npes_m0`, `rank_npesa_m0`) VALUES
(1, 38, '2016-05-01', 337, 54.01, 0.00, 50.74, 0.00, 39.47, 0.59, 1586, 235, 706, 11, 980, '001 SAINT FERREOL', 34, 31, 26),
(2, 18, '2016-05-01', 662, 33.38, 0.15, 30.97, 0.60, 27.49, 0.45, 3722, 590, 1819, 37, 4327, '002 LE PONTET', 93, 87, 54),
(3, 61, '2016-05-01', 513, 22.42, 0.39, 21.83, 0.39, 7.02, 0.58, 2061, 404, 1006, 12, 1690, '003 VITROLLES', 115, 106, 121),
(4, 3, '2016-05-01', 700, 20.43, 0.14, 19.29, 0.14, 16.00, 0.00, 2743, 477, 1375, 22, 1762, '004 AVANT CAP', 121, 116, 94),
(5, 151, '2016-05-01', 666, 39.94, 0.75, 37.54, 0.75, 13.51, 0.90, 3829, 543, 1876, 57, 6856, '005 AIX EN PROVENCE', 78, 64, 105),
(6, 149, '2016-05-01', 436, 52.52, 1.38, 50.23, 1.38, 49.54, 1.38, 4678, 662, 1688, 34, 5387, '006 AUBAGNE', 38, 33, 12),
(7, 23, '2016-05-01', 607, 35.26, 0.16, 31.96, 0.16, 17.13, 1.15, 1879, 278, 1205, 40, 3487, '007 VILLARS', 90, 83, 90),
(8, 34, '2016-05-01', 813, 20.79, 0.98, 17.10, 0.74, 16.85, 0.74, 4503, 680, 1696, 33, 3939, '009 PERPIGNAN', 120, 118, 91),
(9, 68, '2016-05-01', 712, 40.17, 0.56, 35.96, 0.56, 33.85, 1.12, 5794, 779, 2305, 47, 3467, '010 ANNECY', 76, 71, 40),
(10, 134, '2016-05-01', 673, 38.93, 0.45, 36.26, 0.59, 5.65, 1.04, 3052, 402, 1218, 26, 1545, '012 TOULON GRAND VAR', 81, 70, 126),
(11, 79, '2016-05-01', 387, 32.30, 0.52, 30.49, 0.52, 24.55, 0.78, 2131, 391, 1038, 23, 1338, '013 NICE LINGOSTIERE', 95, 91, 63),
(12, 9, '2016-05-01', 553, 34.36, 0.00, 30.92, 0.00, 30.56, 0.00, 2554, 344, 899, 28, 2242, '014 NICE TNL', 91, 89, 49),
(13, 129, '2016-05-01', 598, 70.23, 0.67, 61.87, 0.84, 58.53, 1.51, 4835, 833, 2539, 61, 5680, '016 SAINT PRIEST', 6, 12, 5),
(14, 100, '2016-05-01', 824, 31.67, 0.12, 28.52, 0.12, 17.84, 0.12, 2045, 304, 1207, 29, 2229, '017 ECULLY', 96, 95, 85),
(15, 91, '2016-05-01', 413, 55.45, 0.73, 52.06, 0.97, 46.73, 0.48, 3082, 447, 1322, 34, 2901, '018 TOULON MAYOL', 31, 27, 16),
(16, 7, '2016-05-01', 512, 54.69, 0.78, 50.98, 0.78, 45.31, 0.98, 5044, 651, 2005, 33, 2364, '019 PORTET S/ GARONNE', 32, 30, 17),
(17, 119, '2016-05-01', 713, 41.94, 0.28, 37.31, 0.14, 35.90, 0.28, 2769, 357, 1320, 26, 1774, '020 TOULOUSE GRAMONT', 71, 66, 35),
(18, 80, '2016-05-01', 627, 23.76, 0.00, 20.57, 0.00, 10.21, 0.00, 6013, 744, 2051, 39, 2764, '021 BORDEAUX LE LAC', 113, 112, 112),
(19, 140, '2016-05-01', 944, 31.36, 0.42, 27.65, 0.32, 25.32, 0.53, 3275, 618, 1762, 32, 2404, '024 NICE ETOILE', 97, 97, 60),
(20, 8, '2016-05-01', 610, 68.03, 0.33, 64.75, 0.33, 17.54, 0.98, 3270, 416, 1761, 52, 4775, '026 PONTAULT COMBAULT', 13, 8, 87),
(21, 160, '2016-05-01', 769, 60.73, 0.39, 57.22, 0.78, 17.30, 1.30, 2682, 355, 1647, 63, 5716, '027 CLAYE SOUILLY', 24, 18, 88),
(22, 118, '2016-05-01', 897, 49.83, 0.00, 43.92, 0.00, 37.24, 0.22, 4964, 755, 2404, 78, 4646, '028 FACHES THUMESNIL', 47, 44, 32),
(23, 127, '2016-05-01', 1015, 58.82, 0.20, 30.94, 0.10, 26.11, 0.20, 3434, 410, 1450, 44, 3586, '029 RONCQ', 27, 88, 58),
(24, 111, '2016-05-01', 646, 46.28, 0.46, 39.01, 0.46, 33.59, 0.46, 3982, 609, 1941, 52, 3139, '030 SAINT GENIS 2', 56, 58, 41),
(25, 15, '2016-05-01', 422, 68.48, 1.18, 64.69, 1.18, 15.64, 0.95, 3931, 571, 1573, 27, 1730, '031 NOYELLES GODAULT', 10, 9, 95),
(26, 126, '2016-05-01', 632, 27.53, 0.47, 25.16, 0.32, 17.25, 0.00, 1901, 295, 908, 21, 1519, '032 ST BRICE SOUS FORET', 105, 100, 89),
(27, 50, '2016-05-01', 688, 44.77, 0.15, 38.95, 0.15, 37.79, 0.15, 3950, 545, 1699, 36, 2208, '033 ST SEBASTIEN S/ LOIRE', 60, 59, 29),
(28, 75, '2016-05-01', 654, 68.04, 0.76, 64.22, 0.61, 24.31, 0.46, 2697, 362, 1400, 44, 3274, '036 MONTESSON', 12, 10, 64),
(29, 54, '2016-05-01', 341, 22.29, 1.17, 21.41, 1.17, 18.48, 0.88, 2108, 342, 1048, 25, 1947, '037 CAP 3000', 116, 110, 84),
(30, 32, '2016-05-01', 381, 53.54, 2.10, 51.18, 2.10, 39.37, 1.57, 3343, 470, 1446, 37, 3373, '038 VALENCE', 36, 28, 28),
(31, 99, '2016-05-01', 551, 53.72, 0.36, 52.09, 0.36, 44.65, 0.18, 2003, 401, 1288, 24, 1431, '040 VENETTE', 35, 26, 19),
(32, 87, '2016-05-01', 841, 39.00, 2.02, 23.90, 1.66, 21.88, 1.66, 2545, 335, 1381, 71, 5591, '041 VALTHOIRY', 80, 102, 70),
(33, 2, '2016-05-01', 688, 36.05, 0.15, 32.70, 0.15, 19.33, 0.29, 1425, 153, 651, 32, 2627, '042 LA VILLE DU BOIS', 89, 80, 81),
(34, 47, '2016-05-01', 615, 69.27, 0.33, 66.18, 0.33, 20.00, 0.33, 3218, 412, 1580, 38, 2297, '044 CERGY PONTOISE', 7, 6, 78),
(35, 88, '2016-05-01', 455, 27.47, 0.00, 25.71, 0.00, 5.27, 0.00, 2290, 417, 1188, 19, 1943, '046 AVIGNON MISTRAL 7', 107, 99, 127),
(36, 98, '2016-05-01', 563, 51.87, 0.36, 45.65, 0.36, 45.29, 0.36, 2340, 351, 1182, 36, 2432, '048 BORDEAUX ST MEDARD', 40, 40, 18),
(37, 39, '2016-05-01', 658, 59.88, 0.15, 57.14, 0.15, 12.61, 0.91, 2482, 291, 1342, 31, 2204, '049 NOISY LE GRAND', 26, 19, 107),
(38, 106, '2016-05-01', 648, 52.01, 0.31, 47.38, 0.31, 47.38, 0.31, 5354, 611, 2089, 65, 4576, '051 LE MANS', 39, 35, 15),
(39, 145, '2016-05-01', 304, 62.17, 0.66, 56.58, 1.97, 32.57, 1.32, 2551, 364, 1199, 17, 2395, '053 STRASBOURG LES HALLES', 21, 20, 45),
(40, 103, '2016-05-01', 373, 62.73, 0.54, 58.45, 0.54, 57.91, 0.80, 5622, 941, 2311, 38, 3526, '054 CENTRE 2 ST ETIENNE', 19, 17, 7),
(41, 123, '2016-05-01', 635, 53.54, 0.47, 51.02, 0.94, 27.56, 0.94, 4921, 826, 2242, 53, 4363, '055 GRENOBLE GRAND PLACE', 37, 29, 53),
(42, 67, '2016-05-01', 574, 56.79, 0.35, 50.35, 0.35, 49.30, 0.35, 6774, 873, 2452, 73, 4859, '057 GONFREVILLE', 29, 32, 13),
(43, 37, '2016-05-01', 684, 78.22, 0.15, 72.22, 0.15, 16.37, 0.15, 6174, 856, 3037, 67, 7410, '062 VELIZY', 2, 2, 93),
(44, 138, '2016-05-01', 791, 37.42, 0.25, 30.59, 0.25, 25.66, 0.25, 5053, 668, 1992, 49, 2696, '063 MERIGNAC', 83, 90, 59),
(45, 29, '2016-05-01', 516, 44.77, 0.39, 40.50, 0.19, 21.32, 0.19, 3232, 543, 1626, 34, 2302, '064 CARRE SENART', 61, 52, 71),
(46, 156, '2016-05-01', 811, 66.83, 0.25, 39.33, 0.25, 8.51, 1.48, 5326, 660, 2482, 56, 7014, '066 CRETEIL', 14, 57, 119),
(47, 147, '2016-05-01', 561, 25.67, 0.53, 21.57, 0.18, 21.21, 0.18, 1978, 226, 814, 18, 1336, '067 TOURS', 110, 109, 72),
(48, 65, '2016-05-01', 663, 61.09, 1.06, 54.75, 0.75, 13.57, 1.81, 3009, 399, 1591, 60, 4072, '071 BAY 2 TORCY', 23, 21, 103),
(49, 157, '2016-05-01', 911, 14.82, 0.22, 12.40, 0.11, 9.22, 0.11, 2684, 463, 1081, 22, 1779, '072 BRETIGNY', 126, 125, 116),
(50, 121, '2016-05-01', 491, 24.85, 0.20, 19.96, 0.00, 16.50, 0.20, 1321, 266, 685, 11, 1097, '073 EVRY 2', 111, 113, 92),
(51, 102, '2016-05-01', 505, 44.75, 0.40, 41.19, 0.40, 40.99, 0.59, 4006, 556, 1794, 58, 2921, '074 CAEN CENTRE VILLE', 63, 50, 23),
(52, 58, '2016-05-01', 668, 50.75, 0.30, 42.51, 0.15, 29.49, 0.15, 3337, 426, 1437, 32, 2380, '075 NANCY', 44, 48, 52),
(53, 104, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 444, 44, 128, 0, 0, '077 SENS', 132, 132, 132),
(54, 135, '2016-05-01', 564, 51.24, 0.00, 46.45, 0.00, 35.64, 0.00, 3639, 493, 1463, 39, 2471, '079 ECHIROLLES', 42, 38, 37),
(55, 133, '2016-05-01', 818, 62.22, 0.49, 53.79, 0.37, 52.93, 0.61, 5505, 973, 2957, 71, 4573, '080 LILLE TANNEURS', 20, 22, 9),
(56, 90, '2016-05-01', 1041, 50.53, 0.38, 31.89, 0.10, 20.65, 0.38, 6408, 946, 2734, 74, 5664, '081 Cora HOUDEMONT', 46, 84, 75),
(57, 60, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1122, 119, 399, 6, 703, '092 BRY SUR MARNE', 133, 133, 133),
(58, 17, '2016-05-01', 540, 47.04, 0.37, 37.96, 0.37, 36.67, 0.37, 2969, 420, 1289, 37, 3535, '106 ROUEN', 54, 61, 33),
(59, 25, '2016-05-01', 709, 42.88, 0.00, 36.53, 0.00, 35.26, 0.28, 2528, 386, 1286, 27, 2286, '116 COQUELLES', 66, 69, 38),
(60, 142, '2016-05-01', 606, 50.66, 0.50, 43.89, 0.50, 33.33, 0.83, 1495, 200, 763, 17, 1065, '120 BREST', 45, 45, 42),
(61, 45, '2016-05-01', 530, 63.58, 0.19, 60.75, 0.00, 59.43, 0.00, 4290, 607, 1926, 42, 4084, '122 ANGERS', 18, 15, 4),
(62, 108, '2016-05-01', 570, 21.58, 0.35, 19.12, 0.53, 15.61, 0.53, 1219, 168, 555, 12, 501, '127 MONTPELLIER', 118, 117, 96),
(63, 26, '2016-05-01', 395, 40.25, 1.77, 32.91, 1.77, 23.54, 1.52, 2378, 522, 1291, 16, 2390, '132 ARGENTEUIL', 75, 79, 66),
(64, 46, '2016-05-01', 1154, 40.73, 0.26, 36.66, 0.26, 9.45, 0.69, 2166, 268, 1215, 25, 2610, '136 LYON PART DIEU', 74, 67, 114),
(65, 96, '2016-05-01', 723, 12.03, 0.00, 9.41, 0.00, 9.41, 0.00, 2907, 411, 1109, 25, 1541, '139 TOURS', 127, 127, 115),
(66, 85, '2016-05-01', 1447, 33.17, 0.21, 30.06, 0.21, 14.44, 0.69, 6493, 802, 2712, 57, 16682, '141 PARIS LA DEFENSE', 94, 93, 100),
(67, 11, '2016-05-01', 1645, 42.37, 0.30, 35.87, 0.43, 11.79, 0.36, 7479, 1180, 3776, 43, 6579, '142 PARIS PASSAGE DU HAVRE', 69, 72, 108),
(68, 112, '2016-05-01', 604, 42.55, 0.83, 36.59, 0.83, 36.26, 0.83, 3062, 515, 1541, 36, 2575, '143 ORLEANS', 68, 68, 34),
(69, 57, '2016-05-01', 907, 31.31, 0.11, 21.72, 0.11, 19.18, 0.44, 2492, 353, 1162, 13, 1005, '145 PARIS LES HALLES', 98, 108, 82),
(70, 64, '2016-05-01', 673, 20.80, 0.45, 16.64, 0.45, 6.69, 0.15, 3173, 512, 1454, 19, 2090, '149 PARIS RUE DE RENNES', 119, 120, 123),
(71, 97, '2016-05-01', 826, 41.16, 0.85, 31.23, 0.97, 30.99, 0.97, 3531, 490, 1672, 76, 6625, '153 LE HAVRE', 73, 85, 48),
(72, 116, '2016-05-01', 779, 16.82, 0.13, 13.09, 0.13, 6.03, 0.26, 1004, 168, 465, 7, 149, '155 LORIENT', 125, 124, 124),
(73, 92, '2016-05-01', 276, 18.48, 0.00, 14.86, 0.36, 10.51, 1.45, 851, 134, 401, 9, 2718, '156 MARSEILLE', 123, 123, 111),
(74, 94, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1502, 161, 419, 1, 82, '182 TROYES', 134, 134, 134),
(75, 152, '2016-05-01', 1257, 69.13, 0.40, 61.26, 0.32, 13.68, 0.40, 7435, 977, 3486, 70, 5953, '191 VAL D''EUROPE', 8, 14, 102),
(76, 33, '2016-05-01', 833, 29.77, 0.36, 27.73, 0.36, 27.49, 0.48, 3116, 577, 1567, 37, 3310, '193 ANNECY', 100, 96, 55),
(77, 113, '2016-05-01', 826, 47.70, 1.33, 38.14, 1.33, 8.47, 2.06, 2304, 342, 1254, 45, 4091, '194 VILLENEUVE D''ASCQ', 53, 60, 120),
(78, 52, '2016-05-01', 707, 19.38, 0.28, 15.84, 0.28, 15.13, 0.42, 1419, 219, 704, 15, 978, '195 PAU LESCAR', 122, 121, 98),
(79, 36, '2016-05-01', 628, 81.21, 0.64, 79.46, 0.64, 13.54, 2.07, 3980, 447, 1906, 53, 4458, '196 BELLE EPINE', 1, 1, 104),
(80, 153, '2016-05-01', 617, 68.72, 0.49, 65.48, 0.65, 20.10, 0.16, 4573, 716, 2506, 52, 6331, '200 ROSNY', 9, 7, 76),
(81, 51, '2016-05-01', 274, 48.54, 0.73, 44.89, 1.09, 39.42, 1.46, 1492, 240, 739, 18, 1133, '204 MARSEILLE', 49, 42, 27),
(82, 120, '2016-05-01', 512, 37.11, 0.39, 32.42, 0.39, 9.18, 0.20, 1994, 218, 1030, 18, 1585, '205 Montmartre', 84, 82, 118),
(83, 115, '2016-05-01', 648, 50.77, 0.62, 47.22, 0.62, 41.20, 0.46, 2617, 513, 1618, 46, 3936, '206 Commerce', 43, 36, 22),
(84, 40, '2016-05-01', 289, 41.87, 1.04, 37.37, 1.04, 6.92, 2.42, 2977, 388, 1205, 17, 1298, '207 GARE DE L''EST', 72, 65, 122),
(85, 66, '2016-05-01', 689, 24.38, 0.29, 19.74, 0.15, 15.38, 0.15, 1488, 265, 845, 23, 2265, '209 TAVERNY', 112, 115, 97),
(86, 72, '2016-05-01', 716, 33.94, 0.14, 29.19, 0.14, 24.72, 0.14, 3069, 497, 1618, 42, 2186, '215 Passy', 92, 94, 62),
(87, 139, '2016-05-01', 404, 75.74, 0.25, 69.06, 0.25, 58.17, 0.00, 4754, 670, 2009, 37, 2924, '217 Lyon confluence', 4, 4, 6),
(88, 56, '2016-05-01', 509, 8.84, 0.00, 7.27, 0.00, 5.70, 0.00, 1426, 166, 567, 8, 631, '219 Saint Michel', 128, 128, 125),
(89, 41, '2016-05-01', 991, 43.19, 0.30, 39.35, 0.30, 37.34, 0.50, 3151, 417, 1655, 33, 16803, '220 Beaugrenelle', 65, 56, 31),
(90, 110, '2016-05-01', 359, 75.77, 0.84, 69.64, 0.84, 66.30, 0.56, 5716, 936, 2483, 43, 3591, '221 Dijon Toison', 3, 3, 1),
(91, 16, '2016-05-01', 379, 26.39, 0.26, 23.75, 0.26, 23.22, 0.53, 2376, 370, 1011, 16, 2859, '300 MARSEILLE', 109, 103, 67),
(92, 117, '2016-05-01', 160, 27.50, 0.00, 21.25, 0.00, 20.00, 0.00, 754, 68, 232, 4, 558, '302 GL Haussmann', 106, 111, 79),
(93, 13, '2016-05-01', 1058, 47.92, 0.09, 42.91, 0.09, 3.40, 0.00, 5159, 569, 2464, 22, 2279, '303 BHV Rivoli', 52, 47, 129),
(94, 95, '2016-05-01', 309, 42.72, 0.32, 34.30, 0.32, 33.33, 0.32, 3507, 513, 1348, 15, 1221, '304 GL Tours', 67, 75, 43),
(95, 130, '2016-05-01', 580, 46.90, 0.34, 42.07, 0.17, 9.83, 0.34, 3222, 494, 1378, 18, 2186, '305 GL Grenoble', 55, 49, 113),
(96, 107, '2016-05-01', 685, 51.68, 0.29, 44.96, 0.29, 21.90, 0.00, 4179, 462, 1828, 17, 2298, '306 GL Toulouse', 41, 41, 69),
(97, 158, '2016-05-01', 677, 36.48, 0.30, 34.56, 0.30, 14.03, 0.30, 3053, 530, 1516, 24, 5288, '307 GL Cap 3000', 88, 73, 101),
(98, 89, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 889, 109, 323, 3, 591, '308 GL Belle Epine', 135, 135, 135),
(99, 144, '2016-05-01', 1775, 39.66, 0.68, 34.54, 0.85, 26.76, 0.73, 7647, 836, 3452, 68, 4697, '309 GL Bordeaux', 79, 74, 57),
(100, 82, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1185, 147, 461, 5, 279, '310 GL Lille', 136, 136, 136),
(101, 62, '2016-05-01', 592, 44.76, 0.17, 40.37, 0.17, 34.63, 0.51, 3447, 572, 1842, 48, 7673, '311 GL Lyon Bron', 62, 53, 39),
(102, 132, '2016-05-01', 658, 45.44, 0.46, 37.84, 0.61, 35.71, 0.61, 3003, 569, 1485, 21, 3855, '312 GL Lyon Part Dieu', 58, 63, 36),
(103, 19, '2016-05-01', 940, 21.81, 0.21, 16.81, 0.11, 14.89, 0.11, 2830, 510, 1325, 18, 2552, '313 GL Maine', 117, 119, 99),
(104, 162, '2016-05-01', 389, 44.73, 0.26, 40.36, 0.51, 39.59, 0.26, 2520, 454, 1166, 15, 1703, '314 GL Marseille Bourse', 64, 54, 25),
(105, 128, '2016-05-01', 469, 66.74, 1.07, 62.69, 0.85, 60.77, 0.85, 2693, 416, 1422, 10, 1251, '315 GL Montpellier', 15, 11, 2),
(106, 159, '2016-05-01', 693, 36.80, 0.29, 30.45, 0.14, 30.01, 0.14, 7391, 1019, 2797, 25, 4115, '316 GL Nantes Decre', 86, 92, 51),
(107, 125, '2016-05-01', 872, 27.75, 0.23, 22.13, 0.23, 20.87, 0.11, 3666, 571, 1602, 20, 71603, '317 GL Nice Massena', 104, 105, 74),
(108, 105, '2016-05-01', 296, 62.16, 0.34, 49.32, 0.00, 48.65, 0.00, 4629, 634, 1626, 26, 2945, '318 GL Perpignan', 22, 34, 14),
(109, 5, '2016-05-01', 411, 71.78, 0.73, 66.42, 0.73, 18.73, 0.24, 3432, 391, 1498, 27, 4145, '319 GL Rosny', 5, 5, 83),
(110, 76, '2016-05-01', 1428, 56.51, 0.98, 47.20, 1.12, 27.45, 0.77, 6064, 880, 2765, 49, 4608, '320 GL Strasbourg', 30, 37, 56),
(111, 63, '2016-05-01', 245, 58.37, 0.41, 53.47, 0.41, 51.84, 0.82, 3904, 640, 1509, 18, 1500, '321 GL Amiens', 28, 24, 11),
(112, 69, '2016-05-01', 414, 60.39, 0.72, 52.42, 0.97, 52.17, 0.97, 5792, 819, 2175, 39, 2492, '322 GL Angers', 25, 25, 10),
(113, 31, '2016-05-01', 276, 45.65, 0.00, 40.58, 0.72, 40.22, 0.72, 1852, 304, 999, 23, 3997, '323 GL Annecy', 57, 51, 24),
(114, 73, '2016-05-01', 270, 42.22, 1.11, 39.63, 1.11, 22.59, 0.74, 2325, 416, 1168, 18, 2201, '324 GL Avignon Cap Sud', 70, 55, 68),
(115, 44, '2016-05-01', 206, 45.15, 0.49, 37.86, 0.00, 37.38, 0.00, 2694, 370, 1039, 11, 1089, '325 GL Bayonne', 59, 62, 30),
(116, 122, '2016-05-01', 295, 48.47, 0.00, 32.54, 0.34, 31.53, 0.34, 1503, 278, 821, 12, 756, '326 GL Besancon', 50, 81, 47),
(117, 22, '2016-05-01', 314, 31.21, 0.96, 26.75, 0.64, 10.83, 0.64, 2034, 245, 746, 8, 1315, '327 GL Biarritz', 99, 98, 110),
(118, 93, '2016-05-01', 404, 38.61, 0.00, 31.19, 0.00, 25.25, 0.00, 4214, 661, 1583, 27, 3215, '328 GL Caen', 82, 86, 61),
(119, 59, '2016-05-01', 272, 65.81, 1.10, 61.40, 1.10, 53.68, 2.57, 3145, 523, 1393, 27, 2372, '329 GL Cannes', 16, 13, 8),
(120, 6, '2016-05-01', 260, 40.00, 0.77, 33.08, 0.77, 30.38, 0.77, 842, 155, 441, 8, 571, '330 GL Chambery', 77, 77, 50),
(121, 30, '2016-05-01', 406, 29.31, 0.25, 24.38, 0.25, 23.65, 0.25, 2110, 264, 906, 12, 1902, '331 GL Clermont Ferrand', 101, 101, 65),
(122, 146, '2016-05-01', 352, 36.93, 0.00, 32.95, 0.00, 32.39, 0.00, 1999, 419, 1143, 12, 1270, '332 GL Dijon', 85, 78, 46),
(123, 74, '2016-05-01', 409, 27.14, 0.00, 19.80, 0.00, 17.60, 0.00, 2621, 452, 1101, 24, 2672, '333 GL Evry', 108, 114, 86),
(124, 55, '2016-05-01', 423, 36.64, 0.71, 34.28, 0.71, 33.33, 0.71, 3044, 419, 1216, 29, 3283, '334 GL Le Mans', 87, 76, 44),
(125, 53, '2016-05-01', 451, 29.27, 0.67, 22.62, 0.44, 19.51, 0.22, 2757, 460, 1227, 19, 1772, '335 GL Limoges', 102, 104, 80),
(126, 86, '2016-05-01', 501, 54.49, 1.00, 45.71, 1.00, 9.18, 0.80, 3161, 536, 1489, 20, 1422, '336 GL Metz', 33, 39, 117),
(127, 143, '2016-05-01', 355, 68.45, 0.56, 59.72, 0.56, 59.44, 0.56, 3234, 431, 1371, 30, 2323, '337 GL Orleans', 11, 16, 3),
(128, 43, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1905, 233, 601, 3, 233, '338 GL Pau', 137, 137, 137),
(129, 71, '2016-05-01', 325, 48.31, 1.23, 44.31, 1.23, 43.38, 0.92, 3703, 577, 1486, 14, 1881, '339 GL Reims', 51, 43, 20),
(130, 27, '2016-05-01', 524, 28.82, 0.38, 21.76, 0.00, 21.18, 0.00, 4198, 663, 1626, 15, 676, '340 GL Rennes', 103, 107, 73),
(131, 81, '2016-05-01', 251, 49.00, 0.40, 43.43, 0.40, 43.03, 0.40, 3136, 476, 1302, 21, 1858, '341 GL Rouen', 48, 46, 21),
(132, 137, '2016-05-01', 395, 6.58, 0.00, 5.82, 0.25, 4.30, 0.25, 412, 78, 173, 6, 587, '342 GL Toulon', 130, 129, 128),
(133, 84, '2016-05-01', 299, 64.88, 0.67, 53.51, 0.67, 20.07, 1.34, 2397, 206, 987, 16, 764, '343 LP Parly2', 17, 23, 77),
(134, 150, '2016-05-01', 721, 2.50, 0.00, 1.66, 0.00, 1.11, 0.00, 422, 75, 205, 2, 521, '346 GL Homme Mode', 131, 131, 131),
(135, 165, '2016-05-01', 261, 15.33, 0.38, 12.26, 0.38, 12.26, 0.38, 0, 0, 0, 0, 0, '401 RUE ROYALE', 3, 3, 3),
(136, 70, '2016-05-01', 288, 1.39, 0.00, 0.35, 0.00, 0.35, 0.00, 0, 0, 0, 0, 0, '402 CDG2F1', 11, 9, 9),
(137, 48, '2016-05-01', 312, 1.60, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, '403 CDG2F2', 10, 10, 10),
(138, 169, '2016-05-01', 514, 5.25, 0.00, 0.97, 0.00, 0.78, 0.00, 0, 0, 0, 0, 0, '404 ROYAL QUARTZ ROISSY CDG E2-S3', 7, 8, 8),
(139, 24, '2016-05-01', 516, 0.39, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, '406 CDG2E1 Royal Quartz', 12, 11, 11),
(140, 77, '2016-05-01', 288, 22.57, 0.00, 15.28, 0.00, 13.19, 0.00, 1915, 193, 953, 9, 383, '410 Madeleine', 114, 122, 106),
(141, 35, '2016-05-01', 1084, 6.92, 0.00, 4.43, 0.00, 3.32, 0.09, 1372, 209, 737, 10, 3793, '411 Elysées', 129, 130, 130),
(142, 20, '2016-05-01', 647, 16.85, 0.31, 11.75, 0.31, 10.97, 0.31, 2767, 326, 1313, 20, 943, '412 Auber', 124, 126, 109),
(143, 42, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 451, 59, 203, 2, 142, '413 Carrousel', 138, 138, 138),
(144, 170, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, '415 ROYAL QUARTZ ROISSY CDG 2G', 13, 12, 12),
(145, 164, '2016-05-01', 325, 19.38, 0.00, 2.77, 0.00, 0.92, 0.00, 0, 0, 0, 0, 0, '417 ROYAL QUARTZ Liaison AC', 2, 5, 7),
(146, 161, '2016-05-01', 246, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, '418 S4', 14, 13, 13),
(147, 172, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, '419 GL HAUSSMANN HOMME LUXE', 15, 14, 14),
(148, 168, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, '420 ROYAL QUARTZ GL STRASBOURG', 16, 15, 15),
(149, 173, '2016-05-01', 246, 14.63, 0.41, 13.01, 0.41, 12.60, 0.41, 0, 0, 0, 0, 0, '421 AUGIS1830', 5, 1, 1),
(150, 171, '2016-05-01', 254, 14.96, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, '422 ROYAL QUARTZ Terminal 1 ', 4, 16, 16),
(151, 167, '2016-05-01', 24, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, '423 ROYAL QUARTZ CDG S4', 17, 17, 17),
(152, 163, '2016-05-01', 16, 37.50, 0.00, 12.50, 0.00, 12.50, 0.00, 0, 0, 0, 0, 0, '453 ORLY ROLEX', 1, 2, 2),
(153, 124, '2016-05-01', 778, 5.14, 0.00, 1.41, 0.00, 1.29, 0.00, 0, 0, 0, 0, 0, '454 ROYAL QUARTZ ORLY SUD MULTIMARQUE', 8, 6, 6),
(154, 154, '2016-05-01', 538, 5.76, 0.00, 5.20, 0.00, 5.20, 0.00, 0, 0, 0, 0, 0, '455 ROYAL QUARTZ ORLY OUEST CENTRAL', 6, 4, 4),
(155, 78, '2016-05-01', 284, 1.76, 0.00, 1.41, 0.00, 1.41, 0.00, 0, 0, 0, 0, 0, '456 ROYAL QUARTZ ORLY OUEST HALL 3', 9, 7, 5),
(156, 83, '2016-05-01', 11944, 46.13, 0.51, 40.46, 0.54, 30.89, 0.71, 70225, 11110, 33423, 751, 70069, 'Céline BRAISSAND', 0, 0, 0),
(157, 114, '2016-05-01', 10884, 34.22, 0.41, 31.48, 0.49, 22.69, 0.59, 56951, 9188, 26114, 513, 125786, 'Claire LUNGAVIA', 0, 0, 0),
(158, 14, '2016-05-01', 10957, 41.24, 0.39, 35.37, 0.36, 33.59, 0.39, 75836, 10623, 31031, 691, 54657, 'David DESGARCEAUX', 0, 0, 0),
(159, 10, '2016-05-01', 2019, 12.33, 0.10, 8.32, 0.10, 7.18, 0.15, 6505, 787, 3206, 41, 5261, 'Doris SEITZ Louis Pion', 0, 0, 0),
(160, 21, '2016-05-01', 507, 14.99, 0.39, 12.62, 0.39, 12.43, 0.39, 0, 0, 0, 0, 0, 'Doris SEITZ Royal Quartz', 0, 0, 0),
(161, 4, '2016-05-01', 9750, 54.05, 0.57, 43.57, 0.57, 29.55, 0.64, 54982, 8354, 25292, 545, 42473, 'Jérémie BOURGAIN', 0, 0, 0),
(162, 141, '2016-05-01', 4095, 5.40, 0.00, 1.47, 0.00, 1.27, 0.00, 0, 0, 0, 0, 0, 'Julien GAUTHEROT', 0, 0, 0),
(163, 101, '2016-05-01', 80075, 42.48, 0.43, 36.80, 0.43, 24.34, 0.53, 439225, 63968, 199121, 4122, 468340, 'LOUIS PION', 0, 0, 0),
(164, 109, '2016-05-01', 9898, 37.81, 0.51, 32.72, 0.46, 27.20, 0.44, 59008, 7758, 24352, 417, 34951, 'Romain DEBROISE', 0, 0, 0),
(165, 148, '2016-05-01', 4602, 6.45, 0.04, 2.69, 0.04, 2.50, 0.04, 0, 0, 0, 0, 0, 'ROYAL QUARTZ', 0, 0, 0),
(166, 49, '2016-05-01', 12641, 29.91, 0.29, 25.28, 0.26, 17.59, 0.26, 46409, 7455, 22347, 412, 53593, 'Stéphane MORICEAU', 0, 0, 0),
(167, 136, '2016-05-01', 11982, 60.25, 0.41, 54.11, 0.41, 14.24, 0.78, 69309, 8693, 33356, 752, 81550, 'Steve BENDJAICHE', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `app_kpi_ytd`
--

CREATE TABLE IF NOT EXISTS `app_kpi_ytd` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `nb_transac_ytd` int(11) NOT NULL,
  `tx_transac_npe_ytd` decimal(9,2) NOT NULL,
  `tx_transac_nve_ytd` decimal(9,2) NOT NULL,
  `tx_transac_npes_ytd` decimal(9,2) NOT NULL,
  `tx_transac_nves_ytd` decimal(9,2) NOT NULL,
  `tx_transac_npesa_ytd` decimal(9,2) NOT NULL,
  `tx_transac_nvesa_ytd` decimal(9,2) NOT NULL,
  `ca_crm_ytd` int(11) NOT NULL,
  `rank_npe_ytd` int(11) NOT NULL,
  `rank_npes_ytd` int(11) NOT NULL,
  `rank_npesa_ytd` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_kpi_ytd`
--

INSERT INTO `app_kpi_ytd` (`id`, `user_id`, `date`, `nb_transac_ytd`, `tx_transac_npe_ytd`, `tx_transac_nve_ytd`, `tx_transac_npes_ytd`, `tx_transac_nves_ytd`, `tx_transac_npesa_ytd`, `tx_transac_nvesa_ytd`, `ca_crm_ytd`, `rank_npe_ytd`, `rank_npes_ytd`, `rank_npesa_ytd`, `username`) VALUES
(1, 38, '2016-05-01', 1731, 33.91, 3.41, 32.47, 3.41, 18.78, 1.79, 2797, 66, 53, 67, '001 SAINT FERREOL'),
(2, 18, '2016-05-01', 3240, 26.39, 1.73, 24.85, 1.76, 21.67, 1.60, 20002, 100, 88, 58, '002 LE PONTET'),
(3, 61, '2016-05-01', 2473, 27.13, 2.26, 26.08, 2.39, 12.45, 1.62, 8198, 96, 81, 96, '003 VITROLLES'),
(4, 3, '2016-05-01', 3391, 27.28, 2.42, 26.51, 2.39, 16.51, 1.39, 6846, 94, 78, 81, '004 AVANT CAP'),
(5, 151, '2016-05-01', 3139, 38.04, 4.30, 34.95, 3.82, 15.99, 3.41, 22415, 48, 45, 83, '005 AIX EN PROVENCE'),
(6, 149, '2016-05-01', 2090, 41.39, 6.89, 39.52, 6.51, 39.00, 6.51, 15510, 41, 27, 14, '006 AUBAGNE'),
(7, 23, '2016-05-01', 3079, 35.37, 1.98, 31.96, 1.75, 18.51, 2.31, 12048, 61, 54, 68, '007 VILLARS'),
(8, 34, '2016-05-01', 3854, 20.29, 2.31, 17.46, 1.89, 17.13, 2.08, 15520, 117, 112, 76, '009 PERPIGNAN'),
(9, 68, '2016-05-01', 3710, 38.89, 5.18, 35.34, 4.80, 33.83, 5.15, 18914, 45, 42, 26, '010 ANNECY'),
(10, 134, '2016-05-01', 3302, 30.13, 8.33, 28.68, 7.93, 4.54, 2.76, 7613, 86, 68, 129, '012 TOULON GRAND VAR'),
(11, 79, '2016-05-01', 2075, 30.41, 3.61, 28.67, 3.47, 26.89, 3.71, 8701, 83, 69, 39, '013 NICE LINGOSTIERE'),
(12, 9, '2016-05-01', 2544, 21.93, 2.48, 20.13, 2.36, 19.50, 2.24, 7718, 112, 102, 63, '014 NICE TNL'),
(13, 129, '2016-05-01', 3117, 56.91, 5.45, 52.68, 5.00, 49.31, 6.87, 22008, 6, 5, 4, '016 SAINT PRIEST'),
(14, 100, '2016-05-01', 4012, 25.02, 1.12, 22.46, 1.07, 16.72, 1.02, 11348, 103, 98, 78, '017 ECULLY'),
(15, 91, '2016-05-01', 2048, 41.99, 5.32, 39.40, 5.08, 32.47, 4.83, 8031, 35, 28, 27, '018 TOULON MAYOL'),
(16, 7, '2016-05-01', 2536, 42.07, 4.73, 39.59, 4.38, 37.03, 4.61, 11135, 34, 26, 20, '019 PORTET S/ GARONNE'),
(17, 119, '2016-05-01', 3458, 33.26, 4.97, 28.72, 3.76, 26.17, 3.59, 5981, 68, 67, 40, '020 TOULOUSE GRAMONT'),
(18, 80, '2016-05-01', 3213, 26.80, 1.43, 24.46, 1.31, 12.20, 0.87, 11948, 98, 90, 97, '021 BORDEAUX LE LAC'),
(19, 140, '2016-05-01', 4559, 28.10, 2.74, 25.88, 2.61, 24.02, 2.28, 10954, 92, 82, 48, '024 NICE ETOILE'),
(20, 8, '2016-05-01', 3037, 50.91, 2.90, 47.15, 2.83, 14.75, 1.51, 13256, 13, 12, 91, '026 PONTAULT COMBAULT'),
(21, 160, '2016-05-01', 3653, 47.39, 3.45, 44.59, 3.75, 14.10, 2.74, 13794, 21, 17, 93, '027 CLAYE SOUILLY'),
(22, 118, '2016-05-01', 4116, 40.09, 1.51, 36.01, 1.34, 28.21, 1.51, 20612, 43, 41, 33, '028 FACHES THUMESNIL'),
(23, 127, '2016-05-01', 4725, 30.90, 7.89, 18.69, 3.34, 15.51, 3.20, 12434, 80, 108, 85, '029 RONCQ'),
(24, 111, '2016-05-01', 3212, 46.01, 2.21, 40.41, 1.84, 36.52, 1.81, 13973, 23, 24, 23, '030 SAINT GENIS 2'),
(25, 15, '2016-05-01', 2320, 44.61, 6.94, 37.07, 5.99, 9.83, 2.59, 10160, 27, 39, 106, '031 NOYELLES GODAULT'),
(26, 126, '2016-05-01', 2614, 25.67, 1.45, 22.88, 1.34, 15.30, 1.15, 8693, 102, 96, 87, '032 ST BRICE SOUS FORET'),
(27, 50, '2016-05-01', 3357, 31.34, 4.62, 26.42, 4.14, 25.80, 4.23, 13511, 77, 80, 42, '033 ST SEBASTIEN S/ LOIRE'),
(28, 75, '2016-05-01', 2761, 50.13, 6.16, 47.01, 5.72, 17.71, 3.40, 11638, 16, 13, 73, '036 MONTESSON'),
(29, 54, '2016-05-01', 1696, 31.13, 2.59, 29.60, 2.48, 27.42, 2.30, 9758, 79, 62, 38, '037 CAP 3000'),
(30, 32, '2016-05-01', 1884, 52.49, 7.91, 49.73, 7.32, 36.84, 4.62, 11670, 11, 9, 21, '038 VALENCE'),
(31, 99, '2016-05-01', 2586, 45.24, 3.33, 42.81, 3.05, 35.81, 2.71, 6090, 24, 20, 24, '040 VENETTE'),
(32, 87, '2016-05-01', 4064, 33.00, 7.92, 20.37, 5.59, 17.96, 5.44, 24252, 70, 101, 70, '041 VALTHOIRY'),
(33, 2, '2016-05-01', 3346, 16.56, 0.69, 14.49, 0.54, 9.71, 0.63, 7890, 122, 121, 108, '042 LA VILLE DU BOIS'),
(34, 47, '2016-05-01', 2976, 41.43, 2.62, 38.64, 2.45, 13.98, 1.04, 12444, 40, 34, 94, '044 CERGY PONTOISE'),
(35, 88, '2016-05-01', 2367, 30.71, 2.66, 28.81, 2.58, 7.90, 1.14, 10570, 82, 66, 117, '046 AVIGNON MISTRAL 7'),
(36, 98, '2016-05-01', 2706, 36.51, 2.07, 31.93, 1.92, 31.71, 1.88, 8193, 58, 55, 29, '048 BORDEAUX ST MEDARD'),
(37, 39, '2016-05-01', 3567, 37.34, 3.62, 34.76, 3.20, 10.65, 2.24, 8757, 53, 47, 105, '049 NOISY LE GRAND'),
(38, 106, '2016-05-01', 3326, 41.67, 3.04, 37.79, 2.80, 37.52, 2.92, 16534, 39, 36, 19, '051 LE MANS'),
(39, 145, '2016-05-01', 1620, 50.86, 11.48, 44.01, 10.31, 17.84, 4.69, 9578, 14, 19, 71, '053 STRASBOURG LES HALLES'),
(40, 103, '2016-05-01', 2255, 60.71, 3.41, 57.07, 3.24, 56.41, 3.50, 23235, 3, 3, 1, '054 CENTRE 2 ST ETIENNE'),
(41, 123, '2016-05-01', 3113, 48.83, 3.44, 45.62, 3.18, 23.96, 1.70, 19431, 18, 16, 49, '055 GRENOBLE GRAND PLACE'),
(42, 67, '2016-05-01', 3007, 52.68, 4.92, 47.99, 4.22, 47.06, 4.16, 26099, 10, 10, 6, '057 GONFREVILLE'),
(43, 37, '2016-05-01', 3948, 55.80, 5.57, 50.66, 5.29, 13.07, 1.57, 31119, 8, 6, 95, '062 VELIZY'),
(44, 138, '2016-05-01', 3899, 30.21, 1.54, 25.55, 1.23, 19.75, 1.05, 12693, 84, 84, 62, '063 MERIGNAC'),
(45, 29, '2016-05-01', 2742, 35.89, 2.48, 31.44, 2.01, 17.32, 1.35, 12443, 59, 58, 75, '064 CARRE SENART'),
(46, 156, '2016-05-01', 3979, 48.81, 5.58, 34.10, 4.42, 7.34, 3.39, 29533, 19, 48, 122, '066 CRETEIL'),
(47, 147, '2016-05-01', 2846, 20.70, 2.71, 16.13, 1.72, 15.53, 1.79, 8580, 115, 119, 84, '067 TOURS'),
(48, 65, '2016-05-01', 3484, 41.79, 4.56, 37.14, 4.02, 11.19, 2.87, 16359, 37, 37, 104, '071 BAY 2 TORCY'),
(49, 157, '2016-05-01', 4723, 13.83, 1.61, 11.35, 1.29, 7.58, 0.89, 10271, 124, 125, 119, '072 BRETIGNY'),
(50, 121, '2016-05-01', 2536, 21.41, 2.29, 17.94, 1.93, 16.29, 2.13, 4656, 114, 110, 82, '073 EVRY 2'),
(51, 102, '2016-05-01', 2460, 38.70, 1.59, 34.96, 1.46, 34.88, 1.54, 9456, 46, 44, 25, '074 CAEN CENTRE VILLE'),
(52, 58, '2016-05-01', 3231, 31.91, 1.86, 24.17, 1.21, 19.19, 1.45, 5999, 73, 91, 64, '075 NANCY'),
(53, 104, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 142, 133, 133, 133, '077 SENS'),
(54, 135, '2016-05-01', 2672, 36.83, 3.14, 33.35, 2.77, 26.05, 2.77, 9675, 56, 51, 41, '079 ECHIROLLES'),
(55, 133, '2016-05-01', 3889, 57.26, 4.86, 49.86, 4.09, 48.91, 4.53, 16472, 5, 8, 5, '080 LILLE TANNEURS'),
(56, 90, '2016-05-01', 4831, 35.85, 3.35, 23.99, 2.07, 21.11, 2.19, 19432, 60, 92, 61, '081 Cora HOUDEMONT'),
(57, 60, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2383, 134, 134, 134, '092 BRY SUR MARNE'),
(58, 17, '2016-05-01', 2762, 30.05, 2.17, 25.13, 2.06, 24.33, 2.21, 10407, 87, 87, 47, '106 ROUEN'),
(59, 25, '2016-05-01', 3169, 26.95, 2.08, 22.81, 1.64, 22.31, 1.80, 6162, 97, 97, 55, '116 COQUELLES'),
(60, 142, '2016-05-01', 3161, 21.58, 1.04, 18.85, 0.89, 16.64, 0.92, 4732, 113, 106, 79, '120 BREST'),
(61, 45, '2016-05-01', 2684, 44.52, 2.20, 39.16, 1.79, 38.64, 1.75, 13952, 28, 33, 15, '122 ANGERS'),
(62, 108, '2016-05-01', 2464, 18.83, 3.13, 16.48, 2.76, 11.73, 2.84, 3621, 119, 118, 101, '127 MONTPELLIER'),
(63, 26, '2016-05-01', 3363, 31.70, 6.69, 27.98, 6.01, 23.25, 4.82, 15358, 75, 73, 51, '132 ARGENTEUIL'),
(64, 46, '2016-05-01', 5887, 19.94, 2.99, 17.07, 2.63, 4.65, 1.04, 11963, 118, 114, 128, '136 LYON PART DIEU'),
(65, 96, '2016-05-01', 3850, 12.08, 0.42, 9.04, 0.29, 8.88, 0.34, 8461, 127, 128, 112, '139 TOURS'),
(66, 85, '2016-05-01', 7431, 22.96, 2.91, 21.15, 2.75, 9.45, 2.88, 71305, 107, 100, 109, '141 PARIS LA DEFENSE'),
(67, 11, '2016-05-01', 8470, 37.59, 4.76, 31.31, 3.97, 11.75, 2.48, 24972, 51, 59, 100, '142 PARIS PASSAGE DU HAVRE'),
(68, 112, '2016-05-01', 3262, 33.75, 3.13, 29.34, 2.91, 28.54, 2.94, 15009, 67, 63, 32, '143 ORLEANS'),
(69, 57, '2016-05-01', 4523, 18.13, 1.75, 14.19, 1.26, 11.76, 2.43, 7418, 120, 122, 99, '145 PARIS LES HALLES'),
(70, 64, '2016-05-01', 3621, 22.76, 2.49, 18.86, 1.96, 8.37, 1.77, 10864, 108, 105, 114, '149 PARIS RUE DE RENNES'),
(71, 97, '2016-05-01', 3938, 29.86, 1.96, 18.66, 1.24, 18.26, 1.32, 18733, 88, 109, 69, '153 LE HAVRE'),
(72, 116, '2016-05-01', 3736, 8.65, 0.35, 6.80, 0.35, 5.03, 0.43, 852, 129, 129, 127, '155 LORIENT'),
(73, 92, '2016-05-01', 1456, 16.35, 2.75, 14.70, 2.68, 9.82, 2.54, 5006, 123, 120, 107, '156 MARSEILLE'),
(74, 94, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 82, 135, 135, 135, '182 TROYES'),
(75, 152, '2016-05-01', 5706, 43.95, 5.52, 39.34, 4.78, 11.60, 2.02, 23167, 30, 29, 103, '191 VAL D''EUROPE'),
(76, 33, '2016-05-01', 4061, 30.73, 2.49, 28.34, 2.22, 28.00, 2.34, 15235, 81, 70, 34, '193 ANNECY'),
(77, 113, '2016-05-01', 3799, 31.51, 9.11, 24.56, 7.40, 7.40, 2.63, 10148, 76, 89, 121, '194 VILLENEUVE D''ASCQ'),
(78, 52, '2016-05-01', 3193, 17.19, 1.88, 13.12, 1.41, 12.15, 1.60, 4755, 121, 123, 98, '195 PAU LESCAR'),
(79, 36, '2016-05-01', 3633, 42.39, 5.31, 40.57, 5.17, 9.44, 2.53, 18336, 32, 23, 110, '196 BELLE EPINE'),
(80, 153, '2016-05-01', 3170, 50.57, 4.61, 46.28, 4.13, 16.53, 1.96, 19493, 15, 15, 80, '200 ROSNY'),
(81, 51, '2016-05-01', 1404, 40.10, 4.91, 36.68, 4.99, 32.26, 4.77, 3416, 42, 40, 28, '204 MARSEILLE'),
(82, 120, '2016-05-01', 2915, 26.48, 3.46, 23.64, 3.26, 6.59, 1.41, 15797, 99, 94, 123, '205 Montmartre'),
(83, 115, '2016-05-01', 3273, 48.03, 3.82, 44.33, 3.54, 38.37, 3.33, 12549, 20, 18, 16, '206 Commerce'),
(84, 40, '2016-05-01', 1993, 37.58, 9.18, 33.32, 8.23, 5.82, 3.91, 6835, 52, 52, 125, '207 GARE DE L''EST'),
(85, 66, '2016-05-01', 3138, 22.43, 1.53, 17.02, 1.12, 14.31, 1.05, 7453, 110, 115, 92, '209 TAVERNY'),
(86, 72, '2016-05-01', 3563, 32.47, 4.04, 25.43, 3.31, 23.13, 3.31, 14287, 71, 85, 53, '215 Passy'),
(87, 139, '2016-05-01', 1987, 67.14, 5.03, 61.60, 4.63, 40.82, 3.27, 9995, 2, 2, 10, '217 Lyon confluence'),
(88, 56, '2016-05-01', 2536, 13.09, 0.95, 11.91, 0.79, 8.20, 0.91, 3168, 125, 124, 116, '219 Saint Michel'),
(89, 41, '2016-05-01', 4626, 29.70, 2.72, 26.48, 2.53, 24.73, 2.75, 25896, 90, 79, 45, '220 Beaugrenelle'),
(90, 110, '2016-05-01', 1871, 70.50, 5.34, 64.30, 4.65, 56.28, 4.06, 20706, 1, 1, 2, '221 Dijon Toison'),
(91, 16, '2016-05-01', 1973, 26.36, 2.84, 23.72, 2.84, 23.01, 2.89, 9255, 101, 93, 54, '300 MARSEILLE'),
(92, 117, '2016-05-01', 793, 8.07, 1.89, 6.05, 1.51, 5.30, 1.64, 710, 130, 130, 126, '302 GL Haussmann'),
(93, 13, '2016-05-01', 6267, 31.83, 4.85, 28.26, 4.48, 2.94, 0.97, 18014, 74, 72, 131, '303 BHV Rivoli'),
(94, 95, '2016-05-01', 1601, 34.73, 5.43, 28.29, 4.37, 27.42, 4.75, 5687, 62, 71, 37, '304 GL Tours'),
(95, 130, '2016-05-01', 2979, 37.83, 6.51, 33.84, 5.64, 8.29, 2.62, 13389, 49, 49, 115, '305 GL Grenoble'),
(96, 107, '2016-05-01', 3509, 38.42, 5.70, 30.41, 4.59, 11.71, 1.65, 6795, 47, 60, 102, '306 GL Toulouse'),
(97, 158, '2016-05-01', 3272, 29.71, 2.48, 27.78, 2.29, 18.86, 2.08, 15908, 89, 75, 66, '307 GL Cap 3000'),
(98, 89, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1435, 136, 136, 136, '308 GL Belle Epine'),
(99, 144, '2016-05-01', 8468, 33.05, 4.29, 27.29, 3.67, 19.12, 2.28, 24097, 69, 76, 65, '309 GL Bordeaux'),
(100, 82, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1058, 137, 137, 137, '310 GL Lille'),
(101, 62, '2016-05-01', 3129, 41.67, 4.44, 37.81, 4.25, 27.87, 3.42, 30112, 38, 35, 35, '311 GL Lyon Bron'),
(102, 132, '2016-05-01', 3535, 28.57, 4.72, 23.59, 4.21, 21.95, 4.33, 14422, 91, 95, 57, '312 GL Lyon Part Dieu'),
(103, 19, '2016-05-01', 5156, 20.44, 3.30, 16.72, 2.87, 15.15, 2.37, 13427, 116, 117, 89, '313 GL Maine'),
(104, 162, '2016-05-01', 1911, 36.84, 3.98, 33.65, 3.61, 31.08, 3.14, 10279, 55, 50, 31, '314 GL Marseille Bourse'),
(105, 128, '2016-05-01', 2331, 51.61, 6.95, 47.83, 6.18, 46.07, 6.56, 8600, 12, 11, 7, '315 GL Montpellier'),
(106, 159, '2016-05-01', 3764, 32.20, 5.42, 25.88, 4.41, 25.53, 4.33, 20530, 72, 83, 44, '316 GL Nantes Decre'),
(107, 125, '2016-05-01', 3853, 24.73, 4.96, 18.76, 3.40, 17.83, 3.32, 184229, 104, 107, 72, '317 GL Nice Massena'),
(108, 105, '2016-05-01', 1478, 49.46, 7.17, 40.60, 5.28, 39.38, 4.94, 13447, 17, 22, 13, '318 GL Perpignan'),
(109, 5, '2016-05-01', 2611, 38.95, 6.97, 35.24, 6.05, 8.46, 2.18, 15271, 44, 43, 113, '319 GL Rosny'),
(110, 76, '2016-05-01', 5851, 37.67, 7.04, 31.57, 5.79, 22.00, 4.48, 19112, 50, 57, 56, '320 GL Strasbourg'),
(111, 63, '2016-05-01', 1221, 57.58, 5.73, 53.24, 5.49, 52.17, 5.90, 8034, 4, 4, 3, '321 GL Amiens'),
(112, 69, '2016-05-01', 2147, 47.32, 3.12, 40.99, 2.93, 40.71, 2.93, 14880, 22, 21, 11, '322 GL Angers'),
(113, 31, '2016-05-01', 1501, 44.90, 3.53, 39.24, 3.00, 38.04, 3.80, 26146, 25, 32, 17, '323 GL Annecy'),
(114, 73, '2016-05-01', 1510, 41.92, 7.28, 39.27, 7.28, 23.44, 5.03, 10010, 36, 30, 50, '324 GL Avignon Cap Sud'),
(115, 44, '2016-05-01', 1034, 44.00, 4.93, 37.14, 3.97, 36.65, 4.16, 3936, 29, 38, 22, '325 GL Bayonne'),
(116, 122, '2016-05-01', 1528, 34.16, 3.08, 26.83, 2.62, 25.65, 2.75, 4207, 64, 77, 43, '326 GL Besancon'),
(117, 22, '2016-05-01', 1398, 23.18, 2.86, 18.88, 2.00, 7.65, 0.43, 3713, 106, 104, 118, '327 GL Biarritz'),
(118, 93, '2016-05-01', 2072, 34.65, 4.87, 29.30, 4.15, 24.42, 3.72, 8838, 63, 64, 46, '328 GL Caen'),
(119, 59, '2016-05-01', 1415, 54.56, 8.48, 50.46, 8.13, 40.92, 7.21, 11976, 9, 7, 9, '329 GL Cannes'),
(120, 6, '2016-05-01', 1357, 27.27, 3.24, 18.94, 1.99, 17.10, 1.92, 2023, 95, 103, 77, '330 GL Chambery'),
(121, 30, '2016-05-01', 2199, 21.96, 3.27, 17.92, 2.55, 17.42, 2.55, 7080, 111, 111, 74, '331 GL Clermont Ferrand'),
(122, 146, '2016-05-01', 1791, 37.07, 3.46, 31.83, 3.02, 31.38, 3.02, 9230, 54, 56, 30, '332 GL Dijon'),
(123, 74, '2016-05-01', 2362, 22.69, 2.79, 17.27, 1.86, 15.16, 1.86, 10431, 109, 113, 88, '333 GL Evry'),
(124, 55, '2016-05-01', 1972, 31.19, 2.18, 27.84, 2.13, 27.43, 2.18, 8699, 78, 74, 36, '334 GL Le Mans'),
(125, 53, '2016-05-01', 2288, 34.05, 3.10, 29.15, 2.71, 21.20, 2.36, 7575, 65, 65, 60, '335 GL Limoges'),
(126, 86, '2016-05-01', 2243, 36.74, 6.06, 30.32, 4.81, 6.11, 0.94, 6619, 57, 61, 124, '336 GL Metz'),
(127, 143, '2016-05-01', 1802, 56.10, 7.60, 46.61, 6.60, 45.95, 6.66, 12584, 7, 14, 8, '337 GL Orleans'),
(128, 43, '2016-05-01', 742, 30.19, 7.14, 25.20, 6.60, 23.18, 6.74, 1951, 85, 86, 52, '338 GL Pau'),
(129, 71, '2016-05-01', 1694, 42.50, 10.63, 39.26, 10.33, 38.02, 10.21, 8382, 31, 31, 18, '339 GL Reims'),
(130, 27, '2016-05-01', 2563, 27.82, 3.24, 21.93, 2.11, 21.30, 2.34, 6309, 93, 99, 59, '340 GL Rennes'),
(131, 81, '2016-05-01', 1399, 44.67, 2.93, 40.10, 2.57, 39.53, 2.57, 6756, 26, 25, 12, '341 GL Rouen'),
(132, 137, '2016-05-01', 939, 11.50, 1.06, 10.22, 0.96, 7.45, 0.85, 1494, 128, 126, 120, '342 GL Toulon'),
(133, 84, '2016-05-01', 1809, 42.23, 7.08, 34.94, 6.08, 14.87, 2.93, 5036, 33, 46, 90, '343 LP Parly2'),
(134, 150, '2016-05-01', 3449, 3.86, 0.49, 3.04, 0.35, 2.23, 0.23, 2864, 132, 132, 132, '346 GL Homme Mode'),
(135, 165, '2016-05-01', 1475, 17.83, 0.34, 15.05, 0.34, 14.31, 0.81, 0, 3, 2, 2, '401 RUE ROYALE'),
(136, 70, '2016-05-01', 1197, 3.26, 0.00, 0.92, 0.00, 0.75, 0.00, 0, 9, 7, 7, '402 CDG2F1'),
(137, 48, '2016-05-01', 1450, 1.24, 0.00, 0.21, 0.00, 0.14, 0.00, 0, 12, 11, 12, '403 CDG2F2'),
(138, 169, '2016-05-01', 2396, 9.68, 0.08, 1.17, 0.00, 0.92, 0.00, 0, 6, 6, 6, '404 ROYAL QUARTZ ROISSY CDG E2-S3'),
(139, 24, '2016-05-01', 2498, 4.12, 0.04, 0.16, 0.00, 0.16, 0.00, 0, 8, 12, 11, '406 CDG2E1 Royal Quartz'),
(140, 77, '2016-05-01', 1547, 23.59, 1.75, 16.81, 0.90, 15.45, 1.10, 30396, 105, 116, 86, '410 Madeleine'),
(141, 35, '2016-05-01', 5054, 7.12, 1.01, 4.45, 0.75, 3.30, 1.19, 35630, 131, 131, 130, '411 Elysées'),
(142, 20, '2016-05-01', 3608, 13.08, 0.83, 9.92, 0.61, 9.15, 1.00, 19952, 126, 127, 111, '412 Auber'),
(143, 42, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 233, 138, 138, 138, '413 Carrousel'),
(144, 170, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 15, 13, 13, '415 ROYAL QUARTZ ROISSY CDG 2G'),
(145, 164, '2016-05-01', 1219, 29.29, 0.25, 2.46, 0.08, 1.15, 0.08, 0, 2, 5, 5, '417 ROYAL QUARTZ Liaison AC'),
(146, 161, '2016-05-01', 1123, 0.36, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 14, 14, 14, '418 S4'),
(147, 172, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 16, 15, 15, '419 GL HAUSSMANN HOMME LUXE'),
(148, 168, '2016-05-01', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 17, 16, 16, '420 ROYAL QUARTZ GL STRASBOURG'),
(149, 173, '2016-05-01', 1086, 14.36, 0.28, 12.34, 0.28, 11.97, 0.37, 0, 4, 3, 3, '421 AUGIS1830'),
(150, 171, '2016-05-01', 1220, 13.44, 0.00, 0.25, 0.00, 0.16, 0.00, 0, 5, 10, 10, '422 ROYAL QUARTZ Terminal 1 '),
(151, 167, '2016-05-01', 126, 2.38, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 10, 17, 17, '423 ROYAL QUARTZ CDG S4'),
(152, 163, '2016-05-01', 81, 37.04, 0.00, 24.69, 0.00, 20.99, 1.23, 0, 1, 1, 1, '453 ORLY ROLEX'),
(153, 124, '2016-05-01', 4169, 2.21, 0.02, 0.65, 0.02, 0.55, 0.02, 0, 11, 8, 8, '454 ROYAL QUARTZ ORLY SUD MULTIMARQUE'),
(154, 154, '2016-05-01', 2642, 4.24, 0.00, 3.71, 0.00, 3.52, 0.04, 0, 7, 4, 4, '455 ROYAL QUARTZ ORLY OUEST CENTRAL'),
(155, 78, '2016-05-01', 1441, 0.83, 0.00, 0.49, 0.07, 0.42, 0.07, 0, 13, 9, 9, '456 ROYAL QUARTZ ORLY OUEST HALL 3'),
(156, 83, '2016-05-01', 60744, 39.08, 4.05, 34.46, 3.52, 26.79, 3.13, 323980, 0, 0, 0, 'Céline BRAISSAND'),
(157, 114, '2016-05-01', 52388, 30.81, 3.89, 28.51, 3.64, 20.58, 2.88, 390686, 0, 0, 0, 'Claire LUNGAVIA'),
(158, 14, '2016-05-01', 55709, 31.95, 2.95, 26.87, 2.48, 26.01, 2.52, 230609, 0, 0, 0, 'David DESGARCEAUX'),
(159, 10, '2016-05-01', 10209, 11.72, 1.06, 8.26, 0.72, 7.21, 1.11, 86210, 0, 0, 0, 'Doris SEITZ Louis Pion'),
(160, 21, '2016-05-01', 2561, 16.36, 0.31, 13.90, 0.31, 13.32, 0.62, 0, 0, 0, 0, 'Doris SEITZ Royal Quartz'),
(161, 4, '2016-05-01', 45295, 38.92, 5.50, 31.84, 4.23, 23.34, 3.16, 160292, 0, 0, 0, 'Jérémie BOURGAIN'),
(162, 141, '2016-05-01', 19562, 5.96, 0.04, 1.18, 0.02, 0.98, 0.03, 0, 0, 0, 0, 'Julien GAUTHEROT'),
(163, 101, '2016-05-01', 400889, 33.33, 3.81, 28.88, 3.27, 19.87, 2.58, 1870361, 0, 0, 0, 'LOUIS PION'),
(164, 109, '2016-05-01', 48770, 31.55, 3.69, 26.92, 3.07, 21.35, 2.56, 151041, 0, 0, 0, 'Romain DEBROISE'),
(165, 148, '2016-05-01', 22123, 7.16, 0.07, 2.65, 0.05, 2.41, 0.09, 0, 0, 0, 0, 'ROYAL QUARTZ'),
(166, 49, '2016-05-01', 64834, 25.03, 2.77, 21.12, 2.32, 15.00, 2.05, 193570, 0, 0, 0, 'Stéphane MORICEAU'),
(167, 136, '2016-05-01', 62940, 40.48, 4.70, 36.28, 4.29, 10.58, 2.26, 333973, 0, 0, 0, 'Steve BENDJAICHE');

-- --------------------------------------------------------

--
-- Structure de la table `app_module`
--

CREATE TABLE IF NOT EXISTS `app_module` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_modules` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_module`
--

INSERT INTO `app_module` (`id`, `name`, `nb_modules`) VALUES
(1, 'Campaign', 2),
(2, 'Kpi', 3),
(3, 'Top Clients', 2);

-- --------------------------------------------------------

--
-- Structure de la table `app_recipient`
--

CREATE TABLE IF NOT EXISTS `app_recipient` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `opt_out_other` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_out_not_relevant` tinyint(1) NOT NULL,
  `opt_in` tinyint(1) NOT NULL,
  `contacted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `app_user_module`
--

CREATE TABLE IF NOT EXISTS `app_user_module` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `app_user_module`
--

INSERT INTO `app_user_module` (`id`, `user_id`, `module_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fos_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user_group`
--

INSERT INTO `fos_user_group` (`id`, `name`, `roles`) VALUES
(1, 'ROLE_BOUTIQUE', 'a:1:{i:0;s:13:"ROLE_BOUTIQUE";}'),
(2, 'ROLE_DR', 'a:1:{i:0;s:7:"ROLE_DR";}'),
(3, 'ROLE_MARQUE', 'a:1:{i:0;s:11:"ROLE_MARQUE";}');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user_user`
--

CREATE TABLE IF NOT EXISTS `fos_user_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_mail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user_user`
--

INSERT INTO `fos_user_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`, `web_mail`, `dr`, `brand`, `role`) VALUES
(1, 'admin', 'admin', 'j.rabahi@claravista.fr', 'j.rabahi@claravista.fr', 1, '8lqj7wo8za0wcg04ksckck4gw484wk0', '8XcvKY4C91FMuo/q/eCccOsV5nHm0hXi6sbIQM1OOJa+Jda0bl4Aw70XwJ5U50YWIP8q8Jej3iEkz8YrViZmoQ==', '2016-06-09 09:30:17', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, '2016-04-14 14:09:27', '2016-06-09 09:30:17', '1987-07-27 00:00:00', 'Jérome', 'Rabahi', NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'gmail', NULL, NULL, 'ROLE_SUPER_ADMIN'),
(2, '042 LA VILLE DU BOIS', '042 la ville du bois', 'Villedubois42@louispion.fr', 'villedubois42@louispion.fr', 1, 'nygmoure5zkcwocs04kgwkck8kg88o', '042 LA VILLE DU BOIS', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(3, '004 AVANT CAP', '004 avant cap', 'avantcap4@louispion.fr', 'avantcap4@louispion.fr', 1, '4cv7v8q4grk08808ckw4g48kosksgw4', '004 AVANT CAP', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(4, 'Jérémie BOURGAIN', 'jérémie bourgain', 'jbourgain@louispion.fr', 'jbourgain@louispion.fr', 1, 'b1l536e25pssskwkkgk8g0c4kksooks', 'Jérémie BOURGAIN', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:29', '2016-05-31 14:35:29', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'LOUIS PION', 'ROLE_DR'),
(5, '319 GL Rosny', '319 gl rosny', '319glrosny@louispion.fr', '319glrosny@louispion.fr', 1, 'k683ihwmteokc08kssk0wws0swk8880', '319 GL Rosny', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(6, '330 GL Chambery', '330 gl chambery', '330glchambery@louispion.fr', '330glchambery@louispion.fr', 1, 's3y7nao1174cs44ckgscwkgsgc8s4go', '330 GL Chambery', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(7, '019 PORTET S/ GARONNE', '019 portet s/ garonne', 'toulouseportet19@louispion.fr', 'toulouseportet19@louispion.fr', 1, 'qqu03z3j0rkgoocwso0kw0gswokwwg8', '019 PORTET S/ GARONNE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(8, '026 PONTAULT COMBAULT', '026 pontault combault', 'pontault26@louispion.fr', 'pontault26@louispion.fr', 1, '7yb6yxpil3swsk4ccooc4o00gwg0wg0', '026 PONTAULT COMBAULT', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(9, '014 NICE TNL', '014 nice tnl', 'nicetnl14@louispion.fr', 'nicetnl14@louispion.fr', 1, 'qrh756wq0dckwog0ko8kgo8c48ssgs4', '014 NICE TNL', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(10, 'Doris SEITZ Louis Pion', 'doris seitz louis pion', 'dseitz@royalquartz.fr', 'dseitz@royalquartz.fr', 1, '1tmpte5g37pc44084og4skk0sss0og4', 'Doris SEITZ Louis Pion', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'LOUIS PION', 'ROLE_DR'),
(11, '142 PARIS PASSAGE DU HAVRE', '142 paris passage du havre', 'Passageduhavre142@louispion.fr', 'passageduhavre142@louispion.fr', 1, 'jhcampbmo60ccc4kg8048gos0sk440k', '142 PARIS PASSAGE DU HAVRE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(12, 'claravista', 'claravista', 'ml.cariou@claravista.fr', 'ml.cariou@claravista.fr', 1, 'm2tv8gfddxwo0o8gg4gkck8wssoso84', 'NLcZA+ibzmUEu2ffo215E5Gf65GhcPYF4b1dYmQnh7BBwmk9zqkU7SMpsPEv6xN0KItWDGkU7ArvC8/WQ5JVcw==', '2016-06-09 09:26:06', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, '2016-06-07 16:25:11', '2016-06-09 09:26:06', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, '', NULL, NULL, NULL),
(13, '303 BHV Rivoli', '303 bhv rivoli', 'lprivoli303@louispion.fr', 'lprivoli303@louispion.fr', 1, '8ccbu53urhwcccwcg0cwwo4cccsks4g', '303 BHV Rivoli', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(14, 'David DESGARCEAUX', 'david desgarceaux', 'ddesgarceaux@louispion.fr', 'ddesgarceaux@louispion.fr', 1, 'tbdlfmgxc5c4g0kgo0k0csowoso0k0g', 'David DESGARCEAUX', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'LOUIS PION', 'ROLE_DR'),
(15, '031 NOYELLES GODAULT', '031 noyelles godault', 'Noyelles31@louispion.fr', 'noyelles31@louispion.fr', 1, '3qlgtjsg0nggo40ww8s04c0oskokowk', '031 NOYELLES GODAULT', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(16, '300 MARSEILLE', '300 marseille', 'glstferreol300@louispion.fr', 'glstferreol300@louispion.fr', 1, 'qjkjsdv3hsgcok8ogsg4kskgwsoooo4', '300 MARSEILLE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(17, '106 ROUEN', '106 rouen', 'rouen106@louispion.fr', 'rouen106@louispion.fr', 1, 'qwcwtq5uyysk4wc4440oggow4oogcsk', '106 ROUEN', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(18, '002 LE PONTET', '002 le pontet', 'avignonpontet2@louispion.fr', 'avignonpontet2@louispion.fr', 1, 'fwbvygsssug4c8gck480koow8oss880', '002 LE PONTET', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(19, '313 GL Maine', '313 gl maine', '313glmaine@louispion.fr', '313glmaine@louispion.fr', 1, 'lji79ke9bb40w4ow88k8gc0gwkwks88', '313 GL Maine', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(20, '412 Auber', '412 auber', 'auber412@louispion.fr', 'auber412@louispion.fr', 1, 'sna95l0m7lcsw8w4k040ok8gk4k40cw', '412 Auber', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Doris SEITZ Louis Pion', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(21, 'Doris SEITZ Royal Quartz', 'doris seitz royal quartz', 'dseitz@royalquartz.fr', 'dseitz@royalquartz.fr', 1, 'as5y4pemw0wko0s8gskck4w88osw0gw', 'Doris SEITZ Royal Quartz', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'ROYAL QUARTZ', 'ROLE_DR'),
(22, '327 GL Biarritz', '327 gl biarritz', '327glbiarritz@louispion.fr', '327glbiarritz@louispion.fr', 1, '16elv16xqtb4kswkkk04cckcwswswo8', '327 GL Biarritz', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(23, '007 VILLARS', '007 villars', 'Villars7@louispion.fr', 'villars7@louispion.fr', 1, 'minfmgxv44gg448w48kcs888cso0cwk', '007 VILLARS', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(24, '406 CDG2E1 Royal Quartz', '406 cdg2e1 royal quartz', 'CDG2E1406@royalquartz.fr', 'cdg2e1406@royalquartz.fr', 1, '9v8rmknbj1cg8k0o4k0sosc4ko88ows', '406 CDG2E1 Royal Quartz', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(25, '116 COQUELLES', '116 coquelles', 'Calais116@louispion.fr', 'calais116@louispion.fr', 1, 'cpubxfu9nrk8swkscsc0s00k400skkw', '116 COQUELLES', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(26, '132 ARGENTEUIL', '132 argenteuil', 'argenteuil132@louispion.fr', 'argenteuil132@louispion.fr', 1, 'n7ib642v4j4o0s0cog484oo84s4g8ow', '132 ARGENTEUIL', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(27, '340 GL Rennes', '340 gl rennes', '340glrennes@louispion.fr', '340glrennes@louispion.fr', 1, 'q2ep7heyvy84o8kos0wggkkg00g4o0w', '340 GL Rennes', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(29, '064 CARRE SENART', '064 carre senart', 'carresenart64@louispion.fr', 'carresenart64@louispion.fr', 1, 'm751rgvad5c84cg8g8wwg44848w40so', '064 CARRE SENART', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(30, '331 GL Clermont Ferrand', '331 gl clermont ferrand', '331glclermontferrand@louispion.fr', '331glclermontferrand@louispion.fr', 1, 'd8cgrwrnl7kgs08ok40k0g88k44k8s8', '331 GL Clermont Ferrand', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(31, '323 GL Annecy', '323 gl annecy', '323glannecy@louispion.fr', '323glannecy@louispion.fr', 1, 'j3lcbdb4c5c0cgo8osgkcosscowgkg8', '323 GL Annecy', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(32, '038 VALENCE', '038 valence', 'valence38@louispion.fr', 'valence38@louispion.fr', 1, '7dxln0z8n7okokkwkcggok80gswgs0w', '038 VALENCE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(33, '193 ANNECY', '193 annecy', 'annecy193@louispion.fr', 'annecy193@louispion.fr', 1, 'ia8l0gh1fdsgkscgsgskckc4o0g84w4', '193 ANNECY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(34, '009 PERPIGNAN', '009 perpignan', 'Perpignan9@louispion.fr', 'perpignan9@louispion.fr', 1, 'fgk5wybfltwg0404owgwgowk4csk8ko', '009 PERPIGNAN', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(35, '411 Elysées', '411 elysées', 'elysees411@louispion.fr', 'elysees411@louispion.fr', 1, 'psu6s04lqj48gwk44og0s0k4gcw04cc', '411 Elysées', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Doris SEITZ Louis Pion', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(36, '196 BELLE EPINE', '196 belle epine', 'belleepine196@louispion.fr', 'belleepine196@louispion.fr', 1, 'fwvjx95i77s4k8w444s4884w8w4c8k8', '196 BELLE EPINE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(37, '062 VELIZY', '062 velizy', 'velizy62@louispion.fr', 'velizy62@louispion.fr', 1, 'fn7ppmzu2a04kco48sgs044w0cwkwo8', '062 VELIZY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(38, '001 SAINT FERREOL', '001 saint ferreol', 'Stferreol1@louispion.fr', 'stferreol1@louispion.fr', 1, 's3ejp0b9pvk44gs4cgsog8ccg8kwo4k', '001 SAINT FERREOL', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(39, '049 NOISY LE GRAND', '049 noisy le grand', 'noisy49@louispion.fr', 'noisy49@louispion.fr', 1, '4livxjdsly4g000og0s8skc80ow0ksg', '049 NOISY LE GRAND', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(40, '207 GARE DE L''EST', '207 gare de l''est', '207garedelest@louispion.fr', '207garedelest@louispion.fr', 1, '4l7bvnlut7y88oggk0cwoowsc0o48ko', '207 GARE DE L''EST', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(41, '220 Beaugrenelle', '220 beaugrenelle', '220beaugrenelle@louispion.fr', '220beaugrenelle@louispion.fr', 1, 'sez6w9pn3tw00s0oswc0sscocg8wsg4', '220 Beaugrenelle', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(42, '413 Carrousel', '413 carrousel', '413carrousel@louispion.fr', '413carrousel@louispion.fr', 1, 'g301sy094i88wgccgwck80004wks4kk', '413 Carrousel', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Doris SEITZ Louis Pion', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(43, '338 GL Pau', '338 gl pau', '338glpau@louispion.fr', '338glpau@louispion.fr', 1, '88dvu9fiu6g44ssg8co8kc40kcgkg4g', '338 GL Pau', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(44, '325 GL Bayonne', '325 gl bayonne', '325glbayonne@louispion.fr', '325glbayonne@louispion.fr', 1, 'vy9j18vgwyok888gwc0ww88gw8g8g4', '325 GL Bayonne', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(45, '122 ANGERS', '122 angers', 'angers122@louispion.fr', 'angers122@louispion.fr', 1, 'eq5qwb6iyagcocwsw0c88oss488s8w8', '122 ANGERS', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(46, '136 LYON PART DIEU', '136 lyon part dieu', 'lyonpartdieu136@louispion.fr', 'lyonpartdieu136@louispion.fr', 1, 'axp0ftbxp9ckk4g888kc44w440cwkss', '136 LYON PART DIEU', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(47, '044 CERGY PONTOISE', '044 cergy pontoise', 'Cergy44@louispion.fr', 'cergy44@louispion.fr', 1, 'v65m4xbor9c0sg8wgo8sk48wccgs84', '044 CERGY PONTOISE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(48, '403 CDG2F2', '403 cdg2f2', 'CDG2F2403@royalquartz.fr', 'cdg2f2403@royalquartz.fr', 1, 'hq3ixy1iyg0kss4804w0s0gkk08soks', '403 CDG2F2', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(49, 'Stéphane MORICEAU', 'stéphane moriceau', 'smoriceau@louispion.fr', 'smoriceau@louispion.fr', 1, '7dj66vq36eosgw048ocss8c88kko4kk', 'Stéphane MORICEAU', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:29', '2016-05-31 14:35:29', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'LOUIS PION', 'ROLE_DR'),
(50, '033 ST SEBASTIEN S/ LOIRE', '033 st sebastien s/ loire', 'stsebastien33@louispion.fr', 'stsebastien33@louispion.fr', 1, 'b7w2t29pfkocosoogcsswcsw8k44c4g', '033 ST SEBASTIEN S/ LOIRE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(51, '204 MARSEILLE', '204 marseille', 'bonneveine204@louispion.fr', 'bonneveine204@louispion.fr', 1, 'pyrx2owmq3kgo8gwsso88cssw4w40oo', '204 MARSEILLE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(52, '195 PAU LESCAR', '195 pau lescar', 'pau195@louispion.fr', 'pau195@louispion.fr', 1, 'bgrf7fq6gbkgsw4wg0ksockks8sw8g0', '195 PAU LESCAR', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(53, '335 GL Limoges', '335 gl limoges', '335gllimoges@louispion.fr', '335gllimoges@louispion.fr', 1, '5bug9oixvkkcg4sgs0k0k0wosksg8sk', '335 GL Limoges', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(54, '037 CAP 3000', '037 cap 3000', 'cap300037@louispion.fr', 'cap300037@louispion.fr', 1, 'cnuoa9nrbogggkwg80w88g4w4www4g4', '037 CAP 3000', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(55, '334 GL Le Mans', '334 gl le mans', '334gllemans@louispion.fr', '334gllemans@louispion.fr', 1, 'ry9st9mnunks4s4kgokw000c4o8scw', '334 GL Le Mans', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(56, '219 Saint Michel', '219 saint michel', '219stmichel@louispion.fr', '219stmichel@louispion.fr', 1, 'oq6dnemizn4sos4kk4soo0g84kgw0ow', '219 Saint Michel', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(57, '145 PARIS LES HALLES', '145 paris les halles', 'Forum145@louispion.fr', 'forum145@louispion.fr', 1, 'qg5ss7oy0ysws8scko4k44cos440s4c', '145 PARIS LES HALLES', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(58, '075 NANCY', '075 nancy', 'Nancy75@louispion.fr', 'nancy75@louispion.fr', 1, 'b853d5afqigwg084gc4cg4skg80ow48', '075 NANCY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(59, '329 GL Cannes', '329 gl cannes', '329glcannes@louispion.fr', '329glcannes@louispion.fr', 1, 'npmxnx1w3tccsogc4oockw000oc0s0w', '329 GL Cannes', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(60, '092 BRY SUR MARNE', '092 bry sur marne', '092brysurmarne@louispion.fr', '092brysurmarne@louispion.fr', 1, '264uhtpuxv1ccsocwg8ck4o8o0wwgkg', '092 BRY SUR MARNE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(61, '003 VITROLLES', '003 vitrolles', 'vitrolles3@louispion.fr', 'vitrolles3@louispion.fr', 1, '19jjge4km1twow404owoso8wg0wo0s0', '003 VITROLLES', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(62, '311 GL Lyon Bron', '311 gl lyon bron', '311gllyonbron@louispion.fr', '311gllyonbron@louispion.fr', 1, '8swsixhhd7okc84ooco800okc0s4ccc', '311 GL Lyon Bron', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(63, '321 GL Amiens', '321 gl amiens', '321glamiens@louispion.fr', '321glamiens@louispion.fr', 1, '75aug65gch8ow8so8cs4ws88wow0k00', '321 GL Amiens', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(64, '149 PARIS RUE DE RENNES', '149 paris rue de rennes', 'ruederennes149@louispion.fr', 'ruederennes149@louispion.fr', 1, '1u8t04sthsqsokcc8gcssoowc4sk84k', '149 PARIS RUE DE RENNES', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(65, '071 BAY 2 TORCY', '071 bay 2 torcy', 'bay2torcy71@louispion.fr', 'bay2torcy71@louispion.fr', 1, 'tcrqw9dknusgwwsoogo44w8wkw48wkg', '071 BAY 2 TORCY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(66, '209 TAVERNY', '209 taverny', '209taverny@louispion.fr', '209taverny@louispion.fr', 1, 'mqsy0jeg6g0gwssss4koo4cswsw0ws8', '209 TAVERNY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(67, '057 GONFREVILLE', '057 gonfreville', 'Gonfreville57@louispion.fr', 'gonfreville57@louispion.fr', 1, 'otm84jffnuo0cwkks08c0sco0swwgog', '057 GONFREVILLE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(68, '010 ANNECY', '010 annecy', 'Annecy10@louispion.fr', 'annecy10@louispion.fr', 1, 'fzbug77crqgoggog04ko84s8ko8wgcc', '010 ANNECY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(69, '322 GL Angers', '322 gl angers', '322glangers@louispion.fr', '322glangers@louispion.fr', 1, 'h2kz6nk1lbwcow04o4g8g4gc4gssgsg', '322 GL Angers', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(70, '402 CDG2F1', '402 cdg2f1', 'CDG2F1402@royalquartz.fr', 'cdg2f1402@royalquartz.fr', 1, 'apzvi1r0mjkkkgo888wgowog8osokgo', '402 CDG2F1', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(71, '339 GL Reims', '339 gl reims', '339glreims@louispion.fr', '339glreims@louispion.fr', 1, '3si240gys6o0ossw0s4ws0c4c8swoc4', '339 GL Reims', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(72, '215 Passy', '215 passy', 'passy215@louispion.fr', 'passy215@louispion.fr', 1, 'bs9skojehzsckkgwkw088c84wkc0csg', '215 Passy', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(73, '324 GL Avignon Cap Sud', '324 gl avignon cap sud', '324glavignoncapsud@louispion.fr', '324glavignoncapsud@louispion.fr', 1, '2xxp3txkfn0gw4gc4skw04gockccoow', '324 GL Avignon Cap Sud', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(74, '333 GL Evry', '333 gl evry', '333glevry@louispion.fr', '333glevry@louispion.fr', 1, 'esxdem7oalcgwgs0co0sw800wosggww', '333 GL Evry', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(75, '036 MONTESSON', '036 montesson', 'montesson36@louispion.fr', 'montesson36@louispion.fr', 1, '5ek1f8b5b90c8kswkc008g4g8w4g8oo', '036 MONTESSON', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(76, '320 GL Strasbourg', '320 gl strasbourg', '320glstrasbourg@louispion.fr', '320glstrasbourg@louispion.fr', 1, 'io2yp54suhkc0gokwcs44oows4ggwoo', '320 GL Strasbourg', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(77, '410 Madeleine', '410 madeleine', 'madeleine410@louispion.fr', 'madeleine410@louispion.fr', 1, 'a3qgyy7mpj40gco4040gcsg4ggws4wc', '410 Madeleine', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Doris SEITZ Louis Pion', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(78, '456 ROYAL QUARTZ ORLY OUEST HALL 3', '456 royal quartz orly ouest hall 3', '456ouest3@royalquartz.fr', '456ouest3@royalquartz.fr', 1, '7jgy0qys228s04cwws48c4sw4kwcc0s', '456 ROYAL QUARTZ ORLY OUEST HALL 3', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(79, '013 NICE LINGOSTIERE', '013 nice lingostiere', 'nicelingostiere13@louispion.fr', 'nicelingostiere13@louispion.fr', 1, '9twuq0ngcfswg4wcgkckw40sgo8wwoc', '013 NICE LINGOSTIERE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(80, '021 BORDEAUX LE LAC', '021 bordeaux le lac', 'bordeauxlelac21@louispion.fr', 'bordeauxlelac21@louispion.fr', 1, '3ompl7yseeg4s840kw0gs8c8wgogkw0', '021 BORDEAUX LE LAC', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(81, '341 GL Rouen', '341 gl rouen', '341glrouen@louispion.fr', '341glrouen@louispion.fr', 1, 'rixxl0cp140k8kc004wsg408swg4g0s', '341 GL Rouen', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(82, '310 GL Lille', '310 gl lille', '310gllille@louispion.fr', '310gllille@louispion.fr', 1, 'jev27ugbdy0cggkc0gwk80cwg04so44', '310 GL Lille', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(83, 'Céline BRAISSAND', 'céline braissand', 'cbraissand@louispion.fr', 'cbraissand@louispion.fr', 1, 'dk3sn6rhi144os4c80g484kcoko0ks8', 'Céline BRAISSAND', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'LOUIS PION', 'ROLE_DR'),
(84, '343 LP Parly2', '343 lp parly2', '343lpparly2@louispion.fr', '343lpparly2@louispion.fr', 1, 'gakm067cxao8s0gso4g4k0os00c40wk', '343 LP Parly2', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(85, '141 PARIS LA DEFENSE', '141 paris la defense', 'ladefense141@louispion.fr', 'ladefense141@louispion.fr', 1, 'rozo78msnuo40gso4c4sc48wogw84g0', '141 PARIS LA DEFENSE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(86, '336 GL Metz', '336 gl metz', '336glmetz@louispion.fr', '336glmetz@louispion.fr', 1, 'qtugmi25vs0gsko8o4gwkwwo44wsww8', '336 GL Metz', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(87, '041 VALTHOIRY', '041 valthoiry', 'valthoiry41@louispion.fr', 'valthoiry41@louispion.fr', 1, 'tg6l5xvi8hwkcos48cs8gwgcg0k8k0g', '041 VALTHOIRY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(88, '046 AVIGNON MISTRAL 7', '046 avignon mistral 7', 'avignonmistral46@louispion.fr', 'avignonmistral46@louispion.fr', 1, 'lgwt3p8azvkg8ws8swcgk08sc44ws40', '046 AVIGNON MISTRAL 7', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(89, '308 GL Belle Epine', '308 gl belle epine', '308glbelleepine@louispion.fr', '308glbelleepine@louispion.fr', 1, '5ud4hrd1k6os0ws48gcgcw4s88k0s00', '308 GL Belle Epine', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(90, '081 Cora HOUDEMONT', '081 cora houdemont', 'Nancy81@louispion.fr', 'nancy81@louispion.fr', 1, 'k5ljj4no0fko4osokoo0kgsg88kcso8', '081 Cora HOUDEMONT', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(91, '018 TOULON MAYOL', '018 toulon mayol', 'Toulonmayol18@louispion.fr', 'toulonmayol18@louispion.fr', 1, 'd0yw2wls21sgcgookwcs0ocok0sw8gs', '018 TOULON MAYOL', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(92, '156 MARSEILLE', '156 marseille', 'marseillebourse156@louispion.fr', 'marseillebourse156@louispion.fr', 1, 'fnee143sixkc4k0cgc0okkoswskowwg', '156 MARSEILLE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(93, '328 GL Caen', '328 gl caen', '328glcaen@louispion.fr', '328glcaen@louispion.fr', 1, 'hb7n84o72g0kcg8k44k48c4gk8488ks', '328 GL Caen', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(94, '182 TROYES', '182 troyes', 'Troyes182@louispion.fr', 'troyes182@louispion.fr', 1, 'i40zkepg8vwc4c40ksgsokocso0ogkc', '182 TROYES', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(95, '304 GL Tours', '304 gl tours', '304lpgltours@louispion.fr', '304lpgltours@louispion.fr', 1, 'aqsdp3nomowkskwk4wkk8osc8sco0ko', '304 GL Tours', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(96, '139 TOURS', '139 tours', 'Stpierredescorps139@louispion.fr', 'stpierredescorps139@louispion.fr', 1, 'by1rlgeo940g8o8o8c4c0os0go40cg', '139 TOURS', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(97, '153 LE HAVRE', '153 le havre', 'Lehavrecoty153@louispion.fr', 'lehavrecoty153@louispion.fr', 1, 'px7buxh8fdwwos4k8w40kkkk08g0scg', '153 LE HAVRE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(98, '048 BORDEAUX ST MEDARD', '048 bordeaux st medard', 'bordeauxmedard48@louispion.fr', 'bordeauxmedard48@louispion.fr', 1, 'm1z7djjafhcksc4scg0ggog88s08c4k', '048 BORDEAUX ST MEDARD', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(99, '040 VENETTE', '040 venette', 'Venette40@louispion.fr', 'venette40@louispion.fr', 1, 'f8r4lhuajxsssoogcsckk80o4c04o4c', '040 VENETTE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(100, '017 ECULLY', '017 ecully', 'ecully17@louispion.fr', 'ecully17@louispion.fr', 1, 'my2i1exrkwg804gk408g88ksoo08000', '017 ECULLY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(101, 'LOUIS PION', 'louis pion', '', '', 1, '4xlk7xox31oo04k4s44ockoo0okswo', 'LOUIS PION', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:29', '2016-05-31 14:35:29', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'LOUIS PION', 'ROLE_MARQUE'),
(102, '074 CAEN CENTRE VILLE', '074 caen centre ville', 'Caen74@louispion.fr', 'caen74@louispion.fr', 1, 'gmmfxgv0o2gcwosg8c0044gsoc8ok8w', '074 CAEN CENTRE VILLE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(103, '054 CENTRE 2 ST ETIENNE', '054 centre 2 st etienne', 'stetienne54@louispion.fr', 'stetienne54@louispion.fr', 1, 'ozw5s1lx4u8wcwsk04og8cw808cg4g4', '054 CENTRE 2 ST ETIENNE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(104, '077 SENS', '077 sens', 'sens77@louispion.fr', 'sens77@louispion.fr', 1, 'ql9vn1eonr4wkkcws8o8s8ow0ok4004', '077 SENS', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(105, '318 GL Perpignan', '318 gl perpignan', '318glperpignan@louispion.fr', '318glperpignan@louispion.fr', 1, '9hc6d7765r8ko4wc0cgkwoos8skscss', '318 GL Perpignan', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(106, '051 LE MANS', '051 le mans', 'lemans51@louispion.fr', 'lemans51@louispion.fr', 1, 'qlh6xpg7c7k8gw8soo8gw0g8wwk0kg0', '051 LE MANS', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(107, '306 GL Toulouse', '306 gl toulouse', '306gltoulouse@louispion.fr', '306gltoulouse@louispion.fr', 1, 'bef23o6sopsg8ogg8448sgwosskksg4', '306 GL Toulouse', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(108, '127 MONTPELLIER', '127 montpellier', 'montpellier127@louispion.fr', 'montpellier127@louispion.fr', 1, '2lm5zjlvs3swc080ssw8gokg4s4kk0g', '127 MONTPELLIER', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(109, 'Romain DEBROISE', 'romain debroise', 'rdebroise@louispion.fr', 'rdebroise@louispion.fr', 1, '2kw5i7zs83uo8o0kcowcwgggk88sk84', 'Romain DEBROISE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:29', '2016-05-31 14:35:29', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'LOUIS PION', 'ROLE_DR'),
(110, '221 Dijon Toison', '221 dijon toison', '221dijontoison@louispion.fr', '221dijontoison@louispion.fr', 1, 'hlo43zq3vrk8gcc8kwg0swgwkocgw0k', '221 Dijon Toison', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(111, '030 SAINT GENIS 2', '030 saint genis 2', 'stgenis30@louispion.fr', 'stgenis30@louispion.fr', 1, 'pzdz6jjxazkk0gcs4sccc4w04ogowcc', '030 SAINT GENIS 2', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(112, '143 ORLEANS', '143 orleans', 'orleans143@louispion.fr', 'orleans143@louispion.fr', 1, 'mgyeawo50cg08w88gswgowc4kcgc8kc', '143 ORLEANS', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(113, '194 VILLENEUVE D''ASCQ', '194 villeneuve d''ascq', 'Villeneuve194@louispion.fr', 'villeneuve194@louispion.fr', 1, 'mn4rt9tcxu8ckcgo0ckowg08gw0goww', '194 VILLENEUVE D''ASCQ', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(114, 'Claire LUNGAVIA', 'claire lungavia', 'clungavia@louispion.fr', 'clungavia@louispion.fr', 1, '5pktixmcxasckkog0swoggs0cccwgs4', 'Claire LUNGAVIA', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'LOUIS PION', 'ROLE_DR'),
(115, '206 Commerce', '206 commerce', 'commerce206@louispion.fr', 'commerce206@louispion.fr', 1, '1sk7oequm0748c44s0c4g00o00g4cgg', '206 Commerce', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE');
INSERT INTO `fos_user_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`, `web_mail`, `dr`, `brand`, `role`) VALUES
(116, '155 LORIENT', '155 lorient', 'Lorien155@louispion.fr', 'lorien155@louispion.fr', 1, '1v2jaj5s3ytc0o4cogo80ogs8kwc4g0', '155 LORIENT', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(117, '302 GL Haussmann', '302 gl haussmann', 'lpHausmann302@louispion.fr', 'lphausmann302@louispion.fr', 1, 'tsgok66obmsw448osckksgk0owgsksc', '302 GL Haussmann', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(118, '028 FACHES THUMESNIL', '028 faches thumesnil', 'Faches28@louispion.fr', 'faches28@louispion.fr', 1, 'k0bt943flpcgwswkg4kkkw4880skgcw', '028 FACHES THUMESNIL', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(119, '020 TOULOUSE GRAMONT', '020 toulouse gramont', 'toulousegramont20@louispion.fr', 'toulousegramont20@louispion.fr', 1, 'gk3hovquwtssc0ckwgkkgwcw0gscs0c', '020 TOULOUSE GRAMONT', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(120, '205 Montmartre', '205 montmartre', 'montmartre205@louispion.fr', 'montmartre205@louispion.fr', 1, 'lln8xojaec08osw44k44kw044coog0k', '205 Montmartre', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(121, '073 EVRY 2', '073 evry 2', 'evrydeux73@louispion.fr', 'evrydeux73@louispion.fr', 1, 'gynhyhc550088kk8soskocsw888k8o4', '073 EVRY 2', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(122, '326 GL Besancon', '326 gl besancon', '326glbesancon@louispion.fr', '326glbesancon@louispion.fr', 1, 'ilks6utfrgo40gkkscg4kcosg4wwo84', '326 GL Besancon', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(123, '055 GRENOBLE GRAND PLACE', '055 grenoble grand place', 'Grenoblegdplace55@louispion.fr', 'grenoblegdplace55@louispion.fr', 1, 'iw39nl7auoocw40kgccwkws40s8owk4', '055 GRENOBLE GRAND PLACE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(124, '454 ROYAL QUARTZ ORLY SUD MULTIMARQUE', '454 royal quartz orly sud multimarque', '454SudInternationale@royalquartz.fr', '454sudinternationale@royalquartz.fr', 1, 'tgz6viowti8k4g4gss44ogwkco4cks4', '454 ROYAL QUARTZ ORLY SUD MULTIMARQUE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(125, '317 GL Nice Massena', '317 gl nice massena', '317glnicemassena@louispion.fr', '317glnicemassena@louispion.fr', 1, '8xcjjsra34kc0kwwk0gokkg088o8ckw', '317 GL Nice Massena', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(126, '032 ST BRICE SOUS FORET', '032 st brice sous foret', 'Stbrice32@louispion.fr', 'stbrice32@louispion.fr', 1, 'r1z13fgq0ms8gg0ocwgwcw8oc8go8kw', '032 ST BRICE SOUS FORET', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(127, '029 RONCQ', '029 roncq', 'Roncq29@louispion.fr', 'roncq29@louispion.fr', 1, 'g2a202otfs0kks08o0ssoocwswgww4w', '029 RONCQ', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(128, '315 GL Montpellier', '315 gl montpellier', '315glmontpellier@louispion.fr', '315glmontpellier@louispion.fr', 1, 'qzvvaohjtysckgkcwg8wccs4www8w84', '315 GL Montpellier', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(129, '016 SAINT PRIEST', '016 saint priest', 'stpriest16@louispion.fr', 'stpriest16@louispion.fr', 1, 'lu4qk8qm4cg0cs4k8wgwsgcgcg8wckg', '016 SAINT PRIEST', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(130, '305 GL Grenoble', '305 gl grenoble', '305glgrenoble@louispion.fr', '305glgrenoble@louispion.fr', 1, 'k28edevgixskg8cgwk0soskogsswcoo', '305 GL Grenoble', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(132, '312 GL Lyon Part Dieu', '312 gl lyon part dieu', '312gllyonpartdieu@louispion.fr', '312gllyonpartdieu@louispion.fr', 1, 'o0hpb6d863kk8g4g0gs4wogcokcocw8', '312 GL Lyon Part Dieu', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(133, '080 LILLE TANNEURS', '080 lille tanneurs', 'lille80@louispion.fr', 'lille80@louispion.fr', 1, 'i6ph55lccso4skcw4c480844ok44kk8', '080 LILLE TANNEURS', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(134, '012 TOULON GRAND VAR', '012 toulon grand var', 'Toulonvar12@louispion.fr', 'toulonvar12@louispion.fr', 1, 'nad6brsk45c0g4g44oocgs4gs4s8ss0', '012 TOULON GRAND VAR', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(135, '079 ECHIROLLES', '079 echirolles', 'echirolles79@louispion.fr', 'echirolles79@louispion.fr', 1, 'pojx5loro7kckg40c84kwck48c8kc48', '079 ECHIROLLES', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(136, 'Steve BENDJAICHE', 'steve bendjaiche', 'sbendjaiche@louispion.fr', 'sbendjaiche@louispion.fr', 1, '7fvy27qpvi0w4okg4c4w4ocgwgcoswo', 'Steve BENDJAICHE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:29', '2016-05-31 14:35:29', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'LOUIS PION', 'ROLE_DR'),
(137, '342 GL Toulon', '342 gl toulon', '342gltoulon@louispion.fr', '342gltoulon@louispion.fr', 1, '371jt8j6cp2c4os0cwg48s0gk8w4w0s', '342 GL Toulon', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(138, '063 MERIGNAC', '063 merignac', 'merignac63@louispion.fr', 'merignac63@louispion.fr', 1, 'a4enejlmj14cw884s4o48k0ow4gok4k', '063 MERIGNAC', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(139, '217 Lyon confluence', '217 lyon confluence', '217lyonconfluence@louispion.fr', '217lyonconfluence@louispion.fr', 1, 'ssezxeukkn40wkscg4c00w8k4oo8ow0', '217 Lyon confluence', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(140, '024 NICE ETOILE', '024 nice etoile', 'niceetoile24@louispion.fr', 'niceetoile24@louispion.fr', 1, 'palq55dub2804ow88o8owcwoc00cokw', '024 NICE ETOILE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(141, 'Julien GAUTHEROT', 'julien gautherot', 'jgautherot@royalquartz.fr', 'jgautherot@royalquartz.fr', 1, '3lcxko3rl9q88sgssosg0w4cwww0k84', 'Julien GAUTHEROT', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:29', '2016-05-31 14:35:29', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'ROYAL QUARTZ', 'ROLE_DR'),
(142, '120 BREST', '120 brest', 'brest120@louispion.fr', 'brest120@louispion.fr', 1, 'nhq0d7ioh1c440ksocc4gsgckck0cg4', '120 BREST', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(143, '337 GL Orleans', '337 gl orleans', '337glorleans@louispion.fr', '337glorleans@louispion.fr', 1, 'jujyjnhz53k8k0okksgoco8wog88cc0', '337 GL Orleans', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(144, '309 GL Bordeaux', '309 gl bordeaux', '309glbordeaux@louispion.fr', '309glbordeaux@louispion.fr', 1, '3h8xglvwn08wgc4w88ocgogg8gwgwoo', '309 GL Bordeaux', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Romain DEBROISE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(145, '053 STRASBOURG LES HALLES', '053 strasbourg les halles', 'strasbourg53@louispion.fr', 'strasbourg53@louispion.fr', 1, 'hicfw4xeyps0koo00ko08s4gok808og', '053 STRASBOURG LES HALLES', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(146, '332 GL Dijon', '332 gl dijon', '332gldijon@louispion.fr', '332gldijon@louispion.fr', 1, '2pmikh7fjqqsggkgwcck444k0kg4g48', '332 GL Dijon', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Céline BRAISSAND', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(147, '067 TOURS', '067 tours', 'Tourscentre67@louispion.fr', 'tourscentre67@louispion.fr', 1, 'fhzli0l5q20owc8cso8gggg84sg4880', '067 TOURS', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(148, 'ROYAL QUARTZ', 'royal quartz', '', '', 1, 'j4fabxgc1bcosgocg8k8s40koco08ow', 'ROYAL QUARTZ', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:29', '2016-05-31 14:35:29', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, '', 'ROYAL QUARTZ', 'ROLE_MARQUE'),
(149, '006 AUBAGNE', '006 aubagne', 'Aubagne6@louispion.fr', 'aubagne6@louispion.fr', 1, '40jh1o4ezreo8g44k84sgowckc08k0c', '006 AUBAGNE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(150, '346 GL Homme Mode', '346 gl homme mode', '346@louispion.fr', '346@louispion.fr', 1, 'ipt8y8k4heogk0o0484kckc8wg0k4o0', '346 GL Homme Mode', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(151, '005 AIX EN PROVENCE', '005 aix en provence', 'Aix5@louispion.fr', 'aix5@louispion.fr', 1, 'jzssdj36pts4cokgo4ckgkw40c4w8cc', '005 AIX EN PROVENCE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(152, '191 VAL D''EUROPE', '191 val d''europe', 'valdeurope191@louispion.fr', 'valdeurope191@louispion.fr', 1, 'f5v2gfaesjk008g8woco08c0s0ckscc', '191 VAL D''EUROPE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(153, '200 ROSNY', '200 rosny', 'rosny200@louispion.fr', 'rosny200@louispion.fr', 1, '3gomv9lho98g4s4w0cso8448cgcwcgs', '200 ROSNY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(154, '455 ROYAL QUARTZ ORLY OUEST CENTRAL', '455 royal quartz orly ouest central', '455Ouest2@royalquartz.fr', '455ouest2@royalquartz.fr', 1, 'aetk02u34rsoko0840o44kcgggkcosc', '455 ROYAL QUARTZ ORLY OUEST CENTRAL', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(156, '066 CRETEIL', '066 creteil', 'creteilsoleil66@louispion.fr', 'creteilsoleil66@louispion.fr', 1, 'h6b552vxww00g4c04o0soggckcg00ow', '066 CRETEIL', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(157, '072 BRETIGNY', '072 bretigny', 'Bretigny72@louispion.fr', 'bretigny72@louispion.fr', 1, 'st8u04ezmmso4w484c44wc4so4gosw0', '072 BRETIGNY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Stéphane MORICEAU', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(158, '307 GL Cap 3000', '307 gl cap 3000', '307glcap3000@louispion.fr', '307glcap3000@louispion.fr', 1, 'bvotvbl9p20co8ckowcs8o44sk48808', '307 GL Cap 3000', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(159, '316 GL Nantes Decre', '316 gl nantes decre', '316glnantesdecre@louispion.fr', '316glnantesdecre@louispion.fr', 1, 'fblexgfzpzww88kk4gscswggc04gcow', '316 GL Nantes Decre', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'David DESGARCEAUX', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(160, '027 CLAYE SOUILLY', '027 claye souilly', 'clayesouilly27@louispion.fr', 'clayesouilly27@louispion.fr', 1, '81yv74ilg944gsk4oco4c8kkokws00w', '027 CLAYE SOUILLY', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:27', '2016-05-31 14:35:27', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Steve BENDJAICHE', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(161, '418 S4', '418 s4', '418S4@royalquartz.fr', '418s4@royalquartz.fr', 1, '8fp6g0vpg0844s0g008s8ock0c8wswc', '418 S4', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(162, '314 GL Marseille Bourse', '314 gl marseille bourse', '314glmarseillebourse@louispion.fr', '314glmarseillebourse@louispion.fr', 1, '7dxjc381c7gocok00wskcwgkgg0oks0', '314 GL Marseille Bourse', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Claire LUNGAVIA', 'LOUIS PION', 'ROLE_BOUTIQUE'),
(163, '453 ORLY ROLEX', '453 orly rolex', '453@royalquartz.fr', '453@royalquartz.fr', 1, '1mg6r7skph8g84wkkkksw4g00ookwcw', '453 ORLY ROLEX', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(164, '417 ROYAL QUARTZ Liaison AC', '417 royal quartz liaison ac', 'CDGAC417@royal-quartz.fr', 'cdgac417@royal-quartz.fr', 1, 'tcuhlx7ul6o40s88csgwow8sko4wcsg', '417 ROYAL QUARTZ Liaison AC', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(165, '401 RUE ROYALE', '401 rue royale', 'rueroyale401@royal-quartz.fr', 'rueroyale401@royal-quartz.fr', 1, 'fbe58b96jwg0ck0oskogw8k0c84s4wg', '401 RUE ROYALE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Doris SEITZ Royal Quartz', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(167, '423 ROYAL QUARTZ CDG S4', '423 royal quartz cdg s4', '423@louispion.fr', '423@louispion.fr', 1, 'syrpitxvmuosk0wo04w0wwg84w4gwso', '423 ROYAL QUARTZ CDG S4', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(168, '420 ROYAL QUARTZ GL STRASBOURG', '420 royal quartz gl strasbourg', '420@royal-quartz.fr', '420@royal-quartz.fr', 1, '7u7ry36u9h0css8s0ok44so8c80ks0c', '420 ROYAL QUARTZ GL STRASBOURG', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Jérémie BOURGAIN', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(169, '404 ROYAL QUARTZ ROISSY CDG E2-S3', '404 royal quartz roissy cdg e2-s3', 'CDG2E2404@royal-quartz.fr', 'cdg2e2404@royal-quartz.fr', 1, 'dapuztr53q0cgw00848gc44scgo0w40', '404 ROYAL QUARTZ ROISSY CDG E2-S3', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(170, '415 ROYAL QUARTZ ROISSY CDG 2G', '415 royal quartz roissy cdg 2g', 'CDGT2G415@louispion.fr', 'cdgt2g415@louispion.fr', 1, 'noc5s3hizqosgk0ggkokwowo484o8k0', '415 ROYAL QUARTZ ROISSY CDG 2G', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(171, '422 ROYAL QUARTZ Terminal 1 ', '422 royal quartz terminal 1 ', 'T1CDG422@royal-quartz.fr', 't1cdg422@royal-quartz.fr', 1, 'c9ww4p53grccc0w00k40c0gokcckks8', '422 ROYAL QUARTZ Terminal 1 ', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Julien GAUTHEROT', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(172, '419 GL HAUSSMANN HOMME LUXE', '419 gl haussmann homme luxe', '419glhommeluxe@royal-quartz.fr', '419glhommeluxe@royal-quartz.fr', 1, 'sv81o81w8hcswsc8soo4ksoc8gos840', '419 GL HAUSSMANN HOMME LUXE', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Doris SEITZ Royal Quartz', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE'),
(173, '421 AUGIS1830', '421 augis1830', '421augis1830@augis1830.com', '421augis1830@augis1830.com', 1, 't8338vfvsm8gos8wcocc0cw80wkckg8', '421 AUGIS1830', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-31 14:35:28', '2016-05-31 14:35:28', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, NULL, 'Doris SEITZ Royal Quartz', 'ROYAL QUARTZ', 'ROLE_BOUTIQUE');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `acl_classes`
--
ALTER TABLE `acl_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`);

--
-- Index pour la table `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  ADD KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  ADD KEY `IDX_46C8B806EA000B10` (`class_id`),
  ADD KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_46C8B806DF9183C9` (`security_identity_id`);

--
-- Index pour la table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  ADD KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`);

--
-- Index pour la table `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  ADD KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_825DE299C671CEA1` (`ancestor_id`);

--
-- Index pour la table `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`);

--
-- Index pour la table `app_campaign`
--
ALTER TABLE `app_campaign`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_17957270E1EC9481` (`id_campaign_name`),
  ADD UNIQUE KEY `UNIQ_179572703DA5256D` (`image_id`);

--
-- Index pour la table `app_campaign_channel`
--
ALTER TABLE `app_campaign_channel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9E7DF3CAF639F774` (`campaign_id`),
  ADD KEY `IDX_9E7DF3CA72F5A1AA` (`channel_id`);

--
-- Index pour la table `app_campaign_field`
--
ALTER TABLE `app_campaign_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CA0AB3C9F639F774` (`campaign_id`),
  ADD KEY `IDX_CA0AB3C9443707B0` (`field_id`);

--
-- Index pour la table `app_channel`
--
ALTER TABLE `app_channel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `app_client`
--
ALTER TABLE `app_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_224769D5E173B1B8` (`id_client`),
  ADD UNIQUE KEY `UNIQ_224769D5E7927C74` (`email`);

--
-- Index pour la table `app_field`
--
ALTER TABLE `app_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D26C8955E237E06` (`name`);

--
-- Index pour la table `app_file_imports`
--
ALTER TABLE `app_file_imports`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `app_image`
--
ALTER TABLE `app_image`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_13EE8992F47645AE` (`url`);

--
-- Index pour la table `app_import_clients`
--
ALTER TABLE `app_import_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CC221566E173B1B8` (`id_client`);

--
-- Index pour la table `app_kpi_month`
--
ALTER TABLE `app_kpi_month`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9762917DA76ED395` (`user_id`);

--
-- Index pour la table `app_kpi_ytd`
--
ALTER TABLE `app_kpi_ytd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AF420A49A76ED395` (`user_id`);

--
-- Index pour la table `app_module`
--
ALTER TABLE `app_module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E9274BA85E237E06` (`name`);

--
-- Index pour la table `app_recipient`
--
ALTER TABLE `app_recipient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C06BA47CF639F774` (`campaign_id`),
  ADD KEY `IDX_C06BA47C19EB6921` (`client_id`);

--
-- Index pour la table `app_user_module`
--
ALTER TABLE `app_user_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_30931BA9A76ED395` (`user_id`),
  ADD KEY `IDX_30931BA9AFC2B591` (`module_id`);

--
-- Index pour la table `fos_user_group`
--
ALTER TABLE `fos_user_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`);

--
-- Index pour la table `fos_user_user`
--
ALTER TABLE `fos_user_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`);

--
-- Index pour la table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `IDX_B3C77447A76ED395` (`user_id`),
  ADD KEY `IDX_B3C77447FE54D947` (`group_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `acl_classes`
--
ALTER TABLE `acl_classes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `acl_entries`
--
ALTER TABLE `acl_entries`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `app_campaign`
--
ALTER TABLE `app_campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `app_campaign_channel`
--
ALTER TABLE `app_campaign_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `app_campaign_field`
--
ALTER TABLE `app_campaign_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `app_channel`
--
ALTER TABLE `app_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `app_client`
--
ALTER TABLE `app_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `app_field`
--
ALTER TABLE `app_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `app_file_imports`
--
ALTER TABLE `app_file_imports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `app_image`
--
ALTER TABLE `app_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `app_import_clients`
--
ALTER TABLE `app_import_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `app_kpi_month`
--
ALTER TABLE `app_kpi_month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT pour la table `app_kpi_ytd`
--
ALTER TABLE `app_kpi_ytd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT pour la table `app_module`
--
ALTER TABLE `app_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `app_recipient`
--
ALTER TABLE `app_recipient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `app_user_module`
--
ALTER TABLE `app_user_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `fos_user_group`
--
ALTER TABLE `fos_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `fos_user_user`
--
ALTER TABLE `fos_user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=180;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
