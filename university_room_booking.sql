-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2017 at 04:56 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_room_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_code` varchar(10) NOT NULL,
  `booking_room` varchar(8) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_start_time` time DEFAULT NULL,
  `booking_end_time` time DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_code`, `booking_room`, `booking_date`, `booking_start_time`, `booking_end_time`, `username`) VALUES
('77119', 'MA2100', '2017-08-21', '09:00:00', '11:00:00', 'WaltWhitman'),
('77120', 'CS1305', '2017-08-21', '13:30:00', '15:30:00', 'PinkJesse20'),
('77121', 'EE4010', '2017-08-23', '11:00:00', '13:00:00', 'ProfessorX'),
('77122', 'CS1301', '2017-08-24', '17:00:00', '19:00:00', 'EWo0ds'),
('77123', 'ME2012', '2017-08-28', '13:00:00', '15:00:00', 'ClaireW'),
('77124', 'LW1001', '2017-08-28', '15:00:00', '17:00:00', 'Littlefinger'),
('77125', 'AC2002', '2017-09-04', '20:00:00', '21:00:00', 'AndrewNman'),
('77126', 'BS3010', '2017-08-28', '20:00:00', '22:00:00', 'KenMiyage'),
('77127', 'CS2001', '2017-08-30', '11:00:00', '13:00:00', 'ForGump'),
('77128', 'EE4010', '2017-08-30', '14:00:00', '16:00:00', 'NBSharon');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_name` varchar(10) NOT NULL,
  `room_building` varchar(20) DEFAULT NULL,
  `room_capacity` int(11) DEFAULT NULL,
  `booking_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_name`, `room_building`, `room_capacity`, `booking_code`) VALUES
('AC2002', 'Music Building', 50, '77125'),
('BS3010', 'Business School', 200, '77126'),
('CS1301', 'Comp Science', 50, '77122'),
('CS1305', 'Comp Science', 100, '77120'),
('CS2001', 'Comp Science', 100, '77127'),
('EE3008', 'Engineering School', 100, '77128'),
('EE4010', 'Engineering School', 150, '77121'),
('LW1001', 'Sports L-Wing', 100, '77124'),
('MA2100', 'Architecture', 200, '77119'),
('ME2012', 'Multi-Purpose', 200, '77123');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(10) NOT NULL,
  `staff_lname` varchar(15) NOT NULL,
  `staff_fname` varchar(15) NOT NULL,
  `staff_email` varchar(40) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_lname`, `staff_fname`, `staff_email`, `username`) VALUES
('120100', 'Whitman', 'Walt', 'waltwhitman@gmail.com', 'WaltWhitman'),
('120101', 'Miyagi', 'Kensuke', 'thekarateteacher@gmail.com', 'KenMiyage'),
('120102', 'Xavier', 'Charles', 'charlesxavier@gmail.com', 'ProfessorX'),
('120103', 'Norbury', 'Sharon', 'sharonnorbury@gmail.com', 'NBSharon'),
('120104', 'Underwood', 'Claire', 'claireunderwoodpins@gmail.com', 'ClaireW');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(10) NOT NULL,
  `student_lname` varchar(15) DEFAULT NULL,
  `student_fname` varchar(15) DEFAULT NULL,
  `student_email` varchar(40) NOT NULL,
  `student_description` varchar(40) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_lname`, `student_fname`, `student_email`, `student_description`, `username`) VALUES
('B130901', 'Woods', 'Elle', 'legallyblonde@gmail.com', 'Law Society Debate Prep', 'EWo0ds'),
('D115600', 'Gump', 'Forrest', 'forrestgump1@gmail.com', 'Google Bootcamp', 'ForGump'),
('M123666', 'Pinkman', 'Jesse', 'notliterallypink@gmail.com', 'E-commerce Seminar', 'PinkJesse20'),
('O231090', 'Neyman', 'Andrew', 'whiplash2014@gmail.com', 'Music Club Meeting', 'AndrewNman'),
('U111202', 'Stark', 'Arya', 'aryastark@gmail.com', 'Fencing Competition Prep', 'LittleFinger');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('AndrewNman', '2milesteller2'),
('ClaireW', 'HouseofCards33!'),
('EWo0ds', '300cl5'),
('ForGump', 'RunForrestRun'),
('KenMiyage', 'karateteacher123'),
('Littlefinger', 'lordbaelish'),
('NBSharon', 'meangirls30rock'),
('PinkJesse20', 'pinkman2009'),
('ProfessorX', 'XMeniscool!'),
('WaltWhitman', 'breakingbad1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_code`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_name`),
  ADD KEY `booking_code` (`booking_code`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`booking_code`) REFERENCES `booking` (`booking_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
