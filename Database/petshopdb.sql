-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 08:33 AM
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
-- Database: `petshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `billtbl`
--

CREATE TABLE `billtbl` (
  `BNum` int(11) NOT NULL,
  `BDate` varchar(50) NOT NULL,
  `CustId` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billtbl`
--

INSERT INTO `billtbl` (`BNum`, `BDate`, `CustId`, `uid`, `amt`) VALUES
(1, 'Wed Dec 20 21:57:48 IST 2023', 1, 8, 18000),
(2, 'Wed Dec 20 22:13:27 IST 2023', 1, 8, 30000),
(3, 'Wed Dec 20 22:14:06 IST 2023', 1, 8, 30000),
(4, 'Thu Dec 21 10:57:44 IST 2023', 1, 8, 6000),
(5, 'Mon Feb 05 11:39:33 IST 2024', 1, 9, 11500);

-- --------------------------------------------------------

--
-- Table structure for table `categorytbl`
--

CREATE TABLE `categorytbl` (
  `CatId` int(11) NOT NULL,
  `CatDes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorytbl`
--

INSERT INTO `categorytbl` (`CatId`, `CatDes`) VALUES
(7, 'Pets'),
(8, 'Food'),
(9, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `customertbl`
--

CREATE TABLE `customertbl` (
  `CustId` int(11) NOT NULL,
  `CustName` varchar(50) NOT NULL,
  `CustAdd` varchar(50) NOT NULL,
  `CustPhone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customertbl`
--

INSERT INTO `customertbl` (`CustId`, `CustName`, `CustAdd`, `CustPhone`) VALUES
(1, 'hgchg', 'rtn', '848965925');

-- --------------------------------------------------------

--
-- Table structure for table `pettbl`
--

CREATE TABLE `pettbl` (
  `PId` int(11) NOT NULL,
  `PName` varchar(50) NOT NULL,
  `PCat` int(11) NOT NULL,
  `Pqty` int(11) NOT NULL,
  `Pprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pettbl`
--

INSERT INTO `pettbl` (`PId`, `PName`, `PCat`, `Pqty`, `Pprice`) VALUES
(6, 'cats', 9, 8, 2000),
(7, 'cat', 7, 17, 1000),
(8, 'dogs', 7, 13, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE `usertbl` (
  `UId` int(50) NOT NULL,
  `UName` varchar(50) NOT NULL,
  `UPass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`UId`, `UName`, `UPass`) VALUES
(9, 'user', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billtbl`
--
ALTER TABLE `billtbl`
  ADD PRIMARY KEY (`BNum`),
  ADD KEY `CustId_fk` (`CustId`),
  ADD KEY `uid_fk` (`uid`);

--
-- Indexes for table `categorytbl`
--
ALTER TABLE `categorytbl`
  ADD PRIMARY KEY (`CatId`);

--
-- Indexes for table `customertbl`
--
ALTER TABLE `customertbl`
  ADD PRIMARY KEY (`CustId`);

--
-- Indexes for table `pettbl`
--
ALTER TABLE `pettbl`
  ADD PRIMARY KEY (`PId`),
  ADD KEY `PCat` (`PCat`);

--
-- Indexes for table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`UId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billtbl`
--
ALTER TABLE `billtbl`
  MODIFY `BNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categorytbl`
--
ALTER TABLE `categorytbl`
  MODIFY `CatId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customertbl`
--
ALTER TABLE `customertbl`
  MODIFY `CustId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pettbl`
--
ALTER TABLE `pettbl`
  MODIFY `PId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `UId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pettbl`
--
ALTER TABLE `pettbl`
  ADD CONSTRAINT `pettbl_ibfk_1` FOREIGN KEY (`PCat`) REFERENCES `categorytbl` (`CatId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
