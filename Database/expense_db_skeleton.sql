-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2018 at 07:05 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expense`
--

-- --------------------------------------------------------

--
-- Table structure for table `EXPENSE`
--

CREATE TABLE `EXPENSE` (
  `EXPENSEID` varchar(100) NOT NULL,
  `TRANSID` varchar(100) NOT NULL,
  `VENDORID` varchar(100) NOT NULL,
  `USERID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EXPENSE_DETAILS`
--

CREATE TABLE `EXPENSE_DETAILS` (
  `EXPENSEID` varchar(100) NOT NULL,
  `EXPENSE_TYPE_ID` varchar(100) NOT NULL,
  `AMOUNT` float NOT NULL,
  `TAX` float NOT NULL,
  `OFFER` float NOT NULL,
  `DECLARED` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EXPENSE_TYPE`
--

CREATE TABLE `EXPENSE_TYPE` (
  `EXPENSE_TYPE_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ITEM`
--

CREATE TABLE `ITEM` (
  `ITEMID` varchar(100) NOT NULL,
  `ITEM_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TRANSACTION`
--

CREATE TABLE `TRANSACTION` (
  `TRANSID` varchar(100) NOT NULL,
  `TRANS_TYPE` varchar(100) NOT NULL,
  `TRANS_MODE` varchar(100) NOT NULL,
  `TRANS_TIME` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TRANSACTION_DETAILS`
--

CREATE TABLE `TRANSACTION_DETAILS` (
  `TRANSID` varchar(100) NOT NULL,
  `ITEMID` varchar(100) NOT NULL,
  `QUANTITY` float NOT NULL,
  `METRIC` varchar(100) NOT NULL,
  `COST` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TRANSACTION_MODE`
--

CREATE TABLE `TRANSACTION_MODE` (
  `TRANS_MODE` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `USERID` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `LAST_LOGIN` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `USER_DETAILS`
--

CREATE TABLE `USER_DETAILS` (
  `USERID` varchar(100) NOT NULL,
  `FIRST_NAME` varchar(100) NOT NULL,
  `LAST_NAME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PHONE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `VENDOR`
--

CREATE TABLE `VENDOR` (
  `VENDORID` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `LOCATION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EXPENSE`
--
ALTER TABLE `EXPENSE`
  ADD PRIMARY KEY (`EXPENSEID`);

--
-- Indexes for table `EXPENSE_DETAILS`
--
ALTER TABLE `EXPENSE_DETAILS`
  ADD PRIMARY KEY (`EXPENSEID`);

--
-- Indexes for table `EXPENSE_TYPE`
--
ALTER TABLE `EXPENSE_TYPE`
  ADD PRIMARY KEY (`EXPENSE_TYPE_ID`);

--
-- Indexes for table `ITEM`
--
ALTER TABLE `ITEM`
  ADD PRIMARY KEY (`ITEMID`);

--
-- Indexes for table `TRANSACTION`
--
ALTER TABLE `TRANSACTION`
  ADD PRIMARY KEY (`TRANSID`);

--
-- Indexes for table `TRANSACTION_DETAILS`
--
ALTER TABLE `TRANSACTION_DETAILS`
  ADD PRIMARY KEY (`TRANSID`);

--
-- Indexes for table `TRANSACTION_MODE`
--
ALTER TABLE `TRANSACTION_MODE`
  ADD PRIMARY KEY (`TRANS_MODE`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `USER_DETAILS`
--
ALTER TABLE `USER_DETAILS`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `VENDOR`
--
ALTER TABLE `VENDOR`
  ADD PRIMARY KEY (`VENDORID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
