-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2019 at 03:45 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket_issuing`
--

-- --------------------------------------------------------

--
-- Table structure for table `common_issues`
--

CREATE TABLE `common_issues` (
  `software_id` int(11) NOT NULL,
  `issue_title` int(11) NOT NULL,
  `issue_discription` int(11) NOT NULL,
  `issue_solution` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislikes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `division_id` int(11) NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_id`, `division_name`, `branch_id`) VALUES
(1, 'D1A', 4),
(2, 'D1B', 4),
(3, 'D2A', 2),
(4, 'D2B', 2),
(5, 'D2C', 2),
(6, 'D3', 5),
(7, 'D4A', 3),
(8, 'D4B', 3),
(9, 'D5', 1),
(10, 'D6A', 4),
(11, 'D6B', 4),
(12, 'D7A', 2),
(13, 'D7B', 2),
(14, 'D7C', 2),
(15, 'D8', 5),
(16, 'D9A', 3),
(17, 'D9B', 3),
(18, 'D10', 1),
(19, 'D11A', 4),
(20, 'D11B', 4),
(21, 'D12A', 2),
(22, 'D12B', 2),
(23, 'D12C', 2),
(24, 'D13', 5),
(25, 'D14A', 3),
(26, 'D14B', 3),
(27, 'D15', 1),
(28, 'D16A', 4),
(29, 'D16B', 4),
(30, 'D17A', 2),
(31, 'D17B', 2),
(32, 'D17C', 2),
(33, 'D18', 5),
(34, 'D19A', 3),
(35, 'D19B', 3),
(36, 'D20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`) VALUES
(1, 'PHP'),
(2, 'CI'),
(3, 'Java'),
(4, 'Html'),
(5, 'Laravel');

-- --------------------------------------------------------

--
-- Table structure for table `resolver`
--

CREATE TABLE `resolver` (
  `resolver_id` int(11) NOT NULL,
  `resolver_rating` int(11) NOT NULL,
  `issues_solved` int(11) NOT NULL,
  `issues_unsolved` int(11) NOT NULL,
  `current_total_issues` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resolver`
--

INSERT INTO `resolver` (`resolver_id`, `resolver_rating`, `issues_solved`, `issues_unsolved`, `current_total_issues`) VALUES
(3, 5, 2, 0, 0),
(5, 5, 3, 0, 0),
(8, 5, 5, 0, 0),
(10, 5, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resolver_language`
--

CREATE TABLE `resolver_language` (
  `resolver_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resolver_language`
--

INSERT INTO `resolver_language` (`resolver_id`, `language_id`) VALUES
(3, 1),
(3, 2),
(5, 1),
(5, 2),
(8, 4),
(8, 5),
(10, 3),
(10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `software_id` int(11) NOT NULL,
  `software_name` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`software_id`, `software_name`, `language_id`) VALUES
(1, 'erp', 1),
(2, 'Question paper', 2),
(3, 'Time Table', 3),
(4, 'Make my Trip', 4),
(5, 'Savaan', 5),
(6, 'Electricity Bill Payment', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `software_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `user_id`, `software_id`, `description`, `image_path`, `priority`, `time`) VALUES
(75, 1, 1, 'trrfvdc\r\nfdcvferv\r\ngv\r\nergv\r\ner\r\nrgver\r\ngve\r\nrgv\r\nerr\r\ngvde\r\ngvvd\r\nergve\r\nrg\r\negv\r\nerrg', 'http://[::1]/Ticket_issuing/upload/Amazing_Creative_Photo_on_Human_Life8.jpg', 1, '2019-02-03 10:51:51'),
(76, 1, 2, 'Paragraph Based Questions. Paragraph Based questions include questions that ask you to complete, rearrange and present conclusions of a given paragraph. They are part of the reading comprehension section of the banking exams and are very important with respect to the scoring.', 'http://[::1]/Ticket_issuing/upload/Organize3.jpg', 1, '2019-02-03 10:53:58'),
(77, 1, 3, 'Time management refers to the efficient use of time. We all have the same twenty-four hrs every day at our disposal. If we use our time productively and effectively we can make the most of the time available to us, and succeed. We need to do this in a stress-free and relaxed manner so that it is our best that comes out. By overworking we stress ourselves, and that is neither judicious nor sustainable. We need to strike a balance between work and rest, and use our physical, mental and intellectual resources in the best way and wisely manage our time.', 'http://[::1]/Ticket_issuing/upload/Whitehaven_Beach_in_Australia_Tourist_Place_Wallpaper3.jpg', 2, '2019-02-03 10:55:03'),
(78, 1, 3, 'Time management refers to the efficient use of time. We all have the same twenty-four hrs every day at our disposal. If we use our time productively and effectively we can make the most of the time available to us, and succeed. We need to do this in a stress-free and relaxed manner so that it is our best that comes out. By overworking we stress ourselves, and that is neither judicious nor sustainable. We need to strike a balance between work and rest, and use our physical, mental and intellectual resources in the best way and wisely manage our time.', 'http://[::1]/Ticket_issuing/upload/StGeorgeTempleinWinter_2560x160033.jpg', 1, '2019-02-03 10:55:24'),
(79, 1, 3, 'Time management refers to the efficient use of time. We all have the same twenty-four hrs every day at our disposal. If we use our time productively and effectively we can make the most of the time available to us, and succeed. We need to do this in a stress-free and relaxed manner so that it is our best that comes out. By overworking we stress ourselves, and that is neither judicious nor sustainable. We need to strike a balance between work and rest, and use our physical, mental and intellectual resources in the best way and wisely manage our time.', 'http://[::1]/Ticket_issuing/upload/StormyLake_2560x160025.jpg', 1, '2019-02-03 10:55:43'),
(81, 1, 2, 'Paragraph Based Questions. Paragraph Based questions include questions that ask you to complete, rearrange and present conclusions of a given paragraph. They are part of the reading comprehension section of the banking exams and are very important with respect to the scoring.', 'http://[::1]/Ticket_issuing/upload/Amazing_Creative_Photo_on_Human_Life9.jpg', 1, '2019-02-03 10:58:08'),
(82, 1, 4, '\r\nMakeMyTrip Limited\r\nMakeMyTrip Logo.png\r\nTraded as	NASDAQ: MMYT\r\nIndustry	Online travel\r\nFounded	2000\r\nFounder	Deep Kalra\r\nHeadquarters	Gurugram, Haryana, India\r\nArea served\r\nWorldwide\r\nProducts	Booking flights, hotels, holidays, buses, trains and cars\r\nRevenue	Increase US$ 675.26 Million (2017-18)\r\nNumber of employees\r\n3051 (March 2018)\r\nWebsite	www.makemytrip.com\r\nMakeMyTrip Limited is an Indian online travel company founded in 2000.[1] Headquartered in Gurugram, Haryana, the company provides online travel services including flight tickets, domestic and international holiday packages, hotel reservations, and rail and bus tickets. As of 31 March 2018, they have 14 company-owned travel stores in 14 cities, over 30 franchisee-owned travel stores in 28 cities, and counters in four major airports in India. MakeMyTrip has offices in New York, Singapore, Kuala Lumpur, Phuket, Bangkok, and Dubai.', 'http://[::1]/Ticket_issuing/upload/Defeat-is-not-the-worst6.jpg', 1, '2019-02-03 10:59:30'),
(83, 9, 1, 'We also need to figure out the time of the day when we are most productive and complete important tasks at that time. For instance, the mind is the most refreshed after a good night’s sleep, and that is when we can devote our time to doing our studies.', 'http://[::1]/Ticket_issuing/upload/StormyLake_2560x160026.jpg', 2, '2019-02-03 11:07:51'),
(84, 9, 1, 'We also need to figure out the time of the day when we are most productive and complete important tasks at that time. For instance, the mind is the most refreshed after a good night’s sleep, and that is when we can devote our time to doing our studies.', 'http://[::1]/Ticket_issuing/upload/StormyLake_2560x160027.jpg', 2, '2019-02-03 11:08:31'),
(85, 1, 5, 'aavn also integrated a social networking feature with its music streaming service in April 2015. Saavn Social allows users to follow the profiles and playlists of their friends as well as celebrities. Users can share any song, album or playlist with their friends and chat about music real time.\r\naavn also integrated a social networking feature with its music streaming service in April 2015. Saavn Social allows users to follow the profiles and playlists of their friends as well as celebrities. Users can share any song, album or playlist with their friends and chat about music real time.', 'http://[::1]/Ticket_issuing/upload/Defeat-is-not-the-worst7.jpg', 2, '2019-02-08 12:49:48'),
(86, 1, 4, '\r\nMakeMyTrip Limited\r\nMakeMyTrip Logo.png\r\nTraded as	NASDAQ: MMYT\r\nIndustry	Online travel\r\nFounded	2000\r\nFounder	Deep Kalra\r\nHeadquarters	Gurugram, Haryana, India\r\nArea served\r\nWorldwide\r\nProducts	Booking flights, hotels, holidays, buses, trains and cars\r\nRevenue	Increase US$ 675.26 Million (2017-18)\r\nNumber of employees\r\n3051 (March 2018)\r\nWebsite	www.makemytrip.com\r\nMakeMyTrip Limited is an Indian online travel company founded in 2000.[1] Headquartered in Gurugram, Haryana, the company provides online travel services including flight tickets, domestic and international holiday packages, hotel reservations, and rail and bus tickets. As of 31 March 2018, they have 14 company-owned travel stores in 14 cities, over 30 franchisee-owned travel stores in 28 cities, and counters in four major airports in India. MakeMyTrip has offices in New York, Singapore, Kuala Lumpur, Phuket, Bangkok, and Dubai.', 'http://[::1]/Ticket_issuing/upload/StGeorgeTempleinWinter_2560x160034.jpg', 2, '2019-02-09 14:26:15'),
(87, 1, 5, 'aavn also integrated a social networking feature with its music streaming service in April 2015. Saavn Social allows users to follow the profiles and playlists of their friends as well as celebrities. Users can share any song, album or playlist with their friends and chat about music real time.', 'http://[::1]/Ticket_issuing/upload/hard7.png', 1, '2019-02-09 14:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_allocation`
--

CREATE TABLE `ticket_allocation` (
  `ticket_id` int(11) NOT NULL,
  `resolver_id` int(11) NOT NULL,
  `resolver_allocation_time` timestamp NULL DEFAULT NULL,
  `resolved_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_by_resolver` int(11) NOT NULL,
  `approved_by_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_allocation`
--

INSERT INTO `ticket_allocation` (`ticket_id`, `resolver_id`, `resolver_allocation_time`, `resolved_time`, `status_by_resolver`, `approved_by_user`) VALUES
(75, 5, '2019-02-03 10:57:41', '2019-02-05 12:08:32', 2, 1),
(76, 5, '2019-02-03 10:56:20', '2019-02-05 12:09:35', 2, 1),
(77, 10, '2019-02-02 12:14:24', '2019-02-08 12:16:06', 2, 1),
(78, 10, '2019-02-03 12:14:55', '2019-02-08 12:16:09', 2, 1),
(79, 10, '2019-02-01 12:15:22', '2019-02-08 12:16:15', 2, 1),
(81, 5, '2019-02-01 01:00:42', '2019-02-05 12:09:39', 2, 1),
(82, 8, '2019-02-01 02:02:40', '2019-02-05 12:08:43', 2, 1),
(83, 3, '2019-02-03 11:08:15', '2019-02-05 12:07:25', 2, 1),
(84, 3, '2019-02-03 11:09:04', '2019-02-05 12:07:28', 2, 1),
(85, 8, '2019-02-08 12:51:13', '2019-02-09 12:52:17', 2, 1),
(86, 8, '2019-02-09 14:27:38', '2019-02-09 14:28:02', 2, 1),
(87, 8, '2019-02-09 14:27:48', '2019-02-09 14:27:58', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_first_name` varchar(255) NOT NULL,
  `user_last_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_contact` int(11) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_first_name`, `user_last_name`, `user_email`, `user_password`, `user_contact`, `user_type`) VALUES
(1, 'sanjay', 'Sanjay', 'Janyani', 'sanjay@gmail.com', 'sanjay', 2030341030, 1),
(3, 'dhiren', 'Dhiren', 'Chotwani', 'dhiren@gmail.com', 'dhiren', 741852963, 2),
(4, 'jiten', 'Jiten', 'Tolani', 'jiten@gmail.com', 'jiten', 741852096, 3),
(5, 'bill', 'Bill', 'Gates', 'bill@gmail.com', 'bill', 7418529, 2),
(7, 'rahul', 'Rahul', 'Khubchandani', 'rahul@gamil.com', 'rahul', 789456123, 1),
(8, 'mark', 'Mark', 'ZUckerberg', 'mark@gmail.com', 'mark', 84253677, 2),
(9, 'yogesh', 'Yogesh', 'Lulla', '2016.sanjay.janyani@ves.ac.in', 'yogesh', 987456123, 1),
(10, 'chirag', 'Chirag', 'Raghani', '2016.chirag.rohra@ves.ac.in', 'chirag', 789456133, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`division_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`software_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `division_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `software_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
