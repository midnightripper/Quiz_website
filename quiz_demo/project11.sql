-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2020 at 02:43 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(10) DEFAULT 'admin',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `role`) VALUES
('head1@gmail.com', 'head', 'admin'),
('head@gmail.com', 'head', 'head'),
('teacher1@gmail.com', 'teacher1', 'admin'),
('teacher2@gmail.com', 'teacher2', 'admin'),
('teacher3@gmail.com', 'teacher3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('5bd1a29b0514c', '5bd1a29b1c417'),
('5bd1a29b7d4b8', '5bd1a29b8ae6e');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('tempest@gmail.com', '5bd1a1a3c5e5b', 0, 1, 0, 1, '2020-12-08 03:33:52'),
('tempest@gmail.com', '558920ff906b8', 2, 1, 1, 0, '2020-12-08 05:31:32'),
('tempest@gmail.com', '558921841f1ec', 2, 1, 1, 0, '2020-12-12 08:52:37'),
('tempest@gmail.com', '55897338a6659', -5, 5, 0, 5, '2020-12-13 13:23:43'),
('tempest@gmail.com', '5589741f9ed52', -2, 5, 1, 4, '2020-12-13 13:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'random1', '55892169d2efc'),
('55892169bf6a7', 'random2', '55892169d2f05'),
('55892169bf6a7', 'random3', '55892169d2f09'),
('55892169bf6a7', 'random4', '55892169d2f0c'),
('5589216a3646e', 'random', '5589216a48713'),
('5589216a3646e', 'random', '5589216a4871a'),
('5589216a3646e', 'random', '5589216a4871f'),
('5589216a3646e', 'random', '5589216a48722'),
('558922117fcef', 'random', '5589221195248'),
('558922117fcef', 'random', '558922119525a'),
('558922117fcef', 'random', '5589221195265'),
('558922117fcef', 'random', '5589221195270'),
('55892211e44d5', 'random', '55892211f1f97'),
('55892211e44d5', 'random', '55892211f1fa7'),
('55892211e44d5', 'random', '55892211f1fb4'),
('55892211e44d5', 'random', '55892211f1fbd'),
('558973f4389ac', 'random', '558973f462e44'),
('558973f4389ac', 'random', '558973f462e56'),
('558973f4389ac', 'random', '558973f462e61'),
('558973f4389ac', 'random', '558973f462e6b'),
('558973f4c46f2', 'random', '558973f4d4abe'),
('558973f4c46f2', 'random', '558973f4d4acf'),
('558973f4c46f2', 'randoms', '558973f4d4ad9'),
('558973f4c46f2', 'random', '558973f4d4ae3'),
('558973f51600d', 'random', '558973f526f9d'),
('558973f51600d', 'random', '558973f526fb9'),
('558973f51600d', 'random', '558973f526fc5'),
('558973f51600d', 'random', '558973f526fce'),
('558973f55d269', 'random', '558973f57aef1'),
('558973f55d269', 'random', '558973f57af07'),
('558973f55d269', 'random', '558973f57af17'),
('558973f55d269', 'random', '558973f57af27'),
('558973f5abb1a', 'random', '558973f5e7623'),
('558973f5abb1a', 'random', '558973f5e7636'),
('558973f5abb1a', 'random', '558973f5e7640'),
('558973f5abb1a', 'random', '558973f5e764a'),
('5589751a63091', 'random', '5589751a81bd6'),
('5589751a63091', 'random', '5589751a81be8'),
('5589751a63091', 'random', '5589751a81bf4'),
('5589751a63091', 'random', '5589751a81bfd'),
('5589751ad32b8', 'random', '5589751adbdbd'),
('5589751ad32b8', 'random', '5589751adbdce'),
('5589751ad32b8', 'random', '5589751adbdd8'),
('5589751ad32b8', 'random', '5589751adbde2'),
('5589751b304ef', 'random', '5589751b3b04d'),
('5589751b304ef', 'random', '5589751b3b05e'),
('5589751b304ef', 'random', '5589751b3b069'),
('5589751b304ef', 'random', '5589751b3b073'),
('5589751b749c9', 'random', '5589751b9a98c'),
('5589751b749c9', 'random', '5589751b9a9a5'),
('5589751b749c9', 'random', '5589751b9a9b7'),
('5589751b749c9', 'random', '5589751b9a9c9'),
('5589751bd02ec', 'random', '5589751bdadaa'),
('5bd1a29b0514c', 'random', '5bd1a29b1c417'),
('5bd1a29b0514c', 'random', '5bd1a29b1c42c'),
('5bd1a29b0514c', 'random', '5bd1a29b1c42d'),
('5bd1a29b0514c', 'random', '5bd1a29b1c42e'),
('5bd1a29b7d4b8', 'random', '5bd1a29b8ae62'),
('5bd1a29b7d4b8', 'random', '5bd1a29b8ae6e'),
('5bd1a29b7d4b8', 'random', '5bd1a29b8ae70'),
('5bd1a29b7d4b8', 'random', '5bd1a29b8ae71');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'Random Question', 4, 1),
('558920ff906b8', '5589216a3646e', 'Random Question', 4, 2),
('558921841f1ec', '558922117fcef', 'Random Question', 4, 1),
('558921841f1ec', '55892211e44d5', 'Random Question', 4, 2),
('55897338a6659', '558973f4389ac', 'Random Question', 4, 1),
('55897338a6659', '558973f4c46f2', 'Random Question', 4, 2),
('55897338a6659', '558973f51600d', 'Random Question', 4, 3),
('55897338a6659', '558973f55d269', 'Random Question', 4, 4),
('55897338a6659', '558973f5abb1a', 'Random Question', 4, 5),
('5589741f9ed52', '5589751a63091', 'Random Question?', 4, 1),
('5589741f9ed52', '5589751ad32b8', 'Random Question', 4, 2),
('5589741f9ed52', '5589751b304ef', 'Random Question', 4, 3),
('5589741f9ed52', '5589751b749c9', 'Random Question', 4, 4),
('5589741f9ed52', '5589751bd02ec', 'Random Question', 4, 5),
('5bd1a1a3c5e5b', '5bd1a29b0514c', 'Random Question', 4, 1),
('5bd1a1a3c5e5b', '5bd1a29b7d4b8', 'Random Question', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`, `email`) VALUES
('558920ff906b8', 'Quiz type 3', 2, 1, 2, 5, '', 'quiz 3', '2018-10-20 14:47:56', 'teacher2@gmail.com'),
('558921841f1ec', 'languages', 2, 1, 2, 5, '', 'language', '2018-10-20 14:47:04', 'teacher1@gmail.com'),
('55897338a6659', 'Computer Basics', 2, 1, 5, 10, '', 'computer', '2018-10-20 14:47:56', 'teacher2@gmail.com'),
('5589741f9ed52', 'other quizz', 2, 1, 5, 10, '', 'quizs', '2018-10-20 14:47:56', 'teacher2@gmail.com'),
('5bd1a1a3c5e5b', 'Data Structure', 1, 0, 2, 1, 'ds exam', 'ds', '2018-10-25 10:57:39', 'teacher2@gmail.com'),
('5fd6200a2cec9', 'Fddd', 5, 5, 5, 5, '', '', '2020-12-13 14:07:06', 'teacher1@gmail.com'),
('5fd620d9bc846', 'Temperory', 4, 4, 4, 5, '', '', '2020-12-13 14:10:33', 'teacher1@gmail.com'),
('5fd623d46100b', 'Wepyar', 5, 5, 5, 5, '', '', '2020-12-13 14:23:16', 'teacher1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('tempest@gmail.com', -6, '2020-12-13 13:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Lokesh', 'M', 'iiitdmj', 'head@gmail.com', 1234567890, '81dc9bdb52d04dc20036dbd8313ed055'),
('Tempest', 'M', 'iiitdmj', 'tempest@gmail.com', 1234567890, 'c4ca4238a0b923820dcc509a6f75849b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
