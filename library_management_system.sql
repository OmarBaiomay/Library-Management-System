-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 03:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library management system`
--
CREATE DATABASE IF NOT EXISTS `library management system` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library management system`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `ISBN` varchar(200) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `publisher` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `no_of_copies_actual` int(11) DEFAULT NULL,
  `no_of_copies_current` int(11) DEFAULT NULL,
  `publish_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `borrowing_oper`
--

DROP TABLE IF EXISTS `borrowing_oper`;
CREATE TABLE `borrowing_oper` (
  `borrowing_oper_id` int(11) NOT NULL,
  `book_Id` varchar(200) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `borrowed_from` date DEFAULT NULL,
  `borrowed_to` date DEFAULT NULL,
  `actual_return_date` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `borrower_Id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--


-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE `publisher` (
  `publicher_id` int(11) NOT NULL,
  `publicher_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `is_admin` enum('0','1') DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `category` (`category`),
  ADD KEY `publicher` (`publisher`),
  ADD KEY `author` (`author`),
  ADD KEY `book_title` (`book_title`);

--
-- Indexes for table `borrowing_oper`
--
ALTER TABLE `borrowing_oper`
  ADD PRIMARY KEY (`borrowing_oper_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `borrowing_oper_ibfk_3` (`borrower_Id`),
  ADD KEY `book_Id` (`book_Id`),
  ADD KEY `book_title` (`book_title`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publicher_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `sex` (`gender`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `sex` (`gender`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `borrowing_oper`
--
ALTER TABLE `borrowing_oper`
  MODIFY `borrowing_oper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publicher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`publisher`) REFERENCES `publisher` (`publicher_id`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`author`) REFERENCES `author` (`author_id`);

--
-- Constraints for table `borrowing_oper`
--
ALTER TABLE `borrowing_oper`
  ADD CONSTRAINT `borrowing_oper_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `staff` (`staff_id`),
  ADD CONSTRAINT `borrowing_oper_ibfk_3` FOREIGN KEY (`borrower_Id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `borrowing_oper_ibfk_4` FOREIGN KEY (`book_Id`) REFERENCES `books` (`ISBN`),
  ADD CONSTRAINT `borrowing_oper_ibfk_5` FOREIGN KEY (`book_title`) REFERENCES `books` (`book_title`),
  ADD CONSTRAINT `borrowing_oper_ibfk_6` FOREIGN KEY (`status`) REFERENCES `status` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`gender`) REFERENCES `gender` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`gender`) REFERENCES `gender` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
