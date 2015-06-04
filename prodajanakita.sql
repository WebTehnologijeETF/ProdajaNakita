-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Host: 127.8.22.130:3306
-- Generation Time: May 28, 2015 at 08:37 PM
-- Server version: 5.5.41
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prodajanakita`
--

-- --------------------------------------------------------

--
-- Table structure for table `Komentar`
--

CREATE TABLE IF NOT EXISTS `Komentar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `novost_ID` int(11) NOT NULL,
  `autor` varchar(20) NOT NULL,
  `tekst` text NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `novost_ID` (`novost_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Komentar`
--

INSERT INTO `Komentar` (`ID`, `novost_ID`, `autor`, `tekst`, `vrijeme`) VALUES
(1, 1, 'Irma Solakovic', 'Komentar neki', '2015-05-28 20:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `Novosti`
--

CREATE TABLE IF NOT EXISTS `Novosti` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(100) NOT NULL,
  `autor` varchar(20) NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tekst` text NOT NULL,
  `detaljnije` text NOT NULL,
  `slika` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Novosti`
--

INSERT INTO `Novosti` (`ID`, `naslov`, `autor`, `vrijeme`, `tekst`, `detaljnije`, `slika`) VALUES
(1, 'Novi tekst', 'Irma Solakovic', '2015-05-28 20:36:01', 'Novost objava neka', 'detaljna novost bla bla blaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Komentar`
--
ALTER TABLE `Komentar`
  ADD CONSTRAINT `Komentar_ibfk_1` FOREIGN KEY (`novost_ID`) REFERENCES `Novosti` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
