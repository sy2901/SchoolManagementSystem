-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2020 at 05:44 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminname` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`adminname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminname`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

DROP TABLE IF EXISTS `staff_info`;
CREATE TABLE IF NOT EXISTS `staff_info` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `presentaddress` varchar(150) NOT NULL,
  `permanentaddress` varchar(150) NOT NULL,
  `qualification` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`id`, `name`, `father_name`, `department`, `dob`, `gender`, `mobile_no`, `email`, `presentaddress`, `permanentaddress`, `qualification`) VALUES
(55333675, 'Shivam', 'Rohit', 'Accountant', '1999-06-09', 'Male', '7894561234', 'kkyadav@gmail.com', 'Jaunpur', 'Jaunpur', 'HSC'),
(55331655, 'Krishna Patel', 'Ramdin', 'Teaching', '1984-03-08', 'Male', '4578963214', 'krishnap@gmail.com', 'Jaunpur', 'Jaunpur', 'Post-Graduate');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
CREATE TABLE IF NOT EXISTS `student_info` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `presentaddress` varchar(150) NOT NULL,
  `permanentaddress` varchar(150) NOT NULL,
  `classname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `name`, `father_name`, `mother_name`, `dob`, `gender`, `mobile_no`, `email`, `presentaddress`, `permanentaddress`, `classname`) VALUES
(15331846, 'Deepak', 'Kashinath', 'Pramila', '2003-10-05', 'Male', '9004345305', 'kkyadav@gmail.com', 'Badlapur', 'Jaunpur', '8th'),
(15334074, 'Shivnarayan', 'Kashinath', 'Pramila', '2001-09-02', 'Male', '8450943184', 'shivnarayan.y@somaiya.edu', 'Badlapur', 'Jaunpur', '10th');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'shiv123', 'shivnarayan.y@somaiya.edu', 'sk292001');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
