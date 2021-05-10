-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 12:24 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spw`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_pass` varchar(250) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `user_name`, `user_pass`) VALUES
(11, 'admin', '$2y$10$fpdunua9lPTXjyfv.5QkiOKpQn270q79hspS7kZfgEjrJDZnWlgAm');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `post_title` text CHARACTER SET latin1 NOT NULL,
  `post_date` varchar(55) NOT NULL,
  `post_author` text CHARACTER SET latin1 NOT NULL,
  `post_image` text CHARACTER SET latin1 NOT NULL,
  `post_keywords` text CHARACTER SET latin1 NOT NULL,
  `post_content` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_title`, `post_date`, `post_author`, `post_image`, `post_keywords`, `post_content`) VALUES
(1, 0, 'First Post', '04-16-20 05:49:PM', 'soap', 'e321cac44490fd3e9a320e5afab4f44b.jpg', 'Test', 'This is a test post'),
(2, 2, 'Batman is Bruce Wayne', '04-16-20 07:27:PM', 'batman', 'wp5357846.jpg', 'Bruce Wayne', 'This post was written by Alfred'),
(10, 3, 'Modern Warfare', '04-22-20 03:13:PM', 'bryan', 'Modern-Warfare-Beta.jpeg', 'Modern Warfare', 'This is a post about the new Call of Duty'),
(15, 3, 'Doom Guy', '04-22-20 04:44:PM', 'bryan', 'doom-guy.jpg', 'Doom', 'THis is a jpeg file');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'soap', '$2y$10$SfPD01puY0vbRXkAsqQ7B.rvThfkcGauNVqCuvHMLTsP4ZfsAUuDe', '2020-04-16 13:15:35'),
(2, 'batman', '$2y$10$/ZhhmBPaURv4IMi7zXkbFObaEEpXNM7Ih63NDC1EQWnbZVwHLTE1S', '2020-04-16 18:26:00'),
(3, 'bryan', '$2y$10$Q/KbgL1Cq.DLlFMnUFUKEuGR20B7lCIBttN7h7LkwaiW61rEKTf0y', '2020-04-16 23:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

CREATE TABLE `user_posts` (
  `post_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `post_title` text CHARACTER SET latin1 NOT NULL,
  `post_date` varchar(55) CHARACTER SET latin1 NOT NULL,
  `post_author` text CHARACTER SET latin1 NOT NULL,
  `post_image` text CHARACTER SET latin1 NOT NULL,
  `post_keywords` text CHARACTER SET latin1 NOT NULL,
  `post_content` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1218;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
