-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 08:40 AM
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
-- Table structure for table `on_call`
--

CREATE TABLE `on_call` (
  `Nurse` int(11) NOT NULL,
  `BlockFloor` int(11) NOT NULL,
  `BlockCode` int(11) NOT NULL,
  `Start` datetime NOT NULL,
  `End` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `on_call`
--

INSERT INTO `on_call` (`Nurse`, `BlockFloor`, `BlockCode`, `Start`, `End`) VALUES
(101, 1, 1, '2008-11-04 11:00:00', '2008-11-04 19:00:00'),
(101, 1, 2, '2008-11-04 11:00:00', '2008-11-04 19:00:00'),
(102, 1, 3, '2008-11-04 11:00:00', '2008-11-04 19:00:00'),
(103, 1, 1, '2008-11-04 19:00:00', '2008-11-05 03:00:00'),
(103, 1, 2, '2008-11-04 19:00:00', '2008-11-05 03:00:00'),
(103, 1, 3, '2008-11-04 19:00:00', '2008-11-05 03:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `on_call`
--
ALTER TABLE `on_call`
  ADD PRIMARY KEY (`Nurse`,`BlockFloor`,`BlockCode`,`Start`,`End`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
