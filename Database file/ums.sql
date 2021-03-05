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
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `ID` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `activity` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`ID`, `name`, `activity`, `date`) VALUES
(92, 'ned@gmail.com', 'Account edited by admin', 'Sun Jun 07 19:17:05 NPT 2020'),
(93, 'ned@gmail.com', 'Account edited by admin', 'Sun Jun 07 19:18:49 NPT 2020'),
(94, 'ned@gmail.com', 'Account edited by admin', 'Sun Jun 07 19:19:58 NPT 2020'),
(95, 'ned@gmail.com', 'Profile edited', 'Sun Jun 07 19:22:31 NPT 2020'),
(105, 'ned@gmail.com', 'Profile edited', 'Sun Jun 07 20:40:56 NPT 2020'),
(106, 'ned@gmail.com', 'Logged into system', 'Sun Jun 07 21:40:58 NPT 2020'),
(107, 'ned@gmail.com', 'Profile edited', 'Sun Jun 07 22:15:24 NPT 2020'),
(108, 'ned@gmail.com', 'Profile edited', 'Sun Jun 07 22:15:33 NPT 2020'),
(109, 'ned@gmail.com', 'Profile edited', 'Sun Jun 07 22:15:43 NPT 2020'),
(110, 'ned@gmail.com', 'Profile edited', 'Sun Jun 07 22:15:50 NPT 2020'),
(111, 'ned@gmail.com', 'Profile edited', 'Sun Jun 07 22:16:07 NPT 2020'),
(112, 'ned@gmail.com', 'changed password', 'Sun Jun 07 22:16:29 NPT 2020'),
(113, 'ned@gmail.com', 'changed password', 'Sun Jun 07 22:16:39 NPT 2020'),
(114, 'ned@gmail.com', 'changed password', 'Sun Jun 07 22:16:52 NPT 2020'),
(115, 'ned@gmail.com', 'Logged into system', 'Sun Jun 07 22:17:01 NPT 2020'),
(116, 'ned@gmail.com', 'Logged into system', 'Sun Jun 07 22:36:05 NPT 2020'),
(117, 'ned@gmail.com', 'Logged into system', 'Sun Jun 07 22:37:43 NPT 2020'),
(118, 'ned@gmail.com', 'Logged into system', 'Sun Jun 07 22:38:38 NPT 2020'),
(119, 'ned@gmail.com', 'Logged into system', 'Sun Jun 07 22:39:17 NPT 2020'),
(120, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Sun Jun 07 22:55:01 NPT 2020'),
(121, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 00:04:00 NPT 2020'),
(122, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 00:04:38 NPT 2020'),
(123, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 00:15:08 NPT 2020'),
(124, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 00:30:55 NPT 2020'),
(125, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 11:17:40 NPT 2020'),
(126, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 11:22:58 NPT 2020'),
(127, 'ned@gmail.com', 'Logged into system', 'Mon Jun 08 11:40:34 NPT 2020'),
(128, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 11:54:13 NPT 2020'),
(129, 'shahi_bijesh@hotmail.com', 'Created new account', 'Mon Jun 08 11:55:04 NPT 2020'),
(130, 'bijenkhadgi@yahoo.com', 'Created new account', 'Mon Jun 08 11:55:23 NPT 2020'),
(131, 'bijenkhadgi@yahoo.com', 'Created new account', 'Mon Jun 08 11:55:37 NPT 2020'),
(132, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 11:55:41 NPT 2020'),
(133, 'ned@gmail.com', 'Logged into system', 'Mon Jun 08 11:56:28 NPT 2020'),
(134, 'ned@gmail.com', 'Logged into system', 'Mon Jun 08 11:58:19 NPT 2020'),
(135, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 11:58:49 NPT 2020'),
(136, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 12:03:38 NPT 2020'),
(137, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 12:05:46 NPT 2020'),
(138, 'ned@gmail.com', 'Logged into system', 'Mon Jun 08 12:06:00 NPT 2020'),
(139, 'ned@gmail.com', 'Logged into system', 'Mon Jun 08 12:07:30 NPT 2020'),
(140, 'ned@gmail.com', 'Logged into system', 'Mon Jun 08 12:07:41 NPT 2020'),
(141, 'ned@gmail.com', 'Logged into system', 'Mon Jun 08 12:07:49 NPT 2020'),
(142, 'ned@gmail.com', 'Logged into system', 'Mon Jun 08 12:07:57 NPT 2020'),
(143, 'ned@gmail.com', 'Logged into system', 'Mon Jun 08 12:08:05 NPT 2020'),
(144, 'ned@hotmail.com', 'Logged into system', 'Tue Jun 08 11:17:40 NPT 2020'),
(145, 'ned@hotmail.com', 'Logged into system', 'Tue Jun 08 11:17:40 NPT 2020'),
(146, 'ned@hotmail.com', 'Logged into system', 'Tue Jun 08 11:17:40 NPT 2020'),
(147, 'ned@hotmail.com', 'Logged into system', 'Tue Jun 08 11:17:40 NPT 2020'),
(148, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(149, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(150, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(151, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(152, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(153, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(154, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(155, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(156, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(157, 'ned@hotmail.com', 'Logged into system', 'Wed Jun 08 11:17:40 NPT 2020'),
(158, 'ned@hotmail.com', 'Logged into system', 'Thu Jun 08 11:17:40 NPT 2020'),
(159, 'ned@hotmail.com', 'Logged into system', 'Thu Jun 08 11:17:40 NPT 2020'),
(160, 'ned@hotmail.com', 'Logged into system', 'Thu Jun 08 11:17:40 NPT 2020'),
(161, 'ned@hotmail.com', 'Logged into system', 'Fri Jun 08 11:17:40 NPT 2020'),
(162, 'ned@hotmail.com', 'Logged into system', 'Fri Jun 08 11:17:40 NPT 2020'),
(163, 'ned@hotmail.com', 'Logged into system', 'Fri Jun 08 11:17:40 NPT 2020'),
(164, 'ned@hotmail.com', 'Logged into system', 'Fri Jun 08 11:17:40 NPT 2020'),
(165, 'ned@hotmail.com', 'Logged into system', 'Fri Jun 08 11:17:40 NPT 2020'),
(166, 'ned@hotmail.com', 'Logged into system', 'Fri Jun 08 11:17:40 NPT 2020'),
(167, 'ned@hotmail.com', 'Logged into system', 'Sat Jun 08 11:17:40 NPT 2020'),
(168, 'ned@hotmail.com', 'Logged into system', 'Sat Jun 08 11:17:40 NPT 2020'),
(169, 'ned@hotmail.com', 'Logged into system', 'Sat Jun 08 11:17:40 NPT 2020'),
(170, 'ned@hotmail.com', 'Logged into system', 'Sat Jun 08 11:17:40 NPT 2020'),
(171, 'ajaya@gmail.com', 'Created new account', 'Mon Jun 08 12:40:23 NPT 2020'),
(172, 'ajaya@gmail.com', 'Logged into system', 'Mon Jun 08 12:40:32 NPT 2020'),
(173, 'shahi_bijesh@hotmail.com', 'Logged into system', 'Mon Jun 08 12:43:25 NPT 2020'),
(174, 'ajaya@gmail.com', 'Logged into system', 'Mon Jun 08 12:45:45 NPT 2020'),
(175, 'ajaya@gmail.com', 'Logged into system', 'Mon Jun 08 13:11:26 NPT 2020'),
(176, 'ajaya@gmail.com', 'Logged into system', 'Mon Jun 08 17:17:39 NPT 2020'),
(177, 'Bran@gmail.com', 'Created new account', 'Tue Jun 09 10:09:12 NPT 2020'),
(178, 'ajaya@gmail.com', 'Logged into system', 'Tue Jun 09 10:14:53 NPT 2020'),
(179, 'Bran@gmail.com', 'Logged into system', 'Tue Jun 09 12:38:47 NPT 2020'),
(180, 'Bran@gmail.com', 'Profile edited', 'Tue Jun 09 12:41:07 NPT 2020'),
(181, 'Bran@gmail.com', 'Profile edited', 'Tue Jun 09 12:42:38 NPT 2020'),
(182, 'ajaya@gmail.com', 'Logged into system', 'Tue Jun 09 12:45:26 NPT 2020'),
(183, 'Bran@gmail.com', 'Logged into system', 'Tue Jun 09 13:52:27 NPT 2020'),
(184, 'Bran@gmail.com', 'Logged into system', 'Tue Jun 09 15:08:46 NPT 2020'),
(185, 'Bran@gmail.com', 'changed password', 'Tue Jun 09 20:25:59 NPT 2020'),
(186, 'Bran@gmail.com', 'Logged into system', 'Tue Jun 09 20:26:27 NPT 2020'),
(187, 'Bran@gmail.com', 'Logged into system', 'Tue Jun 09 22:21:59 NPT 2020'),
(188, 'ajaya@gmail.com', 'Logged into system', 'Tue Jun 09 22:49:23 NPT 2020'),
(189, 'Bran@gmail.com', 'Logged into system', 'Tue Jun 09 23:46:31 NPT 2020'),
(190, 'Bran@gmail.com', 'Profile edited', 'Tue Jun 09 23:48:31 NPT 2020'),
(191, 'Bran@gmail.com', 'Logged into system', 'Wed Jun 10 11:54:47 NPT 2020'),
(192, 'Bran@gmail.com', 'changed password', 'Wed Jun 10 12:07:54 NPT 2020'),
(193, 'Bran@gmail.com', 'changed password', 'Wed Jun 10 12:11:00 NPT 2020'),
(194, 'Bran@gmail.com', 'changed password', 'Wed Jun 10 12:13:45 NPT 2020'),
(195, 'ajaya@gmail.com', 'Logged into system', 'Wed Jun 10 13:09:24 NPT 2020'),
(196, 'ajaya@gmail.com', 'Logged into system', 'Wed Jun 10 14:33:45 NPT 2020'),
(197, 'Bran@gmail.com', 'Logged into system', 'Wed Jun 10 15:30:11 NPT 2020'),
(198, 'ajaya@gmail.com', 'Logged into system', 'Wed Jun 10 15:37:06 NPT 2020'),
(199, 'ajaya@gmail.com', 'Logged into system', 'Wed Jun 10 16:03:34 NPT 2020'),
(200, 'Bran@gmail.com', 'Logged into system', 'Wed Jun 10 16:20:58 NPT 2020'),
(201, 'ajaya@gmail.com', 'Logged into system', 'Wed Jun 10 16:45:58 NPT 2020'),
(202, 'ram@gmail.com', 'Profile edited', 'Wed Jun 10 16:46:11 NPT 2020'),
(203, 'Bran@gmail.com', 'Logged into system', 'Wed Jun 10 17:04:58 NPT 2020');

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
  `address` varchar(45) NOT NULL,
  `Role` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `dob`, `contact`, `address`, `Role`) VALUES
(5, 'Fed Mysta', 'ned@gmail.com', '789', '2020-05-04', '4354645', 'Winterfell', 'client'),
(17, 'Bijen shahi', 'shahi_bijesh@hotmail.com', 'asdf', '2020-06-17', '97454', 'Kathmandu', 'admin'),
(19, 'asd', 'bijenkhadgi@yahoo.com', 'asd', '2020-06-07', '97454', 'vvvv', 'client'),
(20, 'Bijen shahi', 'shahibijen@gmail.com', '123', '1999-11-22', '9841943442', 'Kathmandu', 'client'),
(21, 'Mark mason1', 'ram@gmail.com', 'asd', '2020-06-30', '986219255', '1231321', 'client'),
(22, 'Mark mason', 'shahibijen@gmail.com', '123', '2020-07-02', '986219255', 'Kathmandu', 'client'),
(26, 'Ajaya', 'ajaya@gmail.com', 'kkk', '2020-06-16', '9862192098', 'Kathmandu', 'admin'),
(27, 'Bran', 'Bran@gmail.com', 'ooo', '2020-06-08', '9862192244', 'Winterfell', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
