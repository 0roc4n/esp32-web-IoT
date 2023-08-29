-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 07:36 PM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteLastRows` ()  begin
delete from temp_humd_tbl
order by id desc
limit 5;
end$$

DELIMITER ;

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
-- Table structure for table `temp_humd_tbl`
--

CREATE TABLE `temp_humd_tbl` (
  `id` int NOT NULL,
  `temp` float NOT NULL,
  `humd` float NOT NULL,
  `on_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `id` int NOT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `is_active` varchar(50) NOT NULL,
  `trigger_executed` int DEFAULT '0',
  `choose_led` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`id`, `datetime_value`, `is_active`, `trigger_executed`, `choose_led`) VALUES
(1, '2023-08-11 20:54:00', '0', 1, NULL),
(2, '2023-08-21 18:57:00', '0', 1, NULL),
(3, '2023-08-21 12:03:15', '0', 1, NULL),
(4, '2023-08-21 18:36:00', '0', 1, NULL),
(5, '2023-08-21 18:40:00', '0', 1, NULL),
(6, '2023-08-21 18:50:00', '0', 1, NULL),
(7, '2023-08-21 21:52:00', '0', 1, NULL),
(8, '2023-08-21 20:36:00', '0', 1, NULL),
(9, '2023-08-21 20:40:00', '0', 1, NULL),
(10, '2023-08-21 20:47:00', '0', 1, NULL),
(11, '2023-08-21 20:48:00', '0', 1, NULL),
(12, '2023-08-21 20:51:00', '0', 1, NULL),
(13, '2023-08-21 20:53:00', '0', 1, NULL),
(14, '2023-08-21 20:55:00', '0', 1, NULL),
(15, '2023-08-21 20:56:00', '0', 1, NULL),
(16, '2023-08-21 20:59:00', '0', 1, NULL),
(17, '2023-08-21 21:02:00', '0', 1, NULL),
(18, '2023-08-21 21:09:00', '0', 1, NULL),
(19, '2023-08-21 21:09:00', '0', 1, NULL),
(20, '2023-08-21 21:11:00', '0', 1, NULL),
(21, '2023-08-21 21:12:00', '0', 1, NULL),
(22, '2023-08-21 21:12:00', '0', 1, NULL),
(23, '2023-08-21 21:13:00', '0', 1, NULL),
(24, '2023-08-21 21:14:00', '0', 1, NULL),
(25, '2023-08-21 21:22:00', '0', 1, NULL),
(26, '2023-08-21 21:22:00', '0', 1, NULL),
(27, '2023-08-21 21:22:00', '0', 1, NULL),
(28, '2023-08-21 21:28:00', '0', 1, NULL),
(29, '2023-08-21 21:38:00', '0', 1, NULL),
(30, '2023-08-21 21:38:00', '0', 1, NULL),
(31, '2023-08-21 21:39:00', '0', 1, NULL),
(32, '2023-08-21 21:40:00', '0', 1, NULL),
(33, '2023-08-21 21:40:00', '0', 1, NULL),
(34, '2023-08-21 21:42:00', '0', 1, NULL),
(35, '2023-08-21 21:43:00', '0', 1, NULL),
(36, '2023-08-21 21:51:00', '0', 1, NULL),
(37, '2023-08-21 21:52:00', '0', 1, NULL),
(38, '2023-08-21 21:55:00', '0', 1, NULL),
(39, '2023-08-21 21:55:00', '0', 1, NULL),
(40, '2023-08-21 21:57:00', '0', 1, NULL),
(41, '2023-08-21 21:59:00', '0', 1, NULL),
(42, '2023-08-21 22:18:00', '0', 1, NULL),
(43, '2023-08-21 22:18:00', '0', 1, NULL),
(44, '2023-08-21 22:24:00', '0', 1, NULL),
(45, '2023-08-21 22:25:00', '0', 1, NULL),
(46, '2023-08-21 22:25:00', '0', 1, NULL),
(47, '2023-08-21 22:29:00', '0', 1, NULL),
(48, '2023-08-21 22:43:00', '0', 1, NULL),
(49, '2023-08-21 22:44:00', '0', 1, NULL),
(50, '2023-08-21 22:45:00', '0', 1, NULL),
(51, '2023-08-21 22:48:00', '0', 1, NULL),
(52, '2023-08-21 22:49:00', '0', 1, NULL),
(53, '2023-08-21 22:50:00', '0', 1, NULL),
(54, '2023-08-21 23:01:00', '0', 1, NULL),
(55, '2023-08-21 23:02:00', '0', 1, NULL),
(56, '2023-08-21 23:05:00', '0', 1, NULL),
(57, '2023-08-21 23:19:00', '0', 1, NULL),
(58, '2023-08-22 15:17:00', '0', 1, NULL),
(59, '2023-08-22 15:17:00', '0', 1, NULL),
(60, '2023-08-22 15:17:00', '0', 1, NULL),
(61, '2023-08-22 15:17:00', '0', 1, NULL),
(62, '2023-08-22 15:17:00', '0', 1, NULL),
(63, '2023-08-22 15:32:00', '0', 1, NULL),
(64, '2023-08-22 15:35:00', '0', 1, NULL),
(65, '2023-08-22 15:37:00', '0', 1, NULL),
(66, '2023-08-22 15:42:00', '0', 1, NULL),
(67, '2023-08-22 15:48:00', '0', 1, NULL),
(68, '2023-08-26 14:32:00', '0', 1, NULL),
(69, '2023-08-26 14:34:00', '0', 1, NULL),
(70, '2023-08-26 08:35:20', '0', 1, NULL),
(71, '2023-08-26 14:38:00', '0', 1, NULL),
(72, '2023-08-26 14:41:00', '0', 1, NULL),
(73, '2023-08-30 00:36:00', '0', 1, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `tmp-hmd_tbl`
--

CREATE TABLE `tmp-hmd_tbl` (
  `id` int NOT NULL,
  `temp` float NOT NULL,
  `hmd` float NOT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Indexes for table `temp_humd_tbl`
--
ALTER TABLE `temp_humd_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp-hmd_tbl`
--
ALTER TABLE `tmp-hmd_tbl`
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
-- AUTO_INCREMENT for table `temp_humd_tbl`
--
ALTER TABLE `temp_humd_tbl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1394;

--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tmp-hmd_tbl`
--
ALTER TABLE `tmp-hmd_tbl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `deleteLastRowsEvent` ON SCHEDULE EVERY 10 SECOND STARTS '2023-08-29 23:57:52' ON COMPLETION NOT PRESERVE ENABLE DO call deleteLastRows()$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
