-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2021 at 10:08 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `general_diary`
--

CREATE TABLE `general_diary` (
  `gd_key` varchar(64) NOT NULL,
  `gd_value` text NOT NULL,
  `gd_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_diary`
--

INSERT INTO `general_diary` (`gd_key`, `gd_value`, `gd_status`) VALUES
('7777777777_1631036623925', '18/09/2021:-;-:Badda Thana:-;-:Samir :-;-:7777777777:-;-:Dhaka:-;-:24527845224:-;-:This is description.', 'Accepted'),
('7777777777_1631036927486', '20/09/2021:-;-:Badda Thana:-;-:Samir Asif:-;-:7777777777:-;-:Dhaka:-;-:72578527752:-;-:Phone lost.', 'Rejected'),
('8888888888_1631041934572', '525:-;-:dfg:-;-:dfg:-;-:8888888888:-;-:fdg:-;-:33433433434:-;-:dfg', 'Pending'),
('8888888888_1631041936237', '525:-;-:dfg:-;-:dfg:-;-:8888888888:-;-:fdg:-;-:33433433434:-;-:dfg', 'Pending'),
('8888888888_1631041943801', '525:-;-:dfg:-;-:dfg:-;-:8888888888:-;-:fdg:-;-:33433433434:-;-:dfg', 'Accepted'),
('8888888888_1631042006357', '5245242542:-;-:dfgd:-;-:dfg:-;-:8888888888:-;-:dfgfdg:-;-:44544544544:-;-:ghj', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `general_diary`
--
ALTER TABLE `general_diary`
  ADD PRIMARY KEY (`gd_key`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
