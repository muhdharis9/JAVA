-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 01:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oopproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminregistration`
--

CREATE TABLE `adminregistration` (
  `adminID` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` int(11) NOT NULL,
  `ICNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminregistration`
--

INSERT INTO `adminregistration` (`adminID`, `password`, `phoneNo`, `ICNo`) VALUES
('123', '123', 123, 123),
('admin', '123', 123, 123),
('haris', '123', 10888888, 30127),
('haris2', '123', 108384186, 30127),
('iman', '123', 90909, 123456),
('malikk', '123', 1010101, 30188);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `available` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`brand`, `model`, `available`) VALUES
('Perodua', 'Bezza', 'Yes'),
('Honda', 'Civic', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `carregistration`
--

CREATE TABLE `carregistration` (
  `car_no` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `available` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carregistration`
--

INSERT INTO `carregistration` (`car_no`, `brand`, `model`, `available`) VALUES
('C0004', 'Perodua', 'Bezza', 'Yes'),
('C0005', 'Honda', 'Civic', 'Yes'),
('C0006', 'Honda', 'CRV', 'Yes'),
('C0007', 'mini', 'cooper', 'No'),
('C0010', 'volvo', 'x90', 'Yes'),
('C0011', 'mercedes', 'c200', 'Yes'),
('C0012', 'bmw', 'm3', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ic_number` int(11) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `name`, `ic_number`, `mobile`) VALUES
(1, 'A0011', 'ammar', 0, 177787),
(2, 'A0022', 'adz', 0, 76767),
(3, 'A0033', 'AmmarWafiy', 0, 193667256),
(4, 'A0044', 'AhmadHazim', 0, 194115871),
(5, 'A0055', 'HAZIQ', 0, 129452996),
(6, 'A0066', 'Izzat', 0, 12930192),
(7, 'A0067', 'AbdulAzhim', 0, 199887862),
(8, 'A0068', 'Ahmad Ali', 0, 17726262),
(9, 'A0069', '1', 0, 1),
(10, 'A0070', 'aaa', 123, 123),
(11, 'A0071', 'wan', 30200, 10000),
(12, 'A0072', 'haris', 223344, 112233);

-- --------------------------------------------------------

--
-- Table structure for table `rentail`
--

CREATE TABLE `rentail` (
  `id` int(11) NOT NULL,
  `car_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returncar`
--

CREATE TABLE `returncar` (
  `id` int(11) NOT NULL,
  `car_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returncar`
--

INSERT INTO `returncar` (`id`, `car_id`, `cust_id`, `fee`, `date`, `due`) VALUES
(27, 'C0004', 'A0011', 1, '01-01-2023', '02-01-2023'),
(28, 'C0005', 'A0033', 2, '05-01-2023', '05-01-2023'),
(29, 'C0006', 'A0011', 1, '01-01-2023', '02-01-2023'),
(30, 'C0009', 'A0044', 2, '02-01-2023', '03-01-2023'),
(31, 'C0009', 'A0055', 50, '01-01-2023', '10-01-2023'),
(32, 'C0009', 'A0055', 5, '03-01-2023', '04-01-2023'),
(33, 'C0004', 'A0011', 500, '03-01-2023', '04-01-2023'),
(34, 'C0005', 'A0033', 50, '09-01-2023', '10-01-2023'),
(35, 'C0005', 'A0022', 33, '05-01-2023', '06-01-2023'),
(36, 'C0004', 'A0011', 10, '01-01-2023', '02-01-2023'),
(37, 'C0005', 'A0022', 10, '09-01-2023', '10-01-2023'),
(38, 'C0006', 'A0044', 100, '05-01-2023', '06-01-2023'),
(39, 'C0007', 'A0066', 100, '05-01-2023', '06-01-2023'),
(40, 'C0004', 'A0011', 10, '06-01-2023', '07-01-2023'),
(41, 'C0004', 'A0011', 100, '02-01-2023', '03-01-2023'),
(42, 'C0010', 'A0071', 500, '10-01-2023', '15-01-2023'),
(43, 'C0006', 'A0022', 100, '06-01-2023', '07-01-2023'),
(44, 'C0008', 'A0033', 500, '06-01-2023', '14-01-2023'),
(45, 'C0011', 'A0044', 500, '10-01-2023', '15-01-2023'),
(46, 'C0007', 'A0044', 100, '05-01-2023', '07-01-2023'),
(47, 'C0006', 'A0066', 200, '12-01-2023', '14-01-2023'),
(48, 'C0006', 'A0066', 200, '12-01-2023', '14-01-2023'),
(49, 'C0012', 'A0072', 500, '10-01-2023', '31-01-2023'),
(50, 'C0006', 'A0033', 100, '16-01-2023', '19-01-2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminregistration`
--
ALTER TABLE `adminregistration`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `carregistration`
--
ALTER TABLE `carregistration`
  ADD PRIMARY KEY (`car_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentail`
--
ALTER TABLE `rentail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returncar`
--
ALTER TABLE `returncar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rentail`
--
ALTER TABLE `rentail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
