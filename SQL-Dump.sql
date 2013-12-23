-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2013 at 11:23 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `fedderea_p4_feddeready_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Foreign key',
  `content` text NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `created`, `modified`, `user_id`, `content`) VALUES
(4, 1382567745, 1382567745, 2, 'I changed my name today.'),
(5, 1382567842, 1382567842, 3, 'hey bro!'),
(6, 1382567851, 1382567851, 3, 'I live in Fort Worth, Texas!'),
(7, 1382567895, 1382567895, 4, 'Looking for work? I''ve got an idea!'),
(8, 1382567904, 1382567904, 4, 'On the road again.'),
(9, 1382567982, 1382567982, 5, 'video production work is available here: 555-555-5555'),
(10, 1382567994, 1382567994, 5, 'Hello everybody!'),
(13, 1383427685, 1383427685, 18, 'second post by lisa on saturday'),
(14, 1383427739, 1383427739, 18, 'hit me baby one more time!'),
(15, 1383427877, 1383427877, 18, 'let''s try this new method, shall we?'),
(16, 1383533890, 1383533890, 1, 'I see yellow'),
(17, 1383754622, 1383754622, 1, 'Here he is again'),
(18, 1387508719, 1387508719, 1, 'hi'),
(19, 1387653219, 1387653219, 1, 'Here I go again!'),
(20, 1387668061, 1387668061, 1, 'sdfasdfasdfasdfdsagdsagsdfag');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `created`, `modified`, `token`, `password`, `last_login`, `timezone`, `first_name`, `last_name`, `email`) VALUES
(1, 1382561870, 1382561870, 'ec42b340e0b4869ec86f6e45e3468ed28f56093c', '17680836574cfb773799988f6385f1d1dc6f4dc9', 0, '', 'Kevin', 'Henneberger', 'Kevin@test.com'),
(34, 1383704622, 1383704622, '4fae5f1438a3d0d5926461590ba3f4c698a683ec', 'a41a70498381ecef47ec751cef83802ebc98a643', 0, '', 'Ian', 'Kinsler', 'ian@test.com'),
(35, 1383704859, 1383704859, '4e53e4987e4277c9089c3bfeff62b407ae108ef2', 'a3eed2378580443db2e6cd5b23eb954070f59ff2', 0, '', 'Elvis', 'Andrus', 'elvis@test.com'),
(36, 1383705049, 1383705049, '851c87fee39d6a07f27e3b14ec05f5a1acb37841', '090f5a960b51303b699e2f7d2042bd26ee82c83c', 0, '', 'Adrian', 'Beltre', 'adrian@test.com'),
(37, 1383705161, 1383705161, 'd90ca3fe53377b9c5ab71506ca99a793371990c9', 'fcbf2bbfdc0e2c547f4f78303400339e421dfc5e', 0, '', 'Yu', 'Darvish', 'yu@test.com'),
(38, 1383709411, 1383709411, 'eddf1426b2473c5dfe9103a41f92d948aa59dc47', 'a3f0325df0cef95f56d9e1019270ead3f9819e9c', 0, '', 'Derek', 'Holland', 'derek@test.com'),
(39, 1383738391, 1383738391, '3beb7f62128795a3a639ebe064e1f316c0d5898a', 'ee06ca21dbe8d299a236acc1cab2a5552ebe193b', 0, '', 'Casey', 'Casey', 'Casey@test.com'),
(40, 1383760199, 1383760199, '57b6722f20f9f3083c99ebeb253d8d080883574f', '2ab7c60dfdc0a53bc5c5cdc4b0c0b29304245363', 0, '', 'Ethan', 'Joy', 'joye@csps.com'),
(41, 1384485125, 1384485125, '70a8f17f51074f8f976a5ff8b56e65f354f9b04e', 'd24fa3f817d80b77887df0a129009da5bbe1c41c', 0, '', 'Fake', 'McTest', 'notanemail'),
(42, 1387662100, 1387662100, 'de9086e25f01d61ef4f7c837266b31853236c742', 'f3f4bf5be8509a7116f0ebd2cacc518d1a08a5af', 0, '', '', '', ''),
(43, 1387662910, 1387662910, '1b5d2b296410314d80c777f420c4aad830f50436', 'b399b6689b71ded55777e6b7e1dbd872d6d091f3', 0, '', 'q', '3', 'w'),
(44, 1387662940, 1387662940, '42bd65187d48a130dbf0cb281f780c3eb3b30202', 'f3f4bf5be8509a7116f0ebd2cacc518d1a08a5af', 0, '', '', '', ''),
(45, 1387662994, 1387662994, '5f4092f543a3532625de0b8093eab5654f8965e2', '84cff1fddb8a86392a6de56eda760c19bae6e7ea', 0, '', '6', '3', '4'),
(46, 1387663991, 1387663991, '8e261a290b062045ba088cd64b3a57c587398f4d', 'e06604420d805662c195020ead8d3c1deb9958fd', 0, '', '3', '42', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `users_users`
--

CREATE TABLE `users_users` (
  `user_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Follower',
  `user_id_followed` int(11) NOT NULL COMMENT 'Followed',
  PRIMARY KEY (`user_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`user_user_id`, `created`, `user_id`, `user_id_followed`) VALUES
(2, 1382649893, 1, 2),
(3, 1382649894, 1, 1),
(4, 1383425187, 18, 1),
(5, 1383508158, 5, 18),
(6, 1387509013, 1, 36),
(7, 1387509015, 1, 38),
(8, 1387509017, 1, 35);
