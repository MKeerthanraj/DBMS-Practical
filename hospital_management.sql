-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 04:28 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `Floor` int(11) NOT NULL,
  `Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`Floor`, `Code`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` int(11) NOT NULL,
  `dept_name` text DEFAULT NULL,
  `Head` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `dept_name`, `Head`) VALUES
(1, 'General Medicine', 4),
(2, 'Surgery', 7),
(3, 'Psychiatry', 9);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `Code` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Brand` text NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`Code`, `Name`, `Brand`, `Description`) VALUES
(1, 'Procrastin-X', 'X', 'N/A'),
(2, 'Thesisin', 'Foo Labs', 'N/A'),
(3, 'Awakin', 'Bar Laboratories', 'N/A'),
(4, 'Crescavitin', 'Baz Industries', 'N/A'),
(5, 'Melioraurin', 'Snafu Pharmaceuticals', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `EmployeeID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Position` text NOT NULL,
  `Registered` tinyint(1) NOT NULL,
  `SSN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`EmployeeID`, `Name`, `Position`, `Registered`, `SSN`) VALUES
(101, 'Carla Espinosa', 'Head Nurse', 1, 111111110),
(102, 'Laverne Roberts', 'Nurse', 1, 222222220),
(103, 'Paul Flowers', 'Nurse', 0, 333333330);

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

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `SSN` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` text NOT NULL,
  `InsuranceID` int(11) NOT NULL,
  `PCP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`SSN`, `Name`, `Address`, `Phone`, `InsuranceID`, `PCP`) VALUES
(100000001, 'John Smith', '42 Foobar Lane', '555-0256', 68476213, 1),
(100000002, 'Grace Ritchie', '37 Snafu Drive', '555-0512', 36546321, 2),
(100000003, 'Random J. Patient', '101 Omgbbq Street', '555-1204', 65465421, 2),
(100000004, 'Dennis Doe', '1100 Foobaz Avenue', '555-2048', 68421879, 3);

-- --------------------------------------------------------

--
-- Table structure for table `physician`
--

CREATE TABLE `physician` (
  `EmployeeID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Position` text NOT NULL,
  `SSN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physician`
--

INSERT INTO `physician` (`EmployeeID`, `Name`, `Position`, `SSN`) VALUES
(1, 'John Dorian', 'Staff Internist', 111111111),
(2, 'Elliot Reid', 'Attending Physician', 222222222),
(3, 'Christopher Turk', 'Surgical Attending Physician', 333333333),
(4, 'Percival Cox', 'Senior Attending Physician', 444444444),
(5, 'Bob Kelso', 'Head Chief of Medicine', 555555555),
(6, 'Todd Quinlan', 'Surgical Attending Physician', 666666666),
(7, 'John Wen', 'Surgical Attending Physician', 777777777),
(8, 'Keith Dudemeister', 'MD Resident', 888888888),
(9, 'Molly Clock', 'Attending Psychiatrist', 999999999);

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

-- --------------------------------------------------------

--
-- Table structure for table `proceduree`
--

CREATE TABLE `proceduree` (
  `Code` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proceduree`
--

INSERT INTO `proceduree` (`Code`, `Name`, `Cost`) VALUES
(1, 'Reverse Rhinopodoplasty', 1500),
(2, 'Obtuse Pyloric Recombobulation', 3750),
(3, 'Folded Demiophtalmectomy', 4500),
(4, 'Complete Walletectomy', 10000),
(5, 'Obfuscated Dermogastrotomy', 4899),
(6, 'Reversible Pancreomyoplasty', 5600),
(7, 'Follicular Demiectomy', 25);

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

-- --------------------------------------------------------

--
-- Table structure for table `stay`
--

CREATE TABLE `stay` (
  `StayID` int(11) NOT NULL,
  `Patient` int(11) NOT NULL,
  `Room` int(11) NOT NULL,
  `Start` datetime NOT NULL,
  `End` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stay`
--

INSERT INTO `stay` (`StayID`, `Patient`, `Room`, `Start`, `End`) VALUES
(3215, 100000001, 111, '2008-05-01 00:00:00', '2008-05-04 00:00:00'),
(3216, 100000003, 123, '2008-05-03 00:00:00', '2008-05-14 00:00:00'),
(3217, 100000004, 112, '2008-05-02 00:00:00', '2008-05-03 00:00:00');

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
-- Indexes for table `affiliated_with`
--
ALTER TABLE `affiliated_with`
  ADD PRIMARY KEY (`Physician`,`Department`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`Floor`,`Code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `on_call`
--
ALTER TABLE `on_call`
  ADD PRIMARY KEY (`Nurse`,`BlockFloor`,`BlockCode`,`Start`,`End`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `physician`
--
ALTER TABLE `physician`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD PRIMARY KEY (`Physician`,`Patient`,`Medication`,`Date`);

--
-- Indexes for table `proceduree`
--
ALTER TABLE `proceduree`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Number`);

--
-- Indexes for table `stay`
--
ALTER TABLE `stay`
  ADD PRIMARY KEY (`StayID`);

--
-- Indexes for table `trained_in`
--
ALTER TABLE `trained_in`
  ADD PRIMARY KEY (`Physician`,`Treatment`);

--
-- Indexes for table `undergoes`
--
ALTER TABLE `undergoes`
  ADD PRIMARY KEY (`Patient`,`Proceduree`,`Stay`,`Date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
