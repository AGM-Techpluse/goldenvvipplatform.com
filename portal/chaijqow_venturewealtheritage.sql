-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2023 at 12:30 AM
-- Server version: 10.5.20-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chaijqow_venturewealtheritage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `image` text DEFAULT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `image`, `admin_email`, `admin_password`) VALUES
(1, '', 'Admin', 'jamesavatar.png', 'info@venturewealtheritage.com', 'rtQQDjmxlatS2');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `device` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ipAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datenow` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `device`, `ipAddress`, `datenow`) VALUES
(1, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '41.58.235.97', '2023-02-14 11:24:12'),
(2, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', '41.58.218.20', '2023-02-17 12:58:39'),
(3, 9, 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1', '102.89.33.204', '2023-02-17 14:28:27'),
(4, 9, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 OPR/95.0.0.0 (Edition Campaign 34)', '102.89.33.222', '2023-02-17 19:39:23'),
(5, 9, 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', '5.180.208.85', '2023-02-17 21:01:15'),
(6, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '41.215.173.55', '2023-02-19 13:32:58'),
(7, 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', '41.58.58.230', '2023-02-19 14:03:32'),
(8, 9, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', '102.89.22.160', '2023-02-20 09:33:19'),
(9, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:00'),
(10, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:06'),
(11, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:09'),
(12, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:11'),
(13, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:11'),
(14, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:13'),
(15, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:14'),
(16, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:16'),
(17, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:19'),
(18, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:21'),
(19, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:23'),
(20, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:25'),
(21, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.197', '2023-10-28 05:53:28'),
(22, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.194', '2023-10-30 15:26:40'),
(23, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.194', '2023-10-30 15:32:44'),
(24, 106, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.58.194', '2023-10-30 15:34:37'),
(25, 110, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '102.41.61.14', '2023-10-30 19:42:30'),
(26, 110, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '102.41.61.14', '2023-10-30 19:42:33'),
(27, 110, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '102.41.61.14', '2023-10-30 19:42:35'),
(28, 110, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '102.41.61.14', '2023-10-30 20:01:48'),
(29, 110, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '102.41.61.14', '2023-10-30 20:01:50'),
(30, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.205.39.185', '2023-10-30 21:54:10'),
(31, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-10-31 07:03:04'),
(32, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-10-31 08:46:56'),
(33, 116, 'Mozilla/5.0 (Linux; Android 10; Nokia 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '2001:8f8:1339:16c1:cc18:648e:ead8:2143', '2023-10-31 08:57:12'),
(34, 119, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2405:201:4041:f88e:4989:7263:9d45:93c7', '2023-10-31 09:37:07'),
(35, 119, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2405:201:4041:f88e:4989:7263:9d45:93c7', '2023-10-31 09:59:39'),
(36, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.205.39.185', '2023-10-31 10:06:17'),
(37, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.205.39.185', '2023-10-31 10:06:19'),
(38, 116, 'Mozilla/5.0 (Linux; Android 10; Nokia 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '92.97.163.208', '2023-10-31 10:07:13'),
(39, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.205.39.185', '2023-10-31 10:23:56'),
(40, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.205.39.185', '2023-10-31 10:23:58'),
(41, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.205.39.185', '2023-10-31 12:18:42'),
(42, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.205.39.185', '2023-10-31 12:18:44'),
(43, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '176.67.118.166', '2023-10-31 12:56:51'),
(44, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '176.67.118.166', '2023-10-31 13:15:25'),
(45, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '176.67.118.166', '2023-10-31 13:23:39'),
(46, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '176.67.118.166', '2023-10-31 13:38:03'),
(47, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '176.67.118.166', '2023-10-31 13:38:04'),
(48, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '176.67.118.166', '2023-10-31 14:18:41'),
(49, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '176.67.118.166', '2023-10-31 14:18:42'),
(50, 112, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '156.205.39.185', '2023-10-31 14:56:50'),
(51, 122, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A346E) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2a01:9700:1aad:f700:7402:3734:1a49:ef2e', '2023-10-31 17:04:44'),
(52, 122, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A346E) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2a01:9700:1aad:f700:7402:3734:1a49:ef2e', '2023-10-31 18:11:06'),
(53, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '37.76.201.19', '2023-10-31 18:19:43'),
(54, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '37.76.201.19', '2023-10-31 18:19:44'),
(55, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '37.76.201.19', '2023-10-31 18:19:48'),
(56, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '185.88.82.164', '2023-10-31 18:20:16'),
(57, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '185.88.82.164', '2023-10-31 18:20:18'),
(58, 121, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '185.88.82.164', '2023-10-31 18:20:20'),
(59, 119, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2405:201:4041:f88e:4989:7263:9d45:93c7', '2023-10-31 18:33:08'),
(60, 119, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2405:201:4041:f88e:4989:7263:9d45:93c7', '2023-10-31 18:33:09'),
(61, 123, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A346E) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2a01:9700:1aad:f700:7402:3734:1a49:ef2e', '2023-10-31 18:50:59'),
(62, 123, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A346E) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2a01:9700:1aad:f700:7402:3734:1a49:ef2e', '2023-10-31 18:58:27'),
(63, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.0.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-10-31 19:29:02'),
(64, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.0.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-10-31 19:31:00'),
(65, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.0.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-10-31 19:31:23'),
(66, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.0.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-10-31 20:44:01'),
(67, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.0.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-10-31 20:44:13'),
(68, 131, 'Mozilla/5.0 (Linux; Android 13; 2303CRA44A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '197.252.219.16', '2023-10-31 21:30:19'),
(69, 122, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A346E) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2a01:9700:1aad:f700:7402:3734:1a49:ef2e', '2023-10-31 21:32:52'),
(70, 131, 'Mozilla/5.0 (Linux; Android 13; 2303CRA44A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '197.252.219.16', '2023-10-31 21:33:23'),
(71, 131, 'Mozilla/5.0 (Linux; Android 13; 2303CRA44A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '197.252.219.16', '2023-10-31 21:33:25'),
(72, 131, 'Mozilla/5.0 (Linux; Android 13; 2303CRA44A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '197.252.219.16', '2023-10-31 21:33:26'),
(73, 123, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A346E) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2a01:9700:1aad:f700:7402:3734:1a49:ef2e', '2023-10-31 21:33:58'),
(74, 131, 'Mozilla/5.0 (Linux; Android 13; 2303CRA44A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '197.252.219.16', '2023-10-31 21:35:36'),
(75, 131, 'Mozilla/5.0 (Linux; Android 13; 2303CRA44A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '197.252.219.16', '2023-10-31 21:35:37'),
(76, 131, 'Mozilla/5.0 (Linux; Android 13; 2303CRA44A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '197.252.219.16', '2023-10-31 21:35:39'),
(77, 123, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A346E) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2a01:9700:1aad:f700:7402:3734:1a49:ef2e', '2023-10-31 21:52:38'),
(78, 119, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2405:201:4041:f88e:19d0:66b9:5994:2d48', '2023-11-01 07:39:23'),
(79, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-11-01 07:48:07'),
(80, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-11-01 07:48:11'),
(81, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-11-01 07:48:13'),
(82, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-11-01 07:48:13'),
(83, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-11-01 07:48:15'),
(84, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-11-01 07:48:17'),
(85, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-11-01 07:48:18'),
(86, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.0.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-11-01 13:12:01'),
(87, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '102.47.209.156', '2023-11-01 13:23:01'),
(88, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '102.47.209.156', '2023-11-01 13:23:05'),
(89, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 17:04:50'),
(90, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 17:04:53'),
(91, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 17:04:54'),
(92, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 17:04:54'),
(93, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 17:04:55'),
(94, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 17:04:55'),
(95, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 17:04:55'),
(96, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 17:06:35'),
(97, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.0.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-11-01 17:38:05'),
(98, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 19:51:18'),
(99, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 19:51:23'),
(100, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 20:02:35'),
(101, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-01 20:02:36'),
(102, 113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '143.44.165.170', '2023-11-01 23:16:45'),
(103, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-02 04:09:32'),
(104, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:7d37:2911:8fdb:8f63', '2023-11-02 04:09:37'),
(105, 139, 'Mozilla/5.0 (Linux; Android 12; SM-M115F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 Mobile Safari/537.36', '87.236.232.82', '2023-11-02 07:59:10'),
(106, 140, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '196.134.198.2', '2023-11-02 08:46:40'),
(107, 140, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '196.134.198.2', '2023-11-02 08:46:44'),
(108, 140, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '196.134.198.2', '2023-11-02 08:46:47'),
(109, 140, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '196.134.198.2', '2023-11-02 08:46:52'),
(110, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 12:31:15'),
(111, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 12:31:19'),
(112, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 14:17:19'),
(113, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 14:17:30'),
(114, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.200.147', '2023-11-02 14:23:11'),
(115, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '102.47.209.156', '2023-11-02 14:46:00'),
(116, 112, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '102.47.209.156', '2023-11-02 14:46:05'),
(117, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.0.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-11-02 16:30:12'),
(118, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 18:08:36'),
(119, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 18:08:40'),
(120, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 18:59:29'),
(121, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 18:59:34'),
(122, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 19:41:16'),
(123, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:29d2:40ef:bc31:27d3', '2023-11-02 19:41:17'),
(124, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.154.81', '2023-11-02 22:54:00'),
(125, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.154.81', '2023-11-02 22:54:02'),
(126, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.154.81', '2023-11-02 22:54:04'),
(127, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.154.81', '2023-11-02 22:56:20'),
(128, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.154.81', '2023-11-02 22:56:25'),
(129, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:1db1:d9d5:24cb:5b0d', '2023-11-03 00:49:54'),
(130, 137, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2804:1890:2ee:7700:1db1:d9d5:24cb:5b0d', '2023-11-03 00:49:58'),
(131, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.154.81', '2023-11-03 07:28:59'),
(132, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.154.81', '2023-11-03 07:29:03'),
(133, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.2.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-11-03 07:29:37'),
(134, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.2.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-11-03 07:29:41'),
(135, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.2.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-11-03 07:29:45'),
(136, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.2.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-11-03 07:29:49'),
(137, 126, 'Mozilla/5.0 (Linux; Android 9; INE-LX2r; HMSCore 6.12.2.301; GMSCore 23.42.12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '178.77.159.237', '2023-11-03 08:26:20'),
(138, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.154.81', '2023-11-03 08:39:32'),
(139, 144, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.218.154.81', '2023-11-03 08:39:36'),
(140, 149, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.210.35.191', '2023-11-03 09:54:49'),
(141, 149, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.210.35.191', '2023-11-03 09:54:53'),
(142, 148, 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 4A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36', '103.111.141.52', '2023-11-03 09:55:48'),
(143, 149, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.210.35.191', '2023-11-03 10:26:32'),
(144, 149, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.210.35.191', '2023-11-03 10:26:33'),
(145, 139, 'Mozilla/5.0 (Linux; Android 12; SM-M115F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 Mobile Safari/537.36', '5.45.131.48', '2023-11-03 10:27:50'),
(146, 148, 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 4A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.74 Mobile Safari/537.36', '103.111.141.52', '2023-11-03 10:30:41'),
(147, 149, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '156.210.35.191', '2023-11-03 11:00:16'),
(148, 160, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '105.113.60.249', '2023-11-05 13:14:31'),
(149, 161, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '197.210.85.235', '2023-11-05 15:08:10'),
(150, 163, 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-G960U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '197.211.61.138', '2023-11-05 15:30:02'),
(151, 161, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '197.210.85.112', '2023-11-05 15:49:38'),
(152, 165, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '145.40.132.205', '2023-11-05 19:36:39'),
(153, 164, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '2a00:23ee:1cf8:7603:5c13:12b7:f4a:9032', '2023-11-05 19:37:13'),
(154, 165, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '145.40.132.205', '2023-11-05 19:39:56'),
(155, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 20:09:38'),
(156, 165, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '145.40.132.205', '2023-11-05 20:15:47'),
(157, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 20:27:33'),
(158, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 20:34:41'),
(159, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 20:38:41'),
(160, 172, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '197.211.58.99', '2023-11-05 20:41:19'),
(161, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 20:47:19'),
(162, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 21:43:50'),
(163, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 21:56:20'),
(164, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 22:11:31'),
(165, 177, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '181.208.129.181', '2023-11-05 22:22:18'),
(166, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 22:25:20'),
(167, 178, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '181.208.129.181', '2023-11-05 22:36:16'),
(168, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 22:49:19'),
(169, 169, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '37.60.108.174', '2023-11-05 23:17:09'),
(170, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.217.177', '2023-11-06 13:02:59'),
(171, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.184.129', '2023-11-06 14:03:08'),
(172, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.184.129', '2023-11-06 14:03:10'),
(173, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.171.12', '2023-11-06 18:47:36'),
(174, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.171.12', '2023-11-06 18:47:36'),
(175, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.171.8', '2023-11-06 19:54:29'),
(176, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.171.8', '2023-11-06 19:54:31'),
(177, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.171.10', '2023-11-06 20:14:09'),
(178, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.171.12', '2023-11-06 20:57:08'),
(179, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.169.152', '2023-11-06 22:18:01'),
(180, 178, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '181.208.129.181', '2023-11-07 00:57:37'),
(181, 180, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '81.109.204.210', '2023-11-07 07:08:20'),
(182, 180, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '81.109.204.210', '2023-11-07 07:12:33'),
(183, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '37.72.118.110', '2023-11-07 07:44:15'),
(184, 180, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '81.109.204.210', '2023-11-07 08:04:24'),
(185, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '37.72.118.110', '2023-11-07 08:23:43'),
(186, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.168.89', '2023-11-07 08:32:47'),
(187, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.168.89', '2023-11-07 08:53:11'),
(188, 173, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.168.89', '2023-11-07 09:10:38'),
(189, 164, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2a02:c7c:9488:9e00:a906:1b86:33ad:e883', '2023-11-07 17:25:02'),
(190, 164, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2a02:c7c:9488:9e00:a906:1b86:33ad:e883', '2023-11-07 17:49:08'),
(191, 164, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '90.193.206.71', '2023-11-07 17:56:53'),
(192, 181, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '190.16.228.164', '2023-11-07 18:31:58'),
(193, 181, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '190.16.228.164', '2023-11-07 19:49:23'),
(194, 183, 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_9 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', '182.177.34.14', '2023-11-07 19:55:36'),
(195, 184, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '86.23.103.156', '2023-11-07 20:48:36'),
(196, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 21:05:29'),
(197, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 21:10:33'),
(198, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 21:10:36'),
(199, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 21:34:44'),
(200, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 21:39:09'),
(201, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 21:39:12'),
(202, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 23:04:30'),
(203, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 23:25:48'),
(204, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 23:25:50'),
(205, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 23:32:32'),
(206, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-07 23:53:42'),
(207, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 00:34:35'),
(208, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 04:58:33'),
(209, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 05:04:30'),
(210, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 05:12:16'),
(211, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 06:03:29'),
(212, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 08:12:02'),
(213, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 08:45:15'),
(214, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 10:01:32'),
(215, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 10:01:34'),
(216, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 10:01:36'),
(217, 187, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.181.17', '2023-11-08 10:01:38'),
(218, 164, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2a00:23ee:1650:a37e:448e:115b:9f6:5cf2', '2023-11-08 15:27:49'),
(219, 188, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2a02:c7c:5c8a:4200:f104:4670:19a3:acf0', '2023-11-08 18:35:51'),
(220, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.216.199', '2023-11-08 18:53:29'),
(221, 188, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2a02:c7c:5c8a:4200:f104:4670:19a3:acf0', '2023-11-08 19:01:26'),
(222, 188, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2a02:c7c:5c8a:4200:f104:4670:19a3:acf0', '2023-11-08 19:01:28'),
(223, 188, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2a02:c7c:5c8a:4200:f104:4670:19a3:acf0', '2023-11-08 19:01:30'),
(224, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.216.199', '2023-11-08 19:29:33'),
(225, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.216.199', '2023-11-08 19:29:35'),
(226, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.216.199', '2023-11-08 19:45:19'),
(227, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.216.199', '2023-11-08 19:45:21'),
(228, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.194', '2023-11-08 21:41:18'),
(229, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.194', '2023-11-08 21:41:20'),
(230, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.194', '2023-11-08 21:41:21'),
(231, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.194', '2023-11-08 21:50:49'),
(232, 190, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.190.26', '2023-11-08 22:52:26'),
(233, 190, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.190.26', '2023-11-08 22:52:28'),
(234, 190, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.190.26', '2023-11-08 22:52:29'),
(235, 190, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.190.27', '2023-11-08 22:55:57'),
(236, 190, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.190.29', '2023-11-08 23:14:01'),
(237, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.217.150', '2023-11-09 06:04:00'),
(238, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.217.150', '2023-11-09 06:04:00'),
(239, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.217.150', '2023-11-09 06:25:14'),
(240, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.217.150', '2023-11-09 06:25:14'),
(241, 159, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.10.74', '2023-11-09 09:25:54'),
(242, 191, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.10.74', '2023-11-09 09:31:42'),
(243, 164, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '2a02:c7c:9488:9e00:5cf3:1a9e:c1a7:9fe8', '2023-11-09 18:10:20'),
(244, 195, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '86.11.150.233', '2023-11-09 21:18:19'),
(245, 195, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '86.11.150.233', '2023-11-09 21:32:04'),
(246, 165, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2001:630:d0:5010:89d:743a:a1da:7a84', '2023-11-10 09:24:23'),
(247, 196, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15', '193.60.140.12', '2023-11-10 10:50:30'),
(248, 196, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile DuckDuckGo/5 Safari/537.36', '193.60.143.13', '2023-11-10 10:52:08'),
(249, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.34', '2023-11-10 11:26:13'),
(250, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.34', '2023-11-10 11:26:15'),
(251, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.34', '2023-11-10 11:56:51'),
(252, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.34', '2023-11-10 11:56:53'),
(253, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.34', '2023-11-10 11:56:55'),
(254, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.34', '2023-11-10 12:20:17'),
(255, 189, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', '82.132.218.34', '2023-11-10 12:20:18'),
(256, 197, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '2a00:23ee:1328:1382:3194:8091:1f9d:d78', '2023-11-10 15:56:34'),
(257, 197, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '2a00:23ee:1328:1382:3194:8091:1f9d:d78', '2023-11-10 15:57:24'),
(258, 197, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '2a00:23ee:1328:1382:3194:8091:1f9d:d78', '2023-11-10 15:57:50'),
(259, 197, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '2a00:23ee:1328:1382:3194:8091:1f9d:d78', '2023-11-10 15:57:52'),
(260, 198, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '82.30.89.162', '2023-11-10 16:55:42'),
(261, 199, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '31.111.34.120', '2023-11-10 17:37:07'),
(262, 200, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-F721B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2a02:c7c:5262:3a00:daa3:1a:4fc3:3c4b', '2023-11-10 18:22:46'),
(263, 200, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-F721B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2a02:c7c:5282:8300:92b0:6274:3ec2:5e03', '2023-11-10 19:55:57'),
(264, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '31.94.24.39', '2023-11-12 11:52:50'),
(265, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '31.94.24.39', '2023-11-12 11:52:50'),
(266, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '31.94.24.39', '2023-11-12 11:56:12'),
(267, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '31.94.24.39', '2023-11-12 11:56:14'),
(268, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:10e8:4e00:ad50:202a:6c27:f99', '2023-11-12 12:32:40'),
(269, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:10e8:4e00:ad50:202a:6c27:f99', '2023-11-12 12:32:52'),
(270, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:10e8:4e00:ad50:202a:6c27:f99', '2023-11-12 12:45:15'),
(271, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:10e8:4e00:ad50:202a:6c27:f99', '2023-11-12 13:07:24'),
(272, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:10e8:4e00:ad50:202a:6c27:f99', '2023-11-12 13:07:24');
INSERT INTO `audit_logs` (`id`, `user_id`, `device`, `ipAddress`, `datenow`) VALUES
(273, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:10e8:4e00:ad50:202a:6c27:f99', '2023-11-12 13:14:33'),
(274, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '31.94.24.39', '2023-11-12 15:20:43'),
(275, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '31.94.24.39', '2023-11-12 15:20:44'),
(276, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:10e8:4e00:ad50:202a:6c27:f99', '2023-11-12 15:50:52'),
(277, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:10e8:4e00:ad50:202a:6c27:f99', '2023-11-12 15:50:52'),
(278, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 17:33:06'),
(279, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 17:35:59'),
(280, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 17:44:22'),
(281, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 17:44:24'),
(282, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:06:38'),
(283, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:06:40'),
(284, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:18:12'),
(285, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:18:14'),
(286, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:18:14'),
(287, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:18:16'),
(288, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:18:17'),
(289, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:18:19'),
(290, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:40:22'),
(291, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 18:40:23'),
(292, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:2808:69f4:3964:9514:2f01:983e', '2023-11-12 18:48:01'),
(293, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '2a00:23ee:2808:69f4:3964:9514:2f01:983e', '2023-11-12 18:48:02'),
(294, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '143.167.213.6', '2023-11-12 18:50:44'),
(295, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '143.167.213.6', '2023-11-12 19:53:24'),
(296, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '143.167.213.6', '2023-11-12 20:11:54'),
(297, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '143.167.213.6', '2023-11-12 20:11:56'),
(298, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '143.167.213.6', '2023-11-12 20:27:28'),
(299, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '143.167.213.6', '2023-11-12 20:27:30'),
(300, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '143.167.213.6', '2023-11-12 20:48:18'),
(301, 206, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '93.107.101.150', '2023-11-12 20:59:09'),
(302, 206, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '93.107.101.150', '2023-11-12 21:17:51'),
(303, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 22:54:53'),
(304, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 22:54:53'),
(305, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '31.205.133.160', '2023-11-12 23:06:35'),
(306, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '31.205.133.160', '2023-11-12 23:06:37'),
(307, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 23:07:31'),
(308, 204, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.219.27.64', '2023-11-12 23:07:33'),
(309, 207, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '151.73.41.193', '2023-11-12 23:10:37'),
(310, 207, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '151.73.41.193', '2023-11-12 23:58:55'),
(311, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '77.243.181.126', '2023-11-13 00:06:48'),
(312, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '77.243.181.126', '2023-11-13 00:06:48'),
(313, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '77.243.181.126', '2023-11-13 00:06:49'),
(314, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '77.243.181.126', '2023-11-13 00:06:51'),
(315, 208, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '77.243.181.126', '2023-11-13 00:10:26'),
(316, 203, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '77.243.181.126', '2023-11-13 00:18:42'),
(317, 201, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '87.115.130.181', '2023-11-13 00:35:37'),
(318, 206, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2001:bb6:a39:2b00:6900:7a81:ef6d:3fcf', '2023-11-13 02:19:42'),
(319, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '31.205.133.160', '2023-11-13 07:38:01'),
(320, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '31.205.133.160', '2023-11-13 08:31:02'),
(321, 205, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '31.205.133.160', '2023-11-13 08:31:04'),
(322, 216, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G781V) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '5.149.168.146', '2023-11-15 14:11:10'),
(323, 216, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G781V) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '5.149.168.146', '2023-11-15 14:11:12'),
(324, 216, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G781V) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '5.149.168.146', '2023-11-15 14:11:14'),
(325, 216, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G781V) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '5.149.168.146', '2023-11-15 14:11:17'),
(326, 217, 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A705FN) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '137.205.72.51', '2023-11-15 14:25:09'),
(327, 216, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G781V) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '5.149.168.146', '2023-11-15 14:36:19'),
(328, 218, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2a04:4a43:406f:ec6c:c446:ae6e:cf6d:4450', '2023-11-15 15:12:46'),
(329, 219, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '129.205.124.218', '2023-11-15 16:12:47'),
(330, 220, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '2a04:4e41:11:13::dc98:1e5b', '2023-11-15 20:04:40'),
(331, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 16:50:52'),
(332, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 16:50:54'),
(333, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 17:17:37'),
(334, 225, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '90.193.206.71', '2023-11-16 17:33:05'),
(335, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 17:56:22'),
(336, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 18:18:03'),
(337, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 18:18:05'),
(338, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 18:18:06'),
(339, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 19:31:34'),
(340, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 19:31:36'),
(341, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-16 19:31:37'),
(342, 226, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '186.14.58.40', '2023-11-16 20:06:46'),
(343, 228, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A225F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '78.145.80.222', '2023-11-16 20:15:38'),
(344, 229, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/119.0.6045.109 Mobile/15E148 Safari/604.1', '38.153.115.28', '2023-11-16 20:43:19'),
(345, 230, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.98.24', '2023-11-17 06:55:49'),
(346, 230, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.98.24', '2023-11-17 07:01:58'),
(347, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.40.109', '2023-11-17 09:03:32'),
(348, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.40.109', '2023-11-17 09:05:34'),
(349, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.40.109', '2023-11-17 09:06:57'),
(350, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.40.109', '2023-11-17 09:09:04'),
(351, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.40.109', '2023-11-17 09:11:16'),
(352, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.40.109', '2023-11-17 09:14:18'),
(353, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.8.132', '2023-11-17 11:07:41'),
(354, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:10:12'),
(355, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:10:40'),
(356, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:10:40'),
(357, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:10:40'),
(358, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:10:40'),
(359, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:10:40'),
(360, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:12:28'),
(361, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:13:22'),
(362, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:13:22'),
(363, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:13:22'),
(364, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:13:23'),
(365, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:13:23'),
(366, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:13:23'),
(367, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:14:08'),
(368, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.108.24', '2023-11-17 11:27:22'),
(369, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.8.60', '2023-11-17 12:29:18'),
(370, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.8.60', '2023-11-17 12:32:06'),
(371, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.8.60', '2023-11-17 12:33:04'),
(372, 248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.8.60', '2023-11-17 12:40:37'),
(373, 252, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '185.82.112.187', '2023-11-17 14:18:11'),
(374, 253, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '31.94.56.4', '2023-11-17 16:37:44'),
(375, 254, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '5.78.106.170', '2023-11-17 17:10:12'),
(376, 255, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.242.224.178', '2023-11-17 17:54:09'),
(377, 255, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '90.242.224.178', '2023-11-17 18:06:52'),
(378, 256, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '41.251.35.85', '2023-11-17 18:24:06'),
(379, 257, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '201.252.121.169', '2023-11-17 18:36:04'),
(380, 258, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2a00:23c8:26a0:7d01:ea75:6d7a:a0bd:6ec1', '2023-11-17 18:36:51'),
(381, 258, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2a00:23c8:26a0:7d01:ea75:6d7a:a0bd:6ec1', '2023-11-17 18:50:49'),
(382, 258, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2a00:23c8:26a0:7d01:ea75:6d7a:a0bd:6ec1', '2023-11-17 18:50:51'),
(383, 258, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2a00:23c8:26a0:7d01:ea75:6d7a:a0bd:6ec1', '2023-11-17 19:15:20'),
(384, 258, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2a00:23c8:26a0:7d01:ea75:6d7a:a0bd:6ec1', '2023-11-17 19:15:22'),
(385, 258, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '2a00:23c8:26a0:7d01:ea75:6d7a:a0bd:6ec1', '2023-11-17 19:16:15'),
(386, 257, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '201.252.121.169', '2023-11-17 19:35:50'),
(387, 257, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '201.252.121.169', '2023-11-17 19:39:06'),
(388, 253, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '151.25.48.143', '2023-11-17 20:05:29'),
(389, 261, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '92.6.226.181', '2023-11-17 21:17:49'),
(390, 261, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '92.6.226.181', '2023-11-17 21:19:47'),
(391, 260, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '92.6.226.181', '2023-11-17 21:46:52'),
(392, 261, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '92.6.226.181', '2023-11-17 21:56:08'),
(393, 261, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '148.252.129.60', '2023-11-18 16:18:22'),
(394, 261, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '148.252.129.60', '2023-11-18 16:18:45'),
(395, 261, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '148.252.129.60', '2023-11-18 16:19:23'),
(396, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 16:26:52'),
(397, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 16:26:55'),
(398, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 17:58:44'),
(399, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 17:58:47'),
(400, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 17:58:50'),
(401, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 18:41:34'),
(402, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 18:41:36'),
(403, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 18:41:38'),
(404, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 18:41:40'),
(405, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-18 18:41:43'),
(406, 262, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '82.9.40.39', '2023-11-18 21:42:36'),
(407, 262, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '82.9.40.39', '2023-11-18 21:42:39'),
(408, 264, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '188.26.198.232', '2023-11-18 23:14:12'),
(409, 264, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '188.26.198.232', '2023-11-19 08:20:15'),
(410, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-19 10:02:22'),
(411, 224, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '5.151.172.112', '2023-11-19 10:02:24'),
(412, 265, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '185.241.164.107', '2023-11-19 19:17:53'),
(413, 266, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '31.94.37.250', '2023-11-19 20:16:41'),
(414, 271, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A127F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '66.81.185.166', '2023-11-21 10:55:12'),
(415, 271, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A127F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '66.81.185.166', '2023-11-21 11:09:13'),
(416, 271, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A127F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '66.81.185.166', '2023-11-21 11:10:00'),
(417, 271, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '66.81.185.166', '2023-11-21 11:11:02'),
(418, 271, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '66.81.185.166', '2023-11-21 11:12:30'),
(419, 270, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '79.95.86.34', '2023-11-21 11:12:49'),
(420, 270, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '79.95.86.34', '2023-11-21 11:14:45'),
(421, 271, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '66.81.185.166', '2023-11-21 11:14:56'),
(422, 271, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '66.81.185.166', '2023-11-21 11:18:00'),
(423, 271, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '66.81.185.166', '2023-11-21 11:19:56'),
(424, 270, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '79.95.86.34', '2023-11-21 11:20:00'),
(425, 272, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '62.49.120.184', '2023-11-21 11:23:27'),
(426, 272, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '62.49.120.184', '2023-11-21 11:26:13'),
(427, 272, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '62.49.120.184', '2023-11-21 11:32:41'),
(428, 272, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '62.49.120.184', '2023-11-21 11:32:46'),
(429, 272, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '62.49.120.184', '2023-11-21 11:32:57'),
(430, 272, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '62.49.120.184', '2023-11-21 11:33:02'),
(431, 272, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '62.49.120.184', '2023-11-21 11:34:28'),
(432, 272, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '62.49.120.184', '2023-11-21 11:34:34'),
(433, 272, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '62.49.120.184', '2023-11-21 11:36:48'),
(434, 270, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '88.141.116.206', '2023-11-21 16:20:58'),
(435, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '115.186.169.98', '2023-11-21 18:17:10'),
(436, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '115.186.169.98', '2023-11-21 18:17:16'),
(437, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '115.186.169.98', '2023-11-21 18:33:12'),
(438, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-21 23:58:58'),
(439, 287, 'Mozilla/5.0 (Linux; Android 10; CPH1819 Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.116 Mobile Safari/537.36 OPR/44.14.2246.148970', '39.60.74.123', '2023-11-22 00:29:16'),
(440, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '115.186.169.98', '2023-11-22 01:19:14'),
(441, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '115.186.169.98', '2023-11-22 01:19:14'),
(442, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '115.186.169.98', '2023-11-22 01:21:13'),
(443, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '115.186.169.98', '2023-11-22 01:21:17'),
(444, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '115.186.169.98', '2023-11-22 01:21:30'),
(445, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '115.186.169.98', '2023-11-22 01:21:35'),
(446, 287, 'Mozilla/5.0 (Linux; Android 10; CPH1819 Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.116 Mobile Safari/537.36 OPR/44.14.2246.148970', '39.60.74.123', '2023-11-22 05:22:14'),
(447, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-22 05:23:50'),
(448, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-22 07:03:40'),
(449, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-22 07:39:27'),
(450, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-22 07:58:12'),
(451, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-22 08:31:40'),
(452, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-22 09:20:58'),
(453, 293, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.12.232', '2023-11-22 10:04:25'),
(454, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-22 10:22:29'),
(455, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 10:26:07'),
(456, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 10:41:09'),
(457, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-22 10:58:47'),
(458, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 11:02:37'),
(459, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 11:02:38'),
(460, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 11:14:11'),
(461, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 11:18:47'),
(462, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 11:24:16'),
(463, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 11:24:17'),
(464, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 11:24:57'),
(465, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 11:25:02'),
(466, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 11:25:07'),
(467, 287, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.60.74.123', '2023-11-22 11:35:37'),
(468, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 11:37:19'),
(469, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 12:19:28'),
(470, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 12:19:33'),
(471, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 12:23:32'),
(472, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 12:23:37'),
(473, 270, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '88.141.116.206', '2023-11-22 13:11:52'),
(474, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 14:07:25'),
(475, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 14:39:57'),
(476, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 14:57:09'),
(477, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 15:00:32'),
(478, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 15:09:32'),
(479, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 15:09:33'),
(480, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-22 15:13:18'),
(481, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 15:40:55'),
(482, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 15:41:00'),
(483, 301, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '104.255.169.120', '2023-11-22 15:43:30'),
(484, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 16:02:13'),
(485, 286, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '101.50.109.97', '2023-11-22 16:02:18'),
(486, 305, 'Mozilla/5.0 (Linux; Android 12; vivo 1907; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/11.2.0.1', '117.208.192.63', '2023-11-23 03:51:08'),
(487, 302, 'Mozilla/5.0 (Linux; Android 12; vivo 1907; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/11.2.0.1', '117.208.192.63', '2023-11-23 04:04:01'),
(488, 302, 'Mozilla/5.0 (Linux; Android 12; vivo 1907; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/11.2.0.1', '117.208.192.63', '2023-11-23 04:04:58'),
(489, 302, 'Mozilla/5.0 (Linux; Android 12; vivo 1907; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/11.2.0.1', '117.208.192.63', '2023-11-23 04:07:19'),
(490, 302, 'Mozilla/5.0 (Linux; Android 12; vivo 1907; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/11.2.0.1', '117.208.192.63', '2023-11-23 04:13:52'),
(491, 302, 'Mozilla/5.0 (Linux; Android 12; vivo 1907; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/11.2.0.1', '117.208.192.63', '2023-11-23 04:33:57'),
(492, 302, 'Mozilla/5.0 (Linux; Android 12; vivo 1907; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/11.2.0.1', '117.208.192.63', '2023-11-23 04:52:21'),
(493, 294, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Mobile Safari/537.36', '154.198.66.118', '2023-11-23 06:23:17'),
(494, 306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '106.211.241.34', '2023-11-23 15:17:31'),
(495, 306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '106.211.241.34', '2023-11-23 15:21:52'),
(496, 306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '106.211.241.34', '2023-11-23 15:22:22'),
(497, 306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '106.211.241.34', '2023-11-23 17:04:27'),
(498, 306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '223.182.219.230', '2023-11-23 17:28:55'),
(499, 306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '223.182.219.230', '2023-11-23 18:12:12'),
(500, 308, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.46.64', '2023-11-23 19:01:53'),
(501, 309, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 youdaodict/9.3.5 (YDShare)', '31.205.217.237', '2023-11-23 19:17:17'),
(502, 308, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.46.64', '2023-11-23 19:39:13'),
(503, 308, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.46.64', '2023-11-23 20:00:42'),
(504, 312, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '31.205.217.237', '2023-11-23 22:42:07'),
(505, 313, 'Mozilla/5.0 (Linux; U; Android 13; en-gb; RMX3241 Build/TP1A.220905.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36 HeyTapBrowser/45.9.5.9.1', '152.58.104.21', '2023-11-24 01:37:28'),
(506, 313, 'Mozilla/5.0 (Linux; U; Android 13; en-gb; RMX3241 Build/TP1A.220905.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36 HeyTapBrowser/45.9.5.9.1', '152.58.106.38', '2023-11-24 01:46:36'),
(507, 313, 'Mozilla/5.0 (Linux; U; Android 13; en-gb; RMX3241 Build/TP1A.220905.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36 HeyTapBrowser/45.9.5.9.1', '152.58.106.219', '2023-11-24 02:37:02'),
(508, 312, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '148.252.146.63', '2023-11-24 02:53:50'),
(509, 312, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '31.205.217.237', '2023-11-24 03:01:53'),
(510, 306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '223.182.219.250', '2023-11-24 03:53:47'),
(511, 306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '223.182.219.250', '2023-11-24 04:36:10'),
(512, 316, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '189.203.252.197', '2023-11-24 06:59:27'),
(513, 316, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '189.203.252.197', '2023-11-24 08:03:20'),
(514, 316, 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', '189.203.252.197', '2023-11-24 08:17:17'),
(515, 316, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '189.203.252.197', '2023-11-24 08:25:30'),
(516, 316, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '189.203.252.197', '2023-11-24 08:35:17'),
(517, 317, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15', '91.192.199.20', '2023-11-24 11:57:30'),
(518, 317, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15', '94.42.133.90', '2023-11-24 14:50:08'),
(519, 318, 'Mozilla/5.0 (Linux; Android 10; SNE-LX1; HMSCore 6.12.2.302; GMSCore 23.44.14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '31.94.37.84', '2023-11-24 16:43:49'),
(520, 318, 'Mozilla/5.0 (Linux; Android 10; SNE-LX1; HMSCore 6.12.2.302; GMSCore 23.44.14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '31.94.37.84', '2023-11-24 17:07:27'),
(521, 317, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '46.134.69.202', '2023-11-24 17:31:05'),
(522, 317, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '46.134.69.202', '2023-11-24 17:31:07'),
(523, 319, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '5.151.151.203', '2023-11-24 17:58:54'),
(524, 319, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '5.151.151.203', '2023-11-24 18:01:57'),
(525, 319, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '5.151.151.203', '2023-11-24 18:19:01'),
(526, 319, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '5.151.151.203', '2023-11-24 18:21:40'),
(527, 319, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '5.151.151.203', '2023-11-24 18:53:48'),
(528, 318, 'Mozilla/5.0 (Linux; Android 10; SNE-LX1; HMSCore 6.12.2.302; GMSCore 23.44.14) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.0.365 Mobile Safari/537.36', '92.4.110.249', '2023-11-24 20:04:09'),
(529, 317, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15', '91.192.199.20', '2023-11-24 21:52:58'),
(530, 320, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A145R) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '90.211.164.150', '2023-11-25 12:12:23'),
(531, 320, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A145R) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '90.211.164.150', '2023-11-25 12:13:32'),
(532, 320, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A145R) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '90.211.164.150', '2023-11-25 12:56:49'),
(533, 320, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A145R) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '90.211.164.150', '2023-11-25 12:56:54'),
(534, 321, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '86.134.8.56', '2023-11-25 13:48:22'),
(535, 321, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '86.134.8.56', '2023-11-25 13:52:22'),
(536, 321, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '86.134.8.56', '2023-11-25 13:56:05'),
(537, 321, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '86.134.8.56', '2023-11-25 14:08:03'),
(538, 322, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '84.66.196.244', '2023-11-25 14:57:05'),
(539, 322, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '84.66.196.244', '2023-11-25 15:01:09'),
(540, 322, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '148.252.140.157', '2023-11-25 15:04:42'),
(541, 323, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '86.8.247.73', '2023-11-25 15:10:24'),
(542, 323, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-N986B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '86.8.247.73', '2023-11-25 15:18:59'),
(543, 322, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '148.252.140.157', '2023-11-25 15:19:59'),
(544, 322, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '148.252.140.157', '2023-11-25 15:20:43'),
(545, 323, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '86.8.247.73', '2023-11-25 15:30:31'),
(546, 322, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '84.66.196.244', '2023-11-25 15:31:44'),
(547, 325, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '109.147.241.148', '2023-11-25 15:55:13'),
(548, 326, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '1.75.159.195', '2023-11-25 16:15:44'),
(549, 325, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '109.147.241.148', '2023-11-25 16:38:24'),
(550, 326, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '1.75.159.195', '2023-11-25 16:41:48'),
(551, 325, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', '109.147.241.148', '2023-11-25 18:32:06'),
(552, 327, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '178.175.104.58', '2023-11-25 18:56:59'),
(553, 331, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '5.151.133.36', '2023-11-25 20:55:49');
INSERT INTO `audit_logs` (`id`, `user_id`, `device`, `ipAddress`, `datenow`) VALUES
(554, 329, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '178.175.104.58', '2023-11-25 21:00:58'),
(555, 331, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '5.151.133.36', '2023-11-25 21:04:47'),
(556, 325, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '109.147.241.148', '2023-11-25 23:51:02'),
(557, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 10:30:56'),
(558, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 10:30:59'),
(559, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 13:07:34'),
(560, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/290.1.581873948 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 13:12:10'),
(561, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 13:23:21'),
(562, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 13:23:22'),
(563, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 13:23:27'),
(564, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 13:23:32'),
(565, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 13:23:37'),
(566, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 13:23:41'),
(567, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 13:23:46'),
(568, 332, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '84.71.88.49', '2023-11-26 14:00:53'),
(569, 332, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '84.71.88.49', '2023-11-26 14:00:54'),
(570, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 14:23:23'),
(571, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/290.1.581873948 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 14:26:24'),
(572, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/290.1.581873948 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 14:26:27'),
(573, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/290.1.581873948 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 14:26:30'),
(574, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/290.1.581873948 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 14:26:32'),
(575, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/290.1.581873948 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 14:57:56'),
(576, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/290.1.581873948 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 14:58:01'),
(577, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/290.1.581873948 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 14:58:05'),
(578, 332, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '84.71.88.49', '2023-11-26 15:15:02'),
(579, 332, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '84.71.88.49', '2023-11-26 15:15:07'),
(580, 332, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '84.71.88.49', '2023-11-26 15:23:34'),
(581, 332, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '84.71.88.49', '2023-11-26 15:23:39'),
(582, 332, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/290.1.581873948 Mobile/15E148 Safari/604.1', '84.71.88.49', '2023-11-26 15:37:19'),
(583, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 18:09:28'),
(584, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 18:09:29'),
(585, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 20:17:28'),
(586, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 20:17:33'),
(587, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-26 20:17:38'),
(588, 337, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.68.38', '2023-11-26 21:30:01'),
(589, 337, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.68.38', '2023-11-26 21:30:06'),
(590, 337, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.68.41', '2023-11-26 23:33:14'),
(591, 337, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.68.41', '2023-11-26 23:33:19'),
(592, 337, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.68.41', '2023-11-27 10:09:33'),
(593, 337, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', '5.151.68.33', '2023-11-27 11:55:48'),
(594, 338, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '128.240.225.47', '2023-11-27 12:44:08'),
(595, 338, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '128.240.225.47', '2023-11-27 12:46:20'),
(596, 338, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/119.0.6045.169 Mobile/15E148 Safari/604.1', '128.240.225.47', '2023-11-27 12:46:51'),
(597, 338, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/119.0.6045.169 Mobile/15E148 Safari/604.1', '31.205.14.200', '2023-11-27 17:04:23'),
(598, 337, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.68.41', '2023-11-27 17:31:51'),
(599, 337, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.68.41', '2023-11-27 17:31:56'),
(600, 337, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '5.151.68.41', '2023-11-27 19:08:02'),
(601, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-27 19:41:18'),
(602, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-27 19:41:23'),
(603, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-27 19:41:28'),
(604, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-27 19:41:33'),
(605, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-27 19:41:37'),
(606, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-27 19:41:42'),
(607, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-27 19:41:47'),
(608, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-27 19:41:52'),
(609, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-27 19:41:56'),
(610, 338, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/119.0.6045.169 Mobile/15E148 Safari/604.1', '31.205.14.200', '2023-11-27 20:43:51'),
(611, 339, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '31.14.250.173', '2023-11-28 13:56:36'),
(612, 339, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '31.14.250.173', '2023-11-28 13:58:34'),
(613, 339, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '31.14.250.173', '2023-11-28 13:58:40'),
(614, 340, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', '92.40.168.187', '2023-11-28 16:46:22'),
(615, 341, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', '89.241.101.46', '2023-11-28 18:35:30'),
(616, 341, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', '89.241.101.46', '2023-11-28 18:44:10'),
(617, 341, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', '89.241.101.46', '2023-11-28 18:48:06'),
(618, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-29 12:34:42'),
(619, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-29 12:34:42'),
(620, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-29 12:34:47'),
(621, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.104.58', '2023-11-29 12:34:52'),
(622, 342, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '94.3.33.2', '2023-11-29 15:28:30'),
(623, 342, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '94.3.33.2', '2023-11-29 15:37:39'),
(624, 342, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '94.3.33.2', '2023-11-29 15:37:43'),
(625, 342, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 OPR/104.0.0.0', '94.3.33.2', '2023-11-29 15:42:54'),
(626, 345, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '82.132.214.136', '2023-11-29 19:57:03'),
(627, 345, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '82.132.214.136', '2023-11-29 19:58:38'),
(628, 347, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '85.255.233.82', '2023-11-29 21:33:01'),
(629, 348, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '194.207.183.168', '2023-11-29 23:08:47'),
(630, 349, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '86.131.7.186', '2023-11-30 00:43:29'),
(631, 349, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '86.131.7.186', '2023-11-30 00:43:34'),
(632, 349, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '86.131.7.186', '2023-11-30 00:50:39'),
(633, 349, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '86.131.7.186', '2023-11-30 00:59:21'),
(634, 354, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '31.205.203.164', '2023-12-01 17:54:19'),
(635, 354, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '31.205.203.164', '2023-12-01 17:58:06'),
(636, 354, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '31.205.203.164', '2023-12-01 18:00:28'),
(637, 354, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '31.205.203.164', '2023-12-01 18:21:29'),
(638, 354, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '31.205.203.164', '2023-12-01 18:27:57'),
(639, 354, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '31.205.203.164', '2023-12-01 18:49:18'),
(640, 354, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.1 Mobile/15E148 Safari/604.1', '31.205.203.164', '2023-12-01 18:49:22'),
(641, 358, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.192.235', '2023-12-01 20:12:35'),
(642, 358, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.192.235', '2023-12-01 20:13:55'),
(643, 358, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.192.235', '2023-12-01 21:05:28'),
(644, 357, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.192.235', '2023-12-01 22:16:44'),
(645, 359, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A426B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '46.6.162.200', '2023-12-02 11:02:43'),
(646, 359, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A426B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '46.6.162.200', '2023-12-02 11:33:42'),
(647, 358, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', '92.40.192.244', '2023-12-02 11:46:27'),
(648, 359, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A426B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '46.6.162.200', '2023-12-02 15:38:35'),
(649, 359, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A426B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '46.6.162.200', '2023-12-02 15:47:51'),
(650, 359, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A426B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '46.6.162.200', '2023-12-02 15:47:53'),
(651, 359, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A426B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '46.6.162.200', '2023-12-02 16:07:25'),
(652, 359, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A426B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '46.6.162.200', '2023-12-02 16:07:27'),
(653, 360, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '86.190.127.84', '2023-12-02 21:02:01'),
(654, 360, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '86.190.127.84', '2023-12-02 21:05:25'),
(655, 360, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '86.190.127.84', '2023-12-02 21:06:11'),
(656, 360, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '86.190.127.84', '2023-12-02 21:13:55'),
(657, 360, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '86.190.127.84', '2023-12-02 21:13:59'),
(658, 360, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '86.190.127.84', '2023-12-02 21:30:45'),
(659, 361, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '86.132.128.254', '2023-12-02 22:54:23'),
(660, 361, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '86.132.128.254', '2023-12-02 23:27:48'),
(661, 361, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '86.132.128.254', '2023-12-02 23:27:53'),
(662, 361, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '86.132.128.254', '2023-12-02 23:27:58'),
(663, 361, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '86.132.128.254', '2023-12-02 23:28:02'),
(664, 361, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G998B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '86.132.128.254', '2023-12-02 23:28:07'),
(665, 364, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.35.12.184', '2023-12-04 12:45:23'),
(666, 364, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.35.12.184', '2023-12-04 12:50:09'),
(667, 363, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '82.132.185.60', '2023-12-04 12:53:06'),
(668, 363, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '82.132.185.60', '2023-12-04 12:53:11'),
(669, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.132.184.2', '2023-12-04 13:11:07'),
(670, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.132.184.2', '2023-12-04 13:11:11'),
(671, 364, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.35.12.184', '2023-12-04 13:15:32'),
(672, 364, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '39.35.12.184', '2023-12-04 13:15:38'),
(673, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.132.184.2', '2023-12-04 14:01:58'),
(674, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.132.184.2', '2023-12-04 14:02:04'),
(675, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.132.184.2', '2023-12-04 14:02:09'),
(676, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-04 14:50:41'),
(677, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-04 14:50:46'),
(678, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-04 14:50:51'),
(679, 366, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '51.89.170.134', '2023-12-04 14:51:11'),
(680, 366, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '51.89.170.134', '2023-12-04 14:55:36'),
(681, 366, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '51.89.170.134', '2023-12-04 14:55:41'),
(682, 367, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '188.28.60.66', '2023-12-04 15:01:29'),
(683, 366, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '51.89.170.134', '2023-12-04 15:10:37'),
(684, 366, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '51.89.170.134', '2023-12-04 15:10:43'),
(685, 367, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '188.28.60.66', '2023-12-04 16:05:49'),
(686, 367, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '92.40.187.18', '2023-12-04 16:20:38'),
(687, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-04 17:39:06'),
(688, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-04 17:39:12'),
(689, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-04 17:39:17'),
(690, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-04 17:39:22'),
(691, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-04 17:39:27'),
(692, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-04 17:39:32'),
(693, 367, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '92.40.187.28', '2023-12-04 19:00:17'),
(694, 367, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '92.40.187.28', '2023-12-04 19:00:22'),
(695, 367, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '188.28.60.66', '2023-12-04 21:03:15'),
(696, 368, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '139.135.34.230', '2023-12-04 22:07:23'),
(697, 368, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '139.135.34.230', '2023-12-04 22:08:06'),
(698, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 01:29:16'),
(699, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 01:29:21'),
(700, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 01:41:14'),
(701, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 01:41:19'),
(702, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 01:43:38'),
(703, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 07:25:46'),
(704, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 07:25:51'),
(705, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 07:30:02'),
(706, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 07:30:08'),
(707, 317, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15', '46.134.186.116', '2023-12-05 10:06:39'),
(708, 317, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15', '46.134.186.116', '2023-12-05 10:06:41'),
(709, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 10:12:12'),
(710, 369, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '202.47.36.208', '2023-12-05 10:12:18'),
(711, 371, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '82.36.155.207', '2023-12-05 11:11:21'),
(712, 371, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '82.36.155.207', '2023-12-05 11:14:01'),
(713, 371, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '82.36.155.207', '2023-12-05 13:02:31'),
(714, 372, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '102.9.137.111', '2023-12-05 13:14:44'),
(715, 372, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '102.9.137.111', '2023-12-05 14:39:01'),
(716, 371, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '82.36.155.207', '2023-12-05 15:10:01'),
(717, 371, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '82.36.155.207', '2023-12-05 15:49:47'),
(718, 373, 'Mozilla/5.0 (Android 8.1.0; Mobile; rv:120.0) Gecko/120.0 Firefox/120.0', '154.81.243.79', '2023-12-05 15:58:57'),
(719, 373, 'Mozilla/5.0 (Android 8.1.0; Mobile; rv:120.0) Gecko/120.0 Firefox/120.0', '154.81.243.79', '2023-12-05 16:00:51'),
(720, 373, 'Mozilla/5.0 (Android 8.1.0; Mobile; rv:120.0) Gecko/120.0 Firefox/120.0', '154.81.243.79', '2023-12-05 16:03:22'),
(721, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 16:51:37'),
(722, 371, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '82.36.155.207', '2023-12-05 17:17:39'),
(723, 373, 'Mozilla/5.0 (Android 8.1.0; Mobile; rv:120.0) Gecko/120.0 Firefox/120.0', '154.81.243.79', '2023-12-05 17:33:55'),
(724, 372, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', '102.9.137.111', '2023-12-05 18:28:24'),
(725, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 18:55:58'),
(726, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 18:56:03'),
(727, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 18:56:08'),
(728, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 19:17:04'),
(729, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 19:17:10'),
(730, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 19:17:15'),
(731, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 19:23:55'),
(732, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 19:24:00'),
(733, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 19:24:06'),
(734, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 20:29:40'),
(735, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 20:29:42'),
(736, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-05 20:29:45'),
(737, 376, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '119.158.37.131', '2023-12-06 02:10:36'),
(738, 376, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '119.158.37.131', '2023-12-06 02:35:38'),
(739, 376, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '119.158.37.131', '2023-12-06 02:35:44'),
(740, 379, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '5.151.177.137', '2023-12-06 04:42:09'),
(741, 379, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '5.151.177.137', '2023-12-06 04:47:21'),
(742, 379, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '5.151.177.137', '2023-12-06 08:39:36'),
(743, 379, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '5.151.177.137', '2023-12-06 08:39:41'),
(744, 373, 'Mozilla/5.0 (Android 8.1.0; Mobile; rv:120.0) Gecko/120.0 Firefox/120.0', '154.80.75.229', '2023-12-06 09:18:38'),
(745, 373, 'Mozilla/5.0 (Android 8.1.0; Mobile; rv:120.0) Gecko/120.0 Firefox/120.0', '154.80.75.229', '2023-12-06 09:19:14'),
(746, 379, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '5.151.177.137', '2023-12-06 09:29:09'),
(747, 381, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '180.75.45.107', '2023-12-06 10:13:39'),
(748, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-06 10:40:49'),
(749, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-06 10:40:52'),
(750, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-06 10:40:56'),
(751, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-06 10:41:01'),
(752, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-06 10:42:20'),
(753, 363, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-G990B) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '82.16.82.143', '2023-12-06 10:42:26'),
(754, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-06 12:13:49'),
(755, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-06 12:13:51'),
(756, 375, 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A908N) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '2.223.233.57', '2023-12-06 12:13:57'),
(757, 382, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '94.5.150.180', '2023-12-06 13:39:00'),
(758, 382, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '94.5.150.180', '2023-12-06 13:39:06'),
(759, 382, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '94.5.150.180', '2023-12-06 13:40:02'),
(760, 382, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '94.5.150.180', '2023-12-06 13:40:11'),
(761, 382, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '94.5.150.180', '2023-12-06 13:40:20'),
(762, 382, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '94.5.150.180', '2023-12-06 13:43:19'),
(763, 382, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '94.5.150.180', '2023-12-06 13:53:47'),
(764, 381, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '180.75.46.161', '2023-12-06 15:28:02'),
(765, 381, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', '180.75.46.161', '2023-12-06 15:30:48'),
(766, 381, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '180.75.46.161', '2023-12-06 16:44:51'),
(767, 381, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '180.75.241.20', '2023-12-06 17:46:58'),
(768, 381, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', '180.75.243.90', '2023-12-06 18:21:18'),
(769, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-06 19:47:10'),
(770, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-06 19:47:16'),
(771, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-06 19:49:56'),
(772, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-06 20:31:35'),
(773, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-06 20:43:25'),
(774, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-06 21:22:48'),
(775, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.132.214.100', '2023-12-06 22:17:41'),
(776, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.132.214.100', '2023-12-06 22:17:46'),
(777, 384, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '197.211.63.115', '2023-12-06 22:58:02'),
(778, 385, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '104.28.89.34', '2023-12-07 07:10:20'),
(779, 385, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '104.28.89.34', '2023-12-07 07:11:37'),
(780, 385, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '104.28.86.63', '2023-12-07 08:15:32'),
(781, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-07 11:01:02'),
(782, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-07 11:01:54'),
(783, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-07 12:02:07'),
(784, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.132.214.100', '2023-12-07 12:35:42'),
(785, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.69.225', '2023-12-07 13:00:23'),
(786, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.69.225', '2023-12-07 13:00:29'),
(787, 327, 'Mozilla/5.0 (Linux; Android 13; SAMSUNG SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.36', '178.175.69.225', '2023-12-07 13:00:35'),
(788, 383, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1.2 Mobile/15E148 Safari/604.1', '82.36.147.107', '2023-12-07 13:55:38'),
(789, 387, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.14.14', '2023-12-08 11:14:53'),
(790, 387, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.14.14', '2023-12-08 12:08:46'),
(791, 387, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.14.14', '2023-12-08 12:27:52'),
(792, 387, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.14.14', '2023-12-08 12:48:07'),
(793, 387, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '105.113.14.14', '2023-12-08 12:51:25'),
(794, 373, 'Mozilla/5.0 (Android 8.1.0; Mobile; rv:120.0) Gecko/120.0 Firefox/120.0', '154.80.79.90', '2023-12-11 10:20:50'),
(795, 373, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', '154.80.84.229', '2023-12-16 10:59:11'),
(796, 408, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36 EdgA/118.0.2088.66', '105.113.25.40', '2023-12-17 12:09:30'),
(797, 409, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36 EdgA/118.0.2088.66', '105.113.8.110', '2023-12-17 12:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `seria_key` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_number` text NOT NULL,
  `card_name` text NOT NULL,
  `card_expiration` varchar(50) NOT NULL,
  `card_security` text NOT NULL,
  `card_limit` double NOT NULL DEFAULT 5000,
  `card_limit_remain` double NOT NULL DEFAULT 5000,
  `card_status` int(11) NOT NULL DEFAULT 2 COMMENT '1=Active,2=Process,3=hold, 4=PAUSE',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `seria_key`, `user_id`, `card_number`, `card_name`, `card_expiration`, `card_security`, `card_limit`, `card_limit_remain`, `card_status`, `createdAt`) VALUES
