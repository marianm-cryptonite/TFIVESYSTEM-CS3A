-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 05:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeelist`
--

CREATE TABLE `employeelist` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `birth` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `civil` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `employeeStatus` varchar(50) NOT NULL,
  `employee Number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeelist`
--

INSERT INTO `employeelist` (`id`, `fullname`, `birth`, `gender`, `nationality`, `civil`, `designation`, `department`, `employeeStatus`, `employee Number`) VALUES
(1, 'Rommel Membrere Macapobre', '12/12/2000', 'Male', 'filipino', 'single', 'wala ', 'wala', 'wlaa', '09123456'),
(2, 'Rommel membreremacapobre', '2023-01-18', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '123123123123'),
(3, 'Rommel Rommel Rommel ', '2023-01-20', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '11111111111111111111111111'),
(4, 'Rommel walawala', '2023-01-21', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '3123123123123'),
(5, 'Rommel membreremacapobre', '2023-02-03', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '231313123'),
(6, 'asdasdasdasdasdasdasdasdasd', '2023-01-22', 'Male', 'filipino', 'Married', 'teacher', 'DCS', 'asdasdasd', '312313123'),
(7, 'asdasdasd12312312313123', '2023-02-10', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '123123'),
(8, 'asdasdasd12312312313123', '2023-02-10', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '123123'),
(9, 'asdasdasd12312312313123', '2023-02-10', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '123123'),
(10, 'asdasdasdmembreremacapobre', '', '', 'filipino', 'Single', '1231231231231', 'DCS', '312312313', '1231231'),
(11, 'asdasdasdmembreremacapobre', '', '', 'filipino', 'Single', '1231231231231', 'DCS', '312312313', '1231231'),
(12, 'asdasdasd12312312313123', '', '', '', '', 'qweqweqwe', 'qweqweqweq', 'qweqweqwe', '12312312313123'),
(13, 'Rommel membreremacapobre', '2023-02-11', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '3123123123123'),
(14, 'Rommel membreremacapobre', '2023-01-30', 'Male', 'filipino', 'Single', 'teacher', 'DCS', '123123', '123123'),
(15, 'Kurtmembreremacapobre', '2023-01-18', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '000000000000001'),
(16, 'Rommel Rommel Rommel ', '2023-01-28', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '123123123'),
(17, '123123123123123123123123123', '2023-01-28', 'Male', '123123123', 'Single', '123123123', '123123123', '123123123', '123123123'),
(18, 'Rommel membreremacapobre', '2023-02-02', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '123123123123'),
(19, 'Rommel membreremacapobre', '2023-02-02', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '23123123123123'),
(20, 'Rommel membreremacapobre', '2023-02-02', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '23123123123123'),
(21, 'walawalawala', '2023-02-02', 'Male', 'wala', 'Single', 'wala', 'wala', 'wala', '123123123'),
(22, 'Rommel membreremacapobre', '2023-02-02', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '23123123123123'),
(23, 'Rommel membreremacapobre', '2023-02-02', 'Male', 'filipino', 'Single', 'teacher', 'DCS', 'wala', '123123'),
(24, 'Rommel membreremacapobre', '2023-02-02', 'Male', 'filipino', 'Single', 'teacher', '<?php echo $department;?>', 'wala', '222');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_ID`, `username`, `user_password`, `user_type`) VALUES
(1, 'cashier1', 'cashier1', 'cashier1'),
(2, 'admin', 'admin', 'admin'),
(3, 'cashier2', 'cashier2', 'cashier2');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `employee_number` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `quali` varchar(50) NOT NULL,
  `paydate` int(11) NOT NULL,
  `employee_status` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`employee_number`, `fname`, `mname`, `surname`, `department`, `civil_status`, `quali`, `paydate`, `employee_status`, `designation`) VALUES
(12345, '12345', '12345', '12345', '12345', '12345', '12345', 2023, '12345', '12345'),
(12345, '12345', '12345', '12345', '12345', '12345', '12345', 2023, '12345', '12345'),
(0, '', '', '', '', '', '', 0, '', ''),
(12345, '12345', '12345', '12345', '12345', '12345', '12345', 2023, '12345', '12345'),
(12345, '12345', '12345', '12345', '12345', '12345', '12345', 2023, '12345', '12345'),
(123123123, 'rommel', 'membrere', 'macapobre', 'DCS', 'single', 'wala', 2023, 'regular', 'wala'),
(123123123, 'rommel', 'membrere', 'macapobre', 'DCS', 'single', 'wala', 2023, 'regular', 'wala');

-- --------------------------------------------------------

--
-- Table structure for table `pos2`
--

