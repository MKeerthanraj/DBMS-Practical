-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 08:42 AM
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
-- Table structure for table `trained_in`
--

CREATE TABLE `trained_in` (
  `Physician` int(11) NOT NULL,
  `Treatment` int(11) NOT NULL,
  `CertificationDate` datetime NOT NULL,
  `CertificationExpires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trained_in`
--

INSERT INTO `trained_in` (`Physician`, `Treatment`, `CertificationDate`, `CertificationExpires`) VALUES
(3, 1, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(3, 2, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(3, 5, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(3, 6, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(3, 7, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(6, 2, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(6, 5, '2007-01-01 00:00:00', '2007-12-31 00:00:00'),
(6, 6, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(7, 1, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(7, 2, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(7, 3, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(7, 4, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(7, 5, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(7, 6, '2008-01-01 00:00:00', '2008-12-31 00:00:00'),
(7, 7, '2008-01-01 00:00:00', '2008-12-31 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trained_in`
--
ALTER TABLE `trained_in`
  ADD PRIMARY KEY (`Physician`,`Treatment`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
