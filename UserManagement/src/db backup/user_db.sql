-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 05:35 AM
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
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `dob`, `contact`, `address`) VALUES
(1, 'Ajaya', 'ajaya.karki777@yahoo.com', '1234', '2020-05-18', '9862192243', 'Bhojpur'),
(4, 'Ragnor', 'ragnor@gmail.com', '1234', '2020-05-04', '9862192555', 'England'),
(5, 'Ned', 'ned@gmail.com', '1234', '2020-05-04', '9862192555', 'Winterfell'),
(6, 'Aishwarya', 'aish@gmail.com', '1234', '2020-05-05', '9862192244', 'Kathmandu'),
(7, 'Bran', 'Bran@gmail.com', '1234', '2020-05-26', '9862192555', 'Winterfell'),
(8, 'Bijen', 'bijen@gmail.com', '1234', '2020-05-18', '9862192244', 'Kathmandu'),
(9, 'Aashish', 'ashish@gmail.com', '1234', '2020-05-25', '9862192244', 'Pokhara'),
(10, 'ram', 'ram@gmail.com', '1234', '2020-05-12', '9862192555', 'Pokhara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
