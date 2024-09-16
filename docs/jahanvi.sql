-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 16, 2024 at 07:09 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jahanvi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_state_id_foreign` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Visakhapatnam', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(2, 'Vijayawada', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(3, 'Tirupati', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(4, 'Guntur', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(5, 'Kakinada', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(6, 'Rajahmundry', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(7, 'Nellore', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(8, 'Chittoor', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(9, 'Anantapur', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(10, 'Kadapa', 1, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(11, 'Itanagar', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(12, 'Tawang', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(13, 'Naharlagun', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(14, 'Bomdila', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(15, 'Pasighat', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(16, 'Tezu', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(17, 'Ziro', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(18, 'Along', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(19, 'Yingkiong', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(20, 'Namsai', 2, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(21, 'Guwahati', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(22, 'Silchar', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(23, 'Dibrugarh', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(24, 'Jorhat', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(25, 'Tezpur', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(26, 'Nagaon', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(27, 'Bongaigaon', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(28, 'Hailakandi', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(29, 'Karimganj', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(30, 'Dhemaji', 3, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(31, 'Patna', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(32, 'Gaya', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(33, 'Bhagalpur', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(34, 'Munger', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(35, 'Muzaffarpur', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(36, 'Darbhanga', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(37, 'Purnia', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(38, 'Katihar', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(39, 'Sasaram', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(40, 'Arrah', 4, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(41, 'Raipur', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(42, 'Bilaspur', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(43, 'Korba', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(44, 'Durg', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(45, 'Jagdalpur', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(46, 'Ambikapur', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(47, 'Raigarh', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(48, 'Kanker', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(49, 'Bhilai', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(50, 'Janjgir', 5, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(51, 'Panaji', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(52, 'Margao', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(53, 'Vasco da Gama', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(54, 'Mapusa', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(55, 'Ponda', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(56, 'Cortalim', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(57, 'Sanguem', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(58, 'Bicholim', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(59, 'Canacona', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(60, 'Quepem', 6, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(61, 'Ahmedabad', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(62, 'Surat', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(63, 'Vadodara', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(64, 'Rajkot', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(65, 'Bhavnagar', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(66, 'Junagadh', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(67, 'Gandhinagar', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(68, 'Narmada', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(69, 'Palanpur', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(70, 'Mehsana', 7, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(71, 'Chandigarh', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(72, 'Faridabad', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(73, 'Gurgaon', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(74, 'Hisar', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(75, 'Panipat', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(76, 'Karnal', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(77, 'Ambala', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(78, 'Rohtak', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(79, 'Yamunanagar', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(80, 'Jind', 8, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(81, 'Shimla', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(82, 'Manali', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(83, 'Dharamshala', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(84, 'Kullu', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(85, 'Solan', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(86, 'Mandi', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(87, 'Una', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(88, 'Bilaspur', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(89, 'Hamirpur', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(90, 'Palampur', 9, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(91, 'Ranchi', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(92, 'Jamshedpur', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(93, 'Dhanbad', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(94, 'Bokaro', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(95, 'Hazaribagh', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(96, 'Deoghar', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(97, 'Giridih', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(98, 'Chaibasa', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(99, 'Medininagar', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(100, 'Koderma', 10, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(101, 'Bengaluru', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(102, 'Mysuru', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(103, 'Hubli', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(104, 'Dharwad', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(105, 'Belagavi', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(106, 'Mangaluru', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(107, 'Shimoga', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(108, 'Udupi', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(109, 'Bidar', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(110, 'Gulbarga', 11, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(111, 'Thiruvananthapuram', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(112, 'Kochi', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(113, 'Kozhikode', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(114, 'Kannur', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(115, 'Palakkad', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(116, 'Malappuram', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(117, 'Thrissur', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(118, 'Alappuzha', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(119, 'Kottayam', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(120, 'Pathanamthitta', 12, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(121, 'Bhopal', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(122, 'Indore', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(123, 'Gwalior', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(124, 'Jabalpur', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(125, 'Ujjain', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(126, 'Sagar', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(127, 'Satna', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(128, 'Ratlam', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(129, 'Dewas', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(130, 'Khandwa', 13, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(131, 'Mumbai', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(132, 'Pune', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(133, 'Nagpur', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(134, 'Thane', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(135, 'Nashik', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(136, 'Aurangabad', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(137, 'Solapur', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(138, 'Kolhapur', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(139, 'Amravati', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(140, 'Latur', 14, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(141, 'Imphal', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(142, 'Thoubal', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(143, 'Churachandpur', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(144, 'Bishnupur', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(145, 'Jiribam', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(146, 'Kakching', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(147, 'Noney', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(148, 'Senapati', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(149, 'Tamenglong', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(150, 'Ukhrul', 15, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(151, 'Shillong', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(152, 'Tura', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(153, 'Jowai', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(154, 'Berdorgre', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(155, 'Nongstoin', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(156, 'Mairang', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(157, 'Rongram', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(158, 'Williamnagar', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(159, 'Dadenggre', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(160, 'Mawkyrwat', 16, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(161, 'Aizawl', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(162, 'Lunglei', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(163, 'Champhai', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(164, 'Kolasib', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(165, 'Mamit', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(166, 'Serchhip', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(167, 'Saiha', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(168, 'Lawngtlai', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(169, 'Hnahthial', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(170, 'Khawzawl', 17, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(171, 'Kohima', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(172, 'Dimapur', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(173, 'Wokha', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(174, 'Mokokchung', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(175, 'Mon', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(176, 'Phek', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(177, 'Zunheboto', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(178, 'Tuensang', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(179, 'Kiphire', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(180, 'Longleng', 18, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(181, 'Bhubaneswar', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(182, 'Cuttack', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(183, 'Rourkela', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(184, 'Berhampur', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(185, 'Sambalpur', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(186, 'Balasore', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(187, 'Jharsuguda', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(188, 'Baripada', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(189, 'Jajpur', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(190, 'Kendujhar', 19, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(191, 'Chandigarh', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(192, 'Amritsar', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(193, 'Jalandhar', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(194, 'Ludhiana', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(195, 'Patiala', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(196, 'Bathinda', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(197, 'Mohali', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(198, 'Hoshiarpur', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(199, 'Kapurthala', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(200, 'Fatehgarh Sahib', 20, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(201, 'Jaipur', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(202, 'Jodhpur', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(203, 'Udaipur', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(204, 'Kota', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(205, 'Bikaner', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(206, 'Ajmer', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(207, 'Alwar', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(208, 'Sikar', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(209, 'Sri Ganganagar', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(210, 'Barmer', 21, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(211, 'Gangtok', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(212, 'Namchi', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(213, 'Pelling', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(214, 'Gyalshing', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(215, 'Mangan', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(216, 'Yuksom', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(217, 'Rongli', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(218, 'Singtam', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(219, 'Khamdong', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(220, 'Temi Tarku', 22, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(221, 'Chennai', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(222, 'Coimbatore', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(223, 'Madurai', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(224, 'Tiruchirappalli', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(225, 'Salem', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(226, 'Erode', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(227, 'Tirunelveli', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(228, 'Vellore', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(229, 'Tiruppur', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(230, 'Kanchipuram', 23, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(231, 'Hyderabad', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(232, 'Warangal', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(233, 'Nizamabad', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(234, 'Khammam', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(235, 'Karimnagar', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(236, 'Mahabubnagar', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(237, 'Rangareddy', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(238, 'Adilabad', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(239, 'Medak', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(240, 'Nalgonda', 24, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(241, 'Agartala', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(242, 'Udaipur', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(243, 'Dharmanagar', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(244, 'Kailashahar', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(245, 'Ambassa', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(246, 'Belonia', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(247, 'Sabroom', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(248, 'Teliamura', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(249, 'Khowai', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(250, 'Jogendranagar', 25, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(251, 'Lucknow', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(252, 'Kanpur', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(253, 'Agra', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(254, 'Varanasi', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(255, 'Allahabad', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(256, 'Meerut', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(257, 'Ghaziabad', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(258, 'Bareilly', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(259, 'Aligarh', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(260, 'Moradabad', 26, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(261, 'Dehradun', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(262, 'Haridwar', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(263, 'Nainital', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(264, 'Rudrapur', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(265, 'Roorkee', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(266, 'Haldwani', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(267, 'Pithoragarh', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(268, 'Kashipur', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(269, 'Rishikesh', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(270, 'Tehri', 27, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(271, 'Kolkata', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(272, 'Siliguri', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(273, 'Durgapur', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(274, 'Asansol', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(275, 'Howrah', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(276, 'Jalpaiguri', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(277, 'Kharagpur', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(278, 'Bardhaman', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(279, 'Bankura', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(280, 'Medinipur', 28, '2024-09-16 01:09:29', '2024-09-16 01:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `consumers`
--

DROP TABLE IF EXISTS `consumers`;
CREATE TABLE IF NOT EXISTS `consumers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consumers_supplier_id_foreign` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consumers`
--

