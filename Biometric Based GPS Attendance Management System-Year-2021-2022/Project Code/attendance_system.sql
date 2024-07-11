-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2022 at 02:47 PM
-- Server version: 10.5.15-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `name`, `img`) VALUES
(1, 'admin@gmail.com', '1234', 'Admin chand', '1_4niISCh1VnarTdqRh-tD2A.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` varchar(250) DEFAULT NULL,
  `lattitude` varchar(250) DEFAULT NULL,
  `longitude` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `lattitude`, `longitude`, `status`, `create_date`) VALUES
(1, '2', '12233', '9777', NULL, '2022-05-11 08:37:53'),
(2, NULL, NULL, NULL, NULL, '2022-05-13 09:26:07'),
(3, NULL, NULL, NULL, NULL, '2022-05-13 09:26:14'),
(4, NULL, NULL, NULL, NULL, '2022-05-13 09:26:58'),
(5, '3', '18.6260333', '73.7254303', NULL, '2022-05-14 13:24:31'),
(6, '3', '18.6260333', '73.7254303', NULL, '2022-05-14 13:26:07'),
(7, '3', '18.6260333', '73.7254303', NULL, '2022-05-14 13:27:09'),
(8, '3', '18.6260376', '73.7254204', NULL, '2022-05-14 14:13:11'),
(9, '11', '19.8844648', '75.3312438', NULL, '2022-05-14 15:13:37'),
(10, '11', '19.8844648', '75.3312438', NULL, '2022-05-14 15:14:50'),
(11, '3', '', '', NULL, '2022-05-14 15:18:10'),
(12, '11', '19.8844648', '75.3312438', NULL, '2022-05-14 15:18:47'),
(13, '3', '', '', NULL, '2022-05-14 15:22:35'),
(14, '3', '18.6260328', '73.7254304', NULL, '2022-05-14 15:24:17'),
(15, '3', '', '', NULL, '2022-05-14 15:35:21'),
(16, '3', '', '', NULL, '2022-05-14 15:35:46'),
(17, '3', '18.6260336', '73.7254299', NULL, '2022-05-14 15:37:07'),
(18, '3', '18.6260336', '73.7254299', NULL, '2022-05-14 15:37:29'),
(19, '3', '', '', NULL, '2022-05-14 15:40:23'),
(20, '3', '18.6260328', '73.7254304', NULL, '2022-05-14 15:40:58'),
(21, '11', '19.8844648', '75.3312438', NULL, '2022-05-14 15:50:07'),
(22, '11', '19.8844648', '75.3312438', NULL, '2022-05-14 15:50:50'),
(23, '11', '19.8844648', '75.3312438', NULL, '2022-05-14 15:51:52'),
(24, '7', '18.5988346', '73.8119469', NULL, '2022-05-14 15:59:26'),
(25, '7', '18.5988346', '73.8119469', NULL, '2022-05-14 15:59:30'),
(26, '7', '18.5988346', '73.8119469', NULL, '2022-05-14 16:00:10'),
(27, '8', '18.5809009', '73.8887915', NULL, '2022-05-14 16:04:47'),
(28, '8', '18.5809009', '73.8887915', NULL, '2022-05-14 16:06:20'),
(29, '7', '18.5988346', '73.8119469', NULL, '2022-05-14 16:30:35'),
(30, '7', '18.5988346', '73.8119469', NULL, '2022-05-14 16:36:05'),
(31, '12', '18.5988346', '73.8119469', NULL, '2022-05-14 16:41:17'),
(32, '12', '18.5988346', '73.8119469', NULL, '2022-05-14 16:41:38'),
(33, '13', '', '', NULL, '2022-05-14 18:40:54'),
(34, '13', '', '', NULL, '2022-05-14 18:41:22'),
(35, '13', '', '', NULL, '2022-05-14 18:41:40'),
(36, '13', '', '', NULL, '2022-05-14 18:41:45'),
(37, '13', '', '', NULL, '2022-05-14 18:41:51'),
(38, '13', '', '', NULL, '2022-05-14 18:42:10'),
(39, '13', '', '', NULL, '2022-05-14 18:42:51'),
(40, '13', '', '', NULL, '2022-05-14 18:43:05'),
(41, '12', '18.5988346', '73.8119469', NULL, '2022-05-16 03:45:02'),
(42, '14', '18.7625695', '73.6968465', NULL, '2022-05-16 03:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class`, `status`, `create_date`) VALUES
(3, 'First Year IT', 1, '2022-05-12 08:08:34'),
(4, 'Secound Year IT', 1, '2022-05-12 08:09:03'),
(5, 'Third Year IT', 1, '2022-05-12 08:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `class_id` int(11) NOT NULL,
  `roll_no` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `school_name` text NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `state` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class_id`, `roll_no`, `email`, `password`, `teacher_id`, `school_name`, `address`, `pincode`, `state`, `status`, `create_date`) VALUES
(1, 'Atherv', 1, '12', 'arherv@gmail.com', '123', 3, 'D.M.G.A', 'Katima', '262308', '', 1, '2022-05-10 09:33:16'),
(2, 'Atherv chand', 1, '12', 'atharv@gmail.com', '123', 3, 'DMGA', 'khatima', '262308', 'uk', 1, '2022-05-11 08:36:29'),
(3, 'Nilesh Ballal', 3, '89989', 'nilesh9921@gmail.com', '123', 3, 'Test', 'Pune', '273737', 'Maharashtra ', 1, '2022-05-12 18:54:45'),
(4, 'Nilesh  B', 3, '56895995', 'nilesh@gmail.com', '123', 3, 'BNCPE', 'Pune', '565665', 'Maharashtra ', 1, '2022-05-12 19:03:47'),
(5, 'B', 3, '89959', 'nil@gmail.com', '123', 3, 'GHS', 'Pune', '595995', 'Maharashtra ', 1, '2022-05-12 19:05:22'),
(6, 'krishna varma', 4, '24', 'vikramvarma.v24@gmail.com', '123', 4, 'ajaka', 'aurangabad', '431001', 'Maharashtra', 1, '2022-05-13 07:51:54'),
(7, 'Srushti Tatte', 3, '411027', 'srushtitatte66@gmail.com', '123', 3, 'Government Polytechnic Pune', 'Pimple Gurav', '411061', 'Maharashtra', 1, '2022-05-13 10:42:17'),
(8, 'abc', 5, '01', 'abc@gmail.com', '123', 4, 'gpp', 'pune', '411508', 'Maharashtra', 1, '2022-05-13 15:20:20'),
(9, 'hacker', 3, '1111', 'test@gmail.com', '1234', 4, 'hackers_club', 'play', '431001', 'maharashtra', 1, '2022-05-14 14:09:10'),
(10, 'krishna', 3, '11111', 'game@gmail.com', 'hacker', 3, 'test', 'test', '431001', 'Maharashtra', 1, '2022-05-14 14:12:42'),
(11, 'vikram varma', 4, '22', 'smartyvikram.52@gmail.com', '1234', 4, 'vikram varma', 'play', '431001', 'maharashtra', 1, '2022-05-14 14:17:08'),
(12, 'Srushti tatte', 4, '411027', 'srushtitatte@gmail.com', '1234', 5, 'gpp', 'pimple gurav', '411061', 'Maharashtra', 1, '2022-05-14 16:40:02'),
(13, 'developer', 3, '10', 'dd@gmail.com', '123456', 5, 'bamu', 'Aurangabad', '431001', 'Maharashtra', 1, '2022-05-14 18:40:47'),
(14, 'abc', 4, '12', 'xyz@gmail.com', '1234', 5, 'gpp', 'pune', '411507', 'Maharashtra', 1, '2022-05-16 03:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(200) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `contact_number` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `create_data` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `first_name`, `last_name`, `email`, `password`, `class_id`, `status`, `contact_number`, `address`, `create_data`, `img`) VALUES
(3, 'test', 'test', 'test@gmail.com', '1234', 2, 1, '0000000000', 'address', '2022-05-11 09:51:54', ''),
(4, 'test', 'game', 'game@gmail.com', '1234', 4, 1, '9999999911', '1234', '2022-05-12 08:16:14', ''),
(5, 'Seema ', 'Tatte', 'simatatte@gmail.com', '12345', 5, 1, '7972296806', 'abcd', '2022-05-14 16:34:41', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
