-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 11:27 AM
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
-- Database: `easycodeis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `email`, `password`, `datetime`) VALUES
(1, 'zubair@gmail.com', '12345', '2023-01-06 14:44:28'),
(2, 'zafar@yahoo.com', '786786', '2023-01-06 14:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `comment_picker_comments`
--

CREATE TABLE `comment_picker_comments` (
  `comment_id` int(11) NOT NULL,
  `comment_picker_giveaway_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_picker_comments`
--

INSERT INTO `comment_picker_comments` (`comment_id`, `comment_picker_giveaway_id`, `comment_text`, `user_id`, `user_name`, `created_at`) VALUES
(1, 82, 'lovely', '257310130804307', 'Cook with US', '2024-04-09 01:43:24'),
(2, 82, 'LOVELY', '7360195827403332', 'Usama Shah', '2024-04-09 01:43:24'),
(3, 85, 'khjd', '252729921263910', 'Tech Page', '2024-04-11 02:58:00'),
(4, 85, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-11 02:58:00'),
(5, 85, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-11 02:58:00'),
(6, 85, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-11 02:58:00'),
(7, 86, 'khjd', '252729921263910', 'Tech Page', '2024-04-11 03:39:39'),
(8, 86, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-11 03:39:39'),
(9, 86, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-11 03:39:39'),
(10, 86, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-11 03:39:39'),
(11, 87, 'khjd', '252729921263910', 'Tech Page', '2024-04-11 07:18:21'),
(12, 87, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-11 07:18:21'),
(13, 87, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-11 07:18:21'),
(14, 87, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-11 07:18:21'),
(15, 87, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-11 07:18:21'),
(16, 88, 'khjd', '252729921263910', 'Tech Page', '2024-04-11 07:31:02'),
(17, 88, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-11 07:31:02'),
(18, 88, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-11 07:31:02'),
(19, 88, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-11 07:31:02'),
(20, 88, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-11 07:31:02'),
(21, 89, 'khjd', '252729921263910', 'Tech Page', '2024-04-12 02:05:57'),
(22, 89, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-12 02:05:57'),
(23, 89, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-12 02:05:57'),
(24, 89, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-12 02:05:57'),
(25, 89, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-12 02:05:57'),
(26, 89, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-12 02:05:57'),
(27, 91, 'khjd', '252729921263910', 'Tech Page', '2024-04-12 02:17:16'),
(28, 91, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-12 02:17:16'),
(29, 91, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-12 02:17:16'),
(30, 91, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-12 02:17:16'),
(31, 91, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-12 02:17:16'),
(32, 91, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-12 02:17:16'),
(33, 95, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 04:45:18'),
(34, 95, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 04:45:18'),
(35, 95, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 04:45:18'),
(36, 95, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 04:45:18'),
(37, 95, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 04:45:18'),
(38, 95, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 04:45:18'),
(39, 96, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 05:24:29'),
(40, 96, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 05:24:29'),
(41, 96, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 05:24:29'),
(42, 96, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 05:24:29'),
(43, 96, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 05:24:29'),
(44, 96, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 05:24:29'),
(45, 97, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 05:27:33'),
(46, 97, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 05:27:33'),
(47, 97, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 05:27:33'),
(48, 97, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 05:27:33'),
(49, 97, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 05:27:33'),
(50, 97, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 05:27:33'),
(51, 98, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 07:15:10'),
(52, 98, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 07:15:10'),
(53, 98, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 07:15:10'),
(54, 98, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 07:15:10'),
(55, 98, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 07:15:10'),
(56, 98, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 07:15:10'),
(57, 99, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 07:19:25'),
(58, 99, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 07:19:25'),
(59, 99, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 07:19:25'),
(60, 99, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 07:19:25'),
(61, 99, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 07:19:25'),
(62, 99, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 07:19:25'),
(63, 100, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 07:21:14'),
(64, 100, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 07:21:14'),
(65, 100, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 07:21:14'),
(66, 100, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 07:21:14'),
(67, 100, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 07:21:14'),
(68, 100, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 07:21:14'),
(69, 101, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 07:29:32'),
(70, 101, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 07:29:32'),
(71, 101, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 07:29:32'),
(72, 101, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 07:29:32'),
(73, 101, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 07:29:32'),
(74, 101, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 07:29:32'),
(75, 102, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 07:32:35'),
(76, 102, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 07:32:35'),
(77, 102, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 07:32:35'),
(78, 102, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 07:32:35'),
(79, 102, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 07:32:35'),
(80, 102, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 07:32:35'),
(81, 103, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 07:34:34'),
(82, 103, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 07:34:34'),
(83, 103, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 07:34:34'),
(84, 103, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 07:34:34'),
(85, 103, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 07:34:34'),
(86, 103, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 07:34:34'),
(87, 104, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 07:35:29'),
(88, 104, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 07:35:29'),
(89, 104, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 07:35:29'),
(90, 104, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 07:35:29'),
(91, 104, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 07:35:29'),
(92, 104, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 07:35:29'),
(93, 105, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 07:36:07'),
(94, 105, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 07:36:07'),
(95, 105, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 07:36:07'),
(96, 105, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 07:36:07'),
(97, 105, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 07:36:07'),
(98, 105, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 07:36:07'),
(99, 106, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 08:00:12'),
(100, 106, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 08:00:12'),
(101, 106, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 08:00:12'),
(102, 106, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 08:00:12'),
(103, 106, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 08:00:12'),
(104, 106, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 08:00:12'),
(105, 107, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 08:02:48'),
(106, 107, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 08:02:48'),
(107, 107, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 08:02:48'),
(108, 107, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 08:02:48'),
(109, 107, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 08:02:48'),
(110, 107, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 08:02:48'),
(111, 108, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 08:23:19'),
(112, 108, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 08:23:19'),
(113, 108, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 08:23:19'),
(114, 108, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 08:23:19'),
(115, 108, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 08:23:19'),
(116, 108, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 08:23:19'),
(117, 109, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 08:36:08'),
(118, 109, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 08:36:08'),
(119, 109, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 08:36:08'),
(120, 109, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 08:36:08'),
(121, 109, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 08:36:08'),
(122, 109, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 08:36:08'),
(123, 110, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 08:59:04'),
(124, 110, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 08:59:04'),
(125, 110, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 08:59:04'),
(126, 110, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 08:59:04'),
(127, 110, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 08:59:04'),
(128, 110, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 08:59:04'),
(129, 111, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 09:00:28'),
(130, 111, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 09:00:28'),
(131, 111, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 09:00:28'),
(132, 111, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 09:00:28'),
(133, 111, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 09:00:28'),
(134, 111, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 09:00:28'),
(135, 113, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 09:02:38'),
(136, 113, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:38'),
(137, 113, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:38'),
(138, 113, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:38'),
(139, 113, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:38'),
(140, 113, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:38'),
(141, 113, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 09:02:39'),
(142, 113, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:39'),
(143, 113, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:39'),
(144, 113, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:39'),
(145, 113, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:39'),
(146, 113, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 09:02:39'),
(147, 114, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 09:30:33'),
(148, 114, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 09:30:33'),
(149, 114, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 09:30:33'),
(150, 114, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 09:30:33'),
(151, 114, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 09:30:33'),
(152, 114, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 09:30:33'),
(153, 115, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 09:54:20'),
(154, 115, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 09:54:20'),
(155, 115, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 09:54:20'),
(156, 115, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 09:54:20'),
(157, 115, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 09:54:20'),
(158, 115, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 09:54:20'),
(159, 116, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 10:00:41'),
(160, 116, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 10:00:41'),
(161, 116, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 10:00:41'),
(162, 116, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 10:00:41'),
(163, 116, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 10:00:41'),
(164, 116, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 10:00:41'),
(165, 117, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 10:21:25'),
(166, 117, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 10:21:25'),
(167, 117, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 10:21:25'),
(168, 117, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 10:21:25'),
(169, 117, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 10:21:25'),
(170, 117, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 10:21:25'),
(171, 118, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 10:27:32'),
(172, 118, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 10:27:32'),
(173, 118, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 10:27:32'),
(174, 118, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 10:27:32'),
(175, 118, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 10:27:32'),
(176, 118, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 10:27:32'),
(177, 119, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 10:32:35'),
(178, 119, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 10:32:35'),
(179, 119, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 10:32:35'),
(180, 119, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 10:32:35'),
(181, 119, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 10:32:35'),
(182, 119, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 10:32:35'),
(183, 120, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 10:33:30'),
(184, 120, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 10:33:30'),
(185, 120, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 10:33:30'),
(186, 120, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 10:33:30'),
(187, 120, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 10:33:30'),
(188, 120, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 10:33:30'),
(189, 121, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 10:36:40'),
(190, 121, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 10:36:40'),
(191, 121, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 10:36:40'),
(192, 121, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 10:36:40'),
(193, 121, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 10:36:40'),
(194, 121, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 10:36:40'),
(195, 122, 'khjd', '252729921263910', 'Tech Page', '2024-04-13 10:42:10'),
(196, 122, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-13 10:42:10'),
(197, 122, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-13 10:42:10'),
(198, 122, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-13 10:42:10'),
(199, 122, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-13 10:42:10'),
(200, 122, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-13 10:42:10'),
(201, 123, 'khjd', '252729921263910', 'Tech Page', '2024-04-15 05:09:57'),
(202, 123, '#Tech', '7385993274819020', 'Usama Shah', '2024-04-15 05:09:57'),
(203, 123, 'khjd', '7385993274819020', 'Usama Shah', '2024-04-15 05:09:57'),
(204, 123, 'Tech Page tag in comment', '7385993274819020', 'Usama Shah', '2024-04-15 05:09:57'),
(205, 123, 'Tech Page fjkdf', '7385993274819020', 'Usama Shah', '2024-04-15 05:09:57'),
(206, 123, 'hjf', '7385993274819020', 'Usama Shah', '2024-04-15 05:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `comment_picker_giveaway`
--

CREATE TABLE `comment_picker_giveaway` (
  `comment_picker_giveaway_id` int(11) NOT NULL,
  `giveaway_hash` varchar(8) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `website_id` int(11) DEFAULT NULL,
  `giveaway_logo_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_picker_giveaway`
--

INSERT INTO `comment_picker_giveaway` (`comment_picker_giveaway_id`, `giveaway_hash`, `user_id`, `website_id`, `giveaway_logo_path`, `created_at`) VALUES
(1, '08d9d91f', '122096704622270552', 7, '', '2024-04-08 06:10:11'),
(2, 'f9c34ecd', '122096704622270552', 5, '', '2024-04-08 06:17:42'),
(3, '4ac4058f', '122096704622270552', 6, '', '2024-04-08 06:20:44'),
(4, '0be49d40', '122096704622270552', 4, '', '2024-04-08 06:22:19'),
(5, '1e9ce929', '122096704622270552', 2, '', '2024-04-08 13:03:27'),
(6, '0d1d77ed', '122096704622270552', 5, '', '2024-04-08 13:06:06'),
(7, 'f8c02c0e', '122096704622270552', 1, '', '2024-04-08 13:09:40'),
(8, '81236ee5', '122096704622270552', 6, '', '2024-04-08 13:11:15'),
(9, '68f9e2cd', '122096704622270552', 6, '', '2024-04-08 13:32:55'),
(10, '3668cbb6', '122096704622270552', 10, '', '2024-04-08 13:40:01'),
(11, '050d04f4', '122096704622270552', 9, '', '2024-04-08 13:47:40'),
(12, '08e219c8', '122096704622270552', 4, '', '2024-04-08 14:02:22'),
(13, 'ab43ba9f', '122096704622270552', 2, '', '2024-04-08 14:04:22'),
(14, 'e5327c46', '122096704622270552', 8, '', '2024-04-08 14:05:04'),
(15, 'd09c33db', '122096704622270552', 8, '', '2024-04-08 14:25:05'),
(16, '90c89b65', '122096704622270552', 3, '', '2024-04-08 14:25:33'),
(17, 'b9ee7c0f', '122096704622270552', 1, '', '2024-04-08 14:27:02'),
(18, 'a894602a', '122096704622270552', 4, '', '2024-04-08 14:27:29'),
(19, 'd78df567', '122096704622270552', 4, '', '2024-04-08 14:29:05'),
(20, '3bdba79f', '122096704622270552', 10, '', '2024-04-08 14:30:24'),
(21, '2ce600e1', '122096704622270552', 7, '', '2024-04-08 14:32:43'),
(22, 'cbf5d4ab', '122096704622270552', 5, '', '2024-04-08 14:34:53'),
(23, '2824e9f7', '122096704622270552', 6, '', '2024-04-08 14:36:30'),
(24, '7e0b948c', '122096704622270552', 2, '', '2024-04-08 14:37:15'),
(25, 'd24bc5eb', '122096704622270552', 7, '', '2024-04-08 14:37:33'),
(26, '812d55c9', '122096704622270552', 3, '', '2024-04-08 14:38:09'),
(27, 'ae5d2bc4', '122096704622270552', 9, '', '2024-04-08 14:38:56'),
(28, '5039d79f', '122096704622270552', 10, '', '2024-04-08 14:40:04'),
(29, '5ac23dd3', '122096704622270552', 3, '', '2024-04-08 14:40:37'),
(30, '28bada36', '122096704622270552', 1, '', '2024-04-08 14:47:18'),
(31, '2d08f855', '122096704622270552', 10, '', '2024-04-08 14:51:13'),
(32, '2ceda4d5', '122096704622270552', 2, '', '2024-04-08 14:51:39'),
(33, '258b6ac1', '122096704622270552', 9, '', '2024-04-08 14:52:21'),
(34, '53d477b3', '122096704622270552', 3, '', '2024-04-08 14:56:33'),
(35, '899d6b23', '122096704622270552', 5, '', '2024-04-08 14:57:04'),
(36, '82b9fca0', '122096704622270552', 2, '', '2024-04-08 14:57:18'),
(37, '10e56b2a', '122096704622270552', 1, '', '2024-04-08 14:57:50'),
(38, '7bfaaa0c', '122096704622270552', 7, '', '2024-04-08 15:03:06'),
(39, '1a54ad88', '122096704622270552', 3, '', '2024-04-08 15:12:10'),
(40, '19a968b6', '122096704622270552', 6, '', '2024-04-08 15:13:11'),
(41, '3b68b941', '122096704622270552', 9, '', '2024-04-08 15:14:37'),
(42, 'c07317dd', '122096704622270552', 3, '', '2024-04-08 15:15:10'),
(43, 'e58960fc', '122096704622270552', 3, '', '2024-04-08 15:22:32'),
(44, '10151513', '122096704622270552', 8, '', '2024-04-08 15:23:30'),
(45, '9d16e757', '122096704622270552', 4, '', '2024-04-08 15:26:09'),
(46, '04db5998', '122096704622270552', 2, '', '2024-04-08 15:32:05'),
(47, 'ddd95e24', '122096704622270552', 5, '', '2024-04-08 15:33:52'),
(48, 'cb56484e', '122096704622270552', 7, '', '2024-04-08 15:36:48'),
(49, 'd0fbea00', '122096704622270552', 9, '', '2024-04-08 15:38:18'),
(50, 'e84f14b8', '122096704622270552', 8, '', '2024-04-08 15:41:03'),
(51, '9de8d04c', '122096704622270552', 7, '', '2024-04-08 16:50:36'),
(52, 'e8e52ddb', '122096704622270552', 6, '', '2024-04-08 16:52:25'),
(53, 'cde0c02b', '122096704622270552', 2, '', '2024-04-08 16:56:48'),
(54, '821be639', '122096704622270552', 4, '', '2024-04-08 16:57:28'),
(55, '7f0d4549', '122096704622270552', 9, '', '2024-04-08 16:58:17'),
(56, '3c29bb50', '122096704622270552', 8, '', '2024-04-08 16:58:44'),
(57, '746a4f67', '122096704622270552', 10, '', '2024-04-08 17:01:09'),
(58, 'a4f3b16c', '122096704622270552', 4, '', '2024-04-08 17:16:04'),
(59, '6b461378', '122096704622270552', 5, '', '2024-04-08 17:17:14'),
(60, 'e7a8078d', '122096704622270552', 4, '', '2024-04-08 17:18:31'),
(61, '3e204e25', '122096704622270552', 3, '', '2024-04-08 17:20:03'),
(62, 'bb811956', '122096704622270552', 7, '', '2024-04-08 17:29:17'),
(63, '2646cf89', '122096704622270552', 8, '', '2024-04-08 17:31:03'),
(64, '24c680cb', '122096704622270552', 7, '', '2024-04-08 17:48:50'),
(65, '28c0db0c', '122096704622270552', 1, '', '2024-04-08 17:49:41'),
(66, '21c57d3e', '122096704622270552', 6, '', '2024-04-08 17:54:56'),
(67, 'f03650ca', '122096704622270552', 9, '', '2024-04-08 18:06:44'),
(68, '40ae95fe', '122096704622270552', 7, '', '2024-04-08 18:09:43'),
(69, '7b7eaba4', '122096704622270552', 7, '', '2024-04-08 18:14:29'),
(70, 'da1deec2', '122096704622270552', 2, '', '2024-04-08 18:16:27'),
(71, 'c39f3824', '122096704622270552', 10, '', '2024-04-08 18:18:43'),
(72, 'fb1c4fba', '122096704622270552', 2, '', '2024-04-08 18:22:33'),
(73, 'e7b9b5a7', '122096704622270552', 8, '', '2024-04-09 01:18:00'),
(74, '2085b905', '122096704622270552', 2, '', '2024-04-09 01:21:18'),
(75, '2488fec5', '122096704622270552', 8, '', '2024-04-09 01:22:00'),
(76, '48618c6e', '122096704622270552', 7, '', '2024-04-09 01:22:08'),
(77, '45a481a7', '122096704622270552', 10, '', '2024-04-09 01:24:55'),
(78, '7810172d', '122096704622270552', 8, '', '2024-04-09 01:25:52'),
(79, '8c2ffe1c', '122096704622270552', 2, '', '2024-04-09 01:27:17'),
(80, 'eaa2efe5', '122096704622270552', 5, '', '2024-04-09 01:39:43'),
(81, '9b96948e', '122096704622270552', 5, '', '2024-04-09 01:42:08'),
(82, 'd6286108', '122096704622270552', 4, '', '2024-04-09 01:43:20'),
(83, 'c819324d', '122096704622270552', 5, '', '2024-04-11 02:50:22'),
(84, '680fccb6', '122096704622270552', 5, '', '2024-04-11 02:51:21'),
(85, '82c57bec', '122096704622270552', 10, '', '2024-04-11 02:57:56'),
(86, '1e0fcc3a', '122096704622270552', 9, '', '2024-04-11 03:35:46'),
(87, '5d27c6c3', '122096704622270552', 6, '', '2024-04-11 07:18:12'),
(88, 'dbb8eee1', '122096704622270552', 2, '', '2024-04-11 07:30:58'),
(89, 'cc67d423', '122096704622270552', 6, '', '2024-04-12 02:05:38'),
(90, 'b3e8eb79', '122096704622270552', 6, '', '2024-04-12 02:07:03'),
(91, '73d33cc2', '122096704622270552', 5, '', '2024-04-12 02:12:21'),
(92, '7f2924b4', '122096704622270552', 1, '', '2024-04-13 02:34:11'),
(93, '32047151', '122096704622270552', 9, '', '2024-04-13 02:34:31'),
(94, '52d8f29d', '122096704622270552', 10, '', '2024-04-13 02:35:31'),
(95, '77e4f0e0', '122096704622270552', 3, '', '2024-04-13 04:45:10'),
(96, 'ce3ef028', '122096704622270552', 4, '', '2024-04-13 05:24:24'),
(97, 'fc65690f', '122096704622270552', 2, '', '2024-04-13 05:27:29'),
(98, 'c9051a18', '122096704622270552', 9, '', '2024-04-13 07:15:00'),
(99, '1e9dea66', '122096704622270552', 9, '', '2024-04-13 07:18:43'),
(100, 'f9992d74', '122096704622270552', 7, '', '2024-04-13 07:21:07'),
(101, 'c8510294', '122096704622270552', 3, '', '2024-04-13 07:29:25'),
(102, '5f818b11', '122096704622270552', 8, '', '2024-04-13 07:32:31'),
(103, 'd3302226', '122096704622270552', 5, '', '2024-04-13 07:34:30'),
(104, '7de0bea0', '122096704622270552', 1, '', '2024-04-13 07:35:25'),
(105, '892e3a20', '122096704622270552', 2, '', '2024-04-13 07:36:04'),
(106, '37fd63b5', '122096704622270552', 2, '', '2024-04-13 08:00:07'),
(107, 'bb6343b0', '122096704622270552', 10, '', '2024-04-13 08:02:44'),
(108, 'd8509962', '122096704622270552', 8, '', '2024-04-13 08:23:15'),
(109, 'b2fc6538', '122096704622270552', 5, '', '2024-04-13 08:36:04'),
(110, 'f07db439', '122096704622270552', 5, '', '2024-04-13 08:58:58'),
(111, '04e3015b', '122096704622270552', 9, '', '2024-04-13 09:00:24'),
(112, '351984ee', '122096704622270552', 2, '', '2024-04-13 09:02:28'),
(113, '9a132887', '122096704622270552', 5, '', '2024-04-13 09:02:34'),
(114, 'cd6e4bb5', '122096704622270552', 2, 'assets/giveAwayLogo/male-student.png', '2024-04-13 09:30:28'),
(115, '2effa936', '122096704622270552', 6, 'assets/giveAwayLogo/male-student.png', '2024-04-13 09:54:03'),
(116, '00be85c9', '122096704622270552', 8, 'assets/giveAwayLogo/male-student.png', '2024-04-13 10:00:36'),
(117, '0bc2b8e4', '122096704622270552', 4, '', '2024-04-13 10:21:13'),
(118, 'a4ca2ccf', '122096704622270552', 2, '', '2024-04-13 10:27:19'),
(119, '437c944d', '122096704622270552', 8, '', '2024-04-13 10:32:30'),
(120, 'e7905002', '122096704622270552', 7, '', '2024-04-13 10:33:25'),
(121, '2533461f', '122096704622270552', 8, '', '2024-04-13 10:36:35'),
(122, '95f75f14', '122096704622270552', 9, '', '2024-04-13 10:41:36'),
(123, '7b16c4e4', '122096704622270552', 8, '', '2024-04-15 05:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE `contests` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contests`
--

