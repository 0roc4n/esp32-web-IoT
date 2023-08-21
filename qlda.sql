-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 05:26 PM
-- Server version: 8.0.32
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlda`
--

-- --------------------------------------------------------

--
-- Table structure for table `ledstat`
--

CREATE TABLE `ledstat` (
  `ledID` int NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ledstat`
--

INSERT INTO `ledstat` (`ledID`, `status`) VALUES
(1, '1'),
(2, '1'),
(3, '1');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_vietnamese_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `stat_tbl`
--

CREATE TABLE `stat_tbl` (
  `id` int NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `is_on` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stat_tbl`
--

INSERT INTO `stat_tbl` (`id`, `status`, `is_on`) VALUES
(1, '0', 'false'),
(2, '0', 'true'),
(3, '0', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `id` int NOT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `is_active` varchar(50) NOT NULL,
  `trigger_executed` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`id`, `datetime_value`, `is_active`, `trigger_executed`) VALUES
(1, '2023-08-11 20:54:00', '0', 1),
(2, '2023-08-21 18:57:00', '0', 1),
(3, '2023-08-21 12:03:15', '0', 1),
(4, '2023-08-21 18:36:00', '0', 1),
(5, '2023-08-21 18:40:00', '0', 1),
(6, '2023-08-21 18:50:00', '0', 1),
(7, '2023-08-21 21:52:00', '0', 1),
(8, '2023-08-21 20:36:00', '0', 1),
(9, '2023-08-21 20:40:00', '0', 1),
(10, '2023-08-21 20:47:00', '0', 1),
(11, '2023-08-21 20:48:00', '0', 1),
(12, '2023-08-21 20:51:00', '0', 1),
(13, '2023-08-21 20:53:00', '0', 1),
(14, '2023-08-21 20:55:00', '0', 1),
(15, '2023-08-21 20:56:00', '0', 1),
(16, '2023-08-21 20:59:00', '0', 1),
(17, '2023-08-21 21:02:00', '0', 1),
(18, '2023-08-21 21:09:00', '0', 1),
(19, '2023-08-21 21:09:00', '0', 1),
(20, '2023-08-21 21:11:00', '0', 1),
(21, '2023-08-21 21:12:00', '0', 1),
(22, '2023-08-21 21:12:00', '0', 1),
(23, '2023-08-21 21:13:00', '0', 1),
(24, '2023-08-21 21:14:00', '0', 1),
(25, '2023-08-21 21:22:00', '0', 1),
(26, '2023-08-21 21:22:00', '0', 1),
(27, '2023-08-21 21:22:00', '0', 1),
(28, '2023-08-21 21:28:00', '0', 1),
(29, '2023-08-21 21:38:00', '0', 1),
(30, '2023-08-21 21:38:00', '0', 1),
(31, '2023-08-21 21:39:00', '0', 1),
(32, '2023-08-21 21:40:00', '0', 1),
(33, '2023-08-21 21:40:00', '0', 1),
(34, '2023-08-21 21:42:00', '0', 1),
(35, '2023-08-21 21:43:00', '0', 1),
(36, '2023-08-21 21:51:00', '0', 1),
(37, '2023-08-21 21:52:00', '0', 1),
(38, '2023-08-21 21:55:00', '0', 1),
(39, '2023-08-21 21:55:00', '0', 1),
(40, '2023-08-21 21:57:00', '0', 1),
(41, '2023-08-21 21:59:00', '0', 1),
(42, '2023-08-21 22:18:00', '0', 1),
(43, '2023-08-21 22:18:00', '0', 1),
(44, '2023-08-21 22:24:00', '0', 1),
(45, '2023-08-21 22:25:00', '0', 1),
(46, '2023-08-21 22:25:00', '0', 1),
(47, '2023-08-21 22:29:00', '0', 1),
(48, '2023-08-21 22:43:00', '0', 1),
(49, '2023-08-21 22:44:00', '0', 1),
(50, '2023-08-21 22:45:00', '0', 1),
(51, '2023-08-21 22:48:00', '0', 1),
(52, '2023-08-21 22:49:00', '0', 1),
(53, '2023-08-21 22:50:00', '0', 1),
(54, '2023-08-21 23:01:00', '0', 1),
(55, '2023-08-21 23:02:00', '0', 1),
(56, '2023-08-21 23:05:00', '0', 1),
(57, '2023-08-21 23:19:00', '0', 1);

--
-- Triggers `timer`
--
DELIMITER $$
CREATE TRIGGER `update_led_status` AFTER UPDATE ON `timer` FOR EACH ROW BEGIN
    IF NEW.is_active = 0 THEN
        UPDATE ledstat SET status = 1 WHERE ledID = NEW.id;
    ELSE
        DELETE FROM ledstat WHERE ledID = NEW.id;
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ledstat`
--
ALTER TABLE `ledstat`
  ADD PRIMARY KEY (`ledID`);

--
-- Indexes for table `stat_tbl`
--
ALTER TABLE `stat_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ledstat`
--
ALTER TABLE `ledstat`
  MODIFY `ledID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `stat_tbl`
--
ALTER TABLE `stat_tbl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
