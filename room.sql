-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 08:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Number` int(11) NOT NULL,
  `Type` text NOT NULL,
  `BlockFloor` int(11) NOT NULL,
  `BlockCode` int(11) NOT NULL,
  `Unavailable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Number`, `Type`, `BlockFloor`, `BlockCode`, `Unavailable`) VALUES
(101, 'Single', 1, 1, 0),
(102, 'Single', 1, 1, 0),
(103, 'Single', 1, 1, 0),
(111, 'Single', 1, 2, 0),
(112, 'Single', 1, 2, 1),
(113, 'Single', 1, 2, 0),
(121, 'Single', 1, 3, 0),
(122, 'Single', 1, 3, 0),
(123, 'Single', 1, 3, 0),
(201, 'Single', 2, 1, 1),
(202, 'Single', 2, 1, 0),
(203, 'Single', 2, 1, 0),
(211, 'Single', 2, 2, 0),
(212, 'Single', 2, 2, 0),
(213, 'Single', 2, 2, 1),
(221, 'Single', 2, 3, 0),
(222, 'Single', 2, 3, 0),
(223, 'Single', 2, 3, 0),
(301, 'Single', 3, 1, 0),
(302, 'Single', 3, 1, 1),
(303, 'Single', 3, 1, 0),
(311, 'Single', 3, 2, 0),
(312, 'Single', 3, 2, 0),
(313, 'Single', 3, 2, 0),
(321, 'Single', 3, 3, 1),
(322, 'Single', 3, 3, 0),
(323, 'Single', 3, 3, 0),
(401, 'Single', 4, 1, 0),
(402, 'Single', 4, 1, 1),
(403, 'Single', 4, 1, 0),
(411, 'Single', 4, 2, 0),
(412, 'Single', 4, 2, 0),
(413, 'Single', 4, 2, 0),
(421, 'Single', 4, 3, 1),
(422, 'Single', 4, 3, 0),
(423, 'Single', 4, 3, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
