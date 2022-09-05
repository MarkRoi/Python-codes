-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2022 at 11:17 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrapper`
--

-- --------------------------------------------------------

--
-- Table structure for table `phone_dat`
--

DROP TABLE IF EXISTS `phone_dat`;
CREATE TABLE IF NOT EXISTS `phone_dat` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Current_price` varchar(30) NOT NULL,
  `Old_price` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone_dat`
--

INSERT INTO `phone_dat` (`id`, `Name`, `Current_price`, `Old_price`) VALUES
(1, 'Nokia C10 - 6.52\" 1GB RAM 32GB ROM 5MP - Grey', 'UGX 253,000', 'UGX 500,000'),
(2, 'Nokia C10 - 6.52\" 1GB RAM 32GB ROM 5MP - Grey', 'UGX 253,000', 'UGX 500,000'),
(3, 'Tecno Spark 7 - 6.5\" 2GB RAM 32GB ROM 16MP 5000mAh - Black', 'UGX 376,300', 'UGX 700,000'),
(4, 'Tecno Spark 7 - 6.5\" 2GB RAM 32GB ROM 16MP 6000mAh - Blue', 'UGX 359,000', 'UGX 500,000'),
(5, 'Tecno Spark 7 - 6.5\" 2GB RAM 32GB ROM 16MP 5000mAh - Green', 'UGX 376,300', 'UGX 400,000'),
(6, 'Tecno Camon 18i - 6.6\" 4GB RAM 128GB ROM 48MP 5000mAh - Space Grey', 'UGX 599,000', 'UGX 700,000'),
(7, 'Samsung Galaxy A12 - 6.5\" 4GB RAM 64GB ROM 48MP 5000mAh - Blue', 'UGX 569,000', 'UGX 700,000'),
(8, 'Redmi 9A - 6.53\" 2GB RAM 32GB ROM 13MP - Black', 'UGX 340,000', 'UGX 500,000'),
(9, 'Itel P37 - 6.5\" 2GB RAM 32GB ROM 8MP 5000mAh - Deep Blue', 'UGX 298,920', 'UGX 500,000'),
(10, 'Infinix Smart 5 - 6.6\" 2GB RAM 32GB ROM 8MP 5000mAh - Ocean Wave', 'UGX 350,860', 'UGX 800,000'),
(11, 'Infinix Hot 10 Play 6.82\" 4GB RAM 64GB ROM 13MP - Black', 'UGX 500,000', 'UGX 600,000'),
(12, 'Tecno Pova Neo 6.8\" 4GB RAM 64GB ROM 16MP 6000mAh - Geek blue', 'UGX 459,800', 'UGX 680,000'),
(13, 'Nokia 106 Dual Sim Phone -Black', 'UGX 95,500', 'UGX 105,000'),
(14, 'Tecno Pop 5 Go  - 5,71\" 1GB RAM 16GB ROM 5MP 4000mAh - Black', 'UGX 255,460', 'UGX 400,000'),
(15, 'Infinix Smart 5 - 6.6\" 2GB RAM 32GB ROM 8MP - Black', 'UGX 350,860', 'UGX 450,000'),
(16, 'Oppo Realme C25Y 6.5\" 4GB RAM 128GB ROM 50MP 5000mAh - Gray', 'UGX 554,000', 'UGX 700,000'),
(17, 'Infinix Smart 5 - 6.6\" 2GB RAM 32GB ROM 8MP - Cyan', 'UGX 350,860', 'UGX 450,000'),
(18, 'Tecno Pop 5 - 6.1\" 1GB RAM 16GB ROM 5MP 4000mAh - Blue', 'UGX 275,600', 'UGX 400,000'),
(19, 'Tecno Pop 5 - 6.1\" 1GB RAM 16GB ROM 5MP 4000mAh - Black', 'UGX 275,600', 'UGX 600,000'),
(20, 'Tecno Camon 18 - 6.8\" 4GB RAM 128GB ROM 48MP - Ceramic White', 'UGX 688,000', 'UGX 800,000'),
(21, 'Tecno Camon 18 - 6.8\" 4GB RAM 128GB ROM 48MP - Dusky Grey', 'UGX 688,000', 'UGX 800,000'),
(22, 'Nokia 105 Dual SIM, FM Radio 800MAH Battery - Black', 'UGX 56,000', 'UGX 90,000'),
(23, 'Samsung Galaxy A12 - 6.5\" 4GB RAM 64GB ROM 48MP 5000mAh - Red', 'UGX 569,000', 'UGX 600,000'),
(24, 'Itel A37-5.71\" 1GB RAM 16GB ROM 5MP 3020mAh - Blue', 'UGX 219,000', 'UGX 250,000'),
(25, 'Samsung Galaxy A32 4G - 6.5\" 6GB RAM 128GB ROM 64MP 5000mAh - Black', 'UGX 910,000', 'UGX 1,200,000'),
(26, 'Tecno Pop 5 Go - 5.71\" 1GB RAM 16GB ROM 5MP 4000mAh - Black', 'UGX 259,500', 'UGX 350,000'),
(27, 'Oppo Realme C21Y 6.5\" 4GB RAM 64GB ROM 13MP 5000mAh - Blue', 'UGX 439,000', 'UGX 800,000'),
(28, 'Nokia G20 - 6.52\" 4GB RAM 128GB ROM 48MP 5050mAh - Blue', 'UGX 697,000', 'UGX 750,000'),
(29, 'Tecno Spark 7T, 4GB RAM, 64GB 48 MP - Jewel Blue', 'UGX 499,000', 'UGX 500,000'),
(30, 'Samsung Galaxy A03 Core 6.5\" 2GB RAM 32GB ROM 8MP 5000mAh - Black', 'UGX 355,000', 'UGX 500,000'),
(31, 'Infinix HOT 10i -2021 6.52\'\' 4G 2GB RAM 64GB ROM 13MP 6000mAh-Green', 'UGX 447,000', 'UGX 800,000'),
(32, 'Redmi Note 10 5G 6.43\" 4GB RAM 128GB ROM 48MP - Silver', 'UGX 639,000', 'UGX 1,200,000'),
(33, 'Infinix Smart 5 4G - 6.6\" 2GB RAM 32GB ROM 8MP - Ocean Wave', 'UGX 380,000', 'UGX 400,000'),
(34, 'Tecno Camon 18i - 6.6\" 4GB RAM 128GB ROM 48MP 5000mAh - Jewel Blue', 'UGX 609,500', 'UGX 700,000'),
(35, 'Infinix Note 10 Pro - 6.95\" 8GB RAM 128GB ROM 64MP Nordic secret', 'UGX 907,000', 'UGX 960,000'),
(36, 'Infinix Hot 11 - 6.6\" 4GB RAM 128GB ROM 50MP 6000mAh - Blue', 'UGX 625,400', 'UGX 760,000'),
(37, 'Nokia 1.77\'\' Dual SIM, FM Radio 800MAH Battery - Black', 'UGX 95,000', 'UGX 150,000'),
(38, 'Redmi 9A - 6.53\" 4GB RAM 128GB ROM 13MP 5000mAh -  Sky Blue', 'UGX 498,000', 'UGX 800,000'),
(39, 'Nokia 6310 (2021) 2.8\" 8MB RAM 16MB ROM 0.2MP 1150mAh - Black', 'UGX 199,000', 'UGX 260,000'),
(40, 'Itel A33 Plus - 5.0\" 1GB RAM 16GB ROM 5MP 3020mAh - Black', 'UGX 201,400', 'UGX 400,000'),
(41, 'Tecno Spark 8 - 6.5\" 2GB RAM 64GB ROM 8MP 5000mh - Cyan', 'UGX 428,240', 'UGX 600,000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
