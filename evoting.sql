-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 07:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `blockchain`
--

CREATE TABLE `blockchain` (
  `id` int(11) NOT NULL,
  `previoushash` varchar(200) NOT NULL,
  `currenthash` varchar(200) NOT NULL,
  `transaction` varchar(200) NOT NULL,
  `timeinfo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blockchain`
--

INSERT INTO `blockchain` (`id`, `previoushash`, `currenthash`, `transaction`, `timeinfo`) VALUES
(5, '00000', '31bca02094eb78126a517b206a88c73cfa9ec6f704c7030d18212cace820f025f00bf0ea68dbf3f3a5436ca63b53bf7bf80ad8d5de7d8359d0b7fed9dbc3ab99', 'VI001,U00128999,6', '05-02-2023-21h42m23s'),
(6, '31bca02094eb78126a517b206a88c73cfa9ec6f704c7030d18212cace820f025f00bf0ea68dbf3f3a5436ca63b53bf7bf80ad8d5de7d8359d0b7fed9dbc3ab99', '31bca02094eb78126a517b206a88c73cfa9ec6f704c7030d18212cace820f025f00bf0ea68dbf3f3a5436ca63b53bf7bf80ad8d5de7d8359d0b7fed9dbc3ab99', 'VI004,V001789,7', '06-02-2023-11h17m35s'),
(7, '31bca02094eb78126a517b206a88c73cfa9ec6f704c7030d18212cace820f025f00bf0ea68dbf3f3a5436ca63b53bf7bf80ad8d5de7d8359d0b7fed9dbc3ab99', '40b244112641dd78dd4f93b6c9190dd46e0099194d5a44257b7efad6ef9ff4683da1eda0244448cb343aa688f5d3efd7314dafe580ac0bcbf115aeca9e8dc114', 'VI001,V001789,7', '06-02-2023-11h18m27s'),
(8, '40b244112641dd78dd4f93b6c9190dd46e0099194d5a44257b7efad6ef9ff4683da1eda0244448cb343aa688f5d3efd7314dafe580ac0bcbf115aeca9e8dc114', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510a', 'VI0088,V001789,8', '06-02-2023-12h02m57s');

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `id` int(11) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `ename` varchar(20) NOT NULL,
  `edate` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`id`, `eid`, `ename`, `edate`, `status`) VALUES
(2, 'U00128999', 'MEST Election For Ed', '02/05/23', 'completed'),
(3, 'V001789', 'JKOO Election ', '02/06/23', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `electionconduct`
--

CREATE TABLE `electionconduct` (
  `id` int(11) NOT NULL,
  `electionId` varchar(20) NOT NULL,
  `nomineeid` int(11) NOT NULL,
  `voterid` varchar(20) NOT NULL,
  `cdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electionconduct`
--

INSERT INTO `electionconduct` (`id`, `electionId`, `nomineeid`, `voterid`, `cdate`) VALUES
(4, 'U00128999', 6, 'VI001', '2023-02-05 21:42:23.'),
(5, 'U00128999', 8, '1', 'opp'),
(6, 'U00128999', 8, '2', '9oo'),
(7, 'V001789', 7, 'VI004', '2023-02-06 11:17:35.'),
(8, 'V001789', 7, 'VI001', '2023-02-06 11:18:27.'),
(9, 'V001789', 8, 'VI0088', '2023-02-06 12:02:58.');

-- --------------------------------------------------------

--
-- Table structure for table `nominees`
--

CREATE TABLE `nominees` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `team` varchar(10) NOT NULL,
  `imgpath` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nominees`
--

INSERT INTO `nominees` (`id`, `username`, `email`, `contact`, `team`, `imgpath`) VALUES
(6, 'kav', 'akak@gmail.com', 74586689, 'lop', 'kav.jpg'),
(7, 'sam', 'sam@gmail.com', 2147483647, 'JOP', 'sam.jpg'),
(8, 'tom', 'tom@gmail.com', 2147483647, 'POPP', 'tom.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `voterid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `name`, `email`, `contact`, `voterid`, `password`) VALUES
(2, 'mani', 'mani@gmail.com', 2147483647, 'VI003', 'mani'),
(3, 'binu', 'binu@gmail.com', 2147483647, 'VI001', 'binu'),
(4, 'raji', 'raji@gmail.com', 2147483647, 'VI004', 'raji'),
(5, 'parmesh', 'paramesh@gmail.com', 2147483647, 'VI0088', 'paramesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blockchain`
--
ALTER TABLE `blockchain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electionconduct`
--
ALTER TABLE `electionconduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nominees`
--
ALTER TABLE `nominees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blockchain`
--
ALTER TABLE `blockchain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `electionconduct`
--
ALTER TABLE `electionconduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nominees`
--
ALTER TABLE `nominees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
