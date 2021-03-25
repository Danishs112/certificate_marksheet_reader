-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2020 at 12:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `certificate`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate_information`
--

CREATE TABLE `certificate_information` (
  `info_id` int(11) NOT NULL,
  `certificate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `stu_name` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `instructor_name` varchar(200) NOT NULL,
  `certifying_authority` varchar(100) NOT NULL,
  `dated` varchar(100) NOT NULL,
  `submitted_on` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificate_information`
--

INSERT INTO `certificate_information` (`info_id`, `certificate_id`, `user_id`, `stu_name`, `course_name`, `instructor_name`, `certifying_authority`, `dated`, `submitted_on`) VALUES
(248, 1600633376, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of', 'Coursera', '11/09/2018', '2020-09-20 13:23:11.677817'),
(249, 1600633409, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of', 'Coursera', '11/09/2018', '2020-09-20 13:23:33.565698'),
(250, 1600633421, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', 'of FUNDAMENTALS OF DEEP LEARNING FOR COMPUTER VISION Will Ramey 2019', '2020-09-20 13:23:44.885576'),
(251, 1600633437, 1, 'Danish Soma', 'PHP Essential Training Course', 'Tanya Staples VP, Linkedin Learning', 'Linkdin Learning', 'Mar 20,2019 + 4hours4min', '2020-09-20 13:24:02.316157'),
(252, 1600633487, 1, 'Danish Soma', 'Introduction to Structured Query Language (SQL)', 'Charles Severance Clinical Associate Professor, School of Information University of Michigan COURSE', 'Coursera', '04/27/2019', '2020-09-20 13:24:51.099523'),
(253, 1600633499, 1, 'Danish Soma', 'Python Data Structures', 'Charles Severance Clinical Professor, Schoo! of Information University of Michigan COURSE', 'Coursera', '07/30/2019', '2020-09-20 13:25:04.685119'),
(254, 1600633516, 1, 'Danish Soma', 'Programming for Everybody (Getting Started with Python)', 'Charles Severance Clinical Associate Professor, School of Information University of Michigan COURSE', 'Coursera', '07/18/2019', '2020-09-20 13:25:19.785220'),
(255, 1600633529, 1, 'Danish Soma', 'What is Data Science?', 'pe Po Alex Aklson, Ph.D. Polong Lin Data Scientist Data Scientist, IBM COURSE', 'Coursera', '04/13/2020', '2020-09-20 13:25:33.951899'),
(256, 1600633543, 1, 'Danish Soma', 'PHP Essential Training Course', 'Tanya Staples VP, Linkedin Learning', 'Linkdin Learning', 'Mar 20,2019 + 4hours4min', '2020-09-20 13:25:48.122344'),
(257, 1600633561, 1, 'Mohit Sharma', 'the HTML Fundamentals course', 'Yeva Hyusyan, Chief Executive Officer', 'Sololearn', '11 December, 2017', '2020-09-20 13:26:05.886320'),
(258, 1600633577, 1, 'Mohammad Naushad Bhat', 'Deep Learning', 'Sebastian Thrun Founder,Udacity', 'udacity', 'June 24, 2019', '2020-09-20 13:26:21.731925'),
(259, 1600633598, 1, 'Arpita Gupta', 'Machine Learning Engineer Nanodegree', 'Sebastian Thrun Founder,Udacity', 'udacity', 'July 25, 2020', '2020-09-20 13:26:41.978282'),
(260, 1600633615, 1, 'Danish soma', '11.5 hours of Bootstrap 4 From Scratch : With 5 Projects', 'Brad Traversy,', 'udemy', 'July 1, 2019', '2020-09-20 13:26:58.738032'),
(261, 1600633629, 1, 'Naushad Bhat', '2 hours of Code Your First Game: Arcade Classic in JavaScript on Canvas', 'Chris DeLeon,', 'udemy', 'May 25, 2018', '2020-09-20 13:27:13.094443'),
(262, 1600635057, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of', 'Coursera', '11/09/2018', '2020-09-20 13:51:11.898691'),
(263, 1600635177, 1, 'Danish Soma', 'PHP Essential Training Course', 'Tanya Staples VP, Linkedin Learning', 'Linkdin Learning', 'Mar 20,2019 + 4hours4min', '2020-09-20 13:53:01.265093'),
(264, 1600635579, 1, 'Danish Soma', 'Programming for Everybody (Getting Started with Python)', 'Charles Severance Clinical Associate Professor, School of Information University of Michigan COURSE', 'Coursera', '07/18/2019', '2020-09-20 13:59:44.052879'),
(265, 1600635595, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', 'of FUNDAMENTALS OF DEEP LEARNING FOR COMPUTER VISION Will Ramey 2019', '2020-09-20 13:59:58.933837'),
(266, 1600635683, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', 'Will Ramey 2019', '2020-09-20 14:01:27.299720'),
(267, 1600635702, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', '2019', '2020-09-20 14:01:45.589341'),
(268, 1600635740, 1, 'Arpita Gupta', 'Machine Learning Engineer Nanodegree', 'Sebastian Thrun Founder,Udacity', 'udacity', 'July 25, 2020', '2020-09-20 14:02:24.497598'),
(269, 1600635870, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of', 'Coursera', '11/09/2018', '2020-09-20 14:04:33.605416'),
(270, 1600635969, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of', 'Coursera', '11/09/2018', '2020-09-20 14:06:12.839110'),
(271, 1600635991, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of', 'Coursera', '11/09/2018', '2020-09-20 14:06:35.676437'),
(272, 1600636014, 1, 'Danish Soma', 'Introduction to Structured Query Language (SQL)', 'Charles Severance Clinical Associate Professor, School of Information University of Michigan COURSE ', 'Coursera', '04/27/2019', '2020-09-20 14:06:57.865746'),
(273, 1600636067, 1, 'Danish Soma', 'Python Data Structures', 'Charles Severance Clinical Professor, Schoo! of Information University of Michigan COURSE CERTIFICATE Verify', 'Coursera', '07/30/2019', '2020-09-20 14:07:51.185113'),
(274, 1600636085, 1, 'Danish Soma', 'Python Data Structures', 'Charles Severance Clinical Professor, Schoo! of Information University of Michigan COURSE CERTIFICATE', 'Coursera', '07/30/2019', '2020-09-20 14:08:09.573913'),
(275, 1600636097, 1, 'Danish Soma', 'Programming for Everybody (Getting Started with Python)', 'Charles Severance Clinical Associate Professor, School of Information University of Michigan COURSE CERTIFICATE', 'Coursera', '07/18/2019', '2020-09-20 14:08:22.452332'),
(276, 1600636110, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of London COURSE CERTIFICATE', 'Coursera', '11/09/2018', '2020-09-20 14:08:33.471526'),
(277, 1600636141, 1, 'Danish Soma', 'What is Data Science?', 'pe Po Alex Aklson, Ph.D. Polong Lin Data Scientist Data Scientist, IBM COURSE CERTIFICATE', 'Coursera', '04/13/2020', '2020-09-20 14:09:04.963346'),
(278, 1600936416, 1, 'Danish Soma', 'What is Data Science?', 'pe Po Alex Aklson, Ph.D. Polong Lin Data Scientist Data Scientist, IBM COURSE CERTIFICATE', 'Coursera', '04/13/2020', '2020-09-24 14:03:40.166837'),
(279, 1600936416, 1, 'Danish Soma', 'What is Data Science?', 'pe Po Alex Aklson, Ph.D. Polong Lin Data Scientist Data Scientist, IBM COURSE CERTIFICATE', 'Coursera', '04/13/2020', '2020-09-24 14:03:59.296644'),
(280, 1600936416, 1, 'Danish Soma', 'What is Data Science?', 'pe Po Alex Aklson, Ph.D. Polong Lin Data Scientist Data Scientist, IBM COURSE CERTIFICATE', 'Coursera', '04/13/2020', '2020-09-24 14:04:13.434967'),
(281, 1600936453, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', '2019', '2020-09-24 14:04:16.990781'),
(282, 1600936453, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', '2019', '2020-09-24 14:06:25.305730'),
(283, 1600936453, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', '2019', '2020-09-24 14:06:39.520867'),
(284, 1600936453, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', '2019', '2020-09-24 14:06:45.249683'),
(285, 1600936453, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', '2019', '2020-09-24 14:06:55.732276'),
(286, 1601644891, 1, 'Danish Soma', 'What is Data Science?', 'pe Po Alex Aklson, Ph.D. Polong Lin Data Scientist Data Scientist, IBM COURSE CERTIFICATE', 'Coursera', '04/13/2020', '2020-10-02 18:51:33.726334'),
(287, 1601644891, 1, 'Danish Soma', 'What is Data Science?', 'pe Po Alex Aklson, Ph.D. Polong Lin Data Scientist Data Scientist, IBM COURSE CERTIFICATE', 'Coursera', '04/13/2020', '2020-10-02 18:51:51.042334'),
(288, 1601645056, 1, 'Danish Soma', 'Python Data Structures', 'Charles Severance Clinical Professor, Schoo! of Information University of Michigan COURSE CERTIFICATE', 'Coursera', '07/30/2019', '2020-10-02 18:54:19.678983'),
(289, 1601645070, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of London COURSE CERTIFICATE', 'Coursera', '11/09/2018', '2020-10-02 18:54:33.832180'),
(290, 1601645087, 1, 'Danish Soma', 'Programming for Everybody (Getting Started with Python)', 'Charles Severance Clinical Associate Professor, School of Information University of Michigan COURSE CERTIFICATE', 'Coursera', '07/18/2019', '2020-10-02 18:54:50.252868'),
(291, 1601645100, 1, 'Danish Soma', 'PHP Essential Training Course', 'Tanya Staples VP, Linkedin Learning', 'Linkdin Learning', 'Mar 20,2019 + 4hours4min', '2020-10-02 18:55:04.266771'),
(292, 1601646310, 1, 'Danish Soma', 'PHP Essential Training Course', 'Tanya Staples VP, Linkedin Learning', 'Linkdin Learning', 'Mar 20,2019 + 4hours4min', '2020-10-02 19:15:13.073200'),
(293, 1601650592, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of London COURSE CERTIFICATE', 'Coursera', '11/09/2018', '2020-10-02 20:26:44.987121'),
(294, 1601650605, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of London COURSE CERTIFICATE', 'Coursera', '11/09/2018', '2020-10-02 20:26:48.920610'),
(295, 1601650709, 1, 'Danish Soma', 'What is Data Science?', 'pe Po Alex Aklson, Ph.D. Polong Lin Data Scientist Data Scientist, IBM COURSE CERTIFICATE', 'Coursera', '04/13/2020', '2020-10-02 20:28:32.602776'),
(296, 1601650955, 1, 'Danish Soma', 'Programming for Everybody (Getting Started with Python)', 'Charles Severance Clinical Associate Professor, School of Information University of Michigan COURSE CERTIFICATE', 'Coursera', '07/18/2019', '2020-10-02 20:32:38.895151'),
(297, 1601650980, 1, 'Danish Soma', 'PHP Essential Training Course', 'Tanya Staples VP, Linkedin Learning', 'Linkdin Learning', 'Mar 20,2019 + 4hours4min', '2020-10-02 20:33:05.104883'),
(298, 1601651005, 1, 'Arpita Gupta', 'Machine Learning Engineer Nanodegree', 'Sebastian Thrun Founder,Udacity', 'udacity', 'July 25, 2020', '2020-10-02 20:33:28.757514'),
(299, 1603100067, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of London COURSE CERTIFICATE', 'Coursera', '11/09/2018', '2020-10-19 15:04:31.898503'),
(300, 1603100079, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of London COURSE CERTIFICATE', 'Coursera', '11/09/2018', '2020-10-19 15:04:42.506706'),
(301, 1603100093, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of London COURSE CERTIFICATE', 'Coursera', '11/09/2018', '2020-10-19 15:04:56.776534'),
(302, 1603100110, 1, 'Danish Soma', 'PHP Essential Training Course', 'Tanya Staples VP, Linkedin Learning', 'Linkdin Learning', 'Mar 20,2019 + 4hours4min', '2020-10-19 15:05:13.452338'),
(303, 1603100125, 1, 'Danish Soma', 'Python Data Structures', 'Charles Severance Clinical Professor, Schoo! of Information University of Michigan COURSE CERTIFICATE', 'Coursera', '07/30/2019', '2020-10-19 15:05:28.568034'),
(304, 1603720430, 1, 'Danish Soma', 'Responsive Website Basics: Code with HTML, CSS, and JavaScript', 'Dr Matthew Yee-King, Dr Marco Gillies, Dr Kate Devlin Computing Department Goldsmiths, University of London COURSE CERTIFICATE', 'Coursera', '11/09/2018', '2020-10-26 19:23:55.219162'),
(305, 1603720455, 1, 'Danish Soma', 'What is Data Science?', 'pe Po Alex Aklson, Ph.D. Polong Lin Data Scientist Data Scientist, IBM COURSE CERTIFICATE', 'Coursera', '04/13/2020', '2020-10-26 19:24:18.351977'),
(306, 1603720474, 1, 'DANISH SOMA', 'DEEP LEARNING FOR COMPUTER VISION', 'WillRamey 2019 Senior Director', 'NVIDIA DEEP LEARNING INSTITUTE', '2019', '2020-10-26 19:24:37.329896'),
(307, 1603720496, 1, 'Danish soma', '11.5 hours of Bootstrap 4 From Scratch : With 5 Projects', 'Brad Traversy,', 'udemy', 'July 1, 2019', '2020-10-26 19:24:59.714485');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_uploads`
--