INSERT INTO `contests` (`id`, `title`, `description`, `image_path`) VALUES
(1, 'Whitelist IP Address', 'How do I Whitelist my IP Address? I can\'t log into MySQL from a remote computer using a MySQL admin tool (phpMyAdmin, Navicat, MySQLFront, MySQL-Admin, etc).', ''),
(2, 'Whitelist IP Address', 'How do I Whitelist my IP Address? I can\'t log into MySQL from a remote computer using a MySQL admin tool (phpMyAdmin, Navicat, MySQLFront, MySQL-Admin, etc).', ''),
(3, 'File Manager', 'This article will walk you through creating, removing, and editing files with the file manager.', ''),
(4, 'Installing phpBB using Marketplace', 'To install a phpBB forum using MOJO Marketplace, log into the cPanel and scroll down to the Software/Services category. Click on the MOJO Marketplace icon. Click on the phpBB icon.', ''),
(5, 'Setup Remove or Edit a Cron Job', 'This article will explain how to setup, remove, or edit a Cron Job.', ''),
(6, 'Can you edit Font Awesome icons?', 'Font Awesome has you covered with the editing icons you\'ll need to brighten up your project.', 'upload/'),
(7, 'use isset?', '\r\nCertainly! If you prefer to use isset() to check if the form has been submitted, you can modify the PHP code accordingly. Here\'s the updated code:', 'upload/'),
(8, 'Parse error', 'syntax error, unexpected identifier \"Are\", expecting \",\" or \";\" in ', 'upload/Screenshot 2024-03-26 135304.jpg'),
(9, 'Q3rCLDO5Uu', 'vZDf5DsKgR', 'upload/git push.jpg'),
(10, 'kJ48VOagAt', 'O6g3BOMzrr', 'upload/Screenshot 2024-03-26 135304.jpg'),
(11, 'E4qstleEbb', 'ARXf599fY7', 'upload/Screenshot 2024-03-27 091333.jpg'),
(12, 'abc', 'xyz', 'upload/Screenshot 2024-04-17 181344.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `key_value` varchar(100) NOT NULL,
  `user_level` int(11) NOT NULL DEFAULT 0,
  `fb_user_id` varchar(100) NOT NULL,
  `fb_access_token` varchar(500) NOT NULL,
  `tw_user_id` varchar(100) NOT NULL,
  `oauth_token` varchar(500) NOT NULL,
  `oauth_token_secret` varchar(500) NOT NULL,
  `twitch_user_id` varchar(100) NOT NULL,
  `twitch_access_token` varchar(500) NOT NULL,
  `twitch_refresh_token` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`, `created`, `key_value`, `user_level`, `fb_user_id`, `fb_access_token`, `tw_user_id`, `oauth_token`, `oauth_token_secret`, `twitch_user_id`, `twitch_access_token`, `twitch_refresh_token`) VALUES
(1, 'usamaqadeer.te@gmail.com', 'Usama', 'Shah', '', '2024-04-04 05:30:53', '93aec95f1748b60dd4d7265ae0100e9f', 0, '122096704622270552', 'EAAQvWH3zk2IBO7VBJ5M2ZBPRQyi0cgk7mwir9aeORMhzM9vDsb7ay1fNuxv2gDE9Y5riawdz3WZAiicNUUMcu1jPsU3DPRngrXiubb0saSaCmYSuay0N5h688Lqb29To12FhACAnCRszh8ZC0UYmihtFSEBNsKj0pSplDRVhB0m0jLGrOurtUZC9CX0RTtys4oI16dfMZA1ZBJAqRH55AhU0ruMd52TkZCZC7w7u034JGLCKHrdCcELPKBkKUB69UWntnMsQPPGTulZBVZBnMEJTDQ', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_picker_comments`
--
ALTER TABLE `comment_picker_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `comment_picker_giveaway`
--
ALTER TABLE `comment_picker_giveaway`
  ADD PRIMARY KEY (`comment_picker_giveaway_id`);

--
-- Indexes for table `contests`
--
ALTER TABLE `contests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment_picker_comments`
--
ALTER TABLE `comment_picker_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `comment_picker_giveaway`
--
ALTER TABLE `comment_picker_giveaway`
  MODIFY `comment_picker_giveaway_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `contests`
--
ALTER TABLE `contests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