INSERT INTO `consumers` (`id`, `supplier_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Consumer X', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(2, 1, 'Consumer Y', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(3, 2, 'Consumer Z', '2024-09-16 01:09:29', '2024-09-16 01:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_13_073436_create_roles_table', 1),
(5, '2024_09_13_073436_create_suppliers_table', 1),
(6, '2024_09_13_073440_create_consumers_table', 1),
(7, '2024_09_13_073734_create_role_user_table', 1),
(8, '2024_09_13_085537_create_states_table', 1),
(9, '2024_09_13_085539_create_cities_table', 1),
(10, '2024_09_13_113820_add_column_to_users_table', 1),
(11, '2024_09_13_120953_create_oauth_auth_codes_table', 1),
(12, '2024_09_13_120954_create_oauth_access_tokens_table', 1),
(13, '2024_09_13_120955_create_oauth_refresh_tokens_table', 1),
(14, '2024_09_13_120956_create_oauth_clients_table', 1),
(15, '2024_09_13_120957_create_oauth_personal_access_clients_table', 1),
(16, '2024_09_16_060800_create_permissions_table', 1),
(17, '2024_09_16_060806_create_permission_role_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'view suppliers', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(2, 'create suppliers', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(3, 'update suppliers', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(4, 'delete suppliers', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(5, 'view consumers', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(6, 'create consumers', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(7, 'update consumers', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(8, 'delete consumers', '2024-09-16 01:09:29', '2024-09-16 01:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 2, 3, NULL, NULL),
(10, 3, 3, NULL, NULL),
(11, 1, 3, NULL, NULL),
(12, 6, 4, NULL, NULL),
(13, 7, 4, NULL, NULL),
(14, 5, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(2, 'User', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(3, 'Supplier', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(4, 'Consumer', '2024-09-16 01:09:29', '2024-09-16 01:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eyCLND8hLziQhJpdV2CQuMbGbScy979IqlykuVqH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2ZBc3R1b0l2VUtyTXd5OFVicjJ5M3VuZVJodFZkdldKTndUbWVlZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726468940);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh', '2024-09-16 01:09:28', '2024-09-16 01:09:28'),
(2, 'Arunachal Pradesh', '2024-09-16 01:09:28', '2024-09-16 01:09:28'),
(3, 'Assam', '2024-09-16 01:09:28', '2024-09-16 01:09:28'),
(4, 'Bihar', '2024-09-16 01:09:28', '2024-09-16 01:09:28'),
(5, 'Chhattisgarh', '2024-09-16 01:09:28', '2024-09-16 01:09:28'),
(6, 'Goa', '2024-09-16 01:09:28', '2024-09-16 01:09:28'),
(7, 'Gujarat', '2024-09-16 01:09:28', '2024-09-16 01:09:28'),
(8, 'Haryana', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(9, 'Himachal Pradesh', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(10, 'Jharkhand', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(11, 'Karnataka', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(12, 'Kerala', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(13, 'Madhya Pradesh', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(14, 'Maharashtra', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(15, 'Manipur', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(16, 'Meghalaya', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(17, 'Mizoram', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(18, 'Nagaland', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(19, 'Odisha', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(20, 'Punjab', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(21, 'Rajasthan', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(22, 'Sikkim', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(23, 'Tamil Nadu', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(24, 'Telangana', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(25, 'Tripura', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(26, 'Uttar Pradesh', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(27, 'Uttarakhand', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(28, 'West Bengal', '2024-09-16 01:09:29', '2024-09-16 01:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Supplier A', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(2, 'Supplier B', '2024-09-16 01:09:29', '2024-09-16 01:09:29'),
(3, 'Supplier C', '2024-09-16 01:09:29', '2024-09-16 01:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobbies` json DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_state_id_foreign` (`state_id`),
  KEY `users_city_id_foreign` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `contact_number`, `postcode`, `profile_picture`, `gender`, `password`, `hobbies`, `remember_token`, `created_at`, `updated_at`, `state_id`, `city_id`) VALUES
(1, 'Jahanvi', 'Gohil', 'jahanvigohil@example.com', '9898989898', '395007', NULL, 'female', '$2y$12$N/TGiUKhP6W/vncxb2XXouI12W3w7jVZ95FF3lO3anZje0dMrb06u', '[\"reading\", \"traveling\"]', NULL, '2024-09-16 01:09:29', '2024-09-16 01:09:29', 27, 268),
(2, 'Jane', 'Doe', 'jane.doe@example.com', '0987654321', '654321', NULL, 'male', '$2y$12$T4DjycgVDp53HlQNSCcDJ.boKSwVmlQi/sDJV51.LiBCen.IRxPiG', '[\"cooking\", \"cycling\"]', NULL, '2024-09-16 01:09:29', '2024-09-16 01:09:29', 27, 268);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consumers`
--
ALTER TABLE `consumers`
  ADD CONSTRAINT `consumers_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
