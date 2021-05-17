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
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentID` int(11) NOT NULL,
  `Patient` int(11) NOT NULL,
  `PrepNurse` int(11) DEFAULT NULL,
  `Physician` int(11) NOT NULL,
  `Start` datetime NOT NULL,
  `End` datetime NOT NULL,
  `ExaminationRoom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentID`, `Patient`, `PrepNurse`, `Physician`, `Start`, `End`, `ExaminationRoom`) VALUES
(13216584, 100000001, 101, 1, '2008-04-24 10:00:00', '2008-04-24 11:00:00', 'A'),
(26548913, 100000002, 101, 2, '2008-04-24 10:00:00', '2008-04-24 11:00:00', 'B'),
(36549879, 100000001, 102, 1, '2008-04-25 10:00:00', '2008-04-25 11:00:00', 'A'),
(46846589, 100000004, 103, 4, '2008-04-25 10:00:00', '2008-04-25 11:00:00', 'B'),
(59871321, 100000004, NULL, 4, '2008-04-26 10:00:00', '2008-04-26 11:00:00', 'C'),
(69879231, 100000003, 103, 2, '2008-04-26 11:00:00', '2008-04-26 12:00:00', 'C'),
(76983231, 100000001, NULL, 3, '2008-04-26 12:00:00', '2008-04-26 13:00:00', 'C'),
(86213939, 100000004, 102, 9, '2008-04-27 10:00:00', '2008-04-21 11:00:00', 'A'),
(93216548, 100000002, 101, 2, '2008-04-27 10:00:00', '2008-04-27 11:00:00', 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
