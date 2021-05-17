-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 08:38 AM
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
-- Table structure for table `affiliated_with`
--

CREATE TABLE `affiliated_with` (
  `Physician` int(11) NOT NULL,
  `Department` int(11) NOT NULL,
  `PrimaryAffiliation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `affiliated_with`
--

INSERT INTO `affiliated_with` (`Physician`, `Department`, `PrimaryAffiliation`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 0),
(3, 2, 1),
(4, 1, 1),
(5, 1, 1),
(6, 2, 1),
(7, 1, 0),
(7, 2, 1),
(8, 1, 1),
(9, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliated_with`
--
ALTER TABLE `affiliated_with`
  ADD PRIMARY KEY (`Physician`,`Department`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
