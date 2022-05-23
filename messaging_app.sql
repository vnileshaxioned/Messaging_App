-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2022 at 07:15 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `messaging_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `to_user` int NOT NULL,
  `message` text NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `user_id`, `to_user`, `message`, `time`, `date`) VALUES
(1, 3, 4, 'hii bro\r\nHow are you?', '06:42:16 PM', '23-05-2022'),
(2, 3, 6, 'hii saurabh', '06:43:34 PM', '23-05-2022'),
(3, 6, 3, 'hello', '06:43:50 PM', '23-05-2022'),
(4, 4, 3, 'i am fine', '06:44:29 PM', '23-05-2022'),
(5, 5, 3, 'hii', '06:48:43 PM', '23-05-2022'),
(6, 5, 4, 'hii', '06:51:56 PM', '23-05-2022');

-- --------------------------------------------------------

--
-- Table structure for table `group_chats`
--

CREATE TABLE `group_chats` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text NOT NULL,
  `time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `group_chats`
--

INSERT INTO `group_chats` (`id`, `user_id`, `message`, `time`, `date`) VALUES
(1, 3, 'hello guys', '06:42:27 PM', '23-05-2022'),
(2, 6, 'hii bro', '06:44:01 PM', '23-05-2022'),
(3, 4, 'hello guys', '06:44:38 PM', '23-05-2022'),
(4, 5, 'hii', '06:45:34 PM', '23-05-2022');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(250) NOT NULL,
  `profile_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `gender`, `password`, `profile_image`) VALUES
(3, 'Nilesh', 'nilesh@gmail.com', '9898989898', 'Male', '22d48f51a195e9cf0a5ed6d64b2ba3d6f739deea', 'Screenshot from 2020-02-21 18-55-52.png'),
(4, 'Rajesh', 'rajesh@gmail.com', '9898989898', 'Male', '22d48f51a195e9cf0a5ed6d64b2ba3d6f739deea', 'Screenshot from 2022-05-23 10-40-41.png'),
(5, 'Vikas', 'vikas@gmail.com', '9090909090', 'Male', '22d48f51a195e9cf0a5ed6d64b2ba3d6f739deea', 'Screenshot from 2022-05-23 10-43-06.png'),
(6, 'Saurabh', 'saurabh@gmail.com', '9090909090', 'Male', '22d48f51a195e9cf0a5ed6d64b2ba3d6f739deea', 'Screenshot from 2022-05-04 15-22-49.png'),
(7, 'Ganesh', 'ganesh@gmail.com', '9898989898', 'Male', '22d48f51a195e9cf0a5ed6d64b2ba3d6f739deea', 'Screenshot from 2022-05-09 16-39-52.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chats`
--
ALTER TABLE `group_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `group_chats`
--
ALTER TABLE `group_chats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
