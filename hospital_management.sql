-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 01:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `adminbid`
--

CREATE TABLE `adminbid` (
  `aid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminbid`
--

INSERT INTO `adminbid` (`aid`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appoinmenttb`
--

CREATE TABLE `appoinmenttb` (
  `appoinmentid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `patname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `docname` varchar(255) NOT NULL,
  `docfee` int(11) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appoinmenttb`
--

INSERT INTO `appoinmenttb` (`appoinmentid`, `pid`, `patname`, `gender`, `email`, `contact`, `docid`, `docname`, `docfee`, `appdate`, `apptime`, `status`) VALUES
(1, 1, ' Tushar.Basak ', 'male', '2022315@iub.edu.bd', '01712028802', 1, 'Sushant Basak', 800, '2024-04-09', '10AM', 0),
(2, 1, ' Tushar.Basak ', 'male', '2022315@iub.edu.bd', '01712028802', 2, 'Durga Basak', 900, '2024-04-10', '04AM', 0),
(3, 1, ' Tushar.Basak ', 'male', '2022315@iub.edu.bd', '01712028802', 6, 'Sushant Basak', 800, '2024-04-09', '12AM', 0),
(4, 2, ' Safrina .Sawmi ', 'female', 'safrina@gmail.com', '01859938482', 5, 'Shajuti Paul', 800, '2024-04-10', '12AM', 0),
(5, 2, ' Safrina .Sawmi ', 'female', 'safrina@gmail.com', '01859938482', 4, 'Tazrin Ahmed', 1200, '2024-04-10', '06AM', 0),
(6, 1, ' Tushar.Basak ', 'male', '2022315@iub.edu.bd', '01712028802', 4, 'Tazrin Ahmed', 1200, '2024-04-11', '04AM', 0),
(7, 1, ' Tushar.Basak ', 'male', '2022315@iub.edu.bd', '01712028802', 4, 'Tazrin Ahmed', 1200, '2024-04-11', '04AM', 0),
(8, 2, ' Safrina .Sawmi ', 'female', 'safrina@gmail.com', '01859938482', 4, 'Tazrin Ahmed', 1200, '2024-04-11', '06AM', 1),
(9, 1, 'TusharBasak', 'male', '2022315@iub.edu.bd', '01712028802', 4, 'Tazrin Ahmed', 1200, '2024-04-22', '02AM', 1),
(10, 2, 'Safrina  Sawmi', 'female', 'safrina@gmail.com', '01859938482', 5, 'Shajuti Paul', 800, '2024-04-11', '06AM', 1),
(11, 1, 'Tushar Basak', 'male', '2022315@iub.edu.bd', '01712028802', 7, 'RaVee', 1000, '2024-04-15', '10AM', 1),
(12, 1, 'Tushar Basak', 'male', '2022315@iub.edu.bd', '01712028802', 6, 'Sushant Basak', 800, '2024-04-16', '12AM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `doctid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `spec` varchar(255) NOT NULL,
  `docfee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`doctid`, `username`, `password`, `email`, `spec`, `docfee`) VALUES
(4, 'Tazrin Ahmed', 'tazrin12', 'tazrin@gmail.com', 'sergeon', 1200),
(5, 'Shajuti Paul', 'shajutti', 'shajuti@gmail.com', 'meadicine', 800),
(6, 'Sushant Basak', 'sush1234', 'sushanta@gmail.com', 'meadicine', 800),
(7, 'RaVee', 'ravee123', 'ravee@gmail.com', 'cardiologist', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `contact`, `message`) VALUES
(1, 'shahriar ronok', '202262@gmail.com', '01859938480', 'Have a cup of coffe'),
(2, 'shahriar ronok', 'shahriar@41gmail.com', '01859938480', 'Great Work');

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`) VALUES
(1, 'Tushar', 'Basak', 'male', '2022315@iub.edu.bd', '01712028802', 'admin123'),
(2, 'Safrina ', 'Sawmi', 'female', 'safrina@gmail.com', '01859938482', 'safrina2');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptiontbl`
--

CREATE TABLE `prescriptiontbl` (
  `prescribeid` int(11) NOT NULL,
  `appoinmentid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `patname` varchar(255) NOT NULL,
  `docid` int(11) NOT NULL,
  `Doctorname` varchar(255) NOT NULL,
  `Disease` varchar(255) NOT NULL,
  `Allergy` varchar(255) NOT NULL,
  `Prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptiontbl`
--

INSERT INTO `prescriptiontbl` (`prescribeid`, `appoinmentid`, `pid`, `patname`, `docid`, `Doctorname`, `Disease`, `Allergy`, `Prescription`) VALUES
(1, 10, 2, 'Safrina  Sawmi', 5, 'Shajuti Paul', 'Nothing  \r\n              ', 'Nothing \r\n              ', 'Nothing\r\n              '),
(2, 10, 2, 'Safrina  Sawmi', 5, 'Shajuti Paul', 'Fever\r\n              ', '  No\r\n              ', 'take Napa Xtra  \r\n              '),
(3, 11, 1, 'Tushar Basak', 7, 'RaVee', 'Flu\r\n              ', '  No\r\n              ', 'Take hot water             ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminbid`
--
ALTER TABLE `adminbid`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `appoinmenttb`
--
ALTER TABLE `appoinmenttb`
  ADD PRIMARY KEY (`appoinmentid`);

--
-- Indexes for table `doctb`
--
ALTER TABLE `doctb`
  ADD PRIMARY KEY (`doctid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `prescriptiontbl`
--
ALTER TABLE `prescriptiontbl`
  ADD PRIMARY KEY (`prescribeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminbid`
--
ALTER TABLE `adminbid`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appoinmenttb`
--
ALTER TABLE `appoinmenttb`
  MODIFY `appoinmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctb`
--
ALTER TABLE `doctb`
  MODIFY `doctid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prescriptiontbl`
--
ALTER TABLE `prescriptiontbl`
  MODIFY `prescribeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



