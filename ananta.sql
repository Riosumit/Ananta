-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2023 at 02:16 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ananta`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `aadhar` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `motive` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`aadhar`, `id`, `motive`, `date`) VALUES
('123412341269', '21030480042', 'Blood Donation', '2023-03-30'),
('123412341269', '21030480041', 'Blood Donation', '2023-03-24'),
('123412341269', '21030480029', 'Blood Donation', '2023-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
CREATE TABLE IF NOT EXISTS `hospital` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(1000) NOT NULL,
  `pin` varchar(7) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `about`, `pin`, `password`) VALUES
('21030480042', 'Survey Hospital, Ranchi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '834001', 'survey@ranchi'),
('21030480029', 'MGM, Ranchi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '834002', 'mgm@ranchi'),
('21030480041', 'Sadar Hospital, Ranchi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '834002', 'sadar@ranchi'),
('21030480016', 'Rims, Ranchi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '834003', 'rims@ranchi');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `aadhar` varchar(15) NOT NULL,
  `about` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`aadhar`, `about`, `date`, `file`) VALUES
('123412341234', 'Eye CheckUp', '2023-03-08', '210045678_medreport.gif'),
('123412341234', 'Full Body CheckUp', '2023-03-17', '210045679_medreport.gif'),
('123412341234', 'Blood Test', '2023-03-19', '210045678_medreport.pdf'),
('123412341234', 'Urine Test', '2023-03-21', '210045680_medreport.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
CREATE TABLE IF NOT EXISTS `todo` (
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`email`, `title`) VALUES
('nitesh4b@gmail.com', 'Do Excersise At 5AM'),
('nitesh4b@gmail.com', 'Tommorow is Diet Day'),
('nitesh4b@gmail.com', 'go to gym'),
('nitesh4b@gmail.com', 'Breakfast after Medice');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
CREATE TABLE IF NOT EXISTS `volunteer` (
  `aadhar` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `password` varchar(255) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `allergies` varchar(255) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `history` varchar(255) NOT NULL,
  `kin_name` varchar(255) NOT NULL,
  `kin_contact` varchar(11) NOT NULL,
  `donation` varchar(255) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `aadhar_file` varchar(50) NOT NULL,
  `address_file` varchar(50) NOT NULL,
  `report` varchar(50) NOT NULL,
  `score` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`aadhar`, `name`, `dob`, `gender`, `email`, `phone_no`, `address`, `password`, `blood`, `allergies`, `height`, `weight`, `history`, `kin_name`, `kin_contact`, `donation`, `photo`, `aadhar_file`, `address_file`, `report`, `score`) VALUES
('123412341234', 'Sumit Kumar', '2023-03-07', 'Male', 'nitesh4b@gmail.com', '9876543210', 'Hazaribag, Jharkhand', '123', 'B+', 'None', '1.72', '67', 'None', 'Sourav', '1234567890', 'Lungs, Pancreas, Intestines, Bone, Tissue, ', '123412341234_photo.gif', '123412341234_aadhar.gif', '123412341234_address.gif', '123412341234_report.gif', 0),
('123412341269', 'Prem Kumar', '2002-05-14', 'male', 'prem@gmail.com', '9142874743', 'Gobar ghat Rajasthan', 'Mypass123', 'A+', 'sweating', '1.8', '75', 'short tempred', 'Sumit', '7273072371', 'Heart, Pancreas, Skin, Valves, ', '123412341269_photo.pdf', '123412341269_aadhar.pdf', '123412341269_address.pdf', '123412341269_report.pdf', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