CREATE TABLE `certificate_uploads` (
  `upload_id` int(11) NOT NULL,
  `certificate_id` int(11) NOT NULL,
  `certificate_location` varchar(100) NOT NULL,
  `submitted_on` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificate_uploads`
--

INSERT INTO `certificate_uploads` (`upload_id`, `certificate_id`, `certificate_location`, `submitted_on`) VALUES
(1, 1600303024, 'img/sololearn.jpg', '2020-09-17 02:37:04'),
(2, 1600303024, 'img/sololearn.jpg', '2020-09-17 02:37:04'),
(3, 1600303486, 'img/linkedin.jpg', '2020-09-17 02:44:46'),
(4, 1600305248, 'img/sololearn.jpg', '2020-09-17 03:14:08'),
(5, 1600347097, 'img/data.jpeg', '2020-09-17 02:51:37'),
(6, 1600347648, 'img/coursera3.jpg', '2020-09-17 03:00:48'),
(7, 1600358442, 'img/sololearn.jpg', '2020-09-17 06:00:42'),
(8, 1600359686, 'img/nvidia.jpg', '2020-09-17 06:21:26'),
(9, 1600360343, 'img/udemy.jpg', '2020-09-17 06:32:23'),
(10, 1600360470, 'img/nvidia.jpg', '2020-09-17 06:34:30'),
(11, 1600361148, 'img/sololearn.jpg', '2020-09-17 06:45:48'),
(12, 1600361211, 'img/udemy.jpg', '2020-09-17 06:46:51'),
(13, 1600361287, 'img/Coursera.jpg', '2020-09-17 06:48:07'),
(14, 1600361488, 'img/udemy.jpg', '2020-09-17 06:51:28'),
(15, 1600362805, 'img/udacity.jpg', '2020-09-17 07:13:25'),
(16, 1600362845, 'img/udacity.jpg', '2020-09-17 07:14:05'),
(17, 1600362903, 'img/Coursera.jpg', '2020-09-17 07:15:03'),
(18, 1600366287, 'img/nvidia.jpg', '2020-09-17 08:11:27'),
(19, 1600366307, 'img/coursera1.jpg', '2020-09-17 08:11:47'),
(20, 1600366690, 'img/coursera1.jpg', '2020-09-17 08:18:10'),
(21, 1600367913, 'img/linkedin.jpg', '2020-09-17 08:38:33'),
(22, 1600369366, 'img/udemy.jpg', '2020-09-17 09:02:46'),
(23, 1600369440, 'img/spoken_tutorial.jpg', '2020-09-17 09:04:00'),
(24, 1600369506, 'img/udemy.jpg', '2020-09-17 09:05:06'),
(25, 1600369684, 'img/sololearn.jpg', '2020-09-17 09:08:04'),
(26, 1600369773, 'img/udacity.jpg', '2020-09-17 09:09:33'),
(27, 1600369789, 'img/udacity.jpg', '2020-09-17 09:09:49'),
(28, 1600369806, 'img/udacity1.jpg', '2020-09-17 09:10:06'),
(29, 1600369837, 'img/coursera1.jpg', '2020-09-17 09:10:37'),
(30, 1600369865, 'img/nvidia.jpg', '2020-09-17 09:11:05'),
(31, 1600369889, 'img/nvidia.jpg', '2020-09-17 09:11:29'),
(32, 1600369892, 'img/nvidia.jpg', '2020-09-17 09:11:32'),
(33, 1600369907, 'img/udacity1.jpg', '2020-09-17 09:11:47'),
(34, 1600369924, 'img/linkedin.jpg', '2020-09-17 09:12:04'),
(35, 1600392812, 'img/udacity1.jpg', '2020-09-18 03:33:32'),
(36, 1600392959, 'img/udacity1.jpg', '2020-09-18 03:35:59'),
(37, 1600393202, 'img/udacity.jpg', '2020-09-18 03:40:02'),
(38, 1600393214, 'img/udacity.jpg', '2020-09-18 03:40:14'),
(39, 1600393436, 'img/udacity.jpg', '2020-09-18 03:43:56'),
(40, 1600393493, 'img/data.jpeg', '2020-09-18 03:44:53'),
(41, 1600394003, 'img/udacity1.jpg', '2020-09-18 03:53:23'),
(42, 1600394048, 'img/udacity1.jpg', '2020-09-18 03:54:08'),
(43, 1600394073, 'img/spoken_tutorial.jpg', '2020-09-18 03:54:33'),
(44, 1600394154, 'img/udacity.jpg', '2020-09-18 03:55:54'),
(45, 1600395040, 'img/udacity.jpg', '2020-09-18 04:10:40'),
(46, 1600395145, 'img/udacity.jpg', '2020-09-18 04:12:25'),
(47, 1600395205, 'img/udacity.jpg', '2020-09-18 04:13:25'),
(48, 1600395240, 'img/udacity.jpg', '2020-09-18 04:14:00'),
(49, 1600395264, 'img/udacity.jpg', '2020-09-18 04:14:24'),
(50, 1600395428, 'img/udacity.jpg', '2020-09-18 04:17:08'),
(51, 1600395449, 'img/udacity1.jpg', '2020-09-18 04:17:29'),
(52, 1600395500, 'img/udacity1.jpg', '2020-09-18 04:18:20'),
(53, 1600395674, 'img/udacity.jpg', '2020-09-18 04:21:14'),
(54, 1600395693, 'img/udacity1.jpg', '2020-09-18 04:21:33'),
(55, 1600395724, 'img/udacity1.jpg', '2020-09-18 04:22:04'),
(56, 1600395793, 'img/sololearn.jpg', '2020-09-18 04:23:13'),
(57, 1600395825, 'img/Coursera.jpg', '2020-09-18 04:23:45'),
(58, 1600395849, 'img/coursera1.jpg', '2020-09-18 04:24:09'),
(59, 1600395898, 'img/coursera2.jpg', '2020-09-18 04:24:58'),
(60, 1600395921, 'img/data.jpeg', '2020-09-18 04:25:21'),
(61, 1600395950, 'img/linkedin.jpg', '2020-09-18 04:25:50'),
(62, 1600395971, 'img/sololearn.jpg', '2020-09-18 04:26:11'),
(63, 1600395995, 'img/spoken_tutorial.jpg', '2020-09-18 04:26:35'),
(64, 1600396023, 'img/udacity.jpg', '2020-09-18 04:27:03'),
(65, 1600396094, 'img/udemy.jpg', '2020-09-18 04:28:14'),
(66, 1600396119, 'img/udemy1.jpg', '2020-09-18 04:28:39'),
(67, 1600396262, 'img/udemy1.jpg', '2020-09-18 04:31:02'),
(68, 1600396289, 'img/udacity.jpg', '2020-09-18 04:31:29'),
(69, 1600396466, 'img/nvidia.jpg', '2020-09-18 04:34:26'),
(70, 1600396683, 'img/nvidia.jpg', '2020-09-18 04:38:03'),
(71, 1600396713, 'img/nvidia.jpg', '2020-09-18 04:38:33'),
(72, 1600396785, 'img/nvidia.jpg', '2020-09-18 04:39:45'),
(73, 1600396818, 'img/nvidia.jpg', '2020-09-18 04:40:18'),
(74, 1600397022, 'img/udacity.jpg', '2020-09-18 04:43:42'),
(75, 1600397070, 'img/udacity1.jpg', '2020-09-18 04:44:30'),
(76, 1600397249, 'img/udacity.jpg', '2020-09-18 04:47:29'),
(77, 1600397251, 'img/udacity.jpg', '2020-09-18 04:47:31'),
(78, 1600397322, 'img/udacity1.jpg', '2020-09-18 04:48:42'),
(79, 1600397815, 'img/linkedin.jpg', '2020-09-18 04:56:55'),
(80, 1600397910, 'img/udacity.jpg', '2020-09-18 04:58:30'),
(81, 1600398095, 'img/sololearn.jpg', '2020-09-18 05:01:35'),
(82, 1600399773, 'img/sololearn.jpg', '2020-09-18 05:29:33'),
(83, 1600399775, 'img/sololearn.jpg', '2020-09-18 05:29:35'),
(84, 1600400325, 'img/sololearn.jpg', '2020-09-18 05:38:45'),
(85, 1600400327, 'img/sololearn.jpg', '2020-09-18 05:38:47'),
(86, 1600400493, 'img/sololearn.jpg', '2020-09-18 05:41:33'),
(87, 1600400507, 'img/coursera2.jpg', '2020-09-18 05:41:47'),
(88, 1600400952, 'img/img20200818_18583879.jpg', '2020-09-18 05:49:12'),
(89, 1600401380, 'img/img20200818_18583879.jpg', '2020-09-18 05:56:20'),
(90, 1600447230, 'img/img20200818_18583879.jpg', '2020-09-18 06:40:30'),
(91, 1600450546, 'img/img20200818_18583879.jpg', '2020-09-18 07:35:46'),
(92, 1600541533, 'img/data.jpeg', '2020-09-19 08:52:13'),
(93, 1600588955, 'img/data.jpeg', '2020-09-20 10:02:35'),
(94, 1600589275, 'img/nvidia.jpg', '2020-09-20 10:07:55'),
(95, 1600589288, 'img/nvidia.jpg', '2020-09-20 10:08:08'),
(96, 1600589299, 'img/spoken_tutorial.jpg', '2020-09-20 10:08:19'),
(97, 1600589315, 'img/Coursera.jpg', '2020-09-20 10:08:35'),
(98, 1600589337, 'img/Coursera.jpg', '2020-09-20 10:08:57'),
(99, 1600589394, 'img/linkedin.jpg', '2020-09-20 10:09:54'),
(100, 1600589411, 'img/sololearn.jpg', '2020-09-20 10:10:11'),
(101, 1600589456, 'img/data.jpeg', '2020-09-20 10:10:56'),
(102, 1600589467, 'img/nvidia.jpg', '2020-09-20 10:11:07'),
(103, 1600589521, 'img/nvidia.jpg', '2020-09-20 10:12:01'),
(104, 1600589533, 'img/spoken_tutorial.jpg', '2020-09-20 10:12:13'),
(105, 1600589572, 'img/nvidia.jpg', '2020-09-20 10:12:52'),
(106, 1600589589, 'img/spoken_tutorial.jpg', '2020-09-20 10:13:09'),
(107, 1600589610, 'img/spoken_tutorial.jpg', '2020-09-20 10:13:30'),
(108, 1600589656, 'img/data.jpeg', '2020-09-20 10:14:16'),
(109, 1600589677, 'img/data.jpeg', '2020-09-20 10:14:37'),
(110, 1600589690, 'img/sololearn.jpg', '2020-09-20 10:14:50'),
(111, 1600589778, 'img/linkedin.jpg', '2020-09-20 10:16:18'),
(112, 1600589815, 'img/coursera3.jpg', '2020-09-20 10:16:55'),
(113, 1600650106, 'img/data.jpeg', '2020-09-21 03:01:46'),
(114, 1600650127, 'img/linkedin.jpg', '2020-09-21 03:02:07'),
(115, 1600650169, 'img/linkedin.jpg', '2020-09-21 03:02:49'),
(116, 1600650183, 'img/data.jpeg', '2020-09-21 03:03:03'),
(117, 1600650293, 'img/coursera1.jpg', '2020-09-21 03:04:53'),
(118, 1600650577, 'img/linkedin.jpg', '2020-09-21 03:09:37'),
(119, 1600606200, 'img/linkedin.jpg', '2020-09-20 02:50:00'),
(120, 1600606275, 'img/coursera1.jpg', '2020-09-20 02:51:15'),
(121, 1600633376, 'img/coursera3.jpg', '2020-09-20 10:22:56'),
(122, 1600633409, 'img/coursera3.jpg', '2020-09-20 10:23:29'),
(123, 1600633421, 'img/nvidia.jpg', '2020-09-20 10:23:41'),
(124, 1600633437, 'img/linkedin.jpg', '2020-09-20 10:23:57'),
(125, 1600633487, 'img/Coursera.jpg', '2020-09-20 10:24:47'),
(126, 1600633499, 'img/coursera1.jpg', '2020-09-20 10:24:59'),
(127, 1600633516, 'img/coursera2.jpg', '2020-09-20 10:25:16'),
(128, 1600633529, 'img/data.jpeg', '2020-09-20 10:25:29'),
(129, 1600633543, 'img/linkedin.jpg', '2020-09-20 10:25:43'),
(130, 1600633561, 'img/sololearn.jpg', '2020-09-20 10:26:01'),
(131, 1600633577, 'img/udacity.jpg', '2020-09-20 10:26:17'),
(132, 1600633598, 'img/udacity1.jpg', '2020-09-20 10:26:38'),
(133, 1600633615, 'img/udemy.jpg', '2020-09-20 10:26:55'),
(134, 1600633629, 'img/udemy1.jpg', '2020-09-20 10:27:09'),
(135, 1600635057, 'img/coursera3.jpg', '2020-09-20 10:50:57'),
(136, 1600635177, 'img/linkedin.jpg', '2020-09-20 10:52:57'),
(137, 1600635579, 'img/coursera2.jpg', '2020-09-20 10:59:39'),
(138, 1600635595, 'img/nvidia.jpg', '2020-09-20 10:59:55'),
(139, 1600635683, 'img/nvidia.jpg', '2020-09-20 11:01:23'),
(140, 1600635702, 'img/nvidia.jpg', '2020-09-20 11:01:42'),
(141, 1600635740, 'img/udacity1.jpg', '2020-09-20 11:02:20'),
(142, 1600635870, 'img/coursera3.jpg', '2020-09-20 11:04:30'),
(143, 1600635969, 'img/coursera3.jpg', '2020-09-20 11:06:09'),
(144, 1600635991, 'img/coursera3.jpg', '2020-09-20 11:06:31'),
(145, 1600636014, 'img/Coursera.jpg', '2020-09-20 11:06:54'),
(146, 1600636067, 'img/coursera1.jpg', '2020-09-20 11:07:47'),
(147, 1600636085, 'img/coursera1.jpg', '2020-09-20 11:08:05'),
(148, 1600636097, 'img/coursera2.jpg', '2020-09-20 11:08:17'),
(149, 1600636110, 'img/coursera3.jpg', '2020-09-20 11:08:30'),
(150, 1600636141, 'img/data.jpeg', '2020-09-20 11:09:01'),
(151, 1600927511, 'img/mark1.jpg', '2020-09-24 08:05:11'),
(152, 1600927726, 'img/mark1.jpg', '2020-09-24 08:08:46'),
(153, 1600928108, 'img/mark11.jpg', '2020-09-24 08:15:08'),
(154, 1600936416, 'img/data.jpeg', '2020-09-24 10:33:36'),
(155, 1600936453, 'img/nvidia.jpg', '2020-09-24 10:34:13'),
(156, 1600936616, 'img/mark1.jpg', '2020-09-24 10:36:56'),
(157, 1600937352, 'img/mark1.jpg', '2020-09-24 10:49:12'),
(158, 1601644891, 'img/data.jpeg', '2020-10-02 03:21:31'),
(159, 1601645056, 'img/coursera1.jpg', '2020-10-02 03:24:16'),
(160, 1601645070, 'img/coursera3.jpg', '2020-10-02 03:24:30'),
(161, 1601645087, 'img/coursera2.jpg', '2020-10-02 03:24:47'),
(162, 1601645100, 'img/linkedin.jpg', '2020-10-02 03:25:00'),
(163, 1601646310, 'img/linkedin.jpg', '2020-10-02 03:45:10'),
(164, 1601650592, 'img/coursera3.jpg', '2020-10-02 04:56:32'),
(165, 1601650605, 'img/coursera3.jpg', '2020-10-02 04:56:45'),
(166, 1601650709, 'img/data.jpeg', '2020-10-02 04:58:29'),
(167, 1601650955, 'img/coursera2.jpg', '2020-10-02 05:02:35'),
(168, 1601650980, 'img/linkedin.jpg', '2020-10-02 05:03:00'),
(169, 1601651005, 'img/udacity1.jpg', '2020-10-02 05:03:25'),
(170, 1603093928, 'img/marks.jpg', '2020-10-19 09:52:08'),
(171, 1603100067, 'img/coursera3.jpg', '2020-10-19 11:34:27'),
(172, 1603100079, 'img/coursera3.jpg', '2020-10-19 11:34:39'),
(173, 1603100093, 'img/coursera3.jpg', '2020-10-19 11:34:53'),
(174, 1603100110, 'img/linkedin.jpg', '2020-10-19 11:35:10'),
(175, 1603100125, 'img/coursera1.jpg', '2020-10-19 11:35:25'),
(176, 1603720430, 'img/coursera3.jpg', '2020-10-26 02:53:50'),
(177, 1603720455, 'img/data.jpeg', '2020-10-26 02:54:15'),
(178, 1603720474, 'img/nvidia.jpg', '2020-10-26 02:54:34'),
(179, 1603720496, 'img/udemy.jpg', '2020-10-26 02:54:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificate_information`
--
ALTER TABLE `certificate_information`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `certificate_uploads`
--
ALTER TABLE `certificate_uploads`
  ADD PRIMARY KEY (`upload_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate_information`
--
ALTER TABLE `certificate_information`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `certificate_uploads`
--
ALTER TABLE `certificate_uploads`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