CREATE TABLE `pos2` (
  `item_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `discounted` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `cha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pos2`
--

INSERT INTO `pos2` (`item_name`, `price`, `quantity`, `discount`, `discounted`, `cash`, `cha`) VALUES
('', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 0, 2, 0, 0, 500, 0),
('anchovy lovers ', 0, 2, 0, 0, 500, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 500, 0),
('anchovy lovers ', 200, 2, 0, 0, 500, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 0, 2, 0, 0, 1000, 0),
('anchovy lovers ', 0, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 200, 600, 1000, 0),
('anchovy lovers ', 400, 2, 200, 600, 1000, 0),
('anchovy lovers ', 400, 2, 200, 600, 1000, 400),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 103, 308, 1000, 692),
('anchovy lovers ', 205, 2, 103, 308, 1000, 692),
('anchovy lovers ', 205, 2, 103, 308, 1000, 692),
('anchovy lovers ', 205, 2, 103, 308, 1000, 692),
('anchovy lovers ', 205, 2, 103, 308, 1000, 692),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('mocha cookie', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('mocha cookie', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 200, 600, 1000, 400),
('anchovy lovers ', 400, 2, 200, 600, 1000, 400),
('anchovy lovers ', 400, 2, 200, 600, 1000, 400),
('anchovy lovers ', 400, 2, 200, 600, 1000, 400),
('anchovy lovers ', 400, 2, 200, 600, 1000, 400),
('anchovy lovers ', 400, 2, 200, 600, 1000, 400),
('pizz ', 400, 2, 200, 600, 1000, 400),
('Mocha Cookie Crumble', 205, 2, 200, 600, 1000, 400),
('Irish Cream Cold Brew', 109, 2, 200, 600, 1000, 400),
('Irish Cream Cold Brew', 109, 2, 200, 600, 1000, 400),
('Irish Cream Cold Brew', 109, 2, 0, 0, 500, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('anchovy lovers ', 200, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 400, 2, 0, 0, 1000, 0),
('Irish Cream Cold Brew', 205, 2, 0, 0, 1000, 0),
('Irish Cream Cold Brew', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('Mocha Cookie Crumble', 205, 2, 0, 0, 1000, 0),
('Mocha Cookie Crumble', 205, 2, 0, 0, 1000, 0),
('Mocha Cookie Crumble', 205, 2, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('Mocha Cookie Crumble', 205, 2, 0, 0, 1000, 0),
('Irish Cream Cold Brew', 205, 2, 0, 0, 1000, 0),
('Irish Cream Cold Brew', 109, 3, 0, 0, 1000, 0),
('Irish Cream Cold Brew', 109, 3, 0, 0, 1000, 0),
('Irish Cream Cold Brew', 109, 3, 0, 0, 1000, 0),
('Irish Cream Cold Brew', 109, 3, 0, 0, 1000, 0),
('Irish Cream Cold Brew', 109, 3, 0, 0, 1000, 0),
('pizza', 400, 2, 0, 0, 1000, 0),
('Mocha Cookie Crumble', 205, 2, 0, 0, 1000, 0),
('Mocha Cookie Crumble', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 0, 0, 1000, 0),
('anchovy lovers ', 205, 2, 103, 308, 1000, 692),
('anchovy lovers ', 205, 2, 103, 308, 1000, 692),
('Irish Cream Cold Brew', 205, 2, 0, 0, 1000, 0),
('Mocha Cookie Crumble', 205, 2, 0, 0, 1000, 0),
('Mocha Cookie Crumble', 205, 2, 103, 103, 1000, 692),
('Irish Cream Cold Brew', 205, 2, 103, 103, 1000, 692),
('Pistachio Frappuccino', 159, 5, 199, 199, 1000, 403),
('Caramel Brulée Frappuccino', 200, 4, 200, 200, 1000, 400),
('Mocha Cookie Crumble', 205, 2, 103, 103, 1000, 692),
('Irish Cream Cold Brew', 205, 2, 103, 103, 1000, 692);

-- --------------------------------------------------------

--
-- Table structure for table `salesa`
--

CREATE TABLE `salesa` (
  `sales_num` int(11) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `discounted` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `change` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesa`
--

INSERT INTO `salesa` (`sales_num`, `itemname`, `price`, `quantity`, `discount`, `discounted`, `cash`, `change`) VALUES
(1, 'Blue Miracle', 300, 2, 50, 150, 1000, 400),
(19, 'anchovy lovers ', 400, 2, 0, 0, 100, 0),
(20, 'anchovy lovers ', 200, 2, 0, 0, 1000, 0),
(21, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(22, 'anchovy lovers ', 400, 2, 0, 0, 100, 0),
(23, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(24, 'anchovy lovers ', 400, 2, 0, 0, 0, 0),
(25, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(26, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(27, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(28, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(29, 'anchovy lovers ', 200, 2, 0, 0, 1000, 0),
(30, 'anchovy lovers ', 200, 2, 0, 0, 1000, 0),
(31, 'anchovy lovers ', 200, 2, 0, 0, 1000, 0),
(32, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(33, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(34, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(35, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(36, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(37, 'anchovy lovers ', 200, 2, 0, 0, 1000, 0),
(38, 'anchovy lovers ', 400, 2, 0, 0, 1000, 0),
(39, 'anchovy lovers ', 200, 2, 0, 0, 500, 0),
(40, 'pizza', 205, 2, 0, 0, 500, 0),
(41, 'pizza', 205, 2, 0, 0, 500, 0),
(42, 'pizza', 205, 2, 102, 308, 500, 192),
(43, 'mocha cookie', 205, 2, 0, 0, 1000, 0),
(44, 'mocha cookie', 205, 2, 103, 308, 1000, 692),
(45, 'mocha cookie', 205, 2, 103, 308, 1000, 692),
(46, 'Irish Cream Cold Brew', 400, 2, 200, 600, 1000, 400),
(47, 'anchovy lovers ', 2, 2, 1, 3, 1000, 997);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeelist`
--
ALTER TABLE `employeelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_ID`);

--
-- Indexes for table `salesa`
--
ALTER TABLE `salesa`
  ADD PRIMARY KEY (`sales_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeelist`
--
ALTER TABLE `employeelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salesa`
--
ALTER TABLE `salesa`
  MODIFY `sales_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
