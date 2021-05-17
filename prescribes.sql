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
-- Table structure for table `prescribes`
--

CREATE TABLE `prescribes` (
  `Physician` int(11) NOT NULL,
  `Patient` int(11) NOT NULL,
  `Medication` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Appointment` int(11) DEFAULT NULL,
  `Dose` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescribes`
--

INSERT INTO `prescribes` (`Physician`, `Patient`, `Medication`, `Date`, `Appointment`, `Dose`) VALUES
(1, 100000001, 1, '2008-04-24 10:47:00', 13216584, '5'),
(9, 100000004, 2, '2008-04-27 10:53:00', 86213939, '10'),
(9, 100000004, 2, '2008-04-30 16:53:00', NULL, '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD PRIMARY KEY (`Physician`,`Patient`,`Medication`,`Date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