(1, 'CARD65400c556649a', 110, '6796 7155 3776 0897', 'Reem  Ahmed ', '07/26', '897', 5000, 5000, 2, '2023-10-30 20:04:37'),
(2, 'CARD65402b4fc2a46', 112, '3093 472943 2040', 'Mohamed Nasr', '07/26', '897', 5000, 5000, 2, '2023-10-30 22:16:47'),
(3, 'CARD6544d1f5a1336', 139, '6011 9845 6059 7295', 'Ahmad Almasri ', '07/26', '897', 5000, 5000, 2, '2023-11-03 10:56:53'),
(4, 'CARD6548104e58d58', 169, '4093 0352 7838 0666', 'Kazuma Yuasa', '07/26', '897', 5000, 5000, 2, '2023-11-05 21:59:42'),
(5, 'CARD654ab087d22fc', 187, '5296 3087 2273 4517', 'Bhoomi Basavaraju', '07/26', '897', 5000, 5000, 2, '2023-11-07 21:47:51'),
(6, 'CARD654bda0152936', 189, '6793 9575 7198 2586', 'Randa Jneid', '07/26', '897', 5000, 5000, 2, '2023-11-08 18:57:05'),
(7, 'CARD6550c168a1436', 203, '5294 5376 5852 5483', 'Imad Rahmani ', '07/26', '897', 5000, 5000, 2, '2023-11-12 12:13:28'),
(8, 'CARD65620f45ef8a2', 322, '5291 5145 8087 5025', 'Manpreet Garcha', '07/26', '897', 5000, 5000, 2, '2023-11-25 10:14:13'),
(9, 'CARD656dd4ed621ec', 363, '3092 061035 2661', 'Samantha Hope', '07/26', '897', 5000, 5000, 2, '2023-12-04 08:32:29'),
(10, 'CARD656dfb3eaebf9', 367, '6297 5809 6016 5419', 'Tetiana Shuliar', '07/26', '897', 5000, 5000, 2, '2023-12-04 11:15:58'),
(11, 'CARD656f58300dd5b', 375, '6011 9889 3814 0112', 'Gislaine  Camargo ', '07/26', '897', 5000, 5000, 2, '2023-12-05 12:04:48'),
(12, 'CARD656ffc5f36fdf', 379, '5292 4826 0331 7272', 'Obakeng Mathibe', '07/26', '897', 5000, 5000, 2, '2023-12-05 23:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `card_request`
--

CREATE TABLE `card_request` (
  `id` int(11) NOT NULL,
  `reference_id` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_type` text NOT NULL,
  `card_reason` text NOT NULL,
  `card_request_status` int(11) NOT NULL DEFAULT 2,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `card_request`
--

INSERT INTO `card_request` (`id`, `reference_id`, `user_id`, `card_type`, `card_reason`, `card_request_status`, `createdAt`) VALUES
(2, 'card6544d236e7ce6', 139, 'mastercard', 'Payment the mony', 2, '2023-11-03 10:57:58'),
(3, 'card654811b32ff95', 169, 'Select', '', 2, '2023-11-05 22:05:39'),
(4, 'card656dfb519008e', 367, 'visa', '', 2, '2023-12-04 11:16:17'),
(5, 'card656dfb9cf1c35', 367, 'visa', '', 2, '2023-12-04 11:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_currency`
--

CREATE TABLE `crypto_currency` (
  `id` int(11) NOT NULL,
  `crypto_name` varchar(200) NOT NULL,
  `wallet_address` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crypto_currency`
--

INSERT INTO `crypto_currency` (`id`, `crypto_name`, `wallet_address`, `created_at`) VALUES
(1, 'Bitcoin', '8rtknjbhgfgvsnkjhgxfgxjhkx', '2022-10-21 17:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `d_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `refrence_id` text NOT NULL,
  `image` text DEFAULT NULL,
  `amount` double NOT NULL,
  `wallet_address` text NOT NULL,
  `crypto_id` int(11) NOT NULL,
  `crypto_status` int(15) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domestic_transfer`
--

CREATE TABLE `domestic_transfer` (
  `dom_id` int(11) NOT NULL,
  `acct_id` int(11) DEFAULT NULL,
  `refrence_id` text NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `bank_name` text DEFAULT NULL,
  `acct_name` text DEFAULT NULL,
  `acct_number` int(15) NOT NULL,
  `trans_type` varchar(50) NOT NULL DEFAULT 'domestic transfer',
  `acct_type` varchar(50) NOT NULL,
  `acct_remarks` text DEFAULT NULL,
  `dom_status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `domestic_transfer`
--

INSERT INTO `domestic_transfer` (`dom_id`, `acct_id`, `refrence_id`, `amount`, `bank_name`, `acct_name`, `acct_number`, `trans_type`, `acct_type`, `acct_remarks`, `dom_status`, `created_at`) VALUES
(1, 408, '657ee6558be7b', 50, 'Demo', 'Demo bank', 1234564646, 'domestic transfer', 'Non Resident', 'Hello', 1, '2023-12-17 07:15:17'),
(2, 409, '657ef11332790', 50, 'Demo bank', 'Demo', 2121313, 'domestic transfer', 'Non Resident', 'Demo testing', 0, '2023-12-17 08:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `loan_reference_id` text DEFAULT NULL,
  `acct_id` int(11) NOT NULL,
  `amount` double DEFAULT 0,
  `loan_remarks` text NOT NULL,
  `loan_status` int(11) NOT NULL DEFAULT 0,
  `loan_message` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `loan_reference_id`, `acct_id`, `amount`, `loan_remarks`, `loan_status`, `loan_message`, `created_at`) VALUES
(16, '65511c6c28aad', 204, 100, 'Have to pay for my onetime refundable fee to recieve payment as I don\'t have money to pay for it ', 0, NULL, '2023-11-12 18:41:48'),
(17, '65511c8748d89', 204, 100, 'Have to pay for my onetime refundable fee to recieve payment as I don\'t have money to pay for it ', 0, NULL, '2023-11-12 18:42:15'),
(18, '65511dad2917c', 204, 100, 'Have to pay for my onetime refundable fee to recieve payment as I don\'t have money to pay for it ', 0, NULL, '2023-11-12 18:47:09'),
(19, '65511dc35a156', 204, 100, 'Have to pay for my onetime refundable fee to recieve payment as I don\'t have money to pay for it ', 0, NULL, '2023-11-12 18:47:31'),
(20, '6557c7a7ee4cf', 253, 3000, '<br />\r\n<b>Warning</b>:  Undefined array key \"loan_remarks\" in <b>/home/u258368011/domains/venturewealtheritage.com/public_html/account/user/loan.php</b> on line <b>104</b><br />\r\n', 0, NULL, '2023-11-17 20:05:59'),
(21, '656f787e1b426', 375, 5000, 'Heath', 0, NULL, '2023-12-05 14:22:38'),
(22, '656f78830aab9', 375, 5000, 'Heath', 0, NULL, '2023-12-05 14:22:43'),
(23, '656f78fbefcd8', 375, 5000, 'Heath ', 0, NULL, '2023-12-05 14:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `PhoneNumber` text NOT NULL,
  `locationcus` text NOT NULL,
  `Addresscus` text NOT NULL,
  `City` text NOT NULL,
  `Customer` text NOT NULL,
  `Messagecus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `about_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url_tel` varchar(15) DEFAULT NULL,
  `url_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trans_limit_min` double DEFAULT NULL,
  `trans_limit_max` double DEFAULT NULL,
  `livechat` text NOT NULL COMMENT 'Live Widget',
  `twillio_status` int(11) NOT NULL DEFAULT 0 COMMENT '0=off,1=on',
  `billing_code` int(11) NOT NULL DEFAULT 0 COMMENT '0=off,1=on',
  `transfer` int(11) NOT NULL DEFAULT 1 COMMENT '0=off,1=on',
  `bank_deposit` int(11) NOT NULL DEFAULT 0 COMMENT '0=off,1=on'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `image`, `about_us`, `url_name`, `url_tel`, `url_email`, `trans_limit_min`, `trans_limit_max`, `livechat`, `twillio_status`, `billing_code`, `transfer`, `bank_deposit`) VALUES
(1, 'logo.png', '', 'venturewealtheritage', '127756667', 'info@venturewealtheritage.com', 500, 500000, '<script src=\"//code.tidio.co/dd4pb0dd8zfisycco325t2npk4x9snsq.js\" async></script>', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `wire_id` int(11) NOT NULL,
  `acct_id` int(11) DEFAULT NULL,
  `trans_id` text NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `bank_name` text DEFAULT NULL,
  `acct_name_id` text DEFAULT NULL,
  `acct_number` varchar(200) DEFAULT NULL,
  `trans_type` varchar(50) NOT NULL DEFAULT 'wire transfer',
  `acct_type` varchar(50) DEFAULT NULL,
  `acct_country` text DEFAULT NULL,
  `acct_swift` varchar(50) DEFAULT NULL,
  `acct_routing` varchar(50) DEFAULT NULL,
  `acct_remarks` text DEFAULT NULL,
  `wire_status` int(11) NOT NULL DEFAULT 0,
  `trans_otp` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `temp_trans`
--

INSERT INTO `temp_trans` (`wire_id`, `acct_id`, `trans_id`, `amount`, `bank_name`, `acct_name_id`, `acct_number`, `trans_type`, `acct_type`, `acct_country`, `acct_swift`, `acct_routing`, `acct_remarks`, `wire_status`, `trans_otp`, `createdAt`) VALUES
(1, 9, '63efe69d69015', 2000, 'zenith', '234565434567', '652345678', 'domestic transfer', 'Savings', NULL, NULL, NULL, 'upkeep', 0, 164935, '2023-02-17 21:42:05'),
(2, 9, '63effadb89b43', 20000, 'First citi bank', 'Kingston light', '2047392627', 'wire transfer', 'Savings', 'Jamaica', '296352', '2639462514', 'School', 0, 358417, '2023-02-17 23:08:27'),
(3, 9, '63f23425da131', 2000, 'Access Bank', 'John', '0036527736', 'wire transfer', 'Savings', 'Nigeria', '1827', '32089822', '', 0, 203986, '2023-02-19 15:37:25'),
(4, 9, '63f23c5a28c7a', 10000, 'Kala', 'dicson dominic', '9909179658', 'wire transfer', 'Savings', 'Mongolia', '1234', '0987654', '', 0, 157332, '2023-02-19 16:12:26'),
(5, 9, '63f34d911257e', 200, 'Jaaz', 'Brown', '0987654321', 'domestic transfer', 'Savings', NULL, NULL, NULL, 'Health', 0, 201569, '2023-02-20 11:38:09'),
(6, 106, '653fcbec5c7cb', 100, 'Access', 'Godswill1059', '089655777', 'wire transfer', 'Checking', 'Cape Verde', '4738833', '566888', 'Work', 0, 563122, '2023-10-30 15:29:48'),
(7, 106, '653fcc303d728', 100, 'Access', 'Godswill1059', '089655777', 'wire transfer', 'Checking', 'Cape Verde', '4738833', '566888', 'Work', 0, 118644, '2023-10-30 15:30:56'),
(8, 106, '653fcd3215d85', 300, 'Access', 'Godswill1059 ', '566668', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, 'Ffgyu', 0, 194119, '2023-10-30 15:35:14'),
(9, 106, '653fcd3394d11', 300, 'Access', 'Godswill1059 ', '566668', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, 'Ffgyu', 0, 315934, '2023-10-30 15:35:15'),
(10, 116, '6540c66685ca8', 1200, 'Abudhabi commercial bank', 'Noorjahan ahamedshah', '11415432910001', 'wire transfer', 'Current', 'United Arab Erimates', 'ADCBAEAA060', '600310101', 'Transfer', 0, 132808, '2023-10-31 09:18:30'),
(11, 119, '6540ce6cce1a0', 2000, 'Bank of India', 'Rahul Kumar', '464910110015718', 'wire transfer', 'Savings', 'India', 'BKID0004649', '811013702', 'Salary', 0, 312076, '2023-10-31 09:52:44'),
(12, 119, '6540cf9e969b0', 2000, 'Bank of India', 'Rahul Kumar', '464910110015718', 'wire transfer', 'Savings', 'India', 'BKID0004649', '811013702', 'Salary', 0, 870167, '2023-10-31 09:57:50'),
(13, 116, '6540d59bf3b97', 1200, 'Abudhabi commercial bank', 'Noorjahan ahamedshah', '11415432910001', 'wire transfer', 'Current', 'United Arab Erimates', 'ADCBAEAA060', '600310101', 'Own account transfer', 0, 203726, '2023-10-31 10:23:23'),
(14, 121, '6540fbf294d7e', 3000, 'بنك فلسطين', 'محمد ملكي', '155969', 'wire transfer', 'Current', 'Palestine', '1234', '1234', 'ثمن عمل', 0, 199612, '2023-10-31 13:06:58'),
(15, 121, '6540fbf3f0fb1', 3000, 'بنك فلسطين', 'محمد ملكي', '155969', 'wire transfer', 'Current', 'Palestine', '1234', '1234', 'ثمن عمل', 0, 152973, '2023-10-31 13:06:59'),
(16, 121, '6540fe562ff44', 3000, 'بنك فلسطين ', 'محمد ملكي', '155969', 'domestic transfer', 'Current', NULL, NULL, NULL, 'ثمن عمل', 0, 259992, '2023-10-31 13:17:10'),
(17, 121, '654104928ff51', 3000, 'بنك فلسطين ', 'محمد ملكي', '155969', 'domestic transfer', 'Current', NULL, NULL, NULL, 'ثمن بدل عمل ', 0, 212766, '2023-10-31 13:43:46'),
(18, 131, '6541813fa0057', 2000, 'Alkartown', 'AMAL JABIR', '1861491', 'wire transfer', 'Current', 'Sudan', '123456', '123456', '', 0, 912191, '2023-10-31 22:35:43'),
(19, 131, '654181c887007', 2000, 'Alkartown', 'AMAL JABIR', '1861491', 'wire transfer', 'Current', 'Sudan', '123456', '123456', 'You work as a freelancer', 0, 884049, '2023-10-31 22:38:00'),
(20, 131, '654181dacbe0e', 2000, 'Alkartown', 'AMAL JABIR', '1861491', 'wire transfer', 'Current', 'Sudan', '123456', '123456', 'You work as a freelancer', 0, 594833, '2023-10-31 22:38:18'),
(21, 126, '654290778d57e', 2000, 'Iskan', 'Noor namrote', '0070000011975100110001', 'wire transfer', 'Savings', 'Jordan', 'Jo67HBHO', '007', 'Bank', 0, 307818, '2023-11-01 17:52:55'),
(22, 126, '6544a285872ef', 2000, 'Iskan', 'Noor namrite', '0011975100110001', 'wire transfer', 'Savings', 'Jordan', 'SBGEN', '011', '', 0, 307940, '2023-11-03 07:34:29'),
(23, 126, '6544a2867fdf5', 2000, 'Iskan', 'Noor namrite', '0011975100110001', 'wire transfer', 'Savings', 'Jordan', 'SBGEN', '011', 'Bank', 0, 319007, '2023-11-03 07:34:30'),
(24, 126, '6544a28880156', 2000, 'Iskan', 'Noor namrite', '0011975100110001', 'wire transfer', 'Savings', 'Jordan', 'SBGEN', '011', 'Bank', 0, 102591, '2023-11-03 07:34:32'),
(25, 126, '6544a28a2fd76', 2000, 'Iskan', 'Noor namrite', '0011975100110001', 'wire transfer', 'Savings', 'Jordan', 'SBGEN', '011', 'Bank', 0, 594342, '2023-11-03 07:34:34'),
(26, 126, '6544a28ad8195', 2000, 'Iskan', 'Noor namrite', '0011975100110001', 'wire transfer', 'Savings', 'Jordan', 'SBGEN', '011', 'Bank', 0, 288203, '2023-11-03 07:34:34'),
(27, 139, '6544d1514bf5a', 3000, 'Skrill', 'AhmadAlmasri', '227534789', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, 'Send the mony', 0, 210879, '2023-11-03 10:54:09'),
(28, 149, '6544d8839b7cf', 3000, 'National bank of Egypt', 'رئيفة محمود محمد محمود', '4215001238115701018', 'wire transfer', 'Savings', 'Egypt', 'NBEG EG CX421', '1898', '', 0, 188708, '2023-11-03 11:24:51'),
(29, 149, '6544d885636a9', 3000, 'National bank of Egypt', 'رئيفة محمود محمد محمود', '4215001238115701018', 'wire transfer', 'Savings', 'Egypt', 'NBEG EG CX421', '1898', '', 0, 293445, '2023-11-03 11:24:53'),
(30, 161, '6547b09b0a6e5', 1000, 'Llodys', 'Tari', '628737398', 'wire transfer', 'Savings', 'Ukraine', '737838', '738282737', 'Pyramid', 0, 141719, '2023-11-05 15:11:23'),
(31, 161, '6547b2a977a54', 1000, 'Llodys', 'Tari', '628737398', 'wire transfer', 'Savings', 'Ukraine', '737838', '738282737', 'Pyramid', 0, 272605, '2023-11-05 15:20:09'),
(32, 163, '6547b5f8193af', 2000, 'Access', 'Samuel', '88547999', 'wire transfer', 'Savings', 'United States of America', '4738833', '8847696', 'Bbnbnhh', 0, 238526, '2023-11-05 15:34:16'),
(33, 161, '6547b9d6c59d1', 2500, 'Vlayna', 'Yeyyeueye', '627272726', 'wire transfer', 'Savings', 'Algeria', '637373', '637373736', 'Putting', 0, 271699, '2023-11-05 15:50:46'),
(34, 161, '6547bbb89828c', 1000, 'Vlayna', 'Tame', '57745678', 'wire transfer', 'Savings', 'United States of America', '785445', '468886688', 'Please', 0, 235807, '2023-11-05 15:58:48'),
(35, 164, '6547fa355ff81', 3712, 'Revolut', 'Miss Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my funds for personal use', 0, 224026, '2023-11-05 20:25:25'),
(36, 169, '6547fb2049397', 3100, 'MONZGB2L', 'Kazuma Yuasa', '15119138', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, 'Salary', 0, 311226, '2023-11-05 20:29:20'),
(37, 169, '6547fbb4ac36d', 3100, 'MONZGB2L', 'Kazuma Yuasa', '15119138', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, 'Salary', 0, 270186, '2023-11-05 20:31:48'),
(38, 172, '6547fe99a166f', 2000, 'Lloyd', 'Sonia', '827372727', 'wire transfer', 'Savings', 'Canada', '17272', '73737373', 'Pay me', 0, 281793, '2023-11-05 20:44:09'),
(39, 169, '654802794f4aa', 3100, 'MONZGB2L', 'Kazuma Yuasa', '15119138', 'wire transfer', 'Online Banking', 'United Kingdom', '04-00-03', '447823564976', '', 0, 154653, '2023-11-05 21:00:41'),
(40, 169, '6548067844dd6', 3100, 'MONZGB2L', 'Kazuma Yuasa', '15119138', 'wire transfer', 'Online Banking', 'United Kingdom', '04-00-03', '447823564976', '', 0, 177130, '2023-11-05 21:17:44'),
(41, 169, '654807de4c17d', 3100, 'MONZGB2L', 'Kazuma Yuasa', '15119138', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, '', 0, 152449, '2023-11-05 21:23:42'),
(42, 169, '654808bc9feb3', 250, 'TransferWise', 'Honey And Toast Shop Limited', '64383587', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, '', 0, 380205, '2023-11-05 21:27:24'),
(43, 173, '654935955bf09', 100, 'Nationwide', 'Sharon Mok', '27126240', 'wire transfer', 'Current', 'United Kingdom', '070806', '07308307831', 'Money in', 0, 362661, '2023-11-06 18:51:01'),
(44, 173, '654937b5d178f', 250, 'Nationwide', 'Sharon Mok', '27126240', 'wire transfer', 'Current', 'United Kingdom', '070806', '07308307831', 'Money in', 0, 192614, '2023-11-06 19:00:05'),
(45, 173, '654944e945dad', 3100, 'Lloyds', 'Sharon Mok', '50591562', 'wire transfer', 'Current', 'United Kingdom', '309487', '07308307831', 'Money in', 0, 199867, '2023-11-06 19:56:25'),
(46, 173, '654945ea433eb', 3100, 'Nationwide', 'Sharon Mok', '27126240', 'wire transfer', 'Current', 'United Kingdom', '070806', '07308307831', 'Translation', 0, 319255, '2023-11-06 20:00:42'),
(47, 173, '654946f6ec80e', 3100, 'Nationwide', 'Sharon Mok', '27126240', 'wire transfer', 'Current', 'United Kingdom', '070806', '07308307831', 'Translation', 0, 717589, '2023-11-06 20:05:10'),
(48, 173, '654947abe3bbc', 3100, 'Nationwide', 'Sharon Mok', '27126240', 'wire transfer', 'Current', 'United Kingdom', '070806', '07308307831', 'Translation', 0, 290019, '2023-11-06 20:08:11'),
(49, 164, '654a7418083fe', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 243020, '2023-11-07 17:30:00'),
(50, 164, '654a743d902b7', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 358241, '2023-11-07 17:30:37'),
(51, 164, '654a75290fb10', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 291801, '2023-11-07 17:34:33'),
(52, 164, '654a754065592', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 144502, '2023-11-07 17:34:56'),
(53, 164, '654a7556e2dc7', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 181903, '2023-11-07 17:35:18'),
(54, 164, '654a75b99dbf5', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 156920, '2023-11-07 17:36:57'),
(55, 164, '654a75e0b37ce', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 107033, '2023-11-07 17:37:36'),
(56, 164, '654a7776cda6f', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 177414, '2023-11-07 17:44:22'),
(57, 164, '654a778d96fba', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 313189, '2023-11-07 17:44:45'),
(58, 164, '654a78008c4a2', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'To withdraw my wages', 0, 941997, '2023-11-07 17:46:40'),
(59, 164, '654a78f0ae461', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'Withdraw funds to bank account', 0, 328534, '2023-11-07 17:50:40'),
(60, 164, '654a79157a56e', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'Withdraw funds to bank account', 0, 286682, '2023-11-07 17:51:17'),
(61, 164, '654a7915e42ff', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'Withdraw funds to bank account', 0, 213688, '2023-11-07 17:51:17'),
(62, 164, '654a7917092e6', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'Withdraw funds to bank account', 0, 128225, '2023-11-07 17:51:19'),
(63, 164, '654a7918194f3', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'Withdraw funds to bank account', 0, 233569, '2023-11-07 17:51:20'),
(64, 164, '654a79d0c966e', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Online Banking', 'Select Country', '042909', '07534678672', 'Withdraw wages', 0, 579612, '2023-11-07 17:54:24'),
(65, 164, '654a79fca186f', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Online Banking', 'Select Country', '042909', '07534678672', 'Withdraw wages', 0, 923262, '2023-11-07 17:55:08'),
(66, 164, '654a7af6908da', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'Withdraw wages for personal use', 0, 122396, '2023-11-07 17:59:18'),
(67, 164, '654a7d205accf', 3800, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '07534678672', 'Withdraw wages for personal use', 0, 909674, '2023-11-07 18:08:32'),
(68, 164, '654a8343e866c', 3100, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'domestic transfer', 'Current', NULL, NULL, NULL, 'withdraw for personal use', 0, 160882, '2023-11-07 18:34:43'),
(69, 164, '654ba96c05014', 3100, 'Revolut', 'Rebecca Ouedraogo', '73498157', 'wire transfer', 'Current', 'United Kingdom', '042909', '7534678672', 'Withdraw wages for personal use', 0, 209454, '2023-11-08 15:29:48'),
(70, 191, '654ca753e292f', 100, 'demo bank', '2313', '343434', 'domestic transfer', 'Checking', NULL, NULL, NULL, 'dsdasds', 0, 316472, '2023-11-09 09:33:07'),
(71, 205, '65512aa16d53d', 3000, 'Kotomi Shimizu', 'KOTOMI SHIMIZU', '81791954', 'wire transfer', 'Savings', 'United Kingdom', 'SRLGGB2L', '07902471846', '', 0, 167000, '2023-11-12 19:42:25'),
(72, 205, '65512bb21266a', 3100, 'Kotomi Shimizu', 'KOTOMI SHIMIZU', '81791954', 'wire transfer', 'Savings', 'United Kingdom', 'SRLGGB2L', '07902471846', '', 0, 317883, '2023-11-12 19:46:58'),
(73, 205, '655137a73fe38', 3000, 'Kotomi Shimizu', 'KOTOMI SHIMIZU', '81791954', 'wire transfer', 'Savings', 'United Kingdom', 'SRLGGB2L', '07902471846', '', 0, 159843, '2023-11-12 20:37:59'),
(74, 205, '655137e4eaa62', 3000, 'Kotomi Shimizu', 'KOTOMI SHIMIZU', '81791954', 'wire transfer', 'Savings', 'United Kingdom', 'SRLGGB2L', '07902471846', '', 0, 209038, '2023-11-12 20:39:00'),
(75, 205, '65513894a0df3', 3000, 'Kotomi Shimizu', 'Kotomi Shimizu', '81791954', 'wire transfer', 'Savings', 'United Kingdom', 'SRLGGB2L', '07902471846', '', 0, 349174, '2023-11-12 20:41:56'),
(76, 205, '65513b0484b24', 3000, 'Kotomi Shimizu', 'KOTOMI SHIMIZU', '81791954', 'wire transfer', 'Savings', 'United Kingdom', 'SRLGGB2L', '07902471846', '', 0, 195884, '2023-11-12 20:52:20'),
(77, 205, '65513be617bcf', 3000, 'Kotomi Shimizu', 'KOTOMI SHIMIZU', '81791954', 'wire transfer', 'Savings', 'United Kingdom', 'SRLGGB2L', '07902471846', '', 0, 905839, '2023-11-12 20:56:06'),
(78, 205, '65513d850ae6c', 3000, 'Kotomi Shimizu', 'KOTOMI SHIMIZU', '81791954', 'wire transfer', 'Savings', 'United Kingdom', 'SRLGGB2L', '07902471846', '', 0, 170060, '2023-11-12 21:03:01'),
(79, 207, '655165d287fb6', 3100, 'Wise', 'Arooba Amin', '4569331514313059', 'wire transfer', 'Online Banking', 'Italy', '305', '393476764749', '', 0, 353373, '2023-11-12 23:54:58'),
(80, 224, '65565e5984cac', 3000, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309814', '07472907196', 'Gift', 0, 356160, '2023-11-16 18:24:25'),
(81, 224, '65565fd44d190', 3000, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '30-98-41', '07472907196', 'Gift', 0, 177923, '2023-11-16 18:30:44'),
(82, 224, '65566addcce0a', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', '', 0, 106790, '2023-11-16 19:17:49'),
(83, 224, '65566b40945b6', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', 'Gidt', 0, 306284, '2023-11-16 19:19:28'),
(84, 224, '65566be037c7a', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', 'Gift', 0, 101186, '2023-11-16 19:22:08'),
(85, 224, '65566be18df27', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', 'Gift', 0, 186045, '2023-11-16 19:22:09'),
(86, 224, '65566be27bc11', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', 'Gift', 0, 317696, '2023-11-16 19:22:10'),
(87, 224, '65566d39e29c0', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', 'Gift', 0, 100526, '2023-11-16 19:27:53'),
(88, 224, '65566d68cdfff', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', 'Gift', 0, 258767, '2023-11-16 19:28:40'),
(89, 224, '65566e71c3eae', 3100, 'Lloyds', 'Amanda Clare Bolingbroke', '79402368', 'wire transfer', 'Savings', 'United Kingdom', '30-98-41', '07472907196', 'Gift', 0, 225058, '2023-11-16 19:33:05'),
(90, 224, '65566e9814ab2', 3100, 'Lloyds', 'Amanda Clare Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '30-98-41', '07472907196', 'Gift', 0, 558553, '2023-11-16 19:33:44'),
(91, 224, '65566eb6a9921', 3100, 'Lloyds', 'Amanda Clare Bolingbroke', '79402368', 'wire transfer', 'Online Banking', 'United Kingdom', '30-98-41', '07472907196', 'Gift', 0, 121273, '2023-11-16 19:34:14'),
(92, 224, '65566f2609db2', 3000, 'Lloyds', 'Amanda Clare Bolingbroke', '79402368', 'wire transfer', 'Checking', 'United Kingdom', '30-98-41', '07472907196', 'Gift', 0, 298396, '2023-11-16 19:36:06'),
(93, 224, '65566f42968da', 3000, 'Lloyds Bank', 'Amanda Clare Bolingbroke', '79402368', 'wire transfer', 'Checking', 'United Kingdom', '30-98-41', '07472907196', 'Gift', 0, 222789, '2023-11-16 19:36:34'),
(94, 224, '65566f70b01c3', 3000, 'Lloyds Bank', 'Amanda Clare Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', 'Gift', 0, 181165, '2023-11-16 19:37:20'),
(95, 224, '65566fbb040b3', 3000, 'Lloyds Bank', 'Amanda Clare Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', 'Gift', 0, 332118, '2023-11-16 19:38:35'),
(96, 224, '6556704814eb1', 3100, 'Lloyds Bank', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Savings', 'United Kingdom', '309841', '07472907196', 'Transfer', 0, 275848, '2023-11-16 19:40:56'),
(97, 224, '655670c3808af', 3100, 'Lloyds Bank', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Savings', 'United Kingdom', '309841', '07472907196', 'Transfer', 0, 320612, '2023-11-16 19:42:59'),
(98, 224, '65567494286bb', 3100, 'Lloyds Bank', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Savings', 'United Kingdom', '309841', '07472907196', 'Transfer', 0, 163066, '2023-11-16 19:59:16'),
(99, 229, '655680ea7b532', 3000, 'Llodds', 'Nameertiig', '633777367', 'wire transfer', 'Savings', 'United Kingdom', '6373737', '737381837', 'Oishshh', 0, 340938, '2023-11-16 20:51:54'),
(100, 230, '65570f95bd9f7', 50, 'fdsaf', 'Dennis Ebisintei', '34343', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, '2323', 0, 148625, '2023-11-17 07:00:37'),
(101, 230, '65571011a66a1', 50, 'gsgfdsg', '545454yt4g44444', '545454', 'domestic transfer', 'Domicilary Account', NULL, NULL, NULL, 'trtre', 0, 124456, '2023-11-17 07:02:41'),
(102, 230, '6557101d72552', 50, 'gsgfdsg', '545454yt4g44444', '545454', 'domestic transfer', 'Domicilary Account', NULL, NULL, NULL, 'trtre', 0, 227896, '2023-11-17 07:02:53'),
(103, 230, '655712dc67afb', 40, 'demo bank', '2313', '434343', 'wire transfer', 'Online Banking', 'Albania', '2323', '232323', '323232', 0, 913256, '2023-11-17 07:14:36'),
(104, 248, '65575dbf7059b', 50, 'gsgfdsg', '344', '223', 'domestic transfer', 'Domicilary Account', NULL, NULL, NULL, '23131', 0, 265026, '2023-11-17 12:34:07'),
(105, 248, '65575f683213c', 50, 'gsgfdsg', '3442', '21321', 'domestic transfer', 'Non Resident', NULL, NULL, NULL, '2132132', 0, 190274, '2023-11-17 12:41:12'),
(106, 224, '6558e66016440', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Savings', 'United Kingdom', '309841', '07472907196', '', 0, 255596, '2023-11-18 11:29:20'),
(107, 224, '6558e6be1edf2', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Current', 'United Kingdom', '309841', '07472907196', 'Gift', 0, 687859, '2023-11-18 11:30:54'),
(108, 224, '655905d63c848', 3100, 'Lloyds', 'Amanda Bolingbroke', '79402368', 'wire transfer', 'Savings', 'United Kingdom', '309841', '07472907196', '', 0, 127054, '2023-11-18 13:43:34'),
(109, 287, '655db60438f6f', 100, 'Ubl Mardan', 'Mahrukh Iqbal', '000269674774', 'wire transfer', 'Current', 'Pakistan', 'UNILPKKA028', '211170318', 'Salary', 0, 821070, '2023-11-22 03:04:20'),
(110, 287, '655dbcd5457c5', 100, 'Ubl Mardan', 'Mahrukh Iqbal', '000269674774', 'wire transfer', 'Current', 'Pakistan', 'UNILPKKA028', '211170318', 'Salary', 0, 236221, '2023-11-22 03:33:25'),
(111, 287, '655dbd21c8f20', 100, 'Ubl Mardan', 'Mahrukh Iqbal', '000269674774', 'wire transfer', 'Current', 'Pakistan', 'UNILPKKA028', '211170318', 'Salary', 0, 212598, '2023-11-22 03:34:41'),
(112, 287, '655dc8a41d38b', 400, 'Ubl Mardan', 'Mahrukh Iqbal', '000269674774', 'wire transfer', 'Current', 'Pakistan', 'UNILPKKA028', '211170318', 'Salary', 0, 202943, '2023-11-22 04:23:48'),
(113, 287, '655dd7096aeb6', 1000, 'Ubl Mardan', 'Mahrukh Iqbal', '000269674774', 'wire transfer', 'Current', 'Pakistan', 'UNILPKKA028', '211170318', 'Salary', 0, 264557, '2023-11-22 05:25:13'),
(114, 294, '655e1c2dcc1a7', 4000, 'Muslim commercial bank', 'Shomaila bibi', '0790574891004965', 'wire transfer', 'Current', 'Pakistan', 'MUCBPKKA', '03041999', 'Pay', 0, 272023, '2023-11-22 10:20:13'),
(115, 294, '655e1d56a02ed', 4000, 'Muslim commercial bank ', 'Shomaila bibi ', '0790574891004965', 'domestic transfer', 'Current', NULL, NULL, NULL, 'Pay', 0, 351527, '2023-11-22 10:25:10'),
(116, 294, '655e1e675ad1e', 4000, 'Muslim commercial bank ', 'Shomaila bibi ', '0790574891004965', 'domestic transfer', 'Current', NULL, NULL, NULL, 'Payment ', 0, 235349, '2023-11-22 10:29:43'),
(117, 294, '655e1fe13bc18', 4000, 'Muslim commercial bank ', 'Shomaila bibi ', '0790574891004965', 'domestic transfer', 'Current', NULL, NULL, NULL, 'Payment ', 0, 221444, '2023-11-22 10:36:01'),
(118, 286, '655e214abb9ac', 4000, 'Alfalah', 'Current Account', '1007330970', 'wire transfer', 'Current', 'Pakistan', 'ALFHPKKAXXX', '123456789', 'Personal', 0, 290738, '2023-11-22 10:42:02'),
(119, 301, '655e23fe7c544', 3000, 'Lloyds', 'Lloyds', '7373737', 'wire transfer', 'Savings', 'Canada', '737373', '737372828', 'Payment', 0, 126639, '2023-11-22 10:53:34'),
(120, 306, '655f9a49565f6', 2600, 'Indian bank', 'K Dillshath', '6014840838', 'wire transfer', 'Savings', 'India', 'IDIBINBBMDM', '8', 'I MY OWN', 0, 225299, '2023-11-23 13:30:33'),
(121, 306, '655f9b9fd5cdc', 2600, 'Indian bank', 'K Dillshath', '6014840838', 'domestic transfer', 'Savings', NULL, NULL, NULL, '', 0, 146619, '2023-11-23 13:36:15'),
(122, 306, '655f9cc3497e2', 2600, 'Indian bank', 'K Dillshath', '6014840838', 'wire transfer', 'Savings', 'India', 'IDIBINBBMDM', '8', 'I MY OWN', 0, 958600, '2023-11-23 13:41:07'),
(123, 306, '655fa08313bc3', 2600, 'Indian bank', 'K Dillshath', '6014840838', 'wire transfer', 'Savings', 'India', 'IDIBINBBMDM', '0', 'I MY OWN', 0, 601003, '2023-11-23 13:57:07'),
(124, 313, '65600510f1fec', 3000, 'State Bank of India', 'Pinky Rani', '42080021558', 'wire transfer', 'Savings', 'India', 'SBIN0001735', '026009140', 'Personal requirement', 0, 301486, '2023-11-23 21:06:08'),
(125, 316, '65605b250facd', 100, 'BBVA', 'Fiona Villagra Fuentes', '012180015435173609', 'wire transfer', 'Current', 'Mexico', 'BCMRMXMMPYM', '5574675448', 'test', 0, 127340, '2023-11-24 03:13:25'),
(126, 316, '65605b978f7cd', 100, 'BBVA', 'Fiona Villagra Fuentes', '012180015435173609', 'wire transfer', 'Current', 'Mexico', 'BCMRMXMMPYM', '5574675448', 'prueba', 0, 312590, '2023-11-24 03:15:19'),
(127, 316, '65605d027d15b', 100, 'BBVA', 'Fiona Villagra Fuentes', '012180015435173609', 'wire transfer', 'Current', 'Mexico', 'BCMRMXMMPYM', '5574675448', 'Test', 0, 128983, '2023-11-24 03:21:22'),
(128, 317, '65611cb748467', 3100, 'ING', 'Agnieszka Harat', '47105010701000009759349104', 'wire transfer', 'Online Banking', 'Poland', 'INGBPLPW', '-1', '', 0, 553254, '2023-11-24 16:59:19'),
(129, 317, '65611d7e44ae0', 3100, 'ING', 'Agnieszka Harat', '47105010701000009759349104', 'wire transfer', 'Online Banking', 'Poland', 'INGBPLPW', '502262588', 'Transfer', 0, 503346, '2023-11-24 17:02:38'),
(130, 332, '65634ae2dd69d', 3000, 'Lloyds Bank', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', 'SRLGGB2L', '608371', '', 0, 313483, '2023-11-26 08:40:50'),
(131, 332, '65634b2f5aa7f', 3000, 'Lloyds Bank', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', 'SRLGGB2L', '608371', '', 0, 341866, '2023-11-26 08:42:07'),
(132, 332, '65634bd994224', 3000, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'Select Country', 'SRLGGB2L', '608371', '', 0, 212739, '2023-11-26 08:44:57'),
(133, 332, '65634bd9d94e2', 3000, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'Select Country', 'SRLGGB2L', '608371', '', 0, 126559, '2023-11-26 08:44:57'),
(134, 332, '65634bfcdb614', 3000, 'Starling Bank', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', 'SRLGGB2L', '608371', '', 0, 342499, '2023-11-26 08:45:32'),
(135, 332, '65634e87a1e6e', 3000, 'Lloyds bank', 'Ilhan barre', '40722568', 'wire transfer', 'Current', 'United Kingdom', 'LOYDGB21351', '40722568', '', 0, 132496, '2023-11-26 08:56:23'),
(136, 332, '65634e881baed', 3000, 'Lloyds bank', 'Ilhan barre', '40722568', 'wire transfer', 'Current', 'United Kingdom', 'LOYDGB21351', '40722568', '', 0, 251169, '2023-11-26 08:56:24'),
(137, 332, '656353b430630', 3000, 'STARLING BANK', 'ILHAN BARRE', '66352491', 'wire transfer', 'Current', 'United Kingdom', 'SRLGGB2L', '608371', '', 0, 207868, '2023-11-26 09:18:28'),
(138, 332, '65635d50a64dc', 3000, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Online Banking', 'United Kingdom', 'SRLGGB2L', '608371', '', 0, 343876, '2023-11-26 09:59:28'),
(139, 332, '65635e2b0882f', 3000, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', 'SRLGGB2L', '608371', '', 0, 115042, '2023-11-26 10:03:07'),
(140, 332, '65635f5c51993', 3000, 'Starling', 'Ilhan Barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', '608371', '07833988971', '', 0, 169759, '2023-11-26 10:08:12'),
(141, 332, '656361581e220', 3000, 'STARLING BANK', 'ILHAN BARRE', '66352491', 'wire transfer', 'Current', 'United Kingdom', '608371', '07833988971', '', 0, 333661, '2023-11-26 10:16:40'),
(142, 332, '656366932f9b7', 3000, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', '608371', '07833988972', '', 0, 775831, '2023-11-26 10:38:59'),
(143, 332, '65636958eb1cf', 300, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Online Banking', 'United Kingdom', '608371', '07833988972', '', 0, 138049, '2023-11-26 10:50:48'),
(144, 332, '656369805c146', 900, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', '608371', '07833988972', '', 0, 142540, '2023-11-26 10:51:28'),
(145, 332, '6563698080f62', 900, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', '608371', '07833988972', '', 0, 138289, '2023-11-26 10:51:28'),
(146, 332, '656369a7c036b', 3000, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', '608371', '07833988972', '', 0, 128534, '2023-11-26 10:52:07'),
(147, 332, '65636a7b7e3e0', 3000, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', '608371', '07833988972', 'Paymen', 0, 270876, '2023-11-26 10:55:39'),
(148, 332, '65636a808eba1', 3000, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', '608371', '07833988972', 'Payment', 0, 408595, '2023-11-26 10:55:44'),
(149, 332, '65636bf528eb4', 3000, 'Starling', 'Ilhan barre', '66352491', 'wire transfer', 'Current', 'United Kingdom', '608371', '07833988972', 'Payment', 0, 208426, '2023-11-26 11:01:57'),
(150, 337, '6563d7f9c0db2', 10, 'HSBC Bank', 'Wan Hua Chong', '70059374', 'wire transfer', 'Current', 'United Kingdom', 'HBUKGB4196D', '401264', '', 0, 179743, '2023-11-26 18:42:49'),
(151, 337, '6563d907d47f3', 10, 'HSBC Bank', 'Wan Hua Chong', '70059374', 'wire transfer', 'Current', 'United Kingdom', 'HBUKGB4196D', '401264', 'a', 0, 221406, '2023-11-26 18:47:19'),
(152, 337, '6563d98e3d130', 10, 'HSBC', 'Wan Hua Chong', '11774018', 'wire transfer', 'Current', 'United Kingdom', 'HBUKGB4196G', '401197', 'money', 0, 797319, '2023-11-26 18:49:34'),
(153, 337, '6563d99ab2d8e', 10, 'HSBC', 'Wan Hua Chong', '11774018', 'wire transfer', 'Current', 'United Kingdom', 'HBUKGB4196G', '401197', 'money', 0, 223959, '2023-11-26 18:49:46'),
(154, 337, '6563db91c0f3f', 10, 'HSBC Bank', 'Wan Hua Chong', '70059374', 'wire transfer', 'Current', 'United Kingdom', 'HBUKGB4196D', '401264', 'Food', 0, 279627, '2023-11-26 18:58:09'),
(155, 337, '6563dc2e9f649', 10, 'HSBC UK', 'Wan Hua Chong', '70059374', 'wire transfer', 'Online Banking', 'Select Country', 'HBUKGB4196D', '401264', 'food', 0, 246687, '2023-11-26 19:00:46'),
(156, 337, '6563dc3074aa3', 10, 'HSBC UK', 'Wan Hua Chong', '70059374', 'wire transfer', 'Online Banking', 'Select Country', 'HBUKGB4196D', '401264', 'food', 0, 345495, '2023-11-26 19:00:48'),
(157, 337, '65646b5b1ee24', 10, 'HSBC UK', 'Wan Hua Chong', '70059374', 'wire transfer', 'Current', 'United Kingdom', '40-12-64', '07517404374', 'food', 0, 997334, '2023-11-27 05:11:39'),
(158, 337, '656484a1d20f1', 10, 'HSBC', 'Wan Hua Chong', '70059374', 'wire transfer', 'Current', 'United Kingdom', '40-12-64', '07517404374', 'Food', 0, 315148, '2023-11-27 06:59:29'),
(159, 337, '6564d4b43985e', 3000, 'HSBC UK', 'Wan Hua Chong', '70059374', 'wire transfer', 'Current', 'United Kingdom', '40-12-64', '07517404374', '1', 0, 176228, '2023-11-27 12:41:08'),
(160, 337, '6564d8a415718', 10, 'HSBC UK', 'Wan Hua Chong', '70059374', 'domestic transfer', 'Current', NULL, NULL, NULL, 'g', 0, 164293, '2023-11-27 12:57:56'),
(161, 337, '6564d9417108f', 10, 'HSBC UK', 'Wan Hua Chong', '70059374', 'wire transfer', 'Current', 'United Kingdom', '40-12-64', '07517404374', 'a', 0, 157675, '2023-11-27 13:00:33'),
(162, 363, '656dd407e29fa', 3000, 'Barclays bank', 'Ms S Hope', '30860506', 'wire transfer', 'Current', 'United Kingdom', '205674', '30860506', 'Payment for book edit', 0, 711856, '2023-12-04 08:28:39'),
(163, 363, '656dd48736205', 3000, 'Barclays bank', 'Ms S Hope', '30860506', 'domestic transfer', 'Current', NULL, NULL, NULL, 'Book edit', 0, 332343, '2023-12-04 08:30:47'),
(164, 363, '656dd5dced08e', 3000, 'Barclays bank', 'Ms S Hope', '30860506', 'domestic transfer', 'Current', NULL, NULL, NULL, 'Book', 0, 631717, '2023-12-04 08:36:28'),
(165, 363, '656dd65b24675', 3000, 'Barclays bank', 'Ms S Hope', '30860506', 'wire transfer', 'Current', 'United Kingdom', '205674', '07486599437', 'Book', 0, 365191, '2023-12-04 08:38:35'),
(166, 363, '656ddc8573a1b', 3000, 'Barclays bank', 'Ms S Hope', '30860506', 'wire transfer', 'Current', 'United Kingdom', '205674', '07486599437', 'Book', 0, 124129, '2023-12-04 09:04:53'),
(167, 367, '656df98db50db', 3000, 'Monzo', 'Tetiana Shuliar', '15430337', 'wire transfer', 'Current', 'United Kingdom', '040004', '15430337', '', 0, 145308, '2023-12-04 11:08:45'),
(168, 367, '656dfa4625eaa', 3000, 'Monzo', 'Tetiana Shuliar', '15430337', 'domestic transfer', 'Current', NULL, NULL, NULL, '', 0, 336023, '2023-12-04 11:11:50'),
(169, 367, '656dfb0ec9630', 3000, 'Monzo', 'Tetiana Shuliar', '15430337', 'domestic transfer', 'Current', NULL, NULL, NULL, 'book', 0, 234764, '2023-12-04 11:15:10'),
(170, 367, '656dfc1cbe874', 1000, 'Monzo', 'Tetiana Shuliar', '15430337', 'domestic transfer', 'Current', NULL, NULL, NULL, 'book', 0, 295025, '2023-12-04 11:19:40'),
(171, 367, '656dfce150ef0', 1500, 'Monzo', 'Tetiana Shuliar', '15430337', 'domestic transfer', 'Current', NULL, NULL, NULL, 'book', 0, 339965, '2023-12-04 11:22:57'),
(172, 367, '656dfe8223cbb', 3000, 'Monzo', 'Tetiana Shuliar', '15430337', 'wire transfer', 'Current', 'United Kingdom', 'MONZGB2L', '040004', 'books', 0, 264457, '2023-12-04 11:29:54'),
(173, 367, '656e0351a048a', 1000, 'Monzo', 'Tetiana Shuliar', '15430337', 'domestic transfer', 'Current', NULL, NULL, NULL, 'books', 0, 165482, '2023-12-04 11:50:25'),
(174, 367, '656e03ac4fbad', 1000, 'Monzo', 'Tetiana Shuliar ', '15430337', 'domestic transfer', 'Current', NULL, NULL, NULL, 'books', 0, 324117, '2023-12-04 11:51:56'),
(175, 367, '656e3f0229cbd', 3000, 'Monzo', 'Tetiana Shuliar', '15430337', 'wire transfer', 'Current', 'United Kingdom', '040004', '07877892718', 'book', 0, 254918, '2023-12-04 16:05:06'),
(176, 383, '6570e7aac50f0', 3100, 'Natwest', 'Katarzyna Victoria Podstepska', '32416601', 'wire transfer', 'Current', 'United Kingdom', '60-19-39', '07858521622', 'Work', 0, 126347, '2023-12-06 16:29:14'),
(177, 383, '6570f8ba23075', 3100, 'natwest', 'Kasia podstepska', '32416601', 'wire transfer', 'Current', 'United Kingdom', '60-19-39', '07858521622', 'work', 0, 735235, '2023-12-06 17:42:02'),
(178, 383, '6570fba770c06', 3450, 'natwest', 'kasia podstepska', '32416601', 'wire transfer', 'Current', 'United Kingdom', '60-19-39', '07858521622', 'work', 0, 237844, '2023-12-06 17:54:31'),
(179, 383, '6570fc67cfd8f', 3450, 'Natwest', 'katarzyna victoria podstepska', '32416601', 'wire transfer', 'Current', 'United Kingdom', '60-19-39', '07858521622', '', 0, 215107, '2023-12-06 17:57:43'),
(180, 384, '6570fd060ca73', 3000, 'Lloyds', 'Dave', '62728276', 'wire transfer', 'Savings', 'Albania', '637377', '8293039388', 'Paymet', 0, 363427, '2023-12-06 18:00:22'),
(181, 384, '6570fd28b4602', 3000, 'Lloyds', 'Dave', '62728276', 'wire transfer', 'Savings', 'Albania', '637377', '8293039388', 'Paymet', 0, 202240, '2023-12-06 18:00:56'),
(182, 383, '6571a694b6706', 3450, 'Natwest', 'katarzyna podstepska', '32416601', 'wire transfer', 'Current', 'United Kingdom', '60-19-39', '07858521622', 'work', 0, 111394, '2023-12-07 06:03:48'),
(183, 383, '6571b48fd8c43', 3450, 'Natwest', 'Katarzyna Podstepska', '32416601', 'wire transfer', 'Current', 'United Kingdom', '60-19-39', '07858521622', '', 0, 726797, '2023-12-07 07:03:27'),
(184, 387, '65730892c372e', 50, 'gsgfdsg', '1234', '323', 'domestic transfer', 'Savings', NULL, NULL, NULL, '3232', 0, 363249, '2023-12-08 07:14:10'),
(185, 387, '65730c6523f80', 50, '3232', '232', '4343', 'domestic transfer', 'Current', NULL, NULL, NULL, '32323', 0, 935731, '2023-12-08 07:30:29'),
(186, 387, '657310d68a3d0', 50, 'gsgfdsg', '344', '4578', 'domestic transfer', 'Savings', NULL, NULL, NULL, '889', 0, 257488, '2023-12-08 07:49:26'),
(187, 387, '65731175c8c53', 50, 'gsgfdsg', '344', '434343', 'domestic transfer', 'Current', NULL, NULL, NULL, '434343', 0, 268855, '2023-12-08 07:52:05'),
(188, 408, '657ee5f5980fc', 50, 'Demo ', 'Demo bank', '1234564646', 'domestic transfer', 'Non Resident', NULL, NULL, NULL, 'Hello ', 0, 123089, '2023-12-17 07:13:41'),
(189, 408, '657ee6cd7bf50', 500, 'Demo', 'Demo', '12133131', 'wire transfer', 'Non Resident', 'Andorra', '1324', '1213', 'Abc', 0, 159854, '2023-12-17 07:17:17'),
(190, 409, '657ef0c98b9d4', 50, 'Demo bank ', 'Demo', '2121313', 'domestic transfer', 'Non Resident', NULL, NULL, NULL, 'Demo testing', 0, 413815, '2023-12-17 07:59:53'),
(191, 409, '657ef15baf6b9', 7000, 'Demo bank', 'Demo', '1226565', 'wire transfer', 'Fixed Deposit', 'Angola', '35454', '25858', 'Demo', 0, 111227, '2023-12-17 08:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `refrence_id` text NOT NULL,
  `amount` double NOT NULL,
  `trans_type` int(15) NOT NULL,
  `sender_name` text NOT NULL,
  `description` text NOT NULL,
  `trans_status` int(11) NOT NULL DEFAULT 0,
  `created_at` text NOT NULL,
  `time_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`trans_id`, `user_id`, `refrence_id`, `amount`, `trans_type`, `sender_name`, `description`, `trans_status`, `created_at`, `time_created`) VALUES
(51, 109, '653fc9e8322dc', 2000, 1, 'Swift media ', 'Translation project ', 1, '2023-10-30', '16:21'),
(52, 106, '653fcb7e06200', 2000, 1, 'Free ', 'Translate \r\n.', 1, '2023-10-30', '16:27'),
(53, 110, '6540087f51963', 2000, 1, 'Egypt ', 'Freelancer', 1, '2023-10-30', '00:47'),
(54, 112, '654027b7ee4c3', 2000, 1, 'Egypt ', 'Freelancer', 1, '2023-10-30', '15:01'),
(55, 113, '6540a97c1be97', 2000, 1, 'Philippine ', 'Freelancer', 1, '2023-10-31', '00:14'),
(56, 116, '6540c394788d4', 1200, 1, 'India ', 'Freelancer', 1, '2023-10-31', '02:05'),
(57, 119, '6540cb9dd8915', 2000, 1, 'India ', 'Freelancer', 1, '2023-10-31', '02:40'),
(58, 121, '6540faeecf33f', 3000, 1, 'Palestine ', 'Freelancer', 1, '2023-10-31', '06:02'),
(59, 124, '654134e3d4f3c', 2000, 1, 'Jordan ', 'Freelancer', 1, '2023-10-31', '10:09'),
(60, 123, '654146d479bdb', 2000, 1, 'Jordan ', 'Freelancer', 1, '2023-10-31', '11:26'),
(61, 126, '654156810bdf5', 2000, 1, 'Jordan ', 'Freelancer', 1, '2023-10-31', '12:33'),
(62, 134, '654172c24a6da', 2000, 1, 'Sudan ', 'Freelancer', 1, '2023-10-31', '14:33'),
(63, 133, '654174bec2c96', 2000, 1, 'Sundan ', 'Freelancer', 1, '2023-10-31', '14:42'),
(64, 133, '654174beeab71', 2000, 1, 'Sundan ', 'Freelancer', 1, '2023-10-31', '14:42'),
(65, 133, '654175fce3d18', 2000, 1, 'Sundan ', 'Freelancer', 1, '2023-10-31', '14:42'),
(66, 131, '65417a640bd90', 2000, 1, 'Sundan ', 'Freelancer ', 1, '2023-10-31', '15:06'),
(67, 135, '6542867732e40', 3000, 1, 'Brazil ', 'Freelancer ', 1, '2023-11-01', '10:10'),
(68, 137, '6542877320cac', 3000, 1, 'Brazil ', 'Freelancer', 1, '2023-11-01', '10:14'),
(69, 139, '654357eed7a3b', 3000, 1, 'Jordan ', 'Freelancer', 1, '2023-11-02', '01:03'),
(70, 140, '6543628d70deb', 3000, 1, 'Egypt ', 'Freelancer', 1, '2023-11-02', '01:49'),
(71, 0, '65436920a9bba', 3000, 1, 'Egypt ', 'Freelancer', 1, '2023-11-02', '02:18'),
(72, 140, '6543693ea5c9c', 3000, 1, 'Egypt ', 'Freelancer', 1, '2023-11-02', '02:17'),
(73, 140, '65436940563c2', 3000, 1, 'Egypt ', 'Freelancer', 1, '2023-11-02', '02:17'),
(74, 144, '6543b1c2413d4', 2000, 1, 'Egypt ', 'Freelancer', 1, '2023-11-02', '07:26'),
(75, 149, '6544c65c7320d', 3000, 1, 'Egypt ', 'Freelancer.', 1, '2023-11-03', '03:07'),
(76, 148, '6544c6c422db1', 3000, 1, 'Indonesia ', 'Freelancer', 1, '2023-11-03', '03:09'),
(77, 161, '6547b032aba90', 3000, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-05', '16:09'),
(78, 163, '6547b5b351e95', 3000, 1, 'Freelancer ', 'Translation ', 1, '2023-11-05', '16:33'),
(79, 164, '6547f0472c8ef', 3100, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-05', '20:43'),
(80, 164, '6547f0476e602', 3100, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-05', '20:43'),
(81, 165, '6547f0c13f452', 3000, 1, 'Guarantee prime ', 'Guarantee prime ', 1, '2023-11-05', '20:45'),
(82, 169, '6547fa4ce5bde', 3100, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-05', '21:25'),
(83, 172, '6547fe5287101', 3000, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-05', '21:42'),
(84, 169, '6547fff361f81', 3100, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-05', '21:49'),
(85, 173, '654933936b8bd', 3100, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-06', '19:42'),
(86, 191, '654ca735b5953', 1000, 1, 'fdafda', 'fdafd', 1, '2023-11-09', '10:34'),
(87, 203, '6550c2e1bfc0b', 3000, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-12', '13:19'),
(88, 205, '655128020af65', 3100, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-12', '20:31'),
(89, 207, '65516382c2a2c', 3100, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-13', '00:45'),
(90, 224, '65565c306d77f', 3100, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-16', '19:15'),
(91, 0, '6556804dcf5b6', 3000, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-16', '21:49'),
(92, 229, '6556809530b16', 31000, 1, 'Guarantee prime ', 'Payment ', 1, '2023-11-16', '21:50'),
(93, 230, '65570f6d2108a', 1000, 1, 'fdsfdsa', 'fdsafa', 1, '2023-11-17', '07:00'),
(94, 248, '65572c38964d4', 1000, 1, 'eere', 'erere', 1, '2023-11-17', '10:02'),
(95, 287, '655daf9abf710', 4000, 1, 'Pakistan ', 'Salary ', 3, '2023-11-22', '02:36'),
(96, 296, '655ddb1ae0a36', 4000, 1, 'Share through company', 'Salary ', 0, '2023-11-22', '05:42'),
(97, 0, '655de2bbdc1d8', 4000, 1, 'MediaMath ', 'Salary ', 0, '2023-11-22', '06:14'),
(98, 290, '655de410292a3', 4000, 1, 'Share though company', 'Salary ', 0, '2023-11-22', '06:20'),
(99, 286, '655de4adc012f', 4000, 1, 'MediaMath ', 'Salary ', 0, '2023-11-22', '06:23'),
(100, 298, '655de8dd29889', 4000, 1, 'Share though company', 'Salary ', 0, '2023-11-22', '06:40'),
(102, 0, '655df8cdce783', 4000, 1, 'Share though company', 'Salary ', 0, '2023-11-22', '07:48'),
(103, 0, '655df8dcab2c9', 4000, 1, 'Share though company', 'Salary ', 0, '2023-11-22', '07:48'),
(104, 0, '655df8e9a586a', 4000, 1, 'Share though company', 'Salary ', 0, '2023-11-22', '07:48'),
(105, 2147483647, '655e11b4b52b1', 4000, 1, 'Share though company', 'Salary ', 0, '2023-11-22', '09:35'),
(106, 294, '655e15e893dc1', 4000, 1, 'Share though company', 'Share though company', 0, '2023-11-22', '15:53'),
(107, 301, '655e227dde0f7', 31000, 1, 'Guarantee prime ', 'Payment ', 0, '2023-11-22', '16:47'),
(108, 303, '655ecf6274219', 2566, 1, 'MediaMath ', 'Salary ', 0, '2023-11-23', '05:04'),
(109, 2147483647, '655ed2bd9320e', 2566, 1, 'MediaMath ', 'Salary ', 0, '2023-11-23', '23:18'),
(110, 303, '655ed32f431f2', 2566, 1, 'MediaMath ', 'Salary ', 0, '2023-11-22', '23:20'),
(111, 302, '655ed3528188d', 2566, 1, 'MediaMath ', 'Salary ', 0, '2023-11-22', '23:22'),
(112, 302, '655ed73714b29', 2566, 1, 'MediaMath ', 'Salary ', 0, '2023-11-22', '23:38'),
(113, 302, '655edfe6f28fa', 2566, 1, 'MediaMath', 'Salary ', 0, '2023-11-23', '06:15'),
(114, 306, '655f8f82d5c67', 2600, 1, 'MediaMath ', 'Salary ', 0, '2023-11-23', '12:44'),
(115, 306, '655fa36dedb1e', 2600, 1, 'MediaMath ', 'Salary ', 0, '2023-11-23', '12:44'),
(116, 313, '65600008d32c4', 3000, 1, 'MediaMath ', 'Salary ', 0, '2023-11-23', '20:44'),
(117, 316, '6560578fbe8a0', 3100, 1, 'Guarantee prime ', 'Payment ', 0, '2023-11-24', '08:58'),
(118, 317, '65611ad72cd2c', 3100, 1, 'Guarantee prime ', 'Payment ', 0, '2023-11-24', '22:51'),
(119, 332, '65634778eb8c7', 3000, 1, 'Guarantee prime ', 'Payment ', 0, '2023-11-26', '14:26'),
(120, 337, '6563d5363f9be', 3000, 1, 'Venture wealth ', 'Payment ', 0, '2023-11-27', '00:30'),
(121, 363, '656dd2c5727aa', 3000, 1, 'Guarantee prime ', 'Payment ', 0, '2023-12-04', '14:23'),
(122, 367, '656df8a69b1a8', 3000, 1, 'Venture ', 'Payment ', 0, '2023-12-04', '17:04'),
(123, 383, '6570e5aa18390', 3100, 1, 'Venture wealth ', 'Payment ', 0, '2023-12-06', '22:20'),
(124, 383, '6570fab4a7bb3', 350, 1, 'Venture', 'Payment', 0, '2023-12-06', '23:50'),
(125, 384, '6570fcc231111', 5000, 1, 'Vehture', 'Paymrjt', 0, '2023-12-06', '23:59'),
(126, 387, '657308801de45', 500, 1, 'assdfa', 'fdafa', 1, '2023-12-08', '13:13'),
(127, 408, '657ee53ce3ea6', 30000, 1, 'admin', 'fdasfdas', 1, '2023-12-17', '13:09'),
(128, 409, '657ef0020b71d', 50000, 1, 'Admin', 'admin', 1, '2023-12-17', '13:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `acct_username` varchar(200) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `acct_no` varchar(50) DEFAULT NULL,
  `billing_code` int(11) NOT NULL DEFAULT 0 COMMENT '0=deactive,1=active',
  `transfer` int(11) NOT NULL DEFAULT 1 COMMENT '0=deactive,1=active	',
  `acct_balance` double DEFAULT 0,
  `avail_balance` double DEFAULT 0,
  `loan_balance` double DEFAULT 0,
  `acct_limit` double DEFAULT NULL,
  `limit_remain` double DEFAULT NULL,
  `acct_type` varchar(200) DEFAULT NULL,
  `acct_gender` text DEFAULT NULL,
  `marital_status` text DEFAULT NULL,
  `acct_currency` varchar(50) DEFAULT NULL,
  `acct_status` varchar(50) DEFAULT 'active' COMMENT 'active, hold',
  `acct_email` varchar(200) DEFAULT NULL,
  `acct_phone` varchar(20) DEFAULT NULL,
  `acct_occupation` text DEFAULT NULL,
  `acct_dob` text DEFAULT NULL,
  `ssn` varchar(200) DEFAULT NULL,
  `frontID` text DEFAULT NULL,
  `backID` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `acct_password` text DEFAULT NULL,
  `acct_pin` varchar(4) DEFAULT NULL,
  `acct_otp` int(11) DEFAULT NULL,
  `acct_cot` varchar(15) DEFAULT NULL,
  `acct_imf` varchar(15) DEFAULT NULL,
  `acct_tax` varchar(15) DEFAULT NULL,
  `mgr_name` text DEFAULT NULL,
  `mgr_no` text DEFAULT NULL,
  `mgr_email` text DEFAULT NULL,
  `mgr_id` text DEFAULT NULL,
  `mgr_image` text DEFAULT NULL,
  `acct_address` text DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `acct_username`, `firstname`, `lastname`, `image`, `acct_no`, `billing_code`, `transfer`, `acct_balance`, `avail_balance`, `loan_balance`, `acct_limit`, `limit_remain`, `acct_type`, `acct_gender`, `marital_status`, `acct_currency`, `acct_status`, `acct_email`, `acct_phone`, `acct_occupation`, `acct_dob`, `ssn`, `frontID`, `backID`, `country`, `state`, `acct_password`, `acct_pin`, `acct_otp`, `acct_cot`, `acct_imf`, `acct_tax`, `mgr_name`, `mgr_no`, `mgr_email`, `mgr_id`, `mgr_image`, `acct_address`, `createdAt`) VALUES
(151, NULL, 'Vlayna', 'Ehejj', NULL, '9909664273', 0, 1, NULL, 0, 0, 0, 0, 'Savings', '', '', 'GBP', 'active', 'yowahih502@srizer.com', '', '', '', NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 09:56:03'),
(152, NULL, 'Vlayna', 'Ehejj', NULL, '9909255694', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'yowahih502@srizer.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 09:56:19'),
(153, NULL, 'Vlayna', 'Ywys', NULL, '9909212691', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'CAD', 'active', 'yowahih502@srizer.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt1', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 09:57:33'),
(154, NULL, 'Vlayna', 'huuy', NULL, '9909254899', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'CAD', 'active', 'sefop70821@srizer.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 10:03:13'),
(155, NULL, 'Vlayna', 'huuy', NULL, '9909289476', 1, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'CAD', 'active', 'sefop70821@srizer.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 10:03:21'),
(161, NULL, 'Vlayna', 'Dave', NULL, '9909104230', 1, 1, 3000, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'CAD', 'active', 'vapofo1276@srizer.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', 233578, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 15:06:47'),
(164, NULL, 'Rebecca', 'Ouedraogo', NULL, '9909851950', 0, 1, 3100, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Inesillustration@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Skipper56lilly09', '1234', 329676, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 19:34:37'),
(165, NULL, 'Estefania', 'Acosta', NULL, '9909352016', 1, 0, 3000, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'fanni.acostac@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Titina.19', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 19:34:46'),
(166, NULL, 'Sharon ', 'Mok', NULL, '9909163338', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'mokchicheng@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mokchicheng', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 20:01:22'),
(167, NULL, 'Sharon ', 'Mok', NULL, '9909932965', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'mokchicheng@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mokchicheng', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 20:03:52'),
(168, NULL, 'Sharon ', 'Mok', NULL, '9909909763', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'mokchicheng@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mokchicheng', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 20:07:40'),
(169, NULL, 'Kazuma', 'Yuasa', NULL, '9909195154', 1, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'ykazuma0604@icloud.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kazuma0604', '1234', 290754, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 20:08:37'),
(170, NULL, 'Chi Cheng ', 'Mok', NULL, '9909578315', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'mokchicheng@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mokchicheng2005', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 20:14:12'),
(171, NULL, 'Sharon ', 'Mok', NULL, '9909284639', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'mokchicheng@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mokchicheng', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 20:32:32'),
(172, NULL, 'Sonia', 'Dave', NULL, '9909111472', 0, 1, 3000, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'CAD', 'active', 'yodifok332@tactar.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', 353466, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 20:40:00'),
(173, NULL, 'Sharon ', 'Mok', NULL, '9909118338', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'mokchicheng@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mokchicheng', '1234', 697701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 21:27:44'),
(174, NULL, 'genesis', 'Ocanto', NULL, '9909913368', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'andreinaocantoc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Acc2404*', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 22:07:57'),
(175, NULL, 'genesis', 'Ocanto', NULL, '9909180377', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'andreinaocantoc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Acc2404*', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 22:09:29'),
(176, NULL, 'Genesis ', 'Ocanto ', NULL, '9909167453', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'andreinaocantoc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Acc2404*', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 22:15:39'),
(177, NULL, '', '', 'IMG-20231008-WA0026.jpg', '9909182954', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'Select Currency Type', 'active', 'andreinaocantoc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Acc2404*', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 22:16:36'),
(178, NULL, 'Genesis', 'Ocanto', 'Genesisa9c91354-86bc-4e4b-834c-ac2f66bcdf91.jpg', '9909168051', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'andreinaocantoc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Acc2404*', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-05 22:18:20'),
(179, NULL, 'Sharon ', 'Mok', NULL, '9909258161', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'mokchicheng@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mokchicheng', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-06 10:54:20'),
(180, NULL, 'Laura', 'Garcia ', NULL, '9909284296', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'workingclasspride@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACAB69gucci30', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-07 07:07:07'),
(181, NULL, 'CECILIA', 'ECHAVARRIA', NULL, '9909268016', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'liscleharts@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ianj1830', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-07 18:30:20'),
(182, NULL, 'Ayesha ', 'Waseem ', NULL, '9909311456', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'Select Currency Type', 'active', 'ayeshawaseem0900@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aiman0900', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-07 19:47:49'),
(183, NULL, 'Ayesha ', 'Waseem ', NULL, '9909638007', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'Select Currency Type', 'active', 'ayeshawaseem0900@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-07 19:49:09'),
(184, NULL, 'Rohaib', 'Faisal', NULL, '9909152862', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'faisalrohaibe4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hkprimexx00@/', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-07 20:47:03'),
(185, NULL, 'Rohaib', 'Faisal', NULL, '9909268033', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'faisalrohaibe4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hkprimexx00@/', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-07 20:47:38'),
(186, NULL, 'Rohaib', 'Faisal', NULL, '9909194524', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'faisalrohaibe4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hkprimexx00@/', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-07 20:48:21'),
(187, NULL, 'Bhoomi', 'Basavaraju', NULL, '9909337998', 1, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'missbhoomi.basavaraju@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bhoomi27', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-07 21:04:30'),
(188, NULL, 'Jaydaa', 'Dikko', NULL, '9909341056', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'jaydaa.dikko@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Losingmorethanican234', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08 18:34:04'),
(189, NULL, 'Randa', 'Jneid', NULL, '9909104303', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'randajneid91@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MRsoulmate224', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08 18:51:20'),
(190, NULL, 'Stratulat ', 'Gabriela ', NULL, '9909206360', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'GBP', 'active', 'Gabrielastratulat537@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maria.1985', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08 22:51:22'),
(192, NULL, 'Rosalina', 'Quinto', NULL, '9909126125', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'sallyquinto53@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BabyNara12!@', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-09 16:30:57'),
(193, NULL, 'Rosalina', 'Quinto', NULL, '9909198014', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'sallyquinto53@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BabyNara12!@', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-09 16:35:17'),
(194, NULL, 'Zaria', 'Hayes', NULL, '9909361087', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'nevahussain06@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'iliketopoop2233', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-09 21:13:45'),
(195, NULL, 'Zaria', 'Hayes', NULL, '9909185666', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'nevahussain06@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'iliketopoop2233', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-09 21:16:14'),
(196, NULL, 'Mitchell', 'Albutt', NULL, '9909230685', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'm1tchellalbutt1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TumblingD1CE', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-10 10:48:46'),
(197, NULL, 'Han ', 'Lin', NULL, '9909184981', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'zoe890403@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zoe890403', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-10 15:55:48'),
(198, NULL, 'Ishita', 'Jain', NULL, '9909258529', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'ishita01jain@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xuBtun-cajmuk-6bunby', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-10 16:53:21'),
(199, NULL, 'Jordan', 'Convery', NULL, '9909364345', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'JordanConvery1@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zurawaski7*', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-10 17:35:13'),
(200, NULL, 'Jimmy ', 'Mahoney ', NULL, '9909208823', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Cmahoney402@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babyjimmy09', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-10 18:21:57'),
(201, NULL, 'Joe', 'Ortiz', NULL, '9909313107', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'j95ortiz@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sevillano7', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-11 15:07:48'),
(202, NULL, 'Hwhw', 'Eheheheh', NULL, '9909252779', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'Bshsjsjsjj@aol.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-12 11:44:02'),
(203, NULL, 'Imad', 'Rahmani ', NULL, '9909410689', 1, 0, 2250, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Imadr470@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'imaddz1921', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-12 11:52:08'),
(204, NULL, 'Muqaddas', 'Amin', NULL, '9909911166', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'mmuqaddasamin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sO9jO9', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-12 17:31:39'),
(205, NULL, 'Kotomi', 'Shimizu', NULL, '9909489075', 1, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'shimikoto1210@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kotomi1210', '1234', 239381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-12 18:49:00'),
(206, NULL, 'Ajay', 'Ganesan', NULL, '9909132287', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'Euro', 'active', 'ajaykannan532000@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ajay532000@', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-12 20:57:45'),
(207, NULL, 'Arooba', 'Amin', NULL, '9909719875', 1, 1, 3100, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'arooba.amin1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arooba1Allah!', '1234', 303582, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-12 23:09:25'),
(208, NULL, 'Boulam', 'Sidali', NULL, '9909204994', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Iukski.203@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sifou', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-13 00:09:27'),
(209, NULL, 'Enkeinta ', 'Tsarchosi ', NULL, '9909181488', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Enkeinta@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joeli2015', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 09:55:19'),
(210, NULL, 'Enkeinta ', 'Tsarchosi ', NULL, '9909211952', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Enkeinta@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joeli2015', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 10:04:28'),
(211, NULL, 'Vlayna', 'Ghhhh', NULL, '9909236163', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'komixo6747@tbeebk.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 10:16:29'),
(212, NULL, 'Vlayna', 'Later ', NULL, '9909504688', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'komixo6747@tbeebk.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 10:31:39'),
(213, NULL, 'Enkeinta ', 'Tsarchosi ', NULL, '9909100810', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Enkeinta@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joeli2015', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 10:41:16'),
(214, NULL, 'Aki', 'Godswill', NULL, '9909311749', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'BZD', 'active', 'akigodswill2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1059', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 11:11:43'),
(215, NULL, 'brqnks', 'branks', NULL, '9909107179', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'BEF', 'active', 'branksgrant@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1059', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 11:17:08'),
(216, NULL, 'Enora ', 'Delample', NULL, '9909124934', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'Euro', 'active', 'enoradelample@hotmail.fr ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ed270201', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 14:03:16'),
(217, NULL, 'Behzad', 'Dehghani', NULL, '9909697829', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'GBP', 'active', 'Dehghanibehzad@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Behzad1362', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 14:24:28'),
(218, NULL, 'Fizza', 'Mumtaz', NULL, '9909105993', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'fizaniaz01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shaza132400#', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 15:10:00'),
(219, NULL, 'Enkeinta ', 'Enkeinta Tsarchosi', NULL, '9909324580', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'jafomes356@tbeebk.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 16:12:06'),
(220, NULL, 'Simone', 'Watt', NULL, '9909225915', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'simoneandersonwatt@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5t1yorGeorge', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 19:58:51'),
(221, NULL, 'Lorraine', 'Naz', NULL, '9909286690', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'Lorrainepaguionaz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lorrainenaz@1994', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 15:31:57'),
(222, NULL, 'Lorraine', 'Naz', NULL, '9909119267', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'USD', 'active', 'Lorrainepaguionaz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lorrainenaz@1994', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 15:36:32'),
(223, NULL, 'Lorraine', 'Naz', NULL, '9909122274', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'Lorrainepaguionaz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lorrainenaz@0319', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 15:42:35'),
(224, NULL, 'Amanda', 'Bolingbroke', NULL, '9909164465', 0, 1, 3100, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'clareuss123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fantasy33!', '1234', 860432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 16:47:57'),
(225, NULL, 'Rebecca', 'Ouedraogo', NULL, '9909237634', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'inesillustration@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Skipper56lilly09', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 17:31:18'),
(226, NULL, 'LISBETH', 'GUARUCANO', NULL, '9909352190', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'guarucanolis@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moneda01.+', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 19:54:56'),
(227, NULL, 'LISBETH', 'GUARUCANO', NULL, '9909722853', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'guarucanolis@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moneda01.+', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 19:59:39'),
(228, NULL, 'Ezoza', 'Nematullaeva', NULL, '9909249044', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'ezoza.teen@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1334567e', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 20:13:42'),
(229, NULL, 'Davif', 'Tari', NULL, '9909250567', 0, 1, 31000, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'giracoy817@uvasx.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tttttt', '1234', 756038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 20:41:13'),
(249, 'silvieveisova@gmail.com', 'SILVIE', 'VEISOVA', '1700213744Snapchat-1144043819.jpg', '9909112836', 0, 1, 0, 0, 0, NULL, NULL, 'Current', 'male', NULL, 'GBP', 'active', 'silvieveisova@gmail.com', '07747599455', 'Police custody officer ', '1993-08-11', 'SP885618C', '170021374417002136928748795851490956064281.jpg', '17002137441700213724132725086940081810998.jpg', 'United Kingdom', 'Scotland', '$2y$10$TnDv6xj7KRfKFVCPBCc7f.FjS.UsDFaczmLGXYjCl3rZaweFa68C.', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '135 HAWK BRAE  Livingston Scotland EH54 6GJ', '2023-11-17 09:35:44'),
(250, 'Agustinfernan27', 'Agustin', 'Fernandez', '1700225265IMG-20230521-WA0047.jpg', '9909308193', 0, 1, 0, 0, 0, NULL, NULL, 'Current', 'male', NULL, 'USD', 'active', 'Agustinfernan27@gmail.com', '3834791128', 'Translator', '2002-06-27', '44117240', '17002252651700225160432276883310071061548.jpg', '170022526517002251807521549581616389381591.jpg', 'Argentina', 'Cordoba', '$2y$10$HBE1RvXKeMeEMN8lxgDYwu2VE7Rm8V6puC4un8lzMud8aXKutgEg2', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Derqui 8 E Nueva Cordoba Cordoba 5000', '2023-11-17 12:47:45'),
(252, NULL, 'Amir', 'Arasi', NULL, '9909494701', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'Euro', 'active', 'lvlal2alvl@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123Amir@', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 14:16:18'),
(253, NULL, 'Ashma ', 'Hossain', NULL, '9909183836', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'ashma.hossain24@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ash@ssain24', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 16:35:52'),
(254, NULL, 'Shima', 'Memariazar', NULL, '9909170817', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Smemariazar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shima20031640', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 17:07:47'),
(255, NULL, 'SILVIE', 'VEISOVA', NULL, '9909146270', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'silvieveisova@email.cz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dasticek44', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 17:50:21'),
(256, NULL, 'Kamal', 'Ikram', NULL, '9909232208', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'USD', 'active', 'kamalikram182@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KAMikram', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 18:15:50'),
(257, NULL, 'Agustin', 'Fernandez', NULL, '9909232795', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Agustinfernan27@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nano2002', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 18:30:33'),
(258, NULL, 'Paul', 'Carter', NULL, '9909152848', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'pmcart3r1963@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p09m10c63-V3ntur3W3alth', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 18:35:25'),
(259, NULL, 'Hardeep', 'Kaur', NULL, '9909332676', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'Hardeepmeelu1811@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'meelu1811', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 21:06:32'),
(260, NULL, 'Hardeep', 'Kaur', NULL, '9909336181', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'Hardeepmeelu1811@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'meelu1811', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 21:09:18'),
(261, NULL, 'Hardeep', 'Kaur', NULL, '9909447292', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'Hardeepmeelu1811@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shiva1921', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 21:11:35'),
(262, NULL, 'Ayaz', 'Patel', NULL, '9909231924', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'Ayazp171@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dijfak-8qikJo-sozkyt', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-18 16:41:25'),
(263, NULL, 'Ayaz', 'Patel', NULL, '9909140926', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'Ayazp171@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dijfak-8qikJo-sozkyt', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-18 16:41:31'),
(264, NULL, 'Adrien', 'FALCONNET', NULL, '9909498954', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'digital365staking@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Beta2023__::', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-18 18:13:12'),
(265, NULL, 'Muhammad afaq', 'Ali', NULL, '9909149505', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'shahidanasreen399@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AFAQALI123', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-19 14:16:50'),
(266, NULL, 'Aqsa', 'Rahat', NULL, '9909196333', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'aqsarahat01.ibb.pu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aqsarahat0786', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-19 15:14:41'),
(267, 'Sofy', 'SofÃ­a ', 'Trejo', '1700465681IMG_20230621_094122_020.jpg', '9909263844', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', 'female', NULL, 'USD', 'hold', 'Sofytrejo1@gmail.com', '0984556346', 'Tutor espaÃ±ol', '1988-03-08', '1723712731', '1700465681Screenshot_20231120_023345.jpg', '1700465681Screenshot_20231120_023345.jpg', 'Ecuador', 'Pichincha', '$2y$10$xXnoO7i3onHTSkn92nciNu83loqC/dHro7Ej3Vw0hrg7XWkh/RFjW', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Llora Ã±an y tamia  Cjto. Araucarias de quitumbe casa 40 Quito Pichincha 170146', '2023-11-20 02:34:41'),
(268, 'Marwa', 'Marwa', 'Hamadelneel', '1700480758IMG_20231120_133951.jpg', '9909882312', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', 'female', NULL, 'USD', 'hold', 'marowa9@gmail.com', '00249122943293', 'free businees ', '1974-03-25', '11405711166', '1700480758IMG_Ù¢Ù Ù¢Ù£Ù¡Ù¡Ù Ù©_Ù¡Ù¥Ù Ù¡Ù Ù¡.jpg', '1700480758IMG_Ù¢Ù Ù¢Ù£Ù¡Ù¡Ù Ù©_Ù¡Ù¥Ù Ù¡Ù Ù¡.jpg', 'Sudan', 'Ø§Ù„Ø®Ø±Ø·ÙˆÙ… ', '$2y$10$VKZOv4ZexqpJc6dDpDI0tOwqQ9wDMsPTS4VKYHpWyuhgY9hkul11O', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ø´Ø§Ø±Ø¹ Ø´Ø±Ù‚ Ø§Ù„Ù†ÙŠÙ„ Ø´Ø±Ù‚ Ø§Ù„Ù†ÙŠÙ„  Ø§Ù„Ø®Ø±Ø·ÙˆÙ… Ø§Ù„Ø®Ø±Ø·ÙˆÙ…  Ù¡Ù¡Ù¡Ù¡Ù¡', '2023-11-20 06:45:58'),
(269, 'Cecijehedu ', 'Carmen Cecilia ', 'Santana Jaimes ', '1700485603IMG_20230611_091923_45.jpg', '9909224994', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', 'female', NULL, 'USD', 'hold', 'santana1972c@gmail.com', '5804265134765', 'Licenciada en educaciÃ³n inicial ', '1972-04-08', 'D14130021', '1700485603IMG_20230928_194456_131.jpg', '1700485603IMG_20230928_194504_091.jpg', 'Venezuela', 'Aragua ', '$2y$10$QhbWDVWpWwS7P1TT1CzFRec47U4PqPWi87EQIYrYR/tBSRvbbbFOy', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Av 28 # 30 Unidad  La victoria  Aragua  2121', '2023-11-20 08:06:43'),
(270, 'CaroleL', 'Carole', 'LainÃ©', '1700503123Snapchat-2130736337.jpg', '9909120803', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', 'female', NULL, 'USD', 'active', 'lolotte56000@gmail.com', '33683675242', 'Translater ', '1970-07-30', '270075612118780', '1700503123Passport.jpg', '1700503123Passport.jpg', 'France', 'France', '$2y$10$xvZuLMxGfyzwMVbzx0q9Q.KvUXOAdynQB/tyUcQ9qoS0/ynRoxaXC', '1234', 257677, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5 AllÃ©e Joachim du Bellay 5 allÃ©e joachim du bellay  Ploeren France 56880', '2023-11-20 12:58:43'),
(271, 'Mawuii', 'Galvez', 'Mar', '1700505733IMG-20231120-WA0328.jpg', '9909174390', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', 'female', NULL, 'USD', 'active', 'M-galvezi@hotmail.com', '601508029', 'Administrativo ', '2004-06-17', '141060283021', '1700505733CamScanner 12-07-2023 20.37.pdf', '1700505733CamScanner 12-07-2023 20.37.pdf', 'Spain', 'Cordoba', '$2y$10$UXequ4cCQXKDEYyc4fIgVe/nTEZp591LD3wzsM.MA0nzoPlKR1scu', '1234', 273619, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Calle alfonso xii 4 Cordoba  Cordoba 14002', '2023-11-20 13:42:13'),
(272, 'Kainat', 'Kainat', 'Alam', '1700511096IMG_20231111_142647.jpg', '9909299824', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', 'female', NULL, 'USD', 'active', 'kainatalam509@gmail.com', '07984162188', 'Translator', '1998-12-12', 'D7046964', '170051109617005109908078845533473420282056.jpg', '170051109617005110058816157587300611915362.jpg', 'United Kingdom', 'United kingdom', '$2y$10$IS6dj15igaqc8Qq/ea.c2.eiDC9PJZxwM.BjslbgPxHT2EZ/2ji66', '1234', 682873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12 Hyde\'s way Hayes Hayes town Hayes town United kingdom Ub34pa', '2023-11-20 15:11:36'),
(287, 'Ainykhan', 'Mahrukh ', 'Iqbal ', '170057214117005718788466639324944813593081.jpg', '9909138332', 0, 1, 4000, 0, 0, NULL, NULL, 'Savings', 'female', NULL, 'USD', 'active', 'ainymano01@gmail.com', '03348402799', 'House wife ', '1992-11-29', '1610156093378', '170057214117005719604332408492874757005596.jpg', '170057214117005720458495221680377648818316.jpg', 'Pakistan', 'Khyber pakhtoon khwa', '$2y$10$cJLxZI.CTuA5DaUQzkEW/uMk4w4cFqKZMzUH1uFWY7bbc6/9crYnu', '1234', 354240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Street #3,  House #220 Mardan Khyber pakhtoon khwa 23200', '2023-11-21 08:09:01'),
(288, 'Pinky Rani 123', 'Pinky', 'Rani', '1700614105IMG-20231019-WA0047.jpeg', '9909470531', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', 'female', NULL, 'USD', 'active', 'ns3648993@gmail.com', '9216604005', 'Self employed', '1985-12-07', '207694302986', '17006141051700613829988351030832720574411.jpg', '170061410517006138677364718509562005074047.jpg', 'India', 'Punjab', '$2y$10$No0i0KJyEdyEBYl8lC5Gu.ily1Wkp1U6Q8pQ/wV89Sa5dnxWBREHK', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sharma Street Mansa Mansa Punjab 151505', '2023-11-21 19:48:25'),
(289, 'patriciatugbe8@outlook.com', 'Patricia', 'Tugbe', '1700640757IMG_6570.jpeg', '9909340082', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', 'female', NULL, 'USD', 'active', 'patriciatugbe8@outlook.com', '07404551075', 'Tutor', '2004-07-27', 'HN275237B', '1700640757PROVISIONAL LICENSE.pdf', '170064075727.08.20.pdf', 'United Kingdom', 'Buckinghamshire ', '$2y$10$enrEsOV/gLKOohRjJg5zEeiIUVNPvntWVhX01dNADw1E5jgM7EcpS', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Angus Drive 51 Milton Keynes  Buckinghamshire  MK3 7ND', '2023-11-22 03:12:37'),
(291, 'dsafasfa', 'Dennis', 'Ebisintei', NULL, '9909354992', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'ebisinteidennis@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4wJVvjviMle6E0lQIQ79b.NSX7wOYEvImQS7jO4z0P5kpkaQ.xoEu', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-22 05:02:50'),
(292, 'dsafasfa', 'Dennis', 'Ebisintei', NULL, '9909260108', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'ebisinteidennis@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1zcijkCNJc8CdB4z2f/qCeqYzEpdPt6QQ2Gw.TdCP1FfgTIVtl7Uq', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-22 05:03:12'),
(293, 'dsafasfa', 'Dennis', 'Ebisintei', NULL, '9909263672', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'ebisinteidennis@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$R9BiY2Mkr08m0i67/Ok7H.3Bb7Rn3IivDZQaOmQzuePBP5.QSyDZ6', '1234', 220241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-22 05:03:51'),
(299, 'Marwa', 'Marwa', 'Hamadelneel', NULL, '9909474674', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'marowa9@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vtRwhduhUhim.8LU243kIuUH3j1fTD0LwEeI7V6fgD3JgtyrIDela', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-22 07:27:27'),
(300, NULL, 'Patricia', 'Tugbe', NULL, '9909325262', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'patriciatugbe8@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5BbTl7HHqJOSzl4hWQSg1u62plD2RKZfSO2QbmTYU8r1X9nMREXgm', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-22 07:31:17'),
(301, 'TRtttyyy', 'Dfgg', 'Cgvbgg', NULL, '9909168597', 1, 1, 31000, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'CAD', 'active', 'nayobip181@tbeebk.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tAFh1xWYV9QuFD/bBA4VJuyvjsCZ7ktxixpye6NsAYzS4l1jp.Fom', '1234', 415337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-22 10:42:17'),
(302, 'Jaykay13', 'Venkata Jagadeesh kumar ', 'Kolla', NULL, '9909351499', 0, 1, 7698, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'kvjk71@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$U19aALWNnv26LdNzzxyEOOH7OzGBJ/vlTcK0NiBSWOSjWuXC72/Be', '1234', 257916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-22 18:43:14'),
(307, '', 'Ann Chee', 'Lim', NULL, '9909135024', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'angielim2201@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8i9EJ1/ZfxF/oafKQ9/AUOBJ7OXjsxa31Eb6Y3yAeMZPUtrS6.Id.', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-23 13:54:17'),
(308, 'angie22', 'ANN CHEE', 'LIM', NULL, '9909108707', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'angielim2201@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2L3fdMoAUex5EoEuyONQxOESMIZPpq1vkN4NMSYEcV5Cm74gRn7wK', '1234', 649423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-23 14:01:33'),
(309, 'Zhu', 'Zhu', 'Huang', NULL, '9909494051', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', '1452066231@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VDOjJFBtzqE4mJ3ZlhEIjeIMU0HaNSIU.ZvaatQ.kHfismfqSqP3W', '1234', 154633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-23 14:15:38'),
(310, 'Zhu', 'Zhu', 'Huang', NULL, '9909155656', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', '1452066231@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LdlDgZzl63tUs/Myl184Ku3DOOu.DAIBOPNxYG1JZ4D02FO7p42S.', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-23 14:15:43'),
(311, 'Zhu', 'Zhu', 'Huang', NULL, '9909318075', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', '1452066231@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qaeYn997SNlD2cMkfdqlmeKpzM7/I.xJ29wtA0n65qdrxNPMR3Xgy', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-23 14:15:47'),
(312, 'Zhu', 'Zhu', 'Huang', NULL, '9909191187', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', '1452066231@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZAeFmGl.Iu1gXpL3oWh6iuBivBOpc72qMHKYNYbBImIc9Hma.ynly', '1234', 148357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-23 17:41:19'),
(314, '', 'Fiona', 'Villagra', NULL, '9909168384', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Be9sMcIWVvATYvnbnB9vo.cX5BUfwkQkB.E4DL7Rx0t.WGOFQuUVa', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-24 01:53:45'),
(315, '', 'Fiona', 'Villagra', NULL, '9909245294', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Qp/HkotwJHDdmC6qJ25fj.K7FNlGiKWdxquiFwoC8Cld69K3iZWbe', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-24 01:53:46'),
(316, 'fiovillagraf', 'Fiona', 'Villagra', 'Fionayop.jpg', '9909112552', 0, 1, 3100, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'fiona.villagra2509@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ek02Ya19nRJYmtRGMw1pZ.K82FaNYVgKbiR8lIymyswNpJAeJf.LO', '1234', 236633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-24 01:58:31'),
(317, 'Agnieszka Harat ', 'Agnieszaka', 'Harat', NULL, '9909322016', 0, 1, 3100, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'Euro', 'active', 'agnieszkazofia25@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3az9ejdBSWrKDC7qMU7HiOKbVTr1lD3XuPeyUvm3XizATqRBw5pHC', '1234', 224207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-24 06:55:28'),
(318, 'Sawgaab', 'Solekha ', 'Awgaab ', NULL, '9909819429', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Solekhaawgaab2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KD/Pyb9FQHjFvWXD544k3.jyPIGb1nZqbPQJR.2nvBPblR.sj5mvm', '1234', 274037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-24 11:38:57'),
(319, 'Hyun', 'Pui Yu ', 'Tsui', NULL, '9909142084', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'christytsui0503@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$d3FHsg00BL7vz2tshnxN1.AumwUkHWCEUks5G4KYg0eaCrcMFps0a', '1234', 660457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-24 12:57:47'),
(320, 'NataliaANikitina', 'Natalia', 'Nikitina', NULL, '9909196285', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Natalia_nikitina@hotmail.co.uk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2sS3HwW.wVstK/7CkutiDOfyRAQylebs1BZl495tUQHzTa3YkcCe2', '1234', 153624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 07:11:05'),
(321, 'ak._.2005', 'Aleena', 'Khan', NULL, '9909286633', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'aleenakhan2005.15@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pTD9jy2gt4H5LkMta6FT3OTQET7vaG6IWy63eQjjFOCCUjeRP94YC', '1234', 156379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 08:47:47'),
(322, 'Mgarcha01', 'Manpreet', 'Garcha', 'ManpreetIMG_1955.jpeg', '9909293963', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'garcha609@icloud.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$n0.e6surlgITOco2gCSTq.XvMwcAqrX91VGVA5veH5QhD7p2XVLWK', '1234', 926313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 09:56:14'),
(323, '', 'Adham', 'Samanoudy', 'AdhamAdham.PNG', '9909129538', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'adhamsamanoudy6@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UkRFkY44ZIJGLIh/brpaIe07f5Qm6wc04k8AEW7Z.oRi8yeIsyOE2', '1234', 291022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 10:09:04'),
(324, 'Rabiahbutt', 'Rabiah', 'Butt', NULL, '9909158527', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', '61 whiteways grove s48FL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1GflTg9A9XKaGyT7FqBNNOEwKg8HZaDCClbwEyzHxwFMWFB26lMMa', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 10:47:19'),
(325, 'Rabiahbutt01', 'Rabiah', 'Butt', NULL, '9909317101', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'rbyabutt@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dl.R1OXp7gsfkJC4gA7xS.74mT/3oeMA/nHVHycsJBjJwdV.qw86e', '1234', 152470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 10:54:33'),
(326, 'pica', 'Hikaru', 'Sugimoto', NULL, '9909291165', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'hs608@sussex.ac.uk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NZq.wmwsL3cov1VYQuQZAOHNuugQTR7Y7FaYSDl8PLR/Kcng4Aq3S', '1234', 418326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 11:12:55'),
(327, 'valdrinkurteshi2000', 'valdrin', 'kurteshi', NULL, '9909861493', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'valdrinkurteshi60@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zF3IQEnSPEugcMgNdRtAp.PMffA8FggE2nC2uZMSK9FQ2vafoVzaW', '1234', 335698, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 13:53:28'),
(328, '', '', '', NULL, '9909106418', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'Select Currency Type', 'active', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$eLRl0hfSPUruKQ8nkdvG0Oaea1FHq7CkEOP8R./UhEqPhyR82GgHi', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 13:54:00'),
(329, 'valdrinkurteshi2000', 'valdrin', 'kurteshi', NULL, '9909122672', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'valdrinkurteshi60@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$k5tXaOi6wXRurVfRBoPUGet6AeJtyeytL6zp0Lx92XxdHSFbZ/7ly', '1234', 271795, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 13:55:13'),
(330, 'valdrinkurteshi2000', 'valdrin', 'kurteshi', NULL, '9909152773', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'valdrinkurteshi60@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EAJ26UFrGFkdQwqyiQYL6.ZDow1ATBcUja6BkA0oUM2XYH4BXk9hm', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 13:55:18'),
(331, 'ellen', 'Anlun', 'Chen', NULL, '9909167821', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', ' chena11@cardiff.ac.uk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$euVs2EaRZt.kvGZdWrtGr.6ChgNVyFDnhZRdYCHp/yRdWHDfLFTuG', '1234', 154656, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-25 15:54:38'),
(332, 'Ilhanbarre', 'Ilhan ', 'Barre', NULL, '9909477040', 0, 1, 3000, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Ilhanbarre005@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.GS1DQSm6v3QhyZlh66Dju6nRcBc5YYjKh4CAbS.9HI6J.kvO9Pxu', '1234', 170858, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-26 08:06:51'),
(333, 'Tahir', 'Tahir', 'Naqash', NULL, '9909341356', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'naqashc017@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$04nDEtMCYXRhgk2GX.SYFO1bwMHOMu7DMjE/6YzPqea93Ae.aB3ne', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-26 11:50:20'),
(334, '97306533', 'Tahir', 'Naqash', NULL, '9909782603', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'naqashc017@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kuNyR0Z1EvFn0uPXUAkW6ORwHcpCUh3wBOB..iZjM5Ru5HXtIXSTu', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-26 11:54:14'),
(335, 'Tahir@380', 'Tahir', 'Naqash', NULL, '9909137611', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'naqashc017@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ADyVQKzBB0CKQlCxQsFeWOHz.PdAWQWANrl19gQvGvuYliNFuPQlm', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-26 12:04:10'),
(336, 'Tahir@380', 'Tahir', 'Naqash', NULL, '9909211526', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'naqashc017@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EJUxLTQsn8DyadYqnAUqMucxS3VvaIkpOPVvfdflDQG4eiVj3xNRO', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-26 12:08:31'),
(337, 'Stitch020225', 'Wan Hua', 'Chong', NULL, '9909292755', 0, 1, 3000, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'rachealchongwanhua@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BljlxWD9P.09ATp601uROOlVKXIy4nIFp5jT4BB0gprbEB6QiKHa.', '1234', 291936, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-26 16:28:29'),
(338, 'simslily156@gmail.com', 'Lily ', 'Sims ', NULL, '9909191605', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'simslily156@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EuT4/8bza8wDqs.aTxScquZUEm97CHgyVQ4t8U3ryGepRCDwgW.Ta', '1234', 127377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-27 07:43:36'),
(339, 'Harman1234', 'Harmanpreet ', 'Kaur', NULL, '9909289889', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'harmanpreetkaur459@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gDVjDYkurWskna/Z7GBX6.5DJUKpNdqVlQkcig.x9.uTABTiROg0q', '1234', 620694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-28 08:55:46'),
(340, 'Delano4466', 'Delano ', 'Pereira', NULL, '9909214377', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'delanopereira4466@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$70ep/AVMro69edYdkOP3/ubBGGMoTe7iCj03MXQo5cUpNYiLpm9GS', '1234', 832478, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-28 11:34:46'),
(341, 'kondratevamariia8@gmail.com', 'Mariia', 'Kondrateva', NULL, '9909134299', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'kondratevamariia8@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wBIolbJyHGf9yvjb/kAwIumeQWmWuo2WuPfcPjrWZJfSfJEAp2Z6i', '1234', 255105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-28 13:34:30'),
(342, 'Shaelon02', 'Shaelon ', 'Connor ', NULL, '9909214505', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'shaelon02@googlemail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DFHz4YzLVfi.rSeDYagpiuOmp/3sw7380LJhUpYC4IGRSwcZIdekq', '1234', 652193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 10:24:57'),
(343, 'giorgiaflorio', 'Giorgia', 'Florio', NULL, '9909168577', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'dori.florio@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uZj6NGoIa3WEW7Ji8fQYAO37GbuB7Bzb55sM6yQU70OiZiMNmMxWu', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 14:46:32'),
(344, 'giorgiaflorio', 'Giorgia', 'Florio', NULL, '9909153285', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'dori.florio@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VjXFljM0v1JfsUSQG3YYaO0nYjqDsCWI1DMs7mgSTZMkdkPAiTEhi', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 14:48:22'),
(345, 'giorgiaflorio1', 'Giorgia', 'Florio', NULL, '9909150051', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'dori.florio@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Mw9IVHsYpLFrugPtJLH8.eii6CwjyJqhEARW6ioIEktR5cpLCSn6K', '1234', 294455, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 14:56:28'),
(346, 'Yan', 'Yan', 'Cao', NULL, '9909293663', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'coucijan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GIBHRY0EElTxidhI/U9oW.QJbE7azjj4I.Kebdm6C60CAByxZtP1u', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 16:24:31'),
(347, 'Yan', 'Yan', 'Cao', NULL, '9909473535', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'coucijan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XSikCnIa0T9B9/umjuRg3OjEPsWbAn2eOo7sanmyZ1HZYS9vrz.JO', '1234', 154087, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 16:24:36'),
(348, 'Hykong', 'HY', 'Kong', NULL, '9909153688', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Rose.aphrodite1485@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uV7F8htcISXAjb4v3ur8EOspOy8n5ycRyS8IDWkgY2FmRvN5FsxeW', '1234', 565988, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 18:05:16');
INSERT INTO `users` (`id`, `acct_username`, `firstname`, `lastname`, `image`, `acct_no`, `billing_code`, `transfer`, `acct_balance`, `avail_balance`, `loan_balance`, `acct_limit`, `limit_remain`, `acct_type`, `acct_gender`, `marital_status`, `acct_currency`, `acct_status`, `acct_email`, `acct_phone`, `acct_occupation`, `acct_dob`, `ssn`, `frontID`, `backID`, `country`, `state`, `acct_password`, `acct_pin`, `acct_otp`, `acct_cot`, `acct_imf`, `acct_tax`, `mgr_name`, `mgr_no`, `mgr_email`, `mgr_id`, `mgr_image`, `acct_address`, `createdAt`) VALUES
(349, 'sophie9bartley@gmail.com', 'Sophie ', 'Bartley', NULL, '9909617212', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'sophie9bartley@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$E3Lo8wjRkmxhxd108zMIGu1GNM308B1Y8EPFWt7Jcw5b.6MTwrWIy', '1234', 127892, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 19:42:44'),
(350, 'Marwa 9', 'Marwa', 'Hamadelneel', NULL, '9909748509', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'marowa9@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b3jtFpcvjxHF4OvEu5SUi.gA/Uc1/QCkfSb.EEsZzb5mNmqNWnTxC', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 06:45:55'),
(351, 'Jayalakshmi Jayaprakash ', 'Jayalakshmi', 'Jayaprakash', NULL, '9909234376', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'jtlakshmi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kl6.5.BiW19FCzWR9Mkro.FErj0AJEoLGAcxUEyyXxiw5kiGIwb5i', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 17:11:37'),
(352, 'Jayalakshmi Jayaprakash ', 'Jayalakshmi', 'Jayaprakash', NULL, '9909173750', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'GBP', 'active', 'jtlakshmi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$928xPWMLDi5dw/4WsmGWW.MoQkd37yf0jZ5Ag0rY1HbE9VsDUZEoq', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 17:13:40'),
(353, 'Jayalakshmi Jayaprakash ', 'Jayalakshmi', 'Jayaprakash', NULL, '9909836713', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'jtlakshmi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0VzcG./m4jlyBUXsG8Jjiu4WRfUBcPfLsdF5/IvF1Xv9kIDE3TmSy', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 19:30:16'),
(354, 'dianatsin', 'Diana', 'Tsing', 'DianaIMG_5108.jpeg', '9909150232', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'dianaxiang@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ygf0WRcoIzBH0ZL.XjaN0O.XOFooNWfMmZij5Bgs5YiNPECOBQh1e', '1234', 312360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-01 12:49:34'),
(355, 'Hekena', 'Kena', 'He', NULL, '9909262115', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', '1731610486@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$K5N0VPYZtIhCB0U0BIg4yO0EKELcmw5s9KWyse8aBEa8i.q/jR4IG', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-01 13:05:51'),
(356, 'Hekena', 'Kena', 'He', NULL, '9909224853', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', '1731610486@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4ljtmNTFuRAZF83tfLTS8evr.GSVs0Z5d2J.WmwPP22TK5eYRuKzC', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-01 13:05:55'),
(357, 'Barira', 'Barira', 'Barira', NULL, '9909363358', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Barirazahid30@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xZGux81pBh1fvB4x8fLaLOc73m//oUDaYMRsy/pZ69QXF9VFaxa5C', '1234', 840208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-01 14:10:15'),
(358, 'Barira', 'Barira', 'Barira', NULL, '9909214276', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Barirazahid30@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GBRPR4lqLcCYNulskSgD3OkF0zfGebcjxIC0GESVKgIFgCf44W4ny', '1234', 661145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-01 14:19:24'),
(359, 'AngieOlivia', 'Angela', 'Davila Lloret', NULL, '9909308614', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'Euro', 'active', 'Davilangela49@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BkbA8pmzP5JmQQO/NPCq3ul0EaGiUClRsjrwXm750AE/0f0MEmQIm', '1234', 177513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-02 05:59:33'),
(360, 'Jakkamadhuri92@gmail.com', 'Madhuri', 'Jakka', NULL, '9909358097', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'GBP', 'active', 'Jakkamadhuri92@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Z2wqzdnk29r2gJlwi0Tw6.z5fW.5LjvujXSI0uFfRZNwv2nGVm9Wa', '1234', 790176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-02 15:25:08'),
(361, 'aisha_22', 'Aisha', 'Ishtiaq', NULL, '9909138045', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Ayeshaish786@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DZ/baxsvCQM6sOXGn76UW.pCCM.S1RqsK1sqkJs79MjeJE5cKl1/W', '1234', 687925, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-02 17:52:39'),
(362, 'SamHope75', 'Samantha', 'Hope', NULL, '9909546124', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'cybersam75@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KoXstNweFeNNarY9TkJKNO.f/LgFjWAKNrFJOyp69QjuFwroVtG7S', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-04 06:13:09'),
(363, 'SamHope75', 'Samantha', 'Hope', NULL, '9909351554', 0, 1, 3000, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'GBP', 'active', 'cybersam75@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2Xv.YN0Zq0eOSXwPHmxke.gGoA6qGx0bbJzugDjeq9hKrGlSYalBG', '1234', 753194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-04 06:40:21'),
(364, 'Rana ', 'Rana', 'RANA', NULL, '9909249982', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'generosity99.j@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ymHV7Bl6Kp/gUqSWhglatO.xdQegUraQ4cJU0lyc1ptNTb6uZfZxm', '1234', 228456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-04 07:37:08'),
(365, 'Rana ', 'Rana', 'RANA', NULL, '9909130987', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'generosity99.j@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WHb4tmmIDZ7rs/PQz0qaAejij39ANeTpCOvHIWyvJF.ImQfRQgtnG', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-04 07:48:17'),
(366, 'Sanazka', 'Sanaz', 'Kaviani', NULL, '9909985063', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'USD', 'active', 'sanaz.kaviani.k@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$n6O2RZ6RQRE8Fy.2kiwcXe3dcwyTU4cf.l/tlxc/i7tfyu5xKYR6O', '1234', 315727, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-04 09:45:11'),
(367, 'tetiana.shuliar@gmail.com', 'Tetiana', 'Shuliar', NULL, '9909142015', 0, 1, 3000, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'tetiana.shuliar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ogC/KtGqyJEe15CnhKYfSuJdGebUoSjHOwMDLu4oI25sMTnu/lVlK', '1234', 183991, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-04 10:00:05'),
(368, 'MayaB26', 'Mariya', 'Baig', NULL, '9909532386', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'mabaig286@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Fy0Cfk0aNODU66LfCZB02O4Uov2d2puXx2TlN0jGYDcn1sM6l/PPy', '1234', 223371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-04 17:05:52'),
(369, 'Arishamahir', 'Arisha', 'Mahir', NULL, '9909834062', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Arishanaseem99@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tYPQoUaGCtpUcMLS2m5R.OVuuxgQn0HcK8gXWQQhtFDuovnn5CGIy', '1234', 334808, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-04 20:23:53'),
(370, 'Ishrat', 'Ishrat', 'Perveen', NULL, '9909127291', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'GBP', 'active', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6eI7Ow.PIWnJtYNssUbEyeK2UHFPTFEjiFwV93CA9PaaXl6.IBiAa', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-04 21:50:37'),
(371, 'Hannan', 'Hannan', 'Dahir', NULL, '9909122802', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'hannan.dahir@hotmail.co.uk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QGyrVDC8/YhThkGOI5DWWuVbXaoLNDS.reJ2U4X36ftwYDdmFXi/i', '1234', 787380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 06:09:56'),
(372, '', 'Bassant', 'Hassan', NULL, '9909296154', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'bassanth448@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AOBY/bDWtGQ4By28OQj8M.7JIOEztBlBHAkI9HD.tArH7ZsQxcH1W', '1234', 167425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 08:13:10'),
(373, 'Ishrat ', 'Ishrat', 'Perveen', NULL, '9909461680', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'ishoonawaz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EksKIpKwtRd2w7PM3NTQi.V77.CIPIpcdzDriawuowY/yyRZdwEcy', '1234', 292979, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 10:56:16'),
(374, 'Gislaine Camargo', 'Gislaine ', 'Camargo ', NULL, '9909493007', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'camargodeveloperstrategy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$juVfswSE3DT0UggXsnrPe.5sz7j59eRZl32zo2N6AoJWNzWJu.KVq', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 10:59:13'),
(375, 'Gislaine Camargo ', 'Gislaine ', 'Camargo ', NULL, '9909127062', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'camargodeveloperstrategy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$S44AmHeZqPB6lom5n6fpv.bDcpmxCLRfpgecUyusdadkAyWCqnIx.', '1234', 957718, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 11:08:10'),
(376, 'Sam9947', 'Sameera', 'Ahmad', NULL, '9909223598', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'Samahmad333@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4Ge1l9AZUx7HyrBcBuk4HO.ZtKSKFKPf/IAWhU.MhhbcCagh8m7P2', '1234', 159964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 21:06:55'),
(377, 'omathibe', 'Obakeng', 'Mathibe', NULL, '9909200727', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'o.mathibe64@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3kOGmDtbFHcTfhqD6OaU1uimCPPRgSKukJoSMmwuUFGpzpLN5hycO', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 23:09:19'),
(378, 'omathibe', 'Obakeng', 'Mathibe', NULL, '9909333170', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'o.mathibe64@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nyfmdnxlMy3ywdWuYD4dbu1IczhQWnbiNYLCkbAWScF1KoksDbr8q', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 23:17:20'),
(379, 'omathibe', 'Obakeng', 'Mathibe', NULL, '9909133864', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'o.mathibe64@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IN2WIsA7i5xk6cYtmrZxV.XQvZ7FQaHWtEybFGP/9HLMrQbsLNdqG', '1234', 275258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 23:41:10'),
(380, '', '', '', NULL, '9909354226', 0, 1, 0, 0, 0, NULL, NULL, 'Select Account Type', NULL, NULL, 'Select Currency Type', 'active', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jXpQlj80EKjaOuQmGoL0wOtsrYT3cz8KmE4He3QXZTFTyvO1U1Kx6', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-05 23:46:45'),
(381, 'D1010J', 'G Krishana Jeyanthi', 'Gopalakrishnan', NULL, '9909183417', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'krishijey1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$32Na5mrhWUuu5UjCGswK5uKngcmENdHTqm/9fpgXCn3UOLELa/OHu', '1234', 198794, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-06 05:10:59'),
(382, 'TMcgee93', 'Travis', 'Allopi', NULL, '9909349843', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'travis.allopi@hotmail.co.uk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4sFuxZuymEoPTvKTtaJZ/ObZZYdrPTh2fjpLX1UPcVC2AcSCb7RGC', '1234', 320019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-06 08:36:48'),
(383, 'kasia.podstepska', 'kasia', 'podstepska', NULL, '9909617717', 1, 1, 3450, 0, 0, 0, 0, 'Current', '', '', 'GBP', 'active', 'kasia_.12@icloud.com', '', '', '', NULL, NULL, NULL, NULL, NULL, '$2y$10$LbVbi5pacMAWdfh/e6L6yeXqOAxz35RKlV.iSo6RRrSHlqFM9oE6G', '1234', 420792, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-06 14:45:12'),
(384, 'T72727266', 'Vlayna', 'James', NULL, '9909142110', 1, 1, 5000, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'xilecow880@taiwea.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mnp07JoxnIS1csm8DV9H2uEnXpSX6BX1n01zxhZ6n4pTQBuNJVSCG', '1234', 270022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-06 17:56:08'),
(385, 'HashiMalwatta', 'Hashini', 'Malwatta', NULL, '9909116143', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'GBP', 'active', 'hashimalwatta@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tJ/JkZzo2JyoWCFIBkAQY.D6IYupHGf152AT8yy84iip/LbC3yovW', '1234', 316381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-07 02:08:56'),
(386, 'fsdfdafdas', 'jack', 'sparrow', NULL, '9909783549', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'ebisinteidennis@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NlSwDUo.XKVBRCghq/3swOo1l1qVUIQgsvOWc8hj6BNcqBc4.lk9W', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-08 04:34:20'),
(387, 'dsafasfa', 'jack ', 'sparrow', NULL, '9909263264', 0, 1, 500, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'ALL', 'active', 'ebisinteidennis@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WVQfcZ0LuuSAvNrHOyzczeUTToJ9/YR4Pvwdgu2Or6pbCcb9wfR0i', '1234', 320721, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-08 06:14:34'),
(388, 'zhangshilong202109@163.com', 'Shilong', 'Zhang', NULL, '9909162890', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'zhangshilong202109@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7BRiy/N4rfsqUbQ.IziPyesiBiJPne1vUYhYizd5alg/P574Vl.oa', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-09 04:39:32'),
(389, 'zhangshilong202109@163.com', 'Shilong', 'Zhang', NULL, '9909263283', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'zhangshilong202109@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D/8bxqFRqHby.uDCwuyXluXh8usyjkZ8u7UgnO8tTV2JjUdIoqGRK', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-09 04:39:42'),
(390, 'zhangshilong202109@163.com', 'Shilong', 'Zhang', NULL, '9909125551', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'zhangshilong202109@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.62UJ16O6qodayvAHQ2bqeCi5z52WEWS9R3BOv8Zyz481Xl36CATW', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-09 04:39:48'),
(391, 'zhangshilong202109@163.com', 'shilong', 'zhang', NULL, '9909107637', 0, 1, 0, 0, 0, NULL, NULL, 'Savings', NULL, NULL, 'GBP', 'active', 'zhangshilong202109@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qyyBxIkqPhtwyHBlpvjNbOb0jtmmWaSD5Qpr3SfW6ofPRbRD5JTH.', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-09 04:44:25'),
(392, 'Hajoor98', 'Hajira', 'Iqbal', NULL, '9909202743', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wq/HDDPgIrHCIKbFjZUdvubAFFVP2sN.EN6/rqXbTbWfPzSggEKmK', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 06:23:26'),
(393, 'Hajoor98', 'Hajira', 'Iqbal', NULL, '9909147373', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zxfusJbXJ5NzFsPbHWgHT.VVoLNj4nGID7EpbOEvwjnSE3w4aZdwW', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 06:26:24'),
(394, 'Hajoor98', 'Hajira', 'Iqbal', NULL, '9909100224', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1V0xkKOcJQRImhmGQ22Z6uKdJhcHKBtJX9NUsoQdOuq2YDEsua6qm', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 06:26:29'),
(395, 'Hajoor98', 'Hajira', 'Iqbal', NULL, '9909972999', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GA.BN.zH0KoGFtWHfQadWunNS.RjkA7JCBq95sxeTXxgTIx6fylO2', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 06:28:31'),
(396, 'Hajoor98', 'Hajira', 'Iqbal', NULL, '9909918029', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hR72FBbE/YEvBT9BXJkCge9bqD1repazZwJB.NO7tG/3YuOrziBCy', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 06:32:11'),
(397, 'Hajoor98', 'Hajira', 'Iqbal', NULL, '9909143655', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Xl57BDlmbcQ4xjAEyqqEgugAzErqXtd08FA4eOZcEIp3uQ70otrCq', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 06:34:32'),
(398, 'Hajoor98', 'Hajira', 'Iqbal', NULL, '9909696491', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CBy8NCT5vMSRJRV4VnM0ium/VsBeIOV9Bg.Vw3.7TXTKIruAYusee', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 06:37:16'),
(399, 'Hajoor98', 'Hajira', 'Iqbal', NULL, '9909324389', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$P9Cu8VN73jBut.5o3S64Q.TrDzbubJOFwf67nk9SMUgwDS3Fxgqlm', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 06:56:16'),
(400, 'hajira98', 'Hajera', 'Iqbal', NULL, '9909242302', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'hajiraiqbal85@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xexz8e.libQiMYqH./XnXu.ELAycwgxty4uOT3TN6EWN48VLH0Xsm', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 07:01:02'),
(401, 'Hajira98', 'Hajira', 'Iqbal', NULL, '9909349559', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$V6xjvcyvV44VqJrmR.Vq/.4rtmt9xd3hUD4aGW6KI.brUsLfqwjde', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 07:05:00'),
(402, 'Hajira98', 'Hajira', 'Iqbal', NULL, '9909150396', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Z4arvvXU2OgCVOBG4WbGaOvjNgGjI65dSLtB30Ipv7kcc9HbPx6Ly', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 07:05:06'),
(403, 'Hajira98', 'Hajira', 'Iqbal', NULL, '9909228217', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f1keGYW.JGZWZzIu3cM4pOgZkEFVYBPQX5/dxftCYB1gCs1gHcgiq', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 07:05:09'),
(404, 'hajira98', 'Hajera', 'Iqbal', NULL, '9909120850', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'hajiraiqbal85@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BMpvk8V1AQ.y6doo9dOo6.VLanA8oVIHsaYkHh2yT1RejHiAzCV/2', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 07:07:47'),
(405, 'Hajira98', 'Hajira', 'Iqbal', NULL, '9909105042', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b7bRkoQ/I.MVN/RD2MvyN.p0NMsOCQ8Es1mXzwBI15V4wFTfh6TZe', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 07:31:02'),
(406, 'Hajira98', 'Hajira', 'Iqbal', NULL, '9909150927', 0, 1, 0, 0, 0, NULL, NULL, 'Current', NULL, NULL, 'USD', 'active', 'Hajiraiqbal85@gmail.com ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pg5ob4QkIpzWtDeBkgp5UuxchyCRXX7t7kbL4aXPUnrWoHKVMemwa', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-10 07:31:04'),
(409, 'gurul', 'Jack', 'Buma', '1702817644IMG-20231217-WA0015.jpeg', '9909172364', 1, 1, 42950, 0, 0, 0, -7050, 'Savings', 'male', '1234', 'GBP', 'active', 'angelthomas528@gmail.com', '123456', 'Leftist', '2023-12-17', '1234', '1702817644IMG-20231217-WA0015.jpeg', '1702817644IMG-20231217-WA0015.jpeg', 'Anguilla', 'Beshire', '$2y$10$o0RQDgKKWZ1LPF6ZGnHp7uFg1ait4l70yCcnPn2iaA6i6RJIX5iBu', '1234', 187576, '1234', '1234', '1234', NULL, NULL, NULL, NULL, NULL, 'New area  Michelle  New York Beshire 12345', '2023-12-17 07:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `v_bank`
--

CREATE TABLE `v_bank` (
  `id` int(11) NOT NULL,
  `bank_name` text NOT NULL,
  `routine_no` text NOT NULL,
  `acct_no` text NOT NULL,
  `swift_code` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wire_transfer`
--

CREATE TABLE `wire_transfer` (
  `wire_id` int(11) NOT NULL,
  `acct_id` int(11) NOT NULL,
  `refrence_id` text NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `bank_name` text DEFAULT NULL,
  `acct_name` text DEFAULT NULL,
  `acct_number` varchar(200) NOT NULL,
  `trans_type` varchar(50) NOT NULL DEFAULT 'wire transfer',
  `acct_type` varchar(50) NOT NULL,
  `acct_country` text DEFAULT NULL,
  `acct_swift` varchar(50) DEFAULT NULL,
  `acct_routing` varchar(50) NOT NULL,
  `acct_remarks` text DEFAULT NULL,
  `wire_status` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wire_transfer`
--

INSERT INTO `wire_transfer` (`wire_id`, `acct_id`, `refrence_id`, `amount`, `bank_name`, `acct_name`, `acct_number`, `trans_type`, `acct_type`, `acct_country`, `acct_swift`, `acct_routing`, `acct_remarks`, `wire_status`, `createdAt`) VALUES
(1, 408, '657ee6fe634e6', 500, 'Demo', 'Demo', '12133131', 'wire transfer', 'Non Resident', 'Andorra', '1324', '1213', 'Abc', 1, '2023-12-17 07:18:06'),
(2, 409, '657ef1a977b50', 7000, 'Demo bank', 'Demo', '1226565', 'wire transfer', 'Fixed Deposit', 'Angola', '35454', '25858', 'Demo', 0, '2023-12-17 08:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(11) NOT NULL,
  `reference_id` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `withdraw_method` varchar(200) NOT NULL,
  `trans_type` int(11) NOT NULL,
  `wallet_address` text NOT NULL,
  `bankname` text NOT NULL,
  `account_number` text NOT NULL,
  `routineno` text NOT NULL,
  `acctname` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_request`
--
ALTER TABLE `card_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_currency`
--
ALTER TABLE `crypto_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `domestic_transfer`
--
ALTER TABLE `domestic_transfer`
  ADD PRIMARY KEY (`dom_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`wire_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_bank`
--
ALTER TABLE `v_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wire_transfer`
--
ALTER TABLE `wire_transfer`
  ADD PRIMARY KEY (`wire_id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `card_request`
--
ALTER TABLE `card_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crypto_currency`
--
ALTER TABLE `crypto_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `domestic_transfer`
--
ALTER TABLE `domestic_transfer`
  MODIFY `dom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `wire_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT for table `v_bank`
--
ALTER TABLE `v_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wire_transfer`
--
ALTER TABLE `wire_transfer`
  MODIFY `wire_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
