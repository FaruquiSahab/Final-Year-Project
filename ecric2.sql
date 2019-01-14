-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2019 at 04:28 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecric2`
--

-- --------------------------------------------------------

--
-- Table structure for table `balls`
--

CREATE TABLE `balls` (
  `id` int(10) UNSIGNED NOT NULL,
  `match_id` int(11) NOT NULL,
  `innings_no` int(11) NOT NULL,
  `batsmen_id` int(11) NOT NULL,
  `bowler_id` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `legal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ball_overs`
--

CREATE TABLE `ball_overs` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `inning_no` int(11) NOT NULL,
  `over_id` int(11) NOT NULL,
  `ball_id` int(11) NOT NULL,
  `run` int(11) NOT NULL,
  `legal` int(11) NOT NULL,
  `batsmen_id` int(11) NOT NULL,
  `bowler_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batsmen_scores`
--

CREATE TABLE `batsmen_scores` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `inning_no` int(11) NOT NULL,
  `batsmen_id` int(11) NOT NULL,
  `out_how` int(11) NOT NULL,
  `out_by` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `balls` int(11) NOT NULL,
  `fours` int(11) NOT NULL,
  `sixes` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batting_styles`
--

CREATE TABLE `batting_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batting_styles`
--

INSERT INTO `batting_styles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Right-hand bat', NULL, NULL),
(2, 'Left-hand bat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bowler_scores`
--

