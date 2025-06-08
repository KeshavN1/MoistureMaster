-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 02:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add pred results', 7, 'add_predresults'),
(26, 'Can change pred results', 7, 'change_predresults'),
(27, 'Can delete pred results', 7, 'delete_predresults'),
(28, 'Can view pred results', 7, 'view_predresults'),
(29, 'Can add soilmoisture', 8, 'add_soilmoisture'),
(30, 'Can change soilmoisture', 8, 'change_soilmoisture'),
(31, 'Can delete soilmoisture', 8, 'delete_soilmoisture'),
(32, 'Can view soilmoisture', 8, 'view_soilmoisture');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$JRL2nuRf6mFp0vr9Bk7Yhr$XwDc75pLCFASAjeYkqqkrN3OCUb2pPa/02aMrFWUKwM=', '2024-05-14 12:16:40.252880', 1, 'Keshav', '', '', 'keshavnaunyal1@gmail.com', 1, 1, '2024-05-14 12:16:01.525380');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-14 12:17:34.946784', '3', '5800.335474890893', 3, '', 7, 1),
(2, '2024-05-14 12:17:34.953872', '2', '5800.335474890893', 3, '', 7, 1),
(3, '2024-05-14 12:17:34.959761', '1', '5800.335474890893', 3, '', 7, 1),
(4, '2024-05-15 11:22:35.578397', '6', '4140.590519494838', 3, '', 7, 1),
(5, '2024-05-15 11:22:35.578397', '5', '4140.590519494838', 3, '', 7, 1),
(6, '2024-05-15 11:22:35.591907', '4', '4140.590519494838', 3, '', 7, 1),
(7, '2024-05-15 11:24:29.355171', '8', '4140.593501483448', 3, '', 7, 1),
(8, '2024-05-15 11:24:29.375078', '7', '4140.590519494838', 3, '', 7, 1),
(9, '2024-05-18 16:26:41.352200', '18', '4140.590519494838', 3, '', 7, 1),
(10, '2024-05-18 16:26:41.359266', '17', '4140.590519494838', 3, '', 7, 1),
(11, '2024-05-18 16:26:41.363239', '16', '4140.590519494838', 3, '', 7, 1),
(12, '2024-05-18 16:26:41.371331', '15', '5800.335474890893', 3, '', 7, 1),
(13, '2024-05-18 16:26:41.371331', '14', '5800.335474890893', 3, '', 7, 1),
(14, '2024-05-18 16:26:41.378370', '13', '5800.335474890893', 3, '', 7, 1),
(15, '2024-05-18 16:26:41.378370', '12', '5800.335474890893', 3, '', 7, 1),
(16, '2024-05-18 16:26:41.389585', '11', '5800.335474890893', 3, '', 7, 1),
(17, '2024-05-18 16:26:41.394217', '10', '5800.335474890893', 3, '', 7, 1),
(18, '2024-05-18 16:26:41.401195', '9', '5800.335474890893', 3, '', 7, 1),
(19, '2024-05-19 07:10:12.905363', '3', '4140.590519494838', 3, '', 7, 1),
(20, '2024-05-19 07:10:12.916811', '1', '5800.335474890893', 3, '', 7, 1),
(21, '2024-05-19 07:11:59.946108', '4', '4140.590519494838', 3, '', 7, 1),
(22, '2024-05-19 07:11:59.946108', '2', '4140.590519494838', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'predict', 'predresults'),
(8, 'predict', 'soilmoisture'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-04 15:02:07.678619'),
(2, 'auth', '0001_initial', '2024-05-04 15:02:08.674240'),
(3, 'admin', '0001_initial', '2024-05-04 15:02:08.911890'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-04 15:02:08.924616'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-04 15:02:08.933762'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-04 15:02:09.048508'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-04 15:02:09.160571'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-04 15:02:09.180198'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-04 15:02:09.186291'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-04 15:02:09.278009'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-04 15:02:09.278009'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-04 15:02:09.294261'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-04 15:02:09.311618'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-04 15:02:09.339975'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-04 15:02:09.363721'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-04 15:02:09.370951'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-04 15:02:09.394090'),
(18, 'sessions', '0001_initial', '2024-05-04 15:02:09.444146'),
(19, 'predict', '0001_initial', '2024-05-19 04:20:57.331371');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qzgjptvyw79aoixz9p5z9qxcmht83ttc', '.eJxVjMsOwiAQRf-FtSE8BrAu3fcbCMwMUjU0Ke3K-O_apAvd3nPOfYmYtrXGrfMSJxIXocXpd8sJH9x2QPfUbrPEua3LlOWuyIN2Oc7Ez-vh_h3U1Ou3ZqfBhEDJFzoDk_GAiok4gx80K9bFB-uUZZULFkQN1noEZwairKx4fwD2PzhX:1s6r5E:Qv7MXyB9ix1mFlb31lY4lgRlWmauJ0iHAwiE-htiNYk', '2024-05-28 12:16:40.262793');

-- --------------------------------------------------------

--
-- Table structure for table `predict_predresults`
--

CREATE TABLE `predict_predresults` (
  `id` bigint(20) NOT NULL,
  `pressure` double NOT NULL,
  `particulate_matter1` double NOT NULL,
  `particulate_matter2` double NOT NULL,
  `particulate_matter3` double NOT NULL,
  `atmospheric_moisture` double NOT NULL,
  `luminosity` double NOT NULL,
  `temperature` double NOT NULL,
  `humidity` double NOT NULL,
  `classification` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `predict_predresults`
--

INSERT INTO `predict_predresults` (`id`, `pressure`, `particulate_matter1`, `particulate_matter2`, `particulate_matter3`, `atmospheric_moisture`, `luminosity`, `temperature`, `humidity`, `classification`) VALUES
(5, 2235, 0.8, 0, 0, 0, 7645, 30, 255, '4140.590519494838'),
(6, 222, 0.7, 0, 0, 0, 44, 70, 44, '4140.590519494838'),
(7, 11, 1, 1, 1, 1, 1, 1, 1, '4140.563574389209'),
(8, 22, 0.9, 0, 0, 0, 45, 90, 456, '4140.590519494838'),
(9, 92849.3, 0.8, 0, 0, 0, 6547, 23, 90.6, '4140.590519494838'),
(10, 4737, 0.8, 0, 0, 0, 6547, 23, 90.3, '4140.590519494838'),
(11, 6, 0.9, 0.5, 0.7, 0, 7654, 36, 94, '4140.590519494838');

-- --------------------------------------------------------

--
-- Table structure for table `soilmoisture`
--

CREATE TABLE `soilmoisture` (
  `id` int(11) NOT NULL,
  `temperature` float NOT NULL,
  `humidity` float NOT NULL,
  `moisture` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soilmoisture`
--

INSERT INTO `soilmoisture` (`id`, `temperature`, `humidity`, `moisture`) VALUES
(1, 25, 34, 1024),
(14, 27, 45, 1024),
(51, 30, 32, 1024),
(52, 30.1, 32, 1024),
(53, 32, 55, 900),
(66, 26.9, 47, 1024),
(67, 27, 47, 1024),
(68, 27, 47, 496),
(69, 27, 47, 522),
(70, 26.9, 47, 533),
(71, 26.9, 47, 537),
(72, 26.9, 47, 454),
(73, 26.9, 47, 513),
(74, 26.9, 47, 521),
(75, 26.8, 47, 521),
(76, 26.8, 47, 450),
(77, 26.8, 47, 518),
(78, 26.8, 48, 534),
(79, 26.8, 48, 542),
(80, 26.8, 48, 545),
(81, 26.8, 48, 546),
(82, 26.8, 48, 547),
(83, 26.8, 48, 547),
(84, 26.7, 48, 549),
(85, 26.7, 48, 549),
(86, 26.7, 48, 549),
(87, 26.7, 48, 550),
(88, 26.7, 48, 549),
(89, 26.7, 48, 549),
(90, 26.7, 48, 548),
(91, 26.7, 48, 547),
(92, 26.7, 48, 547),
(93, 26.7, 48, 547),
(94, 26.7, 48, 546),
(95, 26.8, 48, 552),
(96, 26.8, 48, 629),
(97, 26.8, 48, 649),
(98, 26.8, 48, 656),
(99, 26.8, 48, 661),
(100, 26.8, 48, 488),
(101, 26.8, 48, 511),
(102, 26.8, 48, 378),
(103, 26.8, 48, 488),
(104, 26.8, 48, 502),
(105, 26.8, 48, 508),
(106, 26.8, 48, 512),
(107, 26.8, 48, 514),
(108, 26.7, 48, 516),
(109, 26.7, 48, 518),
(110, 26.7, 48, 518),
(111, 26.7, 48, 519),
(112, 26.7, 48, 518),
(113, 26.8, 48, 518),
(114, 26.8, 48, 518),
(115, 26.8, 48, 518),
(116, 26.8, 48, 518),
(117, 26.8, 48, 517),
(118, 26.8, 48, 517),
(119, 26.8, 48, 517),
(120, 26.8, 48, 517),
(121, 26.8, 48, 517),
(122, 26.8, 48, 517),
(123, 26.8, 48, 514),
(124, 26.8, 48, 514),
(125, 26.8, 48, 514),
(126, 26.8, 48, 514),
(127, 26.8, 48, 513);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `role` varchar(100) NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`role`, `id`) VALUES
('student', 1),
('researcher', 2),
('student', 3),
('student', 4),
('farmer', 5),
('researcher', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `predict_predresults`
--
ALTER TABLE `predict_predresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soilmoisture`
--
ALTER TABLE `soilmoisture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `predict_predresults`
--
ALTER TABLE `predict_predresults`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `soilmoisture`
--
ALTER TABLE `soilmoisture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
