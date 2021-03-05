-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 01:43 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_upload`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `bio` varchar(300) NOT NULL,
  `additional_info` varchar(300) NOT NULL,
  `filename` varchar(300) NOT NULL,
  `path` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `bio`, `additional_info`, `filename`, `path`) VALUES
(2, 'lllll', 'llllllllllll', 'collabration.png', 'C:\\uploadTest\\collabration.png'),
(5, 'hhhhhbhbhbh', 'cfcfcfcfcfcfc', 'download.png', 'C:\\uploadTest\\download.png'),
(8, 'gggg', 'kkkkkkkkkkkkkkk', 'download.png', 'C:\\uploadTest\\download.png'),
(9, 'gvgvgvg', 'jkjjkjk', 'download.png', 'C:\\uploadTest\\download.png'),
(11, 'ddd', 'sssss', 'download.png', 'C:\\uploadTest\\download.png'),
(109, 'Hello, Welcome to my Profile', 'Regards, Ajaya Karki', 'download.png', 'C:\\Users\\Rai jee\\Desktop\\New folder (3)\\New folder\\Documents\\NetBeansProjects\\UserManagement\\web\\images\\download.png'),
(194, 'Hello, Welcome to my Profile', 'Regards, Harry', 'download.png', 'C:\\Users\\Rai jee\\Desktop\\New folder (3)\\New folder\\Documents\\NetBeansProjects\\UserManagement\\web\\images\\download.png'),
(428, 'ddd', 'llllllllllll', 'download.png', 'C:\\Users\\Rai jee\\Desktop\\New folder (3)\\New folder\\Documents\\NetBeansProjects\\UserManagement\\web\\images\\download.png'),
(492, 'Hello, Welcome to my Profile', 'Regards, Bran', 'collabration.png', 'C:\\Users\\Rai jee\\Desktop\\New folder (3)\\New folder\\Documents\\NetBeansProjects\\UserManagement\\web\\images\\collabration.png'),
(529, 'Hello, Welcome to my Profile', 'Regards, Krishna', 'download.png', 'C:\\Users\\Rai jee\\Desktop\\New folder (3)\\New folder\\Documents\\NetBeansProjects\\UserManagement\\web\\images\\download.png'),
(756, 'Welcome to my profile', 'Ajaya Karki', 'download.png', 'C:\\Users\\Rai jee\\Desktop\\New folder (3)\\New folder\\Documents\\NetBeansProjects\\UserManagement\\web\\images\\download.png'),
(839, 'Hello, Welcome to my Profile', 'Regards, Will', 'download.png', 'C:\\Users\\Rai jee\\Desktop\\New folder (3)\\New folder\\Documents\\NetBeansProjects\\UserManagement\\web\\images\\download.png'),
(854, 'Hello, Welcome to my Profile', 'Regards, Ajaya Karki', 'download.png', 'C:\\Users\\Rai jee\\Desktop\\New folder (3)\\New folder\\Documents\\NetBeansProjects\\UserManagement\\web\\images\\download.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=855;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