CREATE TABLE `bowler_scores` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `inning_no` int(11) NOT NULL,
  `bowler_id` int(11) NOT NULL,
  `overs` float(100,1) NOT NULL,
  `maidens` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `wickets` int(11) NOT NULL,
  `economy` float(100,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bowling_styles`
--

CREATE TABLE `bowling_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bowling_styles`
--

INSERT INTO `bowling_styles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Right Arm Fast', NULL, NULL),
(2, 'Right Arm Fast Medium', NULL, NULL),
(3, 'Left Arm Fast', NULL, NULL),
(4, 'Left Arm Fast Medium', NULL, NULL),
(5, 'Right Arm off-break', NULL, NULL),
(6, 'Right Arm Leg-break', NULL, NULL),
(7, 'Left Arm Orthodox', NULL, NULL),
(8, 'Left Arm Chinaman', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `check_users`
--

CREATE TABLE `check_users` (
  `id` int(11) NOT NULL,
  `title` varchar(11) NOT NULL,
  `post` varchar(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `user` varchar(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `check_users`
--

INSERT INTO `check_users` (`id`, `title`, `post`, `name`, `user`, `updated_at`, `created_at`) VALUES
(127, 'Check', 'abcd', 'waheed', 'asd', '2018-12-10 10:35:51', '2018-12-10 10:35:51'),
(128, 'post', 'abc', 'asd', 'asd', '2018-12-10 10:41:18', '2018-12-10 10:41:18'),
(129, 'waheed', 'asd', 'faruqui', 'asddfv', '2018-12-10 10:49:42', '2018-12-10 10:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `name`, `photo_id`, `level_id`, `created_at`, `updated_at`) VALUES
(1, 'Karachi Tigers', '15', 3, '2018-09-27 14:44:11', '2018-09-27 15:09:44'),
(4, 'Quetta Shaheens', '16', 1, '2018-09-27 15:10:02', '2018-11-12 10:14:57'),
(7, 'Kashimiri Lions', '26', 3, '2018-09-27 16:10:17', '2018-09-27 16:10:17'),
(8, 'Balochi Hawks', '28', 3, '2018-09-28 07:05:00', '2018-09-28 07:05:00'),
(9, 'Lahore Sultans', '29', 2, '2018-09-28 07:06:06', '2018-09-28 07:06:06'),
(10, 'Punjab Star', '80', 2, '2018-11-03 10:57:42', '2018-11-03 10:57:42'),
(16, 'PTV Sports', '88', 3, '2018-11-03 11:21:39', '2018-11-03 11:21:39'),
(30, 'Club', '91', 2, '2018-11-04 05:54:41', '2018-11-04 05:54:41'),
(31, 'Faisalabad Wolves', '92', 2, '2018-11-13 12:31:48', '2018-11-13 12:31:48'),
(32, 'Peshawar Kings', '112', 1, '2018-12-06 03:45:34', '2018-12-06 03:45:34'),
(33, 'sadasdd', NULL, 1, '2019-01-07 20:41:02', '2019-01-07 20:41:17'),
(34, 'Paf Kiet Main', NULL, 1, '2019-01-07 21:25:14', '2019-01-07 21:28:00'),
(35, 'Paf Kiet North', NULL, 2, '2019-01-07 21:25:17', '2019-01-08 04:54:42'),
(36, 'Paf Kiet City', NULL, 1, '2019-01-07 21:27:02', '2019-01-07 21:28:13'),
(37, 'Admin', NULL, 1, '2019-01-07 21:27:35', '2019-01-07 21:27:35'),
(38, 'New Club', NULL, 1, '2019-01-08 04:19:48', '2019-01-08 04:19:48'),
(39, 'Tour Eleven', NULL, 2, '2019-01-08 04:53:59', '2019-01-08 04:53:59'),
(40, 'Seth Lion', NULL, 3, '2019-01-14 09:50:43', '2019-01-14 09:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`id`, `name`, `nationality`, `club_id`, `created_at`, `updated_at`, `photo_id`) VALUES
(4, 'Richard', 'West Indies', 4, '2018-09-28 07:06:52', '2018-10-14 15:56:26', 32);

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` int(10) UNSIGNED NOT NULL,
  `match_id` int(11) NOT NULL,
  `inning_no` int(11) NOT NULL,
  `no_balls` int(11) NOT NULL,
  `wides` int(11) NOT NULL,
  `byes` int(11) NOT NULL,
  `leg_byes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `match_id`, `inning_no`, `no_balls`, `wides`, `byes`, `leg_byes`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fall_of_wickets`
--

CREATE TABLE `fall_of_wickets` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `innings no` int(11) NOT NULL,
  `wicket_no` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `batsmen_id` int(11) NOT NULL,
  `bowler_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fixtures`
--

CREATE TABLE `fixtures` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_id_1` int(11) NOT NULL,
  `club_id_2` int(11) DEFAULT NULL,
  `match_date` date DEFAULT NULL,
  `match_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ground_id` int(11) DEFAULT NULL,
  `tournament_id` int(11) DEFAULT NULL,
  `refer_id` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fixtures`
--

INSERT INTO `fixtures` (`id`, `club_id_1`, `club_id_2`, `match_date`, `match_time`, `ground_id`, `tournament_id`, `refer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(2, 1, 7, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(3, 1, 8, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(4, 4, 1, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(5, 4, 7, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(6, 4, 8, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(7, 7, 1, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(8, 7, 4, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(9, 7, 8, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(10, 8, 1, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(11, 8, 4, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(12, 8, 7, NULL, '10 AM', 1, 1, 8, 0, '2019-01-07 08:39:59', '2019-01-07 08:39:59'),
(13, 10, 16, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:43', '2019-01-07 08:40:43'),
(14, 10, 30, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:43', '2019-01-07 08:40:43'),
(15, 10, 31, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:43', '2019-01-07 08:40:43'),
(16, 10, 32, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:43', '2019-01-07 08:40:43'),
(17, 16, 10, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:43', '2019-01-07 08:40:43'),
(18, 16, 30, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:43', '2019-01-07 08:40:43'),
(19, 16, 31, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:43', '2019-01-07 08:40:43'),
(20, 16, 32, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(21, 30, 10, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(22, 30, 16, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(23, 30, 31, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(24, 30, 32, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(25, 31, 10, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(26, 31, 16, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(27, 31, 30, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(28, 31, 32, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(29, 32, 10, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(30, 32, 16, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(31, 32, 30, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(32, 32, 31, NULL, '10 AM', 4, 4, 9, 0, '2019-01-07 08:40:44', '2019-01-07 08:40:44'),
(33, 1, 4, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(34, 1, 7, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(35, 1, 9, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(36, 4, 1, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(37, 4, 7, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(38, 4, 9, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(39, 7, 1, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(40, 7, 4, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(41, 7, 9, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(42, 9, 1, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(43, 9, 4, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(44, 9, 7, NULL, '10 AM', 4, 8, 10, 0, '2019-01-07 08:42:57', '2019-01-07 08:42:57'),
(45, 1, 4, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:05', '2019-01-07 10:38:05'),
(46, 1, 7, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:05', '2019-01-07 10:38:05'),
(47, 1, 8, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:05', '2019-01-07 10:38:05'),
(48, 4, 1, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:05', '2019-01-07 10:38:05'),
(49, 4, 7, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:05', '2019-01-07 10:38:05'),
(50, 4, 8, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:05', '2019-01-07 10:38:05'),
(51, 7, 1, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:05', '2019-01-07 10:38:05'),
(52, 7, 4, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:05', '2019-01-07 10:38:05'),
(53, 7, 8, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:05', '2019-01-07 10:38:05'),
(54, 8, 1, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:06', '2019-01-07 10:38:06'),
(55, 8, 4, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:06', '2019-01-07 10:38:06'),
(56, 8, 7, '2019-01-09', '10 AM', 1, 7, 11, 0, '2019-01-07 10:38:06', '2019-01-07 10:38:06'),
(57, 1, 4, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(58, 1, 7, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(59, 1, 8, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(60, 4, 1, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(61, 4, 7, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(62, 4, 8, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(63, 7, 1, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(64, 7, 4, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(65, 7, 8, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(66, 8, 1, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(67, 8, 4, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(68, 8, 7, '2019-01-23', '10 AM', 5, 5, 12, 0, '2019-01-07 10:43:53', '2019-01-07 10:43:53'),
(69, 1, 4, '2019-02-24', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(70, 1, 7, '2019-02-26', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(71, 1, 8, '2019-02-28', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(72, 1, 9, '2019-03-02', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(73, 4, 1, '2019-03-04', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(74, 4, 7, '2019-03-06', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(75, 4, 8, '2019-03-08', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(76, 4, 9, '2019-03-10', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(77, 7, 1, '2019-03-12', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(78, 7, 4, '2019-03-14', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(79, 7, 8, '2019-03-16', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(80, 7, 9, '2019-03-18', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(81, 8, 1, '2019-03-20', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(82, 8, 4, '2019-03-22', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(83, 8, 7, '2019-03-24', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(84, 8, 9, '2019-03-26', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(85, 9, 1, '2019-03-28', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(86, 9, 4, '2019-03-30', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(87, 9, 7, '2019-04-01', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(88, 9, 8, '2019-04-03', '10 AM', 5, 8, 13, 0, '2019-01-07 10:45:52', '2019-01-07 10:45:52'),
(89, 1, 4, '2019-01-22', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(90, 1, 7, '2019-01-24', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(91, 1, 8, '2019-01-26', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(92, 4, 1, '2019-01-28', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(93, 4, 7, '2019-01-30', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(94, 4, 8, '2019-02-01', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(95, 7, 1, '2019-02-03', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(96, 7, 4, '2019-02-05', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(97, 7, 8, '2019-02-07', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(98, 8, 1, '2019-02-09', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(99, 8, 4, '2019-02-11', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(100, 8, 7, '2019-02-13', '10 AM', 2, 6, 15, 0, '2019-01-08 00:51:18', '2019-01-08 00:51:18'),
(101, 1, 4, '2019-01-14', '10 AM', 2, 4, 16, 0, '2019-01-14 09:02:35', '2019-01-14 09:02:35'),
(102, 4, 1, '2019-01-16', '10 AM', 2, 4, 16, 0, '2019-01-14 09:02:35', '2019-01-14 09:02:35'),
(103, 1, 4, '2019-01-24', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:52', '2019-01-14 09:03:52'),
(104, 1, 7, '2019-01-26', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:52', '2019-01-14 09:03:52'),
(105, 1, 8, '2019-01-28', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:52', '2019-01-14 09:03:52'),
(106, 4, 1, '2019-01-30', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:52', '2019-01-14 09:03:52'),
(107, 4, 7, '2019-02-01', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:52', '2019-01-14 09:03:52'),
(108, 4, 8, '2019-02-03', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:52', '2019-01-14 09:03:52'),
(109, 7, 1, '2019-02-05', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:52', '2019-01-14 09:03:52'),
(110, 7, 4, '2019-02-07', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:52', '2019-01-14 09:03:52'),
(111, 7, 8, '2019-02-09', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:52', '2019-01-14 09:03:52'),
(112, 8, 1, '2019-02-11', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:53', '2019-01-14 09:03:53'),
(113, 8, 4, '2019-02-13', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:53', '2019-01-14 09:03:53'),
(114, 8, 7, '2019-02-15', '10 AM', 2, 1, 18, 0, '2019-01-14 09:03:53', '2019-01-14 09:03:53'),
(115, 1, 4, '2019-01-28', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:22', '2019-01-14 09:52:22'),
(116, 1, 8, '2019-01-30', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:22', '2019-01-14 09:52:22'),
(117, 1, 9, '2019-02-01', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:22', '2019-01-14 09:52:22'),
(118, 4, 1, '2019-02-03', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:23', '2019-01-14 09:52:23'),
(119, 4, 8, '2019-02-05', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:23', '2019-01-14 09:52:23'),
(120, 4, 9, '2019-02-07', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:23', '2019-01-14 09:52:23'),
(121, 8, 1, '2019-02-09', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:23', '2019-01-14 09:52:23'),
(122, 8, 4, '2019-02-11', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:23', '2019-01-14 09:52:23'),
(123, 8, 9, '2019-02-13', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:23', '2019-01-14 09:52:23'),
(124, 9, 1, '2019-02-15', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:23', '2019-01-14 09:52:23'),
(125, 9, 4, '2019-02-17', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:23', '2019-01-14 09:52:23'),
(126, 9, 8, '2019-02-19', '10 AM', 1, 1, 19, 0, '2019-01-14 09:52:24', '2019-01-14 09:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `grounds`
--

CREATE TABLE `grounds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grounds`
--

INSERT INTO `grounds` (`id`, `name`, `created_at`, `updated_at`, `photo_id`) VALUES
(1, 'Afridi Stadium', '2018-10-15 05:47:22', '2018-10-15 05:47:22', 66),
(2, 'Ghadafi Stadium', NULL, NULL, 88),
(3, 'Shaikh Ziyad Stadium', NULL, NULL, 70),
(4, 'Rawalpindi Cricket Stadium', NULL, NULL, 71),
(5, 'Pakistan Steel Town Stadium', NULL, NULL, 72);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Easy', NULL, NULL),
(2, 'Moderate', NULL, NULL),
(3, 'Hard\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lineups`
--

CREATE TABLE `lineups` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `innings_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lineups`
--

INSERT INTO `lineups` (`id`, `match_id`, `player_id`, `club_id`, `innings_no`) VALUES
(67, 7, 8, 1, 2),
(68, 7, 9, 1, 2),
(69, 7, 10, 1, 2),
(70, 7, 11, 1, 2),
(71, 7, 12, 1, 2),
(72, 7, 13, 1, 2),
(73, 7, 14, 1, 2),
(74, 7, 15, 1, 2),
(75, 7, 16, 1, 2),
(76, 7, 17, 1, 2),
(77, 7, 18, 1, 2),
(78, 7, 28, 4, 1),
(79, 7, 29, 4, 1),
(80, 7, 30, 4, 1),
(81, 7, 31, 4, 1),
(82, 7, 32, 4, 1),
(83, 7, 33, 4, 1),
(84, 7, 34, 4, 1),
(85, 7, 35, 4, 1),
(86, 7, 36, 4, 1),
(87, 7, 37, 4, 1),
(88, 7, 38, 4, 1),
(89, 8, 8, 1, 2),
(90, 8, 9, 1, 2),
(91, 8, 10, 1, 2),
(92, 8, 11, 1, 2),
(93, 8, 5, 4, 1),
(94, 8, 24, 4, 1),
(95, 8, 25, 4, 1),
(96, 8, 26, 4, 1),
(97, 9, 8, 1, 2),
(98, 9, 5, 4, 1),
(99, 10, 8, 1, 2),
(100, 10, 9, 1, 2),
(101, 10, 10, 1, 2),
(102, 10, 11, 1, 2),
(103, 10, 13, 1, 2),
(104, 10, 14, 1, 2),
(105, 10, 15, 1, 2),
(106, 10, 16, 1, 2),
(107, 10, 17, 1, 2),
(108, 10, 18, 1, 2),
(109, 10, 23, 1, 2),
(110, 10, 28, 4, 1),
(111, 10, 29, 4, 1),
(112, 10, 30, 4, 1),
(113, 10, 31, 4, 1),
(114, 10, 32, 4, 1),
(115, 10, 33, 4, 1),
(116, 10, 34, 4, 1),
(117, 10, 35, 4, 1),
(118, 10, 36, 4, 1),
(119, 10, 37, 4, 1),
(120, 10, 38, 4, 1),
(121, 11, 8, 1, 2),
(122, 11, 9, 1, 2),
(123, 11, 10, 1, 2),
(124, 11, 11, 1, 2),
(125, 11, 13, 1, 2),
(126, 11, 14, 1, 2),
(127, 11, 15, 1, 2),
(128, 11, 16, 1, 2),
(129, 11, 17, 1, 2),
(130, 11, 18, 1, 2),
(131, 11, 23, 1, 2),
(132, 11, 28, 4, 1),
(133, 11, 29, 4, 1),
(134, 11, 30, 4, 1),
(135, 11, 31, 4, 1),
(136, 11, 32, 4, 1),
(137, 11, 33, 4, 1),
(138, 11, 34, 4, 1),
(139, 11, 35, 4, 1),
(140, 11, 36, 4, 1),
(141, 11, 37, 4, 1),
(142, 11, 38, 4, 1),
(143, 12, 8, 1, 2),
(144, 12, 9, 1, 2),
(145, 12, 10, 1, 2),
(146, 12, 11, 1, 2),
(147, 12, 13, 1, 2),
(148, 12, 14, 1, 2),
(149, 12, 15, 1, 2),
(150, 12, 16, 1, 2),
(151, 12, 17, 1, 2),
(152, 12, 18, 1, 2),
(153, 12, 23, 1, 2),
(154, 12, 28, 4, 1),
(155, 12, 29, 4, 1),
(156, 12, 30, 4, 1),
(157, 12, 31, 4, 1),
(158, 12, 32, 4, 1),
(159, 12, 33, 4, 1),
(160, 12, 34, 4, 1),
(161, 12, 35, 4, 1),
(162, 12, 36, 4, 1),
(163, 12, 37, 4, 1),
(164, 12, 38, 4, 1),
(165, 13, 23, 1, 2),
(166, 13, 38, 4, 1),
(167, 14, 23, 1, 2),
(168, 14, 38, 4, 1),
(169, 15, 8, 1, 1),
(170, 15, 9, 1, 1),
(171, 15, 10, 1, 1),
(172, 15, 11, 1, 1),
(173, 15, 12, 1, 1),
(174, 15, 13, 1, 1),
(175, 15, 14, 1, 1),
(176, 15, 15, 1, 1),
(177, 15, 21, 1, 1),
(178, 15, 22, 1, 1),
(179, 15, 23, 1, 1),
(180, 15, 5, 4, 2),
(181, 15, 24, 4, 2),
(182, 15, 25, 4, 2),
(183, 15, 26, 4, 2),
(184, 15, 27, 4, 2),
(185, 15, 28, 4, 2),
(186, 15, 29, 4, 2),
(187, 15, 30, 4, 2),
(188, 15, 31, 4, 2),
(189, 15, 32, 4, 2),
(190, 15, 34, 4, 2),
(191, 16, 8, 1, 1),
(192, 16, 9, 1, 1),
(193, 16, 10, 1, 1),
(194, 16, 11, 1, 1),
(195, 16, 12, 1, 1),
(196, 16, 13, 1, 1),
(197, 16, 14, 1, 1),
(198, 16, 15, 1, 1),
(199, 16, 21, 1, 1),
(200, 16, 22, 1, 1),
(201, 16, 23, 1, 1),
(202, 16, 5, 4, 2),
(203, 16, 24, 4, 2),
(204, 16, 25, 4, 2),
(205, 16, 26, 4, 2),
(206, 16, 27, 4, 2),
(207, 16, 28, 4, 2),
(208, 16, 29, 4, 2),
(209, 16, 30, 4, 2),
(210, 16, 31, 4, 2),
(211, 16, 32, 4, 2),
(212, 16, 34, 4, 2),
(213, 17, 8, 1, 1),
(214, 17, 9, 1, 1),
(215, 17, 10, 1, 1),
(216, 17, 11, 1, 1),
(217, 17, 12, 1, 1),
(218, 17, 13, 1, 1),
(219, 17, 14, 1, 1),
(220, 17, 15, 1, 1),
(221, 17, 21, 1, 1),
(222, 17, 22, 1, 1),
(223, 17, 23, 1, 1),
(224, 17, 5, 4, 2),
(225, 17, 24, 4, 2),
(226, 17, 25, 4, 2),
(227, 17, 26, 4, 2),
(228, 17, 27, 4, 2),
(229, 17, 28, 4, 2),
(230, 17, 29, 4, 2),
(231, 17, 30, 4, 2),
(232, 17, 31, 4, 2),
(233, 17, 32, 4, 2),
(234, 17, 34, 4, 2),
(235, 18, 9, 1, 1),
(236, 18, 10, 1, 1),
(237, 18, 11, 1, 1),
(238, 18, 12, 1, 1),
(239, 18, 13, 1, 1),
(240, 18, 14, 1, 1),
(241, 18, 15, 1, 1),
(242, 18, 16, 1, 1),
(243, 18, 17, 1, 1),
(244, 18, 18, 1, 1),
(245, 18, 23, 1, 1),
(246, 18, 28, 4, 2),
(247, 18, 29, 4, 2),
(248, 18, 30, 4, 2),
(249, 18, 31, 4, 2),
(250, 18, 32, 4, 2),
(251, 18, 33, 4, 2),
(252, 18, 34, 4, 2),
(253, 18, 35, 4, 2),
(254, 18, 36, 4, 2),
(255, 18, 37, 4, 2),
(256, 18, 38, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_id_1` int(11) NOT NULL,
  `club_id_2` int(11) NOT NULL,
  `ground_id` int(11) NOT NULL,
  `pitch_id` int(11) DEFAULT NULL,
  `mom_player_id` int(11) NOT NULL DEFAULT '0',
  `umpire_id` int(11) DEFAULT NULL,
  `tournament_id` int(11) NOT NULL,
  `match_date` date NOT NULL,
  `status` int(191) NOT NULL DEFAULT '0',
  `winner_club_id` int(11) NOT NULL DEFAULT '0',
  `match_type_id` int(11) NOT NULL,
  `toss` int(11) DEFAULT '0',
  `choose_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `club_id_1`, `club_id_2`, `ground_id`, `pitch_id`, `mom_player_id`, `umpire_id`, `tournament_id`, `match_date`, `status`, `winner_club_id`, `match_type_id`, `toss`, `choose_to`, `created_at`, `updated_at`) VALUES
(18, 1, 4, 5, 1, 0, 4, 8, '2019-02-24', 0, 0, 1, 1, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `match_types`
--

CREATE TABLE `match_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `match_types`
--

INSERT INTO `match_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'T20', NULL, NULL),
(2, 'One-Day', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2018_09_27_190429_create_levels_table', 2),
(52, '2014_10_12_000000_create_users_table', 3),
(53, '2014_10_12_100000_create_password_resets_table', 3),
(54, '2018_09_26_074554_create_clubs_table', 3),
(55, '2018_09_26_075240_create_players_table', 3),
(56, '2018_09_26_075604_create_coaches_table', 3),
(57, '2018_09_26_075839_create_grounds_table', 3),
(58, '2018_09_26_080206_create_tournaments_table', 3),
(59, '2018_09_26_080305_create_umpires_table', 3),
(60, '2018_09_26_080405_create_pitches_table', 3),
(61, '2018_09_26_080540_create_overs_table', 3),
(62, '2018_09_26_080805_create_balls_table', 3),
(63, '2018_09_26_083850_create_extras_table', 3),
(64, '2018_09_26_084209_create_ground_types_table', 3),
(65, '2018_09_26_084407_create_player_roles_table', 3),
(66, '2018_09_26_085014_create_notices_table', 3),
(67, '2018_09_26_093011_create_matches_table', 3),
(68, '2018_09_26_094007_create_match_types_table', 3),
(69, '2018_09_26_095608_create_scorecards_table', 3),
(70, '2018_09_26_100110_create_series_table', 3),
(71, '2018_09_26_101052_create_players_ranking_o_ds_table', 3),
(72, '2018_09_26_101543_create_players_ranking_t20s_table', 3),
(73, '2018_09_26_101917_create_teams_ranking_o_ds_table', 3),
(74, '2018_09_26_102014_create_teams_ranking_t20s_table', 3),
(75, '2018_09_26_130902_create_photos_table', 3),
(76, '2018_09_27_191407_add_level_id_to_clubs', 3),
(77, '2018_09_27_193458_create_levels_table', 4),
(78, '2018_09_27_205154_add_photo_id_to_coaches', 5),
(79, '2018_09_28_123146_add_photo_id_to_grounds', 6),
(80, '2018_09_28_190712_add_photo_id_to_players', 7),
(81, '2018_09_28_191521_create_batting_styles_table', 7),
(82, '2018_09_28_191550_create_bowling_styles_table', 7),
(83, '2018_09_28_191909_add_bowling_style_id_to_players', 7),
(84, '2018_09_28_191924_add_batting_style_id_to_players', 7),
(85, '2018_09_28_192939_add_age_to_players', 8),
(86, '2018_09_29_084539_add_photo_id_to_tournaments', 9),
(87, '2018_09_29_085629_add_photo_id_to_umpires', 10),
(88, '2018_09_29_085654_add_nationality_to_umpires', 10),
(89, '2018_09_29_110111_create_posts_table', 11),
(90, '2018_09_29_120008_add_role_id_to_players_ranking_o_ds', 12),
(91, '2018_10_05_181327_add_role_id_to_players_ranking_t20s_table', 13),
(92, '2018_10_14_075015_add_photo_id_to_teams_ranking_o_ds', 14),
(93, '2018_10_14_114613_add_photo_id_to_teams_ranking_t20s', 15),
(94, '2018_10_15_105814_create_tournaments_references_table', 16),
(95, '2018_10_15_110849_create_tournament_formats_table', 16),
(96, '2018_10_27_125348_create_fixtures_table', 17),
(97, '2018_10_27_152029_add_photo_id_coloumn_table_tournaments_references', 17),
(99, '2018_10_27_155106_add_edition_coloumn_table_tournaments_references', 18),
(100, '2018_10_27_163026_add_status_coloumn_table_tournaments_references', 19),
(101, '2018_10_28_105834_add_starting_date_coloumn_table_tournaments_references', 20),
(102, '2018_10_28_105855_add_ending_date_coloumn_table_tournaments_references', 20),
(103, '2018_11_01_092540_add_role_idcoloumn_users_table', 21),
(104, '2018_11_01_092832_create_roles_table', 21),
(105, '2018_11_03_114706_add_permission_coloumn_in_table_roles', 22),
(106, '2018_11_03_114816_create_role_users_table', 22),
(107, '2018_11_03_122200_drop_coloumn_role_id_from_users', 22),
(108, '2018_11_21_102842_create_tournament_clubs_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(11) NOT NULL,
  `legal` int(11) NOT NULL,
  `extra_runs` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`, `legal`, `extra_runs`, `created_at`, `updated_at`) VALUES
(1, 'Six', '6', 1, 0, '2018-12-10 08:05:13', '2018-12-10 08:05:13'),
(2, 'Five', '5', 1, 0, '2018-12-10 08:05:13', '2018-12-10 08:05:13'),
(3, 'Four', '4', 1, 0, '2018-12-10 08:05:54', '2018-12-10 08:05:54'),
(4, 'Three', '3', 1, 0, '2018-12-10 08:05:54', '2018-12-10 08:05:54'),
(5, 'Two', '2', 1, 0, '2018-12-10 08:06:20', '2018-12-10 08:06:20'),
(6, 'One', '1', 1, 0, '2018-12-10 08:06:20', '2018-12-10 08:06:20'),
(7, 'Dot', '0', 1, 0, '2018-12-10 08:07:24', '2018-12-10 08:07:24'),
(8, 'Wide', 'wd', 0, 1, '2018-12-10 08:07:24', '2018-12-24 09:02:21'),
(9, 'No Ball', 'nb', 0, 1, '2018-12-10 08:08:45', '2018-12-24 09:02:28'),
(10, 'Leg Bye', 'lb', 0, 0, '2018-12-10 08:08:45', '2018-12-10 08:11:31'),
(11, 'Bye', 'b', 0, 0, '2018-12-10 08:10:13', '2018-12-10 08:11:38'),
(12, 'Out', 'w', 1, 0, '2018-12-10 08:10:13', '2018-12-10 08:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `outs`
--

CREATE TABLE `outs` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(11) DEFAULT NULL,
  `depended` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outs`
--

INSERT INTO `outs` (`id`, `name`, `value`, `depended`) VALUES
(1, 'Bowled', 'b', 0),
(2, 'Caught', 'ct', 1),
(3, 'Leg Bfr Wkt', 'lbw', 0),
(4, 'Obs T Fld', 'otf', 0),
(5, 'Hit Wkt', 'hw', 0),
(6, 'Handle Ball', 'hb', 0),
(7, 'Hit Twice', 'ht', 0),
(8, 'Time Out', 'to', 0),
(9, 'Run Out', 'ro', 1);

-- --------------------------------------------------------

--
-- Table structure for table `overs`
--

CREATE TABLE `overs` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `inning_no` int(11) NOT NULL,
  `bowler_id` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `balls` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, '15380772181.png', '2018-09-27 14:40:18', '2018-09-27 14:40:18'),
(2, '15380773121.png', '2018-09-27 14:41:52', '2018-09-27 14:41:52'),
(3, '15380773391.png', '2018-09-27 14:42:19', '2018-09-27 14:42:19'),
(4, '15380773421.png', '2018-09-27 14:42:22', '2018-09-27 14:42:22'),
(5, '15380773431.png', '2018-09-27 14:42:23', '2018-09-27 14:42:23'),
(6, '15380773451.png', '2018-09-27 14:42:25', '2018-09-27 14:42:25'),
(7, '15380774511.png', '2018-09-27 14:44:11', '2018-09-27 14:44:11'),
(8, '15380779551.png', '2018-09-27 14:52:35', '2018-09-27 14:52:35'),
(9, '15380781351.png', '2018-09-27 14:55:35', '2018-09-27 14:55:35'),
(10, '15380781721.png', '2018-09-27 14:56:12', '2018-09-27 14:56:12'),
(11, '15380782051.png', '2018-09-27 14:56:45', '2018-09-27 14:56:45'),
(12, '15380788911.png', '2018-09-27 15:08:11', '2018-09-27 15:08:11'),
(13, '15380789221.png', '2018-09-27 15:08:42', '2018-09-27 15:08:42'),
(14, '15380789341.png', '2018-09-27 15:08:54', '2018-09-27 15:08:54'),
(15, '1538078983crown1.png', '2018-09-27 15:09:44', '2018-09-27 15:09:44'),
(16, '1538079002571.jpg', '2018-09-27 15:10:02', '2018-09-27 15:10:02'),
(17, '15380790121.png', '2018-09-27 15:10:12', '2018-09-27 15:10:12'),
(18, '15380792271.png', '2018-09-27 15:13:47', '2018-09-27 15:13:47'),
(19, '15380792411.png', '2018-09-27 15:14:01', '2018-09-27 15:14:01'),
(20, '15380820261.png', '2018-09-27 16:00:26', '2018-09-27 16:00:26'),
(21, '15380820771.png', '2018-09-27 16:01:17', '2018-09-27 16:01:17'),
(22, '15380823871.png', '2018-09-27 16:06:27', '2018-09-27 16:06:27'),
(23, '15380824061.png', '2018-09-27 16:06:46', '2018-09-27 16:06:46'),
(24, '15380824221.png', '2018-09-27 16:07:02', '2018-09-27 16:07:02'),
(25, '15380825381.png', '2018-09-27 16:08:58', '2018-09-27 16:08:58'),
(26, '1538082617240_F_97709039_iyf9O0ST2OmuLRLZe0ziyDgwuOWXeaXC.jpg', '2018-09-27 16:10:17', '2018-09-27 16:10:17'),
(27, '15380826451.png', '2018-09-27 16:10:45', '2018-09-27 16:10:45'),
(28, '15381363001.png', '2018-09-28 07:05:00', '2018-09-28 07:05:00'),
(29, '1538136366571.jpg', '2018-09-28 07:06:06', '2018-09-28 07:06:06'),
(30, '1538136411crown2.jpg', '2018-09-28 07:06:51', '2018-09-28 07:06:51'),
(31, '153813645413754378_10206684772014097_415284927275744271_n.jpg', '2018-09-28 07:07:34', '2018-09-28 07:07:34'),
(32, '15381364871.png', '2018-09-28 07:08:07', '2018-09-28 07:08:07'),
(33, '15381370721.png', '2018-09-28 07:17:52', '2018-09-28 07:17:52'),
(34, '15381419611.png', '2018-09-28 08:39:21', '2018-09-28 08:39:21'),
(35, '15381421161.png', '2018-09-28 08:41:56', '2018-09-28 08:41:56'),
(36, '15381421791.png', '2018-09-28 08:42:59', '2018-09-28 08:42:59'),
(37, '15381587561.png', '2018-09-28 13:19:16', '2018-09-28 13:19:16'),
(38, '15381587691.png', '2018-09-28 13:19:29', '2018-09-28 13:19:29'),
(39, '15381675381.png', '2018-09-28 15:45:38', '2018-09-28 15:45:38'),
(40, '153817121113754378_10206684772014097_415284927275744271_n.jpg', '2018-09-28 16:46:51', '2018-09-28 16:46:51'),
(41, '15381730281.png', '2018-09-28 17:17:08', '2018-09-28 17:17:08'),
(42, '15382081081.png', '2018-09-29 03:01:48', '2018-09-29 03:01:48'),
(43, '153820854213754378_10206684772014097_415284927275744271_n.jpg', '2018-09-29 03:09:02', '2018-09-29 03:09:02'),
(44, '15382089431.png', '2018-09-29 03:15:43', '2018-09-29 03:15:43'),
(45, '15382090001.png', '2018-09-29 03:16:40', '2018-09-29 03:16:40'),
(46, '15382090381.png', '2018-09-29 03:17:18', '2018-09-29 03:17:18'),
(47, '15382104311.png', '2018-09-29 03:40:31', '2018-09-29 03:40:31'),
(48, '15382104501.png', '2018-09-29 03:40:50', '2018-09-29 03:40:50'),
(49, '15382104981.png', '2018-09-29 03:41:38', '2018-09-29 03:41:38'),
(50, '1538210562571.jpg', '2018-09-29 03:42:42', '2018-09-29 03:42:42'),
(51, '15382108701.png', '2018-09-29 03:47:50', '2018-09-29 03:47:50'),
(52, '15382111281.png', '2018-09-29 03:52:08', '2018-09-29 03:52:08'),
(53, '15382111351.png', '2018-09-29 03:52:15', '2018-09-29 03:52:15'),
(54, '1538211206571.jpg', '2018-09-29 03:53:26', '2018-09-29 03:53:26'),
(55, '15382112161.png', '2018-09-29 03:53:36', '2018-09-29 03:53:36'),
(56, '15382112311.png', '2018-09-29 03:53:51', '2018-09-29 03:53:51'),
(57, '15382129651.png', '2018-09-29 04:22:45', '2018-09-29 04:22:45'),
(58, '1538213027571.jpg', '2018-09-29 04:23:47', '2018-09-29 04:23:47'),
(59, '15382130511.png', '2018-09-29 04:24:11', '2018-09-29 04:24:11'),
(60, '15382200911.png', '2018-09-29 06:21:31', '2018-09-29 06:21:31'),
(61, '15382202361.png', '2018-09-29 06:23:56', '2018-09-29 06:23:56'),
(62, '15382202491.png', '2018-09-29 06:24:09', '2018-09-29 06:24:09'),
(63, '15382204231.png', '2018-09-29 06:27:03', '2018-09-29 06:27:03'),
(64, '153822388932887310_1828230437237368_6970187341029703680_n.jpg', '2018-09-29 07:24:49', '2018-09-29 07:24:49'),
(65, '15382498471.png', '2018-09-29 14:37:27', '2018-09-29 14:37:27'),
(66, '15396004421538069870crown1.png', '2018-10-15 05:47:22', '2018-10-15 05:47:22'),
(67, '154065429915396004421538069870crown1.png', '2018-10-27 10:31:39', '2018-10-27 10:31:39'),
(68, '154065453015396004421538069870crown1.png', '2018-10-27 10:35:30', '2018-10-27 10:35:30'),
(69, '154065457115396004421538069870crown1.png', '2018-10-27 10:36:11', '2018-10-27 10:36:11'),
(70, '154065459115396004421538069870crown1.png', '2018-10-27 10:36:31', '2018-10-27 10:36:31'),
(71, '154065462515396004421538069870crown1.png', '2018-10-27 10:37:05', '2018-10-27 10:37:05'),
(72, '15406547941538078983crown1.png', '2018-10-27 10:39:54', '2018-10-27 10:39:54'),
(73, '15406573951538136411crown2.jpg', '2018-10-27 11:23:15', '2018-10-27 11:23:15'),
(74, '15406574221538136411crown2.jpg', '2018-10-27 11:23:42', '2018-10-27 11:23:42'),
(75, '15406575181538136411crown2.jpg', '2018-10-27 11:25:18', '2018-10-27 11:25:18'),
(76, '15407248701538069870crown1.png', '2018-10-28 06:07:50', '2018-10-28 06:07:50'),
(77, '15408193441538136411crown2.jpg', '2018-10-29 08:22:24', '2018-10-29 08:22:24'),
(78, '154081948015379906231.png', '2018-10-29 08:24:40', '2018-10-29 08:24:40'),
(79, '15412602461540970888abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-11-03 10:50:46', '2018-11-03 10:50:46'),
(80, '15412606621538136411crown2.jpg', '2018-11-03 10:57:42', '2018-11-03 10:57:42'),
(81, '154126114215379905461.png', '2018-11-03 11:05:42', '2018-11-03 11:05:42'),
(82, '154126118015379905461.png', '2018-11-03 11:06:20', '2018-11-03 11:06:20'),
(83, '154126125315379905461.png', '2018-11-03 11:07:33', '2018-11-03 11:07:33'),
(84, '154126126715379905461.png', '2018-11-03 11:07:47', '2018-11-03 11:07:47'),
(85, '15412613341540970888abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-11-03 11:08:54', '2018-11-03 11:08:54'),
(86, '15412613721540970888abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-11-03 11:09:32', '2018-11-03 11:09:32'),
(87, '154126144915379906231.png', '2018-11-03 11:10:49', '2018-11-03 11:10:49'),
(88, '15412620991538136411crown2.jpg', '2018-11-03 11:21:39', '2018-11-03 11:21:39'),
(89, '15412661041538069870crown1.png', '2018-11-03 12:28:24', '2018-11-03 12:28:24'),
(90, '15412854401540970888abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-11-03 17:50:40', '2018-11-03 17:50:40'),
(91, '15413288811538069870crown1.png', '2018-11-04 05:54:41', '2018-11-04 05:54:41'),
(92, '15421303071540970888abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-11-13 12:31:47', '2018-11-13 12:31:47'),
(93, '1542795274c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-11-21 05:14:34', '2018-11-21 05:14:34'),
(94, '1542795304admin_1246392.png', '2018-11-21 05:15:04', '2018-11-21 05:15:04'),
(95, '1542796038c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-11-21 05:27:18', '2018-11-21 05:27:18'),
(96, '1542797440Cricket-Wallpaper-23-1182x888.jpg', '2018-11-21 05:50:40', '2018-11-21 05:50:40'),
(97, '1542797475500_F_19378961_rjOkIwZFVZOHU1fppJAQZ1hYX4Np4esl.jpg', '2018-11-21 05:51:15', '2018-11-21 05:51:15'),
(98, '1542799374Cricket-Wallpaper-23-1182x888.jpg', '2018-11-21 06:22:54', '2018-11-21 06:22:54'),
(99, '1542800069abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-11-21 06:34:29', '2018-11-21 06:34:29'),
(100, '1542800372abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-11-21 06:39:32', '2018-11-21 06:39:32'),
(101, '1542885113abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-11-22 06:11:53', '2018-11-22 06:11:53'),
(102, '1542891020ball.gif', '2018-11-22 07:50:20', '2018-11-22 07:50:20'),
(103, '1542891983c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-11-22 08:06:23', '2018-11-22 08:06:23'),
(104, '1542958417ball.gif', '2018-11-23 02:33:37', '2018-11-23 02:33:37'),
(105, '1542970373abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-11-23 05:52:53', '2018-11-23 05:52:53'),
(106, '1543142935Cricket-Wallpaper-23-1182x888.jpg', '2018-11-25 05:48:55', '2018-11-25 05:48:55'),
(107, '1543238288Admin-512.png', '2018-11-26 08:18:08', '2018-11-26 08:18:08'),
(108, '1543239378Admin-512.png', '2018-11-26 08:36:18', '2018-11-26 08:36:18'),
(109, '1543741496abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-02 04:04:56', '2018-12-02 04:04:56'),
(110, '1544000745ee249a2e81276b90ac1045b76c4feba8.jpg', '2018-12-05 04:05:45', '2018-12-05 04:05:45'),
(111, '1544083629500_F_19378961_rjOkIwZFVZOHU1fppJAQZ1hYX4Np4esl.jpg', '2018-12-06 03:07:09', '2018-12-06 03:07:09'),
(112, '1544085934c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-12-06 03:45:34', '2018-12-06 03:45:34'),
(113, '1544086336ball.gif', '2018-12-06 03:52:16', '2018-12-06 03:52:16'),
(114, '1544086927abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-06 04:02:07', '2018-12-06 04:02:07'),
(115, '1544099254logo-inverted.png', '2018-12-06 07:27:34', '2018-12-06 07:27:34'),
(116, '1544099263logo-inverted.png', '2018-12-06 07:27:43', '2018-12-06 07:27:43'),
(117, '1544099399abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-06 07:29:59', '2018-12-06 07:29:59'),
(118, '1544099439abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-06 07:30:39', '2018-12-06 07:30:39'),
(119, '1544120043Admin-512.png', '2018-12-06 13:14:03', '2018-12-06 13:14:03'),
(120, '1544120744Admin-512.png', '2018-12-06 13:25:44', '2018-12-06 13:25:44'),
(121, '1544121164Admin-512.png', '2018-12-06 13:32:44', '2018-12-06 13:32:44'),
(122, '1544121238Admin-512.png', '2018-12-06 13:33:58', '2018-12-06 13:33:58'),
(123, '1544121721c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-12-06 13:42:01', '2018-12-06 13:42:01'),
(124, '1544122805c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-12-06 14:00:05', '2018-12-06 14:00:05'),
(125, '1544123378c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-12-06 14:09:38', '2018-12-06 14:09:38'),
(126, '1544123469500_F_19378961_rjOkIwZFVZOHU1fppJAQZ1hYX4Np4esl.jpg', '2018-12-06 14:11:09', '2018-12-06 14:11:09'),
(127, '1544123595c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-12-06 14:13:15', '2018-12-06 14:13:15'),
(128, '1544123660admin_1246392.png', '2018-12-06 14:14:20', '2018-12-06 14:14:20'),
(129, '1544123843abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-06 14:17:23', '2018-12-06 14:17:23'),
(130, '1544123926abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-06 14:18:46', '2018-12-06 14:18:46'),
(131, '1544124012abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-06 14:20:12', '2018-12-06 14:20:12'),
(132, '1544124053Admin-512.png', '2018-12-06 14:20:53', '2018-12-06 14:20:53'),
(133, '1544124123c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-12-06 14:22:04', '2018-12-06 14:22:04'),
(134, '1544124266admin_1246392.png', '2018-12-06 14:24:26', '2018-12-06 14:24:26'),
(135, '1544124300abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-06 14:25:00', '2018-12-06 14:25:00'),
(136, '1544124342ball.gif', '2018-12-06 14:25:42', '2018-12-06 14:25:42'),
(137, '1544124385500_F_19378961_rjOkIwZFVZOHU1fppJAQZ1hYX4Np4esl.jpg', '2018-12-06 14:26:25', '2018-12-06 14:26:25'),
(138, '1544124426Admin-512.png', '2018-12-06 14:27:06', '2018-12-06 14:27:06'),
(139, '1544126392500_F_19378961_rjOkIwZFVZOHU1fppJAQZ1hYX4Np4esl.jpg', '2018-12-06 14:59:52', '2018-12-06 14:59:52'),
(140, '1544127852500_F_19378961_rjOkIwZFVZOHU1fppJAQZ1hYX4Np4esl.jpg', '2018-12-06 15:24:12', '2018-12-06 15:24:12'),
(141, '1544208988Admin-512.png', '2018-12-07 13:56:28', '2018-12-07 13:56:28'),
(142, '1544209084c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-12-07 13:58:04', '2018-12-07 13:58:04'),
(143, '1544280581c5e90a42ce0c0002305bd85839a5700f.jpg', '2018-12-08 09:49:41', '2018-12-08 09:49:41'),
(144, '1544282539Admin-512.png', '2018-12-08 10:22:19', '2018-12-08 10:22:19'),
(145, '1544282573Admin-512.png', '2018-12-08 10:22:53', '2018-12-08 10:22:53'),
(146, '1544284066abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-08 10:47:46', '2018-12-08 10:47:46'),
(147, '1544288947Admin-512.png', '2018-12-08 12:09:07', '2018-12-08 12:09:07'),
(148, '1544350830admin-960028.png', '2018-12-09 05:20:30', '2018-12-09 05:20:30'),
(149, '1544351692500_F_19378961_rjOkIwZFVZOHU1fppJAQZ1hYX4Np4esl.jpg', '2018-12-09 05:34:52', '2018-12-09 05:34:52'),
(150, '1544351855Admin-512.png', '2018-12-09 05:37:35', '2018-12-09 05:37:35'),
(151, '1544361385admin_1246392.png', '2018-12-09 08:16:25', '2018-12-09 08:16:25'),
(152, '1544427612Admin-512.png', '2018-12-10 02:40:12', '2018-12-10 02:40:12'),
(153, '1544434265admin-960028.png', '2018-12-10 04:31:05', '2018-12-10 04:31:05'),
(154, '1544434309admin-960028.png', '2018-12-10 04:31:49', '2018-12-10 04:31:49'),
(155, '1544434440admin-960028.png', '2018-12-10 04:34:00', '2018-12-10 04:34:00'),
(156, '1544438356admin_1246392.png', '2018-12-10 05:39:16', '2018-12-10 05:39:16'),
(157, '1544443953abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-10 07:12:33', '2018-12-10 07:12:33'),
(158, '1544444448admin_1246392.png', '2018-12-10 07:20:48', '2018-12-10 07:20:48'),
(159, '1544445087admin-960028.png', '2018-12-10 07:31:27', '2018-12-10 07:31:27'),
(160, '1544446014Admin-512.png', '2018-12-10 07:46:54', '2018-12-10 07:46:54'),
(161, '1544449484abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-10 08:44:44', '2018-12-10 08:44:44'),
(162, '1545395246abstract-cricket-background_QJ27MZ_SB_PM.jpg', '2018-12-21 07:27:26', '2018-12-21 07:27:26'),
(163, '1545395326500_F_19378961_rjOkIwZFVZOHU1fppJAQZ1hYX4Np4esl.jpg', '2018-12-21 07:28:46', '2018-12-21 07:28:46'),
(164, '15454827729379028-marco-de-críquet-1.jpg', '2018-12-22 07:46:12', '2018-12-22 07:46:12'),
(165, '1545482811500_F_19378961_rjOkIwZFVZOHU1fppJAQZ1hYX4Np4esl.jpg', '2018-12-22 07:46:51', '2018-12-22 07:46:51'),
(166, '1546256112ee249a2e81276b90ac1045b76c4feba8.jpg', '2018-12-31 06:35:12', '2018-12-31 06:35:12'),
(167, '1546770200Admin-512.png', '2019-01-06 05:23:20', '2019-01-06 05:23:20'),
(168, '1546771081admin_1246392.png', '2019-01-06 05:38:01', '2019-01-06 05:38:01'),
(169, '1546875229Admin-512.png', '2019-01-07 10:33:49', '2019-01-07 10:33:49'),
(170, '1546875369Admin-512.png', '2019-01-07 10:36:09', '2019-01-07 10:36:09'),
(171, '1546875447Admin-512.png', '2019-01-07 10:37:27', '2019-01-07 10:37:27'),
(172, '1546875820Admin-512.png', '2019-01-07 10:43:40', '2019-01-07 10:43:40'),
(173, '1546875931admin_1246392.png', '2019-01-07 10:45:31', '2019-01-07 10:45:31'),
(174, '1546925399ee249a2e81276b90ac1045b76c4feba8.jpg', '2019-01-08 00:29:59', '2019-01-08 00:29:59'),
(175, '1546925830logo-inverted.png', '2019-01-08 00:37:10', '2019-01-08 00:37:10'),
(176, '1546941581ee249a2e81276b90ac1045b76c4feba8.jpg', '2019-01-08 04:59:41', '2019-01-08 04:59:41'),
(177, '1546941582ee249a2e81276b90ac1045b76c4feba8.jpg', '2019-01-08 04:59:42', '2019-01-08 04:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `pitches`
--

CREATE TABLE `pitches` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `club_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) NOT NULL,
  `batting_style_id` int(11) DEFAULT NULL,
  `bowling_style_id` int(11) DEFAULT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `date_of_birth`, `club_id`, `role_id`, `created_at`, `updated_at`, `photo_id`, `batting_style_id`, `bowling_style_id`, `age`) VALUES
(1, 'Zahid', '1994-10-24', 7, 3, '2018-09-28 15:45:38', '2018-09-28 15:45:38', 39, 2, 2, 18),
(2, 'Aijaz', '1994-09-19', 8, 2, '2018-09-28 16:46:51', '2018-09-29 03:15:43', 44, 1, 4, 22),
(5, 'Junaid', '1997-08-28', 4, 1, '2018-09-29 03:17:18', '2018-09-29 03:17:18', 46, 2, 2, 34),
(7, 'Muzammil', '1998-12-26', 9, 3, '2018-09-29 07:24:49', '2018-09-29 14:37:27', 65, 1, 7, 18),
(8, 'Faruqui', '1996-01-01', 1, 1, NULL, NULL, 56, 1, 1, 23),
(9, 'Saleem', '1996-01-01', 1, 1, NULL, NULL, 56, 1, 6, 23),
(10, 'Gujjar', '1996-01-01', 1, 1, NULL, NULL, 56, 1, 5, 23),
(11, 'Kaka', '1996-01-01', 1, 1, NULL, NULL, 56, 2, 5, 23),
(12, 'Tasneem', '1996-01-01', 1, 3, NULL, NULL, 56, 2, 1, 23),
(13, 'Waheed', '1996-01-01', 1, 3, NULL, NULL, 56, 2, 2, 23),
(14, 'Hussain', '1996-01-01', 1, 2, NULL, NULL, 56, 1, 3, 23),
(15, 'Zohaib', '1996-01-01', 1, 2, NULL, NULL, 56, 1, 1, 23),
(16, 'Yawar', '1996-01-01', 1, 2, NULL, NULL, 56, 2, 5, 23),
(17, 'Ahmed', '1996-01-01', 1, 2, NULL, NULL, 56, 1, 1, 23),
(18, 'Usama', '1996-01-01', 1, 2, NULL, NULL, 56, 2, 6, 23),
(19, 'Umer', '1996-01-01', 1, 3, NULL, NULL, 56, 1, 1, 23),
(20, 'Anas', '1996-01-01', 1, 3, NULL, NULL, 56, 2, 5, 23),
(21, 'Hamza', '1996-01-01', 1, 2, NULL, NULL, 56, 2, 1, 23),
(22, 'Farhan', '1996-01-01', 1, 3, NULL, NULL, 56, 1, 5, 23),
(23, 'Irtiza', '1996-01-01', 1, 4, NULL, NULL, 56, 1, 6, 23),
(24, 'Akmal', '1996-01-01', 4, 1, NULL, NULL, 56, 2, 1, 23),
(25, 'Salman', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 1, 23),
(26, 'Faiq', '1996-01-01', 4, 1, NULL, NULL, 56, 2, 3, 23),
(27, 'Daniyal', '1996-01-01', 4, 1, NULL, NULL, 56, 2, 1, 23),
(28, 'Rauf', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 1, 23),
(29, 'Haseeb', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 1, 23),
(30, 'Aslam', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 1, 23),
(31, 'Faizan', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 4, 23),
(32, 'Nomi', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 1, 23),
(33, 'Noman', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 5, 23),
(34, 'Zain', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 1, 23),
(35, 'Saifi', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 3, 23),
(36, 'Shariq', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 1, 23),
(37, 'Tariq', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 6, 23),
(38, 'Hameed', '1996-01-01', 4, 1, NULL, NULL, 56, 1, 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `players_ranking_o_ds`
--

CREATE TABLE `players_ranking_o_ds` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `points` decimal(8,2) NOT NULL,
  `player_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players_ranking_o_ds`
--

INSERT INTO `players_ranking_o_ds` (`id`, `club_id`, `points`, `player_id`, `created_at`, `updated_at`, `role_id`) VALUES
(3, 8, '200.00', 7, '2018-10-14 16:02:09', '2018-10-14 16:02:09', 2),
(4, 7, '600.00', 5, '2018-10-14 16:14:15', '2018-10-14 16:48:20', 1),
(5, 4, '300.00', 1, '2018-10-14 19:43:52', '2018-10-14 19:43:52', 3);

-- --------------------------------------------------------

--
-- Table structure for table `players_ranking_t20s`
--

CREATE TABLE `players_ranking_t20s` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `points` decimal(8,2) NOT NULL,
  `player_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players_ranking_t20s`
--

INSERT INTO `players_ranking_t20s` (`id`, `club_id`, `points`, `player_id`, `created_at`, `updated_at`, `role_id`) VALUES
(2, NULL, '300.00', 5, '2018-10-14 19:08:31', '2018-10-14 19:08:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `player_roles`
--

CREATE TABLE `player_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player_roles`
--

INSERT INTO `player_roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Batsman', NULL, NULL),
(2, 'Bowler', NULL, NULL),
(3, 'All-Rounder', NULL, NULL),
(4, 'Wicket-Keeper', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `player_stats`
--

CREATE TABLE `player_stats` (
  `id` int(11) NOT NULL,
  `format` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `matches` int(11) NOT NULL,
  `innings` int(11) NOT NULL,
  `notouts` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `highscore` varchar(191) NOT NULL,
  `average_bat` float(100,2) NOT NULL,
  `strikerate` float(100,2) NOT NULL,
  `centuries` int(11) NOT NULL,
  `halfcenturies` int(11) NOT NULL,
  `catches` int(11) NOT NULL,
  `stumping` int(11) NOT NULL,
  `fours` int(11) NOT NULL,
  `sixes` int(11) NOT NULL,
  `innings_bowl` int(11) NOT NULL,
  `overs` float(100,1) NOT NULL,
  `runs_ball` int(11) NOT NULL,
  `wickets` int(11) NOT NULL,
  `average_ball` float(100,2) NOT NULL,
  `best_ball` varchar(191) NOT NULL,
  `economy` float(100,2) NOT NULL,
  `five_wickets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `photo_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 61, 'New post', 'adddddddddddasdasdsaddddasdasdasdasdsadasdasd', '2018-09-29 06:21:31', '2018-09-29 06:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', '{\"create\":true,\"read\":true,\"update\":true,\"delete\":true}', '2018-11-01 09:34:24', '2018-11-03 12:35:46'),
(2, 'Admin', '{\"create\":true,\"read\":true,\"update\":true}', '2018-11-01 09:34:24', '2018-11-03 12:37:27'),
(3, 'Editor', '{\"read\":true,\"update\":true}', '2018-11-01 09:34:42', '2018-11-03 12:37:49'),
(4, 'Author', '{\"create\":true,\"read\":true}', '2018-11-01 09:34:42', '2018-11-03 12:38:04'),
(5, 'Subscriber', '{\"read\":true}', '2018-11-01 09:44:31', '2018-11-03 12:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-11-03 12:40:14', '2018-11-03 12:40:14'),
(2, 2, '2018-11-03 12:40:14', '2018-11-03 12:40:14'),
(3, 3, '2018-11-03 12:40:27', '2018-11-03 12:40:27'),
(4, 4, '2018-11-03 12:40:27', '2018-11-03 12:40:27'),
(5, 5, '2018-11-03 12:40:34', '2018-11-03 12:40:34'),
(6, 2, '2018-11-03 12:43:02', '2018-11-03 12:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `roundrobin_tournament`
--

CREATE TABLE `roundrobin_tournament` (
  `id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `refer_id` int(11) NOT NULL,
  `total_matches` int(11) NOT NULL DEFAULT '0',
  `win_matches` int(11) NOT NULL DEFAULT '0',
  `loss_matches` int(11) NOT NULL DEFAULT '0',
  `tie_matches` int(11) NOT NULL DEFAULT '0',
  `points_matches` int(11) NOT NULL DEFAULT '0',
  `rr_matches` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roundrobin_tournament`
--

INSERT INTO `roundrobin_tournament` (`id`, `tournament_id`, `club_id`, `refer_id`, `total_matches`, `win_matches`, `loss_matches`, `tie_matches`, `points_matches`, `rr_matches`) VALUES
(11, 1, 1, 3, 0, 0, 0, 0, 0, 0),
(12, 1, 4, 3, 0, 0, 0, 0, 0, 0),
(13, 1, 7, 3, 0, 0, 0, 0, 0, 0),
(14, 1, 8, 3, 0, 0, 0, 0, 0, 0),
(15, 4, 1, 4, 0, 0, 0, 0, 0, 0),
(16, 4, 4, 4, 0, 0, 0, 0, 0, 0),
(17, 4, 7, 4, 0, 0, 0, 0, 0, 0),
(18, 4, 8, 4, 0, 0, 0, 0, 0, 0),
(19, 4, 9, 4, 0, 0, 0, 0, 0, 0),
(20, 4, 10, 4, 0, 0, 0, 0, 0, 0),
(21, 7, 1, 5, 0, 0, 0, 0, 0, 0),
(22, 7, 4, 5, 0, 0, 0, 0, 0, 0),
(23, 7, 7, 5, 0, 0, 0, 0, 0, 0),
(24, 7, 8, 5, 0, 0, 0, 0, 0, 0),
(25, 7, 9, 5, 0, 0, 0, 0, 0, 0),
(26, 8, 1, 6, 0, 0, 0, 0, 0, 0),
(27, 8, 4, 6, 0, 0, 0, 0, 0, 0),
(28, 8, 7, 6, 0, 0, 0, 0, 0, 0),
(29, 8, 8, 6, 0, 0, 0, 0, 0, 0),
(30, 6, 1, 7, 0, 0, 0, 0, 0, 0),
(31, 6, 4, 7, 0, 0, 0, 0, 0, 0),
(32, 6, 7, 7, 0, 0, 0, 0, 0, 0),
(33, 6, 8, 7, 0, 0, 0, 0, 0, 0),
(34, 6, 9, 7, 0, 0, 0, 0, 0, 0),
(35, 1, 1, 8, 0, 0, 0, 0, 0, 0),
(36, 1, 4, 8, 0, 0, 0, 0, 0, 0),
(37, 1, 7, 8, 0, 0, 0, 0, 0, 0),
(38, 1, 8, 8, 0, 0, 0, 0, 0, 0),
(39, 4, 10, 9, 0, 0, 0, 0, 0, 0),
(40, 4, 16, 9, 0, 0, 0, 0, 0, 0),
(41, 4, 30, 9, 0, 0, 0, 0, 0, 0),
(42, 4, 31, 9, 0, 0, 0, 0, 0, 0),
(43, 4, 32, 9, 0, 0, 0, 0, 0, 0),
(44, 8, 1, 10, 0, 0, 0, 0, 0, 0),
(45, 8, 4, 10, 0, 0, 0, 0, 0, 0),
(46, 8, 7, 10, 0, 0, 0, 0, 0, 0),
(47, 8, 9, 10, 0, 0, 0, 0, 0, 0),
(48, 7, 1, 11, 0, 0, 0, 0, 0, 0),
(49, 7, 4, 11, 0, 0, 0, 0, 0, 0),
(50, 7, 7, 11, 0, 0, 0, 0, 0, 0),
(51, 7, 8, 11, 0, 0, 0, 0, 0, 0),
(52, 5, 1, 12, 0, 0, 0, 0, 0, 0),
(53, 5, 4, 12, 0, 0, 0, 0, 0, 0),
(54, 5, 7, 12, 0, 0, 0, 0, 0, 0),
(55, 5, 8, 12, 0, 0, 0, 0, 0, 0),
(56, 8, 1, 13, 0, 0, 0, 0, 0, 0),
(57, 8, 4, 13, 0, 0, 0, 0, 0, 0),
(58, 8, 7, 13, 0, 0, 0, 0, 0, 0),
(59, 8, 8, 13, 0, 0, 0, 0, 0, 0),
(60, 8, 9, 13, 0, 0, 0, 0, 0, 0),
(61, 6, 1, 15, 0, 0, 0, 0, 0, 0),
(62, 6, 4, 15, 0, 0, 0, 0, 0, 0),
(63, 6, 7, 15, 0, 0, 0, 0, 0, 0),
(64, 6, 8, 15, 0, 0, 0, 0, 0, 0),
(65, 4, 1, 16, 0, 0, 0, 0, 0, 0),
(66, 4, 4, 16, 0, 0, 0, 0, 0, 0),
(67, 1, 1, 18, 0, 0, 0, 0, 0, 0),
(68, 1, 4, 18, 0, 0, 0, 0, 0, 0),
(69, 1, 7, 18, 0, 0, 0, 0, 0, 0),
(70, 1, 8, 18, 0, 0, 0, 0, 0, 0),
(71, 1, 1, 19, 0, 0, 0, 0, 0, 0),
(72, 1, 4, 19, 0, 0, 0, 0, 0, 0),
(73, 1, 8, 19, 0, 0, 0, 0, 0, 0),
(74, 1, 9, 19, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scorecards`
--

CREATE TABLE `scorecards` (
  `id` int(10) UNSIGNED NOT NULL,
  `match_id` int(11) NOT NULL,
  `ball_score` int(11) NOT NULL,
  `bat_score` int(11) NOT NULL,
  `extra` int(11) NOT NULL,
  `innings` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_id_1` int(11) NOT NULL,
  `club_id_2` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams_ranking_o_ds`
--

CREATE TABLE `teams_ranking_o_ds` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `points` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams_ranking_o_ds`
--

INSERT INTO `teams_ranking_o_ds` (`id`, `club_id`, `points`, `created_at`, `updated_at`, `photo_id`) VALUES
(3, 9, '400.00', '2018-10-14 15:46:53', '2018-10-14 15:46:53', 5),
(4, 1, '500.00', '2018-10-14 15:53:56', '2018-10-14 16:00:01', 4);

-- --------------------------------------------------------

--
-- Table structure for table `teams_ranking_t20s`
--

CREATE TABLE `teams_ranking_t20s` (
  `id` int(10) UNSIGNED NOT NULL,
  `club_id` int(11) NOT NULL,
  `points` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams_ranking_t20s`
--

INSERT INTO `teams_ranking_t20s` (`id`, `club_id`, `points`, `created_at`, `updated_at`) VALUES
(1, 4, '356.00', '2018-10-14 19:19:21', '2018-10-14 21:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tournaments`
--

INSERT INTO `tournaments` (`id`, `name`, `created_at`, `updated_at`, `photo_id`) VALUES
(1, 'Quaid-e-Azam Cup', '2018-09-29 03:40:31', '2018-09-29 03:53:26', 54),
(4, 'Cool & Cool Cup', '2018-09-29 03:53:51', '2018-09-29 03:53:51', 56),
(5, 'Brighto Cup', '2018-11-21 05:14:34', '2018-11-21 05:14:34', 93),
(6, 'Oye Hoye Cup', '2018-11-21 05:50:40', '2018-11-21 05:50:40', 96),
(7, 'Jubilee Cup', '2018-11-21 06:34:29', '2018-11-21 06:34:29', 99),
(8, 'Pakistan Cup', '2018-11-22 07:50:20', '2018-11-22 07:50:20', 102);

-- --------------------------------------------------------

--
-- Table structure for table `tournaments_references`
--

CREATE TABLE `tournaments_references` (
  `id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `edition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tournament_type_id` int(11) NOT NULL,
  `tournament_format_id` int(11) NOT NULL,
  `ground_id` int(11) NOT NULL,
  `number_of_teams` int(11) NOT NULL,
  `rounds` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `winner_club_id` int(11) DEFAULT NULL,
  `starting_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ending_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tournaments_references`
--

INSERT INTO `tournaments_references` (`id`, `tournament_id`, `photo_id`, `edition`, `tournament_type_id`, `tournament_format_id`, `ground_id`, `number_of_teams`, `rounds`, `status`, `winner_club_id`, `starting_date`, `ending_date`, `time`, `created_at`, `updated_at`) VALUES
(8, 1, 56, '2019', 1, 1, 1, 4, 0, 1, NULL, '2019-01-01', '2019-12-31', '00:00:00', NULL, '2019-01-07 08:39:59'),
(9, 4, 56, '2019', 2, 1, 4, 5, NULL, 1, NULL, '2019-01-31', '2019-12-31', '00:00:00', NULL, '2019-01-07 08:40:43'),
(11, 7, 171, '2019', 1, 1, 1, 4, NULL, 1, NULL, '2019-01-07', NULL, NULL, '2019-01-07 10:37:27', '2019-01-07 10:38:05'),
(12, 5, 172, '2019', 1, 1, 5, 4, NULL, 1, NULL, '2019-01-21', NULL, NULL, '2019-01-07 10:43:40', '2019-01-07 10:43:53'),
(13, 8, 173, '2019', 1, 1, 5, 5, NULL, 1, NULL, '2019-02-22', NULL, NULL, '2019-01-07 10:45:31', '2019-01-07 10:45:52'),
(15, 6, 174, '2019', 1, 1, 2, 4, NULL, 1, NULL, '01/20/2019', NULL, NULL, '2019-01-08 00:29:59', '2019-01-08 00:51:18'),
(16, 4, 175, '2019', 2, 1, 2, 4, NULL, 1, NULL, '01/12/2019', NULL, NULL, '2019-01-08 00:37:10', '2019-01-14 09:02:35'),
(18, 1, 177, '2019', 1, 1, 2, 8, NULL, 1, NULL, '01/22/2019', NULL, NULL, '2019-01-08 04:59:42', '2019-01-14 09:03:52'),
(19, 1, NULL, '2019', 1, 1, 1, 4, NULL, 1, NULL, '01/26/2019', NULL, NULL, '2019-01-14 09:52:04', '2019-01-14 09:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `tournament_clubs`
--

CREATE TABLE `tournament_clubs` (
  `id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(11) DEFAULT NULL,
  `club_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tournament_clubs`
--

INSERT INTO `tournament_clubs` (`id`, `tournament_id`, `club_id`, `refer_id`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\",\"4\",\"7\",\"8\"]', 8, NULL, NULL),
(2, 4, '[\"10\",\"16\",\"30\",\"31\",\"32\"]', 9, NULL, NULL),
(3, 8, '[\"1\",\"4\",\"7\",\"9\"]', 10, NULL, NULL),
(4, 7, '[\"1\",\"4\",\"7\",\"8\"]', 11, NULL, NULL),
(5, 5, '[\"1\",\"4\",\"7\",\"8\"]', 12, NULL, NULL),
(6, 8, '[\"1\",\"4\",\"7\",\"8\",\"9\"]', 13, NULL, NULL),
(7, 6, '[\"1\",\"4\",\"7\",\"8\"]', 15, NULL, NULL),
(8, 4, '[\"1\",\"4\"]', 16, NULL, NULL),
(9, 1, '[\"1\",\"4\",\"7\",\"8\"]', 18, NULL, NULL),
(10, 1, '[\"1\",\"4\",\"8\",\"9\"]', 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tournament_formats`
--

CREATE TABLE `tournament_formats` (
  `id` int(10) UNSIGNED NOT NULL,
  `format_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tournament_formats`
--

INSERT INTO `tournament_formats` (`id`, `format_name`, `created_at`, `updated_at`) VALUES
(1, 'Round Robin', '2018-10-27 14:38:54', '2018-10-27 14:38:54'),
(2, 'Knockout', '2018-10-27 14:38:54', '2018-10-27 14:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `umpires`
--

CREATE TABLE `umpires` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `photo_id` int(11) NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `umpires`
--

INSERT INTO `umpires` (`id`, `name`, `created_at`, `updated_at`, `photo_id`, `nationality`) VALUES
(1, 'Aleem Dar Sahab', '2018-09-29 04:22:45', '2018-09-29 04:23:47', 58, 'Pakistan'),
(2, 'Asad', NULL, '2019-01-07 20:38:35', 0, ''),
(3, 'Shahbaz', NULL, NULL, 0, ''),
(4, 'Kaleen', NULL, NULL, 0, ''),
(5, 'Trividi', NULL, NULL, 0, ''),
(6, 'Shukla', NULL, NULL, 0, ''),
(7, 'Aslam', NULL, NULL, 0, ''),
(8, 'Bunty', NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'superadmin@ecric.com', '$2y$10$MQ4OVGWkuY3oxAK0rKIGQ.nE3lNfAI8zO/3EWXxbUeGaZzlTtdqTS', 'mwkfnG63p38T9QW5AhhMM5ewB88DHQS3HiXIpyhCumhlUhIdyAx4GGjuSjT0', '2018-09-27 14:37:15', '2019-01-08 05:35:48'),
(2, 'Admin', 'admin@ecric.com', '$2y$10$LO6188QPzudWMIJegxfV2uxQ6rH7znOKUASGvxkYDNDXe8Knqqf9S', '7JUNdvjwwDm8m2LoV4FDnkaySX03fvYuHBpOvuyp9xWwiS6FNPvc955IRViJ', '2018-11-01 05:02:34', '2019-01-07 17:23:05'),
(3, 'Editor', 'editor@ecric.com', '$2y$10$LO6188QPzudWMIJegxfV2uxQ6rH7znOKUASGvxkYDNDXe8Knqqf9S', NULL, '2018-11-01 16:44:55', '2018-11-01 22:10:23'),
(4, 'Author', 'author@ecric.com', '$2y$10$LO6188QPzudWMIJegxfV2uxQ6rH7znOKUASGvxkYDNDXe8Knqqf9S', 'VoyfCJ7TuJqipN7JPMJUQGOPFNEwcNbZ68Fwrm9XYwAP0B0YzlyoYWvoexQ2', '2018-11-01 16:45:16', '2018-11-03 09:34:44'),
(5, 'Subscriber', 'subscriber@ecric.com', '$2y$10$LO6188QPzudWMIJegxfV2uxQ6rH7znOKUASGvxkYDNDXe8Knqqf9S', 'TktGC09uf5EufcT6gFrcGmyD1KqWZ2FNtFiWD5RhvqfqC9YeYs9VzzIdsrs1', '2018-11-01 16:45:40', '2019-01-08 05:40:17'),
(6, 'Waheed', 'waheed@ecric.com', '$2y$10$Nlc3QJGAtbjHxFSgb1Oqn.lVxx8rN91UCgrOFZ6lenVlycSrakpA6', NULL, '2018-11-03 07:43:02', '2018-11-03 07:43:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balls`
--
ALTER TABLE `balls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ball_overs`
--
ALTER TABLE `ball_overs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batsmen_scores`
--
ALTER TABLE `batsmen_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batting_styles`
--
ALTER TABLE `batting_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bowler_scores`
--
ALTER TABLE `bowler_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bowling_styles`
--
ALTER TABLE `bowling_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_users`
--
ALTER TABLE `check_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fall_of_wickets`
--
ALTER TABLE `fall_of_wickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refer_id` (`refer_id`),
  ADD KEY `club_id_1` (`club_id_1`);

--
-- Indexes for table `grounds`
--
ALTER TABLE `grounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lineups`
--
ALTER TABLE `lineups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `match_types`
--
ALTER TABLE `match_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outs`
--
ALTER TABLE `outs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overs`
--
ALTER TABLE `overs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pitches`
--
ALTER TABLE `pitches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players_ranking_o_ds`
--
ALTER TABLE `players_ranking_o_ds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players_ranking_t20s`
--
ALTER TABLE `players_ranking_t20s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_roles`
--
ALTER TABLE `player_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD UNIQUE KEY `role_users_user_id_role_id_unique` (`user_id`,`role_id`);

--
-- Indexes for table `roundrobin_tournament`
--
ALTER TABLE `roundrobin_tournament`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scorecards`
--
ALTER TABLE `scorecards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams_ranking_o_ds`
--
ALTER TABLE `teams_ranking_o_ds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams_ranking_t20s`
--
ALTER TABLE `teams_ranking_t20s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tournaments_references`
--
ALTER TABLE `tournaments_references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournament_id` (`tournament_id`),
  ADD KEY `photo_id` (`photo_id`),
  ADD KEY `tournament_type_id` (`tournament_type_id`),
  ADD KEY `tournament_format_id` (`tournament_format_id`),
  ADD KEY `winner_club_id` (`winner_club_id`);

--
-- Indexes for table `tournament_clubs`
--
ALTER TABLE `tournament_clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tournament_formats`
--
ALTER TABLE `tournament_formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umpires`
--
ALTER TABLE `umpires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balls`
--
ALTER TABLE `balls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ball_overs`
--
ALTER TABLE `ball_overs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batsmen_scores`
--
ALTER TABLE `batsmen_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batting_styles`
--
ALTER TABLE `batting_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bowler_scores`
--
ALTER TABLE `bowler_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bowling_styles`
--
ALTER TABLE `bowling_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `check_users`
--
ALTER TABLE `check_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fall_of_wickets`
--
ALTER TABLE `fall_of_wickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixtures`
--
ALTER TABLE `fixtures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `grounds`
--
ALTER TABLE `grounds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lineups`
--
ALTER TABLE `lineups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `match_types`
--
ALTER TABLE `match_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `outs`
--
ALTER TABLE `outs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `overs`
--
ALTER TABLE `overs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `pitches`
--
ALTER TABLE `pitches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `players_ranking_o_ds`
--
ALTER TABLE `players_ranking_o_ds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `players_ranking_t20s`
--
ALTER TABLE `players_ranking_t20s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `player_roles`
--
ALTER TABLE `player_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `player_stats`
--
ALTER TABLE `player_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roundrobin_tournament`
--
ALTER TABLE `roundrobin_tournament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `scorecards`
--
ALTER TABLE `scorecards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams_ranking_o_ds`
--
ALTER TABLE `teams_ranking_o_ds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams_ranking_t20s`
--
ALTER TABLE `teams_ranking_t20s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tournaments_references`
--
ALTER TABLE `tournaments_references`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tournament_clubs`
--
ALTER TABLE `tournament_clubs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tournament_formats`
--
ALTER TABLE `tournament_formats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `umpires`
--
ALTER TABLE `umpires`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
