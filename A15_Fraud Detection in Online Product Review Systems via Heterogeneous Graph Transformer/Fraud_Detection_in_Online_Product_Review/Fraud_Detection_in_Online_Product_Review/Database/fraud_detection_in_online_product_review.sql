-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2021 at 11:22 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fraud_detection_in_online_product_review`
--
CREATE DATABASE IF NOT EXISTS `fraud_detection_in_online_product_review` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fraud_detection_in_online_product_review`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add client register_ model', 7, 'add_clientregister_model'),
(20, 'Can change client register_ model', 7, 'change_clientregister_model'),
(21, 'Can delete client register_ model', 7, 'delete_clientregister_model'),
(22, 'Can add client posts_ model', 8, 'add_clientposts_model'),
(23, 'Can change client posts_ model', 8, 'change_clientposts_model'),
(24, 'Can delete client posts_ model', 8, 'delete_clientposts_model'),
(25, 'Can add feedbacks_ model', 9, 'add_feedbacks_model'),
(26, 'Can change feedbacks_ model', 9, 'change_feedbacks_model'),
(27, 'Can delete feedbacks_ model', 9, 'delete_feedbacks_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'Client_Site', 'clientposts_model'),
(7, 'Client_Site', 'clientregister_model'),
(9, 'Client_Site', 'feedbacks_model'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Remote_User', '0001_initial', '2019-04-23 07:01:48.050781'),
(2, 'contenttypes', '0001_initial', '2019-04-23 07:01:49.494140'),
(3, 'auth', '0001_initial', '2019-04-23 07:02:03.837890'),
(4, 'admin', '0001_initial', '2019-04-23 07:02:05.832031'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-04-23 07:02:05.863281'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-23 07:02:07.041015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-23 07:02:07.839843'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-23 07:02:08.330078'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-23 07:02:08.361328'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-23 07:02:08.921875'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-23 07:02:08.953125'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-23 07:02:08.989257'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-23 07:02:09.785156'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-23 07:02:10.580078'),
(15, 'sessions', '0001_initial', '2019-04-23 07:02:11.764648'),
(16, 'Remote_User', '0002_clientposts_model', '2019-04-25 05:53:57.702132'),
(17, 'Remote_User', '0003_clientposts_model_usefulcounts', '2019-04-25 10:00:02.521468'),
(18, 'Remote_User', '0004_auto_20190429_1027', '2019-04-29 04:57:32.672296'),
(19, 'Remote_User', '0005_clientposts_model_dislikes', '2019-04-29 05:15:16.668390'),
(20, 'Remote_User', '0006_Review_model', '2019-04-29 05:19:26.382257'),
(21, 'Remote_User', '0007_clientposts_model_names', '2019-04-30 04:45:46.472656');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0doxd89lelsb62hh61y1u9xvhgis91ks', 'eyJ1c2VyaWQiOjE5fQ:1mDlBs:xxj-bSmT5wd80FZ0QPs9yzR1wUnf-8naNjRRmgbWt-4', '2021-08-25 10:10:28.069873'),
('0jpcgnd1gmwbp3e8tw54e6nxjylsogyo', 'YmM4NjE0MDQ2MzBmYWIxNzIzNTkxZjBiN2I5M2MxMzQyYTE0YmMxODp7InVzZXJpZCI6Mn0=', '2020-02-21 08:52:28.687500'),
('1avxwyhltuaclq2zfq40bjmwzxgup6hp', 'eyJ1c2VyaWQiOjJ9:1ml5JO:9_XIwCjkeG7Vu6-k169B1gbde6aRX-mqiwhgCKNqrRA', '2021-11-25 08:19:58.276708'),
('462m0tkiy8xd3ql7v3nehby5nwnktgbi', 'eyJ1c2VyaWQiOjR9:1msjk3:i3KEB5JIj4e-1oTvNtfQlVJaYAFzNLJEFVCwoJ8j19Q', '2021-12-16 10:55:07.684226'),
('49qo7iki5uxczhyymi8ka7dnh6a2wva5', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-08 09:19:45.486328'),
('4df7s82pddaszour6twx23d86058ppjq', 'ZmNkODA5MmI1ZGQ0Yjk5MmZlNzEyNTcwNTcxNjk2ZWYxZTE3NThkMjp7InVzZXJpZCI6NX0=', '2020-11-23 11:49:21.396484'),
('4io28d085qjfib7a5s2qbhc8qp4wfiva', 'eyJ1c2VyaWQiOjE2fQ:1mAtmi:oIUbcN3WzJiaWnxMBZ6eIGMTo8NS2y701JlpwqvzBUk', '2021-08-17 12:44:40.453750'),
('4x6b78w9rfcn34v650kd2j7oij6atr8p', 'Zjk0Y2RlYjc4OTJhNWMyZjQyNmM4ZGRhYTVjNmVlNDFhZGE4ZmU3NTp7InVzZXJpZCI6Nn0=', '2019-12-27 12:07:42.082031'),
('7ixdamflp4fqyjecn17bd7xfbsi7eowq', 'eyJ1c2VyaWQiOjEwfQ:1mBzQr:5DfHs08xtygiklJxfW3kZFCrxnrA_igxR5gbDcKt2e8', '2021-08-20 12:58:37.947486'),
('7ph664obz14m207786d3oubrzgjnisom', 'eyJ1c2VyaWQiOjN9:1ml5U2:RJ7eMbREY4fk71sBmCItxM6E3kDDc-R-clIp-QGiiuI', '2021-11-25 08:30:58.769500'),
('9vom7mmn5muyoiy8nytc9mxown1q1g2b', 'eyJ1c2VyaWQiOjE5fQ:1mDRHr:QCoJ_gmMMx_cxknA5j_5NlcTLnENHFouosRuxYZlYbI', '2021-08-24 12:55:19.038051'),
('au3tqhab9csr4r2g5p8wxgktebzxone0', 'eyJ1c2VyaWQiOjExfQ:1mexd7:BmPTZn93Z2602ApV03LTh7BmDypyoNMN2YRKctHrGF8', '2021-11-08 10:55:01.820399'),
('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:00:08.480453'),
('bhfid9lacfwlfi5yu3rgdg1uo5fp2bq8', 'eyJ1c2VyaWQiOjE4fQ:1mBH4F:2wUorkPET_MGY07bWd-Zp-9HZUsjS3bGCHCu1j6BN-s', '2021-08-18 13:36:19.192796'),
('bq0ki24k7luwc0r6tyyd59zg1188mgca', 'eyJ1c2VyaWQiOjV9:1mskxr:BPYi3rwoeABt7UZNBUIvYc2fVuDYtfISEM8SHM7qTYs', '2021-12-16 12:13:27.445789'),
('ct13q5fpn94zvnij8ekixwzcky2imc5e', 'YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=', '2019-05-14 11:44:10.978515'),
('e07j4duysh402dedtomm8icctvs9ljgy', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:08:12.306625'),
('fq0czwxzas1e5bjz5cx5pr6ytm8uhejy', 'eyJ1c2VyaWQiOjExfQ:1mfKoD:eQbeRUgZ8NFqCleEdS6fE0NAoRs3zn6_B82CZb4YtiQ', '2021-11-09 11:40:01.472965'),
('gq3vdjxoy34hxkorw2d8nztdusdknegl', 'eyJ1c2VyaWQiOjF9:1mpUvs:Lry5yh51WzsY8judWu-ApNb05fEC5oHytMQ9bZSqbGU', '2021-12-07 12:29:56.098464'),
('gsqk7v1ei7yhuvcbxw6r8vxhgbuzz7zx', 'eyJ1c2VyaWQiOjJ9:1mkkhL:_T8wyqi-MJi-K7_a-0EPz-h6HRouyRfpeAhHqTS5N04', '2021-11-24 10:19:19.270816'),
('h2up0dvopjvwswxnvprj7id9lgrivhus', 'eyJ1c2VyaWQiOjIzfQ:1mfM3f:FAuAUdY-ly6qun6t571yt1pYKVGhXfjbjhiruld5rNs', '2021-11-09 13:00:03.703809'),
('hbv74sg6w6e4wp89vq807vw0xhkh5s1h', 'MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=', '2020-01-10 07:40:38.067382'),
('hhtt48je70l9nzw6dee4ocuxxm9blqej', 'NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=', '2019-05-09 10:12:38.380843'),
('hsb5814on7cph0wvy0yls67ca94ngcq3', 'eyJ1c2VyaWQiOjE5fQ:1mBzgz:cug3sAkQKH-bQBkB9O5l0UsDJL-37eDV8mR9Qau3elA', '2021-08-20 13:15:17.195464'),
('i530ldontosd9c37rlmr7i190cc8j54c', 'eyJ1c2VyaWQiOjExfQ:1mfGFZ:PSpZPmdPYnGzwCScqY4tYBkDj8BMVATwweZjjxmG5dk', '2021-11-09 06:47:57.629900'),
('i77fui9jgj9yk7ncx7u4ph5d6kg0nl6c', 'eyJ1c2VyaWQiOjE5fQ:1mDPJC:kqt800XGsVGRjHS3TmeLFrJbrpIK4-GbH4ZirwIc7S4', '2021-08-24 10:48:34.860638'),
('ic3hqykgws5iy6fz5ns6h6f921jbjzmt', 'eyJ1c2VyaWQiOjExfQ:1kywHL:I_tahJ0VJb7myAbMbXpWZu9XrSaAMmduNxGd2x5gtmY', '2021-01-25 12:26:35.043761'),
('iz6wcyx97x1w6mpfc51g1tj72z2xghfn', 'eyJ1c2VyaWQiOjl9:1kwlIp:YKOKMwJARe6w057AKTGY1-GCuRcZAeAbJ0bdQao23wY', '2021-01-19 12:19:07.663490'),
('jgcbya9z2s6b6mmldfv28lm18imc73m8', 'eyJ1c2VyaWQiOjIxfQ:1mDnYP:GTRQ2I-UYLdsCCyA0-WsFSAVBNno1wLo6lk4M8JS0OU', '2021-08-25 12:41:53.312085'),
('jpkxxiej4bdjin5tpdjm0xqhdooexz9o', 'eyJ1c2VyaWQiOjExfQ:1mBEdk:YOk6fHHfBMmtt5ZvSyzgy13Az8JS59iXbU4LO1Ps1RI', '2021-08-18 11:00:48.423036'),
('k7dyn4irgrj5wb4jucb4po527iw724dp', 'eyJ1c2VyaWQiOjEzfQ:1l0JrY:2_TJ4L_XoHdOW51Zdp0MOdyBEZEzntk5pdXZFDmX9x4', '2021-01-29 07:49:40.202848'),
('ktjsa2dwmkzggkc8htfro0m1zf2kt78d', 'eyJ1c2VyaWQiOjI0fQ:1mfiev:rUgpc2VOr-8MQnmWwZsSVM_IqXQAA3Bacheqmp_LQ2o', '2021-11-10 13:08:01.503971'),
('kxla8qbe1hs1tb4a04ewpmdmi5fx1evc', 'eyJ1c2VyaWQiOjF9:1mppgH:W6PX8scwqi7GUGW9dXo0wqzeDJNI9Ohr43tDihOaZ_4', '2021-12-08 10:39:13.866470'),
('lztc11gfnvid2u3fcos1y0q1s0hs1sqi', 'eyJ1c2VyaWQiOjR9:1mskPA:lwVxzdoKqGUnb6omLFa_Ftd_NVCy2tbzsy_5oM81g4w', '2021-12-16 11:37:36.948374'),
('o7x1vhluuypdfmgv7fmv6nohgfn5ub55', 'NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9', '2020-01-02 12:51:55.659179'),
('oc4pzt7ijx1rzj09m2ve6b6y5uwc6wt5', 'eyJ1c2VyaWQiOjF9:1mkk7W:6GDuPOPoLHMwOYLys3lXIgfM79Fq36HHW31-utzbeyk', '2021-11-24 09:42:18.649798'),
('owqt9fqa6pkheboduh6f4k5p4lkwj0yc', 'eyJ1c2VyaWQiOjExfQ:1mfiXk:Wzn12pygxu_2Z1TzCSC4bKDawuXj_i7_BFLhJjKx-10', '2021-11-10 13:00:36.684741'),
('psdjoq42u7lfqwfodftic5x6z9ij34nk', 'eyJ1c2VyaWQiOjExfQ:1mAXDq:a8YYY1YJU3jPv03qo9-VcrjRHnDWRSqGseiR93n0GVM', '2021-08-16 12:39:10.518259'),
('q6hp9a2l9dbrclvox0o02x1aamx1ukj7', 'eyJ1c2VyaWQiOjIyfQ:1mfGz3:wkq7ZgyB738cK3Jugrc0viqb3eI1C0gWhyypHF_DE-A', '2021-11-09 07:34:57.860407'),
('qnaolidvfx6bu9ra3uyqvkgva7bv92f1', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-14 05:34:50.069335'),
('r9342kcgrcshumu9a0dv6ymghpydrod8', 'eyJ1c2VyaWQiOjN9:1mps6p:FG6aEFnuqHc-GqQoe62wBNtlOceET3bwgLDO024y4-U', '2021-12-08 13:14:47.475947'),
('r9qk0kd407g591hugz99fhps8zofh69s', 'eyJ1c2VyaWQiOjE4fQ:1mBxnG:qkd9MTM_FhhghUpV90qngEkwkoSKYdLbfwRKBLhK7Qg', '2021-08-20 11:13:38.356475'),
('rfq3uvadj7qsqrz7qlcyie9wscsqz1nr', 'eyJ1c2VyaWQiOjI1fQ:1mk2vF:mTIne3EU3rECWccrUfyPmy7XxIwdAzxhig4S5oOngho', '2021-11-22 11:34:45.897995'),
('rn48bwukkb2yv60kvkacr8nc0njr5xky', 'eyJ1c2VyaWQiOjExfQ:1mfggv:xsbmrrGzxtrEFgspA0Wp7oWTp9qDl0shDSlGG8fHJo4', '2021-11-10 11:01:57.519295'),
('s7ui2zx2cslubpch6dm7iaxlz2wlsdgg', 'eyJ1c2VyaWQiOjExfQ:1mk1Xz:fpol-krFazPxkK0b4gEoocpOXHcd-eaYoxg26CU420Q', '2021-11-22 10:06:39.923928'),
('sdcvtwp7s5yj8q1lb0mdvlg8nj5wujqo', 'eyJ1c2VyaWQiOjEyfQ:1kzJ3p:0g6nRuJv3TXWVpANqNgbJcrUv96ZU5UQwv3bgqBbL1I', '2021-01-26 12:46:09.538596'),
('tejgl09oettnyva23kqdbns5nfz5g8ug', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:19:24.387679'),
('tx26u0gjaebi1m6miqvms83dw452rw7c', 'eyJ1c2VyaWQiOjExfQ:1mg01H:i0OHhHK7t2WdfySWwMXXs92TaT7Vn1UQf2i0eZBO70s', '2021-11-11 07:40:15.053714'),
('u5icgvq3qt5nthdlv99go3r804ccghbo', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:00:13.573226'),
('ws2o4cq1jbqepe0e9s9v7n4erxatq9ic', 'eyJ1c2VyaWQiOjE1fQ:1l2CgI:SmlpAnZzplZhPTFJ_rkEJstnZRl2CYWyTcah7PHPv-M', '2021-02-03 12:33:50.352453'),
('xc6si4gdotxq06mslnwwjtewdhzuyh44', 'eyJ1c2VyaWQiOjR9:1mnfuL:VMKdQ2gcb4wQppelEf-wAdfTSSkA6nWPCeQODqD3NOM', '2021-12-02 11:48:49.418566'),
('zega5sz46ivu1tb1o1mtmg3v2ysxog1w', 'eyJ1c2VyaWQiOjh9:1kuVm4:L7RizVvw4EC0IyYCYAIhGjC8lvZol_Z1abqVwdkdKkY', '2021-01-13 07:20:00.767751'),
('zq2idu1e3gkyelhzpa24k5jixqhj74da', 'eyJ1c2VyaWQiOjJ9:1mne5B:sOSzXh5WGI5se1746XNpUgE1_UZZw07Xzb03KIcZXfY', '2021-12-02 09:51:53.585889');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_clientregister_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_clientregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `remote_user_clientregister_model`
--

INSERT INTO `remote_user_clientregister_model` (`id`, `username`, `email`, `password`, `phoneno`, `country`, `state`, `city`) VALUES
(4, 'Kamalesh', 'Kamalesh123@gmail.com', 'Kamalesh', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(5, 'Manjunath', 'tmksmanju123@gmail.com', 'Manjunath', '9535866270', 'India', 'Karnataka', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_accuracy`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_accuracy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `remote_user_detection_accuracy`
--

INSERT INTO `remote_user_detection_accuracy` (`id`, `names`, `ratio`) VALUES
(35, 'Naive Bayes', '96.53465346534654'),
(36, 'SVM', '95.54455445544554'),
(37, 'Logistic Regression', '96.03960396039604'),
(38, 'Decision Tree Classifier', '95.04950495049505');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_ratio`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `remote_user_detection_ratio`
--

INSERT INTO `remote_user_detection_ratio` (`id`, `names`, `ratio`) VALUES
(17, 'Fraud Review', '26.31578947368421'),
(18, 'No Fraud Review', '73.68421052631578');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_fraud_prediction`
--

CREATE TABLE IF NOT EXISTS `remote_user_fraud_prediction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Product_Review` varchar(30000) NOT NULL,
  `Prediction` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `remote_user_fraud_prediction`
--

INSERT INTO `remote_user_fraud_prediction` (`id`, `Product_Review`, `Prediction`) VALUES
(1, 'Not much to write about here, but it does exactly what it''s supposed to. filters out the pop sounds. now my recordings are much more crisp. it is one of the lowest prices pop filters on amazon so might as well buy it, they honestly work the same despite their pricing,', 'No Fraud Review'),
(2, 'This Fender cable is the perfect length for me! Sometimes I find it a bit too long but I don''t mind. The build quality is great and I know that it will last. The only gripe I have with this cable is that the metal sleeve gets unscrewed way too easily, requiring me to tighten it often.Sound quality is not affected, and the color is cool, definitely try this cable out.', 'No Fraud Review'),
(3, 'I didn''t expect this cable to be so thin. It''s easily 1/2 the thickness of any guitar cable I''ve used. Not sure about long-term durability or signal loss/interference. If I had the foresight I''d spend a couple extra bucks on a thicker cable.  Still, it works and was inexpensive.EDIT: 6 months later and it''s dead already.  Wire frayed at the right angle jack.  You get what you pay for.', 'Fraud Review'),
(4, 'This amp plug is great for the price its 10 ft long the perfect size for jammin at home and it has a quality look to it aesthetically totally worth the price', 'No Fraud Review'),
(5, 'This pop filter is great. It looks and performs like a studio filter. If you''re recording vocals this will eliminate the pops that gets recorded when you sing.', 'No Fraud Review'),
(6, 'I bought this to use in my home studio to control my midi keyboard. It does just what I wanted it to do.', 'No Fraud Review'),
(7, 'This Fender cable is the perfect length for me! Sometimes I find it a bit too long but I don''t mind. The build quality is great and I know that it will last. The only gripe I have with this cable is that the metal sleeve gets unscrewed way too easily, requiring me to tighten it often.Sound quality is not affected, and the color is cool, definitely try this cable out.', 'No Fraud Review'),
(8, 'I bought this to use with my keyboard. I wasn''t really aware that there were other options for keyboard pedals. It doesn''t work as smoothly as the pedals do on an acoustic piano, which is what I''d always used. Doesn''t have the same feel either. Nowhere close.In my opinion, a sustain pedal like the M-Audio SP-2 Sustain Pedal with Piano Style Action or other similar pedal is a much better choice. The price difference is only a few dollars and the feel and action are so much better. The only thing I''ve found the Yamaha FC-5 Sustain Pedal is good for is taking up space in a drawer where I keep my electric guitar pedals.', 'Fraud Review'),
(9, 'I''ve been using these for about 3 weeks now - they are strong but flexible and don''t seem to develop kinks or bending "habits" if you roll them up the proper way.I''ve seen and used some better cables but not at this price point.  And I''ve certainly seen quite a few worse!  This is a pretty good sweet spot, in my opinion.', 'No Fraud Review'),
(10, 'I own lots of hosa cables they are cheap and quality is there. I''ve only recieved one bad cable out of around 50 or so. I use a lot of these guys and if they work when you get them, they havn''t failed yet.', 'No Fraud Review'),
(11, 'I got 3 of these to plug XLR cables into the 1/4&#34; jacks on my board. I got it because my board only has 6 channels with XLR inputs. None of them work. Perhaps I got the wrong thing?', 'Fraud Review'),
(12, 'Received it in time, standard blister packaging but the cable stopped working after 45 days. Since I was out of 30 days return time, sent an email to the manufacturer but no response till today.', 'Fraud Review'),
(13, 'Pay a couple bucks more and you get one from a brand like Audio Technica and you know it''s going to withstand the test of time.  Mine is working fairly well but the attachments are loosening so who knows what''s next.', 'No Fraud Review'),
(14, 'This is a great chord for anyone needing to not spend the money on a high quality chord... It''s no PEAVEY but it works just as good...', 'No Fraud Review'),
(15, 'This has saved my bass drum head from many holes. Also has no affect on sound of bass drum.Would recommend.', 'No Fraud Review'),
(16, 'This has saved my bass drum head from many holes. Also has no affect on sound of bass drum.Would recommend.', 'No Fraud Review'),
(17, 'I can only repeat what everyone else has already said: this Kyser capo is designed and built very well. It''s easy to put on and adjust, and just as easy to take off. There are probably a few capos out there that are a bit flashier, but this is still pretty stylish. And the price makes it a real bargain.', 'No Fraud Review'),
(18, 'I bought this pick holder because I hate putting a pick between my strings to hold it and because you can''t play with a pick in your strings. I originally thought this thing would be kind of large and go all the way across the headstock. Boy was I wrong. The picture is misleading.  This thing is tiny and barely goes across three string. It wedges under neath two strings and you can put two picks (maybe more if they are thin) into the wedges on top. Stays in place well and is very convenient.Only negative is I don''t know how long it will hold up. I think maybe a thicker rubber rather than this foam rubber would have held up better. I can see this thing eventually losing tension in the pick holder wedges and dropping picks.', 'No Fraud Review'),
(19, 'If you want your guitar to sound like Eddie Van Halen, Joe Satriani and other guitarists studio album guitar sound, then get a BOSS GT-10 (guitar multi effects processor) and install BOSS GT-10 Patches by James Limborg. Search Google for BOSS GT-10 Patches by James Limborg.', 'Fraud Review');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
