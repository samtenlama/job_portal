-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 06:01 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `first_name` varchar(111) NOT NULL,
  `last_name` varchar(111) NOT NULL,
  `admin_type` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `admin_email`, `admin_password`, `admin_username`, `first_name`, `last_name`, `admin_type`) VALUES
(1, 'samten261@gmail.com', '12345   ', 'samten tamang76', 'samten    ', 'tamang    ', '1'),
(2, 'yushika@gmail.com', '123456 ', 'yushika123', 'yushika ', 'sigdel ', '2'),
(12, 'Bikal@gmail.com', '1', 'Bikal', 'Bikal', 'Prajapati', '2');

-- --------------------------------------------------------

--
-- Table structure for table `admin_type`
--

CREATE TABLE `admin_type` (
  `id` int(111) NOT NULL,
  `admin` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_type`
--

INSERT INTO `admin_type` (`id`, `admin`) VALUES
(1, 'Super admin'),
(2, 'Customer admin');

-- --------------------------------------------------------

--
-- Table structure for table `all_jobs`
--

CREATE TABLE `all_jobs` (
  `job_id` int(111) NOT NULL,
  `customer_email` varchar(111) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `des` varchar(111) NOT NULL,
  `country` varchar(111) NOT NULL,
  `state` varchar(111) NOT NULL,
  `city` varchar(100) NOT NULL,
  `keyword` varchar(111) NOT NULL,
  `category` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_jobs`
--

INSERT INTO `all_jobs` (`job_id`, `customer_email`, `job_title`, `des`, `country`, `state`, `city`, `keyword`, `category`) VALUES
(12, 'samten261@gmail.com', 'java', 'java for experience', 'Nepal', 'Bagmati', 'Kathmandu', 'experiecne', '3'),
(13, 'samten261@gmail.com', 'PHP Developer-Angularjs/corephp/mysql', 'Angularjs', 'Nepal', 'Bagmati', 'Kathmandu', 'Angularjs', '11'),
(14, 'yushika@gmail.com', 'Urgent Requirement of PHP Developer, 1 to 4 years', 'Dear Candidates, Greeting from iWEBSERVICES. iWEBSERVICES  is one of the most promising full services Web', 'Nepal', 'Bagmati', 'Kathmandu', 'php fresher', '12'),
(15, 'yushika@gmail.com', 'Wordpress/php Developer (work from Home -2pm to 9pm', 'Work from home (2pm to 2am Experience in Web', 'Nepal', 'Bagmati', 'Kathmandu', 'Wordpress', '13'),
(17, 'samten261@gmail.com', 'Web Developerrrrrrrr', 'sjkdhcjcg', 'Nepal', 'Bagmati', 'Kathmandu', 'web', '9'),
(18, 'yushika@gmail.com', 'Software Developer,', 'Writing well-designed, testable, and efficient code.\r\nGathering and evaluating user feedback.\r\nWorking as a par', 'Nepal', 'Bagmati', 'Kathmandu', 'development', '9'),
(19, 'Bikal@gmail.com', 'Web Developer', 'web', 'Nepal', 'Bagmati', 'Kathmandu', 'web', '13'),
(20, 'yushika@gmail.com', 'AI Researcher', 'Completed bachelor in computer science or related field\r\nMinimum 2 years of working experience in the field of ', 'Nepal', 'Bagmati', 'Kathmandu', 'AI', '9'),
(21, 'yushika@gmail.com', 'Java', 'Java for experience', 'Nepal', 'Bagmati', 'Kathmandu', 'java', '10'),
(22, 'yushika@gmail.com', 'Coding java Developer', 'for fresher', 'Nepal', 'Bagmati', 'Kathmandu', 'java', '10'),
(23, 'yushika@gmail.com', 'java developer', 'for fresher', 'Nepal', 'Bagmati', 'Kathmandu', 'java', '10'),
(24, 'yushika@gmail.com', 'java', 'for experience', 'Nepal', 'Bagmati', 'Kathmandu', 'java', '10'),
(25, 'yushika@gmail.com', 'java developer', 'java', 'Nepal', 'Bagmati', 'Kathmandu', 'java', '10');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(111) NOT NULL,
  `company` varchar(111) NOT NULL,
  `des` varchar(100) NOT NULL,
  `admin` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company`, `des`, `admin`) VALUES
(1, 'abc', ' web\r\n                            ', ' yushika@gmail.com'),
(20, 'telecom.net', 'telecom.net', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `id` int(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`id`, `email`, `password`, `first_name`, `last_name`, `dob`, `mobile_number`) VALUES
(2, 'karishma@gmail.com', '1', 'karishma', 'thapa', '2000-02-12', '982145606'),
(3, 'Miraj@gmail.com', '1', 'Miraj', 'Shrestha', '2001-02-14', '9803456780'),
(7, 'Urmila@gmail.com', '1', 'Urmila', 'Katuwal', '2000-10-02', '8489789574');

-- --------------------------------------------------------

--
-- Table structure for table `job_apply`
--

CREATE TABLE `job_apply` (
  `id` int(111) NOT NULL,
  `first_name` varchar(111) NOT NULL,
  `last_name` varchar(111) NOT NULL,
  `dob` varchar(111) NOT NULL,
  `file` varchar(111) NOT NULL,
  `id_job` varchar(111) NOT NULL,
  `job_seeker` varchar(111) NOT NULL,
  `mobile_number` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_apply`
--

INSERT INTO `job_apply` (`id`, `first_name`, `last_name`, `dob`, `file`, `id_job`, `job_seeker`, `mobile_number`) VALUES
(22, 'pritesh', 'thakur', '2000-09-30', 'Screenshot (10).png', '15', 'yushika@gmail.com', 2147483647),
(23, 'Miraj', 'Shrestha', '2000-09-20', 'Screenshot (12).png', '13', 'Miraj@gmail.com', 0),
(24, 'Miraj', 'Shrestha', '2001-02-14', 'Screenshot (94).png', '19', 'Miraj@gmail.com', 0),
(25, 'Diwash', 'Adhikari', '2000-03-25', 'Screenshot (5).png', '13', 'yushika@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `id` int(111) NOT NULL,
  `category` varchar(111) NOT NULL,
  `des` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `category`, `des`) VALUES
(8, 'politics', 'for fresher'),
(9, 'Python', 'This is for python'),
(10, 'java', 'new fresher'),
(11, 'Angularjs', 'Angularjs'),
(12, 'php', 'Dear Candidates, Greeting from iWEBSERVICES.iWEBSERVICES is one of the most promising full service Web '),
(13, 'Wordpress', 'Wordpress');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(111) NOT NULL,
  `img` varchar(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `dob` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `user_email` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `img`, `name`, `dob`, `number`, `email`, `user_email`) VALUES
(22, 'photo.png', 'Karishma', '2023-06-30', '9818779981', 'karishma@gmail.com', 'karishma@gmail.com'),
(23, 'photo.jpg', 'Miraj Shrestha', '2001-02-13', '234567788', 'Miraj@gmail.com', 'Miraj@gmail.com'),
(24, 'Screenshot (4).png', 'Urmila ', '2000-02-10', '68979087', 'Urmila@gmail.com', 'Urmila@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_jobs`
--
ALTER TABLE `all_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_apply`
--
ALTER TABLE `job_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `all_jobs`
--
ALTER TABLE `all_jobs`
  MODIFY `job_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jobseeker`
--
ALTER TABLE `jobseeker`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_apply`
--
ALTER TABLE `job_apply`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
