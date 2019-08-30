-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 30, 2019 at 05:44 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facebook44`
--

-- --------------------------------------------------------

--
-- Table structure for table `com_info`
--

DROP TABLE IF EXISTS `com_info`;
CREATE TABLE IF NOT EXISTS `com_info` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `post_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_info`
--

INSERT INTO `com_info` (`id`, `name`, `image`, `comment`, `post_id`) VALUES
(2, 'Razzak Khan', 'diamond_slider_5.jpg', 'oip', '13'),
(3, 'Razzak Khan', 'diamond_slider_5.jpg', 'Hello', '13'),
(4, 'Razzak Khan', 'diamond_slider_5.jpg', 'uo9u80', '13'),
(5, 'Razzak Khan', 'diamond_slider_5.jpg', 'Hello', '9'),
(6, 'Razzak Khan', 'diamond_slider_5.jpg', 'opo9p', '10'),
(7, 'Razzak Khan', 'diamond_slider_5.jpg', 'uo9u80', '12'),
(8, 'Razzak Khan', 'diamond_slider_5.jpg', 'Hello', '11'),
(9, 'Razzak Khan', 'diamond_slider_5.jpg', 'iopiopiop', '8'),
(10, 'Razzak Khan', 'diamond_slider_5.jpg', 'Hello ....Ami Abdur Razzak Khan.', '8'),
(11, 'Afrin Sultana', 'd6.jpg', 'opo9p', '14'),
(12, 'Afrin Sultana', 'd6.jpg', 'uo9u80', '13'),
(13, 'Afrin Sultana', 'd6.jpg', 'Hello ....Ami Abdur Razzak Khan.', '8'),
(14, 'Afrin Sultana', 'd6.jpg', 'Hello', '9'),
(15, 'Afrin Sultana', 'd6.jpg', 'opo9p', '12'),
(16, 'Afroza Shimu', 'diamond_slider_1.jpg', 'I am afruza.', '15'),
(17, 'Afroza Shimu', 'diamond_slider_1.jpg', 'I am afruza.', '14');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `post` text NOT NULL,
  `up_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `date`, `image`, `post`, `up_image`) VALUES
(10, 'Afroza Shimu', '30th August,2019', 'diamond_slider_1.jpg', 'à¦œà¦¾à¦¤à§€à§Ÿ à¦¸à¦žà§à¦šà§Ÿ à¦¬à§à¦¯à§à¦°à§‹à¦° à¦¹à§Ÿà§‡ à¦à¦¤ à¦¦à¦¿à¦¨ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦•à¦®à¦¿à¦¶à¦¨ à¦›à¦¾à§œà¦¾à¦‡ à¦¸à¦žà§à¦šà§Ÿà¦ªà¦¤à§à¦° à¦¬à¦¿à¦•à§à¦°à¦¿ à¦•à¦°à§‡ à¦†à¦¸à¦›à¦¿à¦²à¥¤ à¦¸à§‡à¦‡ à¦¸à¦¬ à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦•à§‹à¦¨à§‹ à¦•à§‹à¦¨à§‹à¦Ÿà¦¿ à¦à¦–à¦¨ à¦•à¦®à¦¿à¦¶à¦¨ à¦¨à¦¿à§Ÿà§‡ à¦¸à¦žà§à¦šà§Ÿà¦ªà¦¤à§à¦° à¦¬à¦¿à¦•à§à¦°à¦¿ à¦•à¦°à¦›à§‡à¥¤ à¦¬à¦¦à§Œà¦²à¦¤à§‡ à¦²à¦¾à¦­à¦¬à¦¾à¦¨ à¦¹à¦šà§à¦›à§‡ à¦¤à¦¾à¦°à¦¾à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦œà¦¾à¦¤à§€à§Ÿ à¦¸à¦žà§à¦šà§Ÿ à¦…à¦§à¦¿à¦¦à¦ªà§à¦¤à¦° à¦à¦Ÿà¦¾ à¦šà¦¾à¦‡à¦›à§‡ à¦¨à¦¾à¥¤ à¦¸à¦‚à¦¸à§à¦¥à¦¾à¦Ÿà¦¿ à¦¬à¦²à¦›à§‡, à¦¬à§à¦¯à¦¾à¦‚à¦•à¦—à§à¦²à§‹à¦° à¦à¦­à¦¾à¦¬à§‡ à¦¸à¦žà§à¦šà§Ÿà¦ªà¦¤à§à¦° à¦¬à¦¿à¦•à§à¦°à¦¿ à¦à¦¬à¦‚ à¦•à¦®à¦¿à¦¶à¦¨ à¦¨à§‡à¦“à§Ÿà¦¾à¦° à¦ªà§à¦°à¦¬à¦£à¦¤à¦¾ à¦ à§‡à¦•à¦¾à¦¤à§‡ à¦¹à¦¬à§‡à¥¤ à¦¨à¦‡à¦²à§‡ à¦¸à¦°à¦•à¦¾à¦°à¦¿ à¦¹à¦¿à¦¸à¦¾à¦¬à¦¾à§Ÿà¦¨à§‡ à¦¸à¦®à¦¸à§à¦¯à¦¾ à¦¤à§‹ à¦¹à¦¬à§‡à¦‡, à¦¬à¦¾à§œà¦¬à§‡ à¦¸à¦°à¦•à¦¾à¦°à§‡à¦° à¦•à¦®à¦¿à¦¶à¦¨ à¦¬à§à¦¯à§Ÿà¦“à¥¤', ''),
(9, 'Afroza Shimu', '30th August,2019', 'diamond_slider_1.jpg', 'Tumi bath khao?', 'diamond_slider_1.jpg'),
(8, 'Afroza Shimu', '30th August,2019', 'diamond_slider_1.jpg', 'Ami Bath khai....', 'diamond_slider_5.jpg'),
(11, 'Afroza Shimu', '30th August,2019', 'diamond_slider_1.jpg', 'bla bla bla blabla bla', 'wordpress-wallpaper-background-62783-64774-hd-wallpapers.jpg'),
(12, 'Afrin Sultana', '30th August,2019', 'd6.jpg', 'Ami Afrin', 'office-work.jpg'),
(13, 'Razzak Khan', '30th August,2019', 'diamond_slider_5.jpg', 'I am Abdur Razzak Khan.', 'dj-smoke.jpg'),
(14, 'Afrin Sultana', '30th August,2019', 'd6.jpg', 'pppppp', 'food.jpg'),
(15, 'Afroza Shimu', '30th August,2019', 'diamond_slider_1.jpg', 'I am Afruza.', 'adult-attractive-beautiful-51969.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `sl` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `u_image` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`sl`, `name`, `email`, `pass`, `dob`, `u_image`, `gender`) VALUES
(11, 'Afroza Shimu', 'afroza@gmail.com', '1234', '28/8/1994', 'diamond_slider_1.jpg', 'woman'),
(10, 'Razzak Khan', 'razzak@gmail.com', '1234', '28/8/1994', 'diamond_slider_5.jpg', 'man'),
(9, 'Afrin Sultana', 'afrin@gmail.com', '1234', '28/8/1994', 'd6.jpg', 'woman');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
