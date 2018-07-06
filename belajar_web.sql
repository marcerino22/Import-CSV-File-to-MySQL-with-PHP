-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2018 at 07:45 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Major` varchar(3) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `Name`, `Gender`, `Major`, `Address`, `Phone`) VALUES
(1, 'Marcerino', 'M', 'TI', 'Blitar', '661121'),
(2, 'Kurnia', 'M', 'TI', 'Semarang', '812395'),
(3, 'Sandi', 'M', 'MI', 'Malang', '812399'),
(4, 'Sato', 'F', 'DKV', 'Niigata', '884231'),
(5, 'Shiori', 'F', 'TI', 'Niigata', '908756'),
(6, 'Dave', 'M', 'DKV', 'New York', '236471'),
(7, 'John', 'M', 'MI', 'Atlanta', '822395'),
(8, 'Paul', 'M', 'SI', 'Denver', '127688'),
(9, 'Dmitri', 'M', 'TI', 'Moscow', '744890'),
(10, 'Susan', 'F', 'SI', 'London', '771123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
