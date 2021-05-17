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
-- Table structure for table `undergoes`
--

CREATE TABLE `undergoes` (
  `Patient` int(11) NOT NULL,
  `Proceduree` int(11) NOT NULL,
  `Stay` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Physician` int(11) NOT NULL,
  `AssistingNurse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergoes`
--

INSERT INTO `undergoes` (`Patient`, `Proceduree`, `Stay`, `Date`, `Physician`, `AssistingNurse`) VALUES
(100000001, 2, 3215, '2008-05-03 00:00:00', 7, 101),
(100000001, 6, 3215, '2008-05-02 00:00:00', 3, 101),
(100000001, 7, 3217, '2008-05-10 00:00:00', 7, 101),
(100000004, 1, 3217, '2008-05-07 00:00:00', 3, 102),
(100000004, 4, 3217, '2008-05-13 00:00:00', 3, 103),
(100000004, 5, 3217, '2008-05-09 00:00:00', 6, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `undergoes`
--
ALTER TABLE `undergoes`
  ADD PRIMARY KEY (`Patient`,`Proceduree`,`Stay`,`Date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
