-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 19, 2026 at 06:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campusnav`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `block_id` varchar(30) NOT NULL,
  `blocks` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  `years` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`block_id`, `blocks`, `course_id`, `years`) VALUES
('BECED 3-1', '3-1', 5, '3rd'),
('BSCS 3-1', '3-1', 1, '3rd'),
('BSIT DA 1-1', 'DA 1-1', 1, '1st'),
('BSIT DA 2-1', 'DA 2-1', 1, '2nd'),
('BSIT DA 3-1', 'DA 3-1', 1, '3rd'),
('BSIT DA 4-1', 'DA 4-1', 1, '4th'),
('BSIT WMT 1-1', 'WMT 1-1', 1, '1st'),
('BSIT WMT 1-2', 'WMT 1-2', 1, '1st'),
('BSIT WMT 2-1', 'WMT 2-1', 1, '2nd'),
('BSIT WMT 3-1', 'WMT 3-1', 1, '3rd'),
('BSIT WMT 3-2', 'WMT 3-2', 1, '3rd'),
('BSIT WMT 4-1', 'WMT 4-1', 1, '4th'),
('BSIT WMT 4-2', 'WMT 4-2', 1, '4th'),
('BTLED ?-?', '?-?', 6, '?');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `building_id` int(11) NOT NULL,
  `building_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`building_id`, `building_name`) VALUES
(1, 'CAST'),
(2, 'Main Building'),
(3, 'RECTO'),
(9, 'BTLED CAST'),
(12, 'EXAMPLE BUILDING');

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `full_course` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`course_id`, `course_name`, `full_course`) VALUES
(1, 'BSIT', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY'),
(2, 'BSBA', 'BACHELOR OF SCIENCE IN BUSINESS ADMINISTRATION'),
(3, 'BPA', 'BACHELOR OF PUBLIC ADMINISTRATION'),
(4, 'ABEL', 'BACHELOR OF ARTS IN ENGLISH LANGUANGE'),
(5, 'BECED', 'BACHELOR OF EARLY CHILDHOOD EDUCATION'),
(6, 'BTLED', 'BACHELOR OF TECHNOLOGY AND LIVELIHOOD EDUCATION'),
(7, 'BSCS', 'BACHELOR OF COMPUTER SCIENCE'),
(102, 'BSN', 'BACHELOR OF SCIENCE IN NURSING');

-- --------------------------------------------------------

--
-- Table structure for table `curr_sysem`
--

CREATE TABLE `curr_sysem` (
  `curr_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curr_sysem`
--

INSERT INTO `curr_sysem` (`curr_id`, `year_id`, `sem_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `dept_code` varchar(20) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `dept_code`, `dept_name`, `created_at`) VALUES
(1, 'BSIT', 'Department of Information Technology', '2026-10-16 01:11:39'),
(2, 'BSCS', 'Department of Computer Science', '2026-10-16 01:11:39'),
(3, 'BSEMC', 'Department of Entertainment and Multimedia Computing', '2026-10-16 01:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'ADMIN'),
(2, 'TEACHER'),
(3, 'STUDENT'),
(4, 'SUPER ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(50) NOT NULL,
  `building_id` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_name`, `building_id`, `capacity`, `is_active`, `created_at`) VALUES
(1, 'Lab 1', 1, 40, 1, '2026-10-16 01:14:25'),
(2, 'Lab 2', 1, 40, 1, '2026-10-16 01:14:25'),
(3, 'Room 201', 1, 35, 1, '2026-10-16 01:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `room_list`
--

CREATE TABLE `room_list` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(50) NOT NULL,
  `building_id` int(11) NOT NULL,
  `room_status` enum('Available','Occupied') NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_list`
--

INSERT INTO `room_list` (`room_id`, `room_name`, `building_id`, `room_status`) VALUES
(3, 'Laboratory 3', 1, 'Available'),
(4, 'Room 106', 1, 'Available'),
(5, 'Room 107', 1, 'Available'),
(6, 'Laboratory 2', 1, 'Available'),
(7, '2nd Floor', 9, 'Available'),
(8, 'Recto Rm 203', 3, 'Available'),
(114, 'Laboratory 1', 1, 'Available'),
(116, 'Room 105', 12, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `room_logs`
--

CREATE TABLE `room_logs` (
  `log_id` int(11) NOT NULL,
  `sched_id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `actual_time_in` datetime DEFAULT NULL,
  `actual_time_out` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_sched`
--

CREATE TABLE `room_sched` (
  `sched_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `sub_id` varchar(30) DEFAULT NULL,
  `block_id` varchar(30) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `day_of_week` varchar(15) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_sched`
--

INSERT INTO `room_sched` (`sched_id`, `room_id`, `sub_id`, `block_id`, `prof_id`, `day_of_week`, `start_time`, `end_time`) VALUES
(1, 3, 'BYIAS 102', 'BSIT DA 4-1', 7, 'MONDAY', '08:00:00', '09:00:00'),
(2, 3, 'BYSIA 101', 'BSIT WMT 4-1', 99, 'MONDAY', '09:00:00', '10:00:00'),
(3, 3, 'BYCC 101', 'BSIT WMT 1-1', 2, 'MONDAY', '10:00:00', '11:00:00'),
(4, 3, 'BYCC 101', 'BSIT DA 1-1', 2, 'MONDAY', '11:00:00', '12:00:00'),
(5, 3, 'BYCC 102', 'BSIT WMT 1-1', 1, 'MONDAY', '13:00:00', '14:00:00'),
(6, 3, 'BYCC 101', 'BSIT WMT 1-2', 2, 'MONDAY', '14:00:00', '15:00:00'),
(7, 3, 'BYIAS 102', 'BSIT WMT 4-1', 7, 'MONDAY', '15:00:00', '16:00:00'),
(8, 3, 'BYNET 102', 'BSIT WMT 3-1', 4, 'MONDAY', '16:00:00', '17:00:00'),
(9, 3, 'BYIAS 102', 'BSIT DA 4-1', 7, 'TUESDAY', '08:00:00', '09:00:00'),
(10, 3, 'BYSIA 101', 'BSIT WMT 4-1', 99, 'TUESDAY', '09:00:00', '10:00:00'),
(11, 3, 'BYCC 101', 'BSIT WMT 1-1', 2, 'TUESDAY', '10:00:00', '11:00:00'),
(12, 3, 'BYCC 101', 'BSIT DA 1-1', 2, 'TUESDAY', '11:00:00', '12:00:00'),
(13, 3, 'BYCC 102', 'BSIT WMT 1-1', 1, 'TUESDAY', '13:00:00', '14:00:00'),
(14, 3, 'BYCC 101', 'BSIT WMT 1-2', 2, 'TUESDAY', '14:00:00', '15:00:00'),
(15, 3, 'BYIAS 102', 'BSIT WMT 4-1', 7, 'TUESDAY', '15:00:00', '16:00:00'),
(16, 3, 'BYNET 102', 'BSIT WMT 3-1', 4, 'TUESDAY', '16:00:00', '17:00:00'),
(17, 3, 'BYIAS 102', 'BSIT DA 4-1', 7, 'WEDNESDAY', '08:00:00', '09:00:00'),
(18, 3, 'BYSIA 101', 'BSIT WMT 4-1', 99, 'WEDNESDAY', '09:00:00', '10:00:00'),
(19, 3, 'BYCC 101', 'BSIT WMT 1-1', 2, '', '10:00:00', '11:00:00'),
(20, 3, 'BYCC 101', 'BSIT DA 1-1', 2, 'WEDNESDAY', '11:00:00', '12:00:00'),
(21, 3, 'BYCC 102', 'BSIT WMT 1-1', 1, 'WEDNESDAY', '13:00:00', '14:00:00'),
(22, 3, 'BYCC 101', 'BSIT WMT 1-2', 2, 'WEDNESDAY', '14:00:00', '15:00:00'),
(23, 3, 'BYIAS 102', 'BSIT WMT 4-1', 7, 'WEDNESDAY', '15:00:00', '16:00:00'),
(24, 3, 'BYNET 102', 'BSIT WMT 3-1', 4, 'WEDNESDAY', '16:00:00', '17:00:00'),
(25, 3, 'BYIAS 102', 'BSIT WMT 4-2', 7, 'THURSDAY', '07:00:00', '09:00:00'),
(26, 3, 'BYSA 101', 'BSIT WMT 4-2', 9, 'THURSDAY', '09:00:00', '10:30:00'),
(27, 3, 'BYSA 101', 'BSIT WMT 4-1', 9, 'THURSDAY', '10:30:00', '12:00:00'),
(28, 3, 'BYSIA 101', 'BSIT DA 4-1', 99, 'THURSDAY', '13:00:00', '14:30:00'),
(29, 3, 'BYSIA 101', 'BSIT WMT 4-1', 99, 'THURSDAY', '14:30:00', '16:00:00'),
(30, 3, 'BYNET 102', 'BSIT WMT 3-2', 4, 'THURSDAY', '16:00:00', '18:00:00'),
(31, 3, 'BYIAS 102', 'BSIT WMT 4-2', 7, 'FRIDAY', '07:00:00', '09:00:00'),
(32, 3, 'BYSA 101', 'BSIT WMT 4-2', 9, 'FRIDAY', '09:00:00', '10:30:00'),
(33, 3, 'BYSA 101', 'BSIT WMT 4-1', 9, 'FRIDAY', '10:30:00', '12:00:00'),
(34, 3, 'BYSIA 101', 'BSIT DA 4-1', 99, 'FRIDAY', '13:00:00', '14:30:00'),
(35, 3, 'BYSIA 101', 'BSIT WMT 4-1', 99, 'FRIDAY', '14:30:00', '16:00:00'),
(36, 3, 'BYNET 102', 'BSIT WMT 3-2', 4, 'FRIDAY', '16:00:00', '18:00:00'),
(64, 5, 'BYCC 105', 'BSIT WMT 2-1', 6, 'THURSDAY', '07:30:00', '10:30:00'),
(65, 5, 'BYCC 105', 'BSIT WMT 2-1', 6, 'FRIDAY', '07:30:00', '22:30:00'),
(66, 6, 'BYHCI 102', 'BSIT WMT 2-1', 8, 'THURSDAY', '14:30:00', '16:00:00'),
(67, 6, 'BYHCI 102', 'BSIT WMT 2-1', 8, 'FRIDAY', '14:30:00', '16:00:00'),
(68, 114, 'BYWD 101', 'BSIT WMT 2-1', 5, 'MONDAY', '10:00:00', '11:00:00'),
(69, 114, 'BYWD 101', 'BSIT WMT 2-1', 5, 'TUESDAY', '10:00:00', '11:00:00'),
(70, 114, 'BYWD 101', 'BSIT WMT 2-1', 5, 'WEDNESDAY', '10:00:00', '11:00:00'),
(71, 4, 'BYSAD 101', 'BSIT WMT 2-1', 4, 'MONDAY', '16:00:00', '17:00:00'),
(72, 4, 'BYSAD 101', 'BSIT WMT 2-1', 4, 'TUESDAY', '16:00:00', '17:00:00'),
(73, 4, 'BYSAD 101', 'BSIT WMT 2-1', 4, 'WEDNESDAY', '16:00:00', '17:00:00'),
(74, 114, 'BYMT 101', 'BSIT WMT 2-1', 9, 'MONDAY', '13:00:00', '15:00:00'),
(75, 114, 'BYMT 101', 'BSIT WMT 2-1', 9, 'TUESDAY', '13:00:00', '15:00:00'),
(76, 114, 'BYMT 101', 'BSIT WMT 2-1', 9, 'WEDNESDAY', '13:00:00', '15:00:00'),
(77, 5, 'BYGEE 1', 'BSIT WMT 3-2', 99, 'FRIDAY', '13:00:00', '14:00:00'),
(78, 5, 'BYGEE 1', 'BSIT WMT 3-2', 99, 'FRIDAY', '13:00:00', '14:00:00'),
(79, 5, 'BYCC 106', 'BSIT DA 1-1', 10, 'MONDAY', '08:00:00', '22:00:00'),
(80, 5, 'BYCAP 2', 'BSIT DA 3-1', 1, 'TUESDAY', '09:00:00', '10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `year_id` int(11) NOT NULL,
  `school_year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`year_id`, `school_year`) VALUES
(1, '2025 - 2026'),
(2, '2026 - 2027'),
(3, '2027-2028'),
(4, '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `sem_id` int(11) NOT NULL,
  `semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sem_id`, `semester`) VALUES
(1, '1st Semester'),
(2, '2nd Semester'),
(3, 'Summer Class');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_id` varchar(30) NOT NULL,
  `subject_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `subject_name`) VALUES
('BYCAP 101', 'Capstone Project 1'),
('BYCAP 2', 'Capstone Project 2'),
('BYCC 101', 'Introduction to Computing'),
('BYCC 102', 'Fundamentals of Programming'),
('BYCC 103', 'Intermediate Programming'),
('BYCC 104', 'Data Structures and Algorithm'),
('BYCC 105', 'Information Management 1'),
('BYCC 106', 'Application Development & Emerging Technologies'),
('BYCO 101', 'Computer Organization'),
('BYGEE 1', 'Living in the IT Era'),
('BYHCI 101', 'Human Computer Interaction 1'),
('BYHCI 102', 'Human Computer Interaction 2'),
('BYIAS 101', 'Information Assurance and Security 1'),
('BYIAS 102', 'Information Assurance and Security 2'),
('BYIM 102', 'Information Management 2'),
('BYIPT 101', 'Integrative Programming and Technologies'),
('BYITELEC 1', 'Elective 1 (Web Systems and Technologies 2)'),
('BYITELEC 2', 'Elective 2 (Mobile Application Development 2)'),
('BYITELEC 3', 'Elective 3 (Special Topics in Web and Mobile 1)'),
('BYITELEC 4', 'Elective 3 (Special Topics in Web and Mobile 2)'),
('BYMD 101', 'Mobile Application Development 1'),
('BYMS 101', 'Discrete Mathematics'),
('BYMS 102', 'Quantitative Methods'),
('BYMT 101', 'Multimedia Technologies'),
('BYNET 101', 'Networking 1'),
('BYNET 102', 'Networking 2'),
('BYOOP 101', 'Object Oriented Programming'),
('BYOS 101', 'Operating Systems Application '),
('BYSA 101', 'System Administration and Maintenance '),
('BYSAD 101', 'System Analysis and Design'),
('BYSIA 101', 'System Integration and Architecture '),
('BYSP 101', 'Social and Professional Issues'),
('BYTECH 101', 'Technoprenuership '),
('BYWD 101', 'Web Development'),
('BYWS 101', 'Web Systems and Technologies 1'),
('TEST101', 'TESTINGSUB'),
('Test102', 'Testing Sub 2');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `prof_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`user_id`, `role_id`, `course_id`, `prof_id`, `prof_name`) VALUES
(4, 2, 1, 1, 'JANICE C. FRANCISCO, MIT'),
(5, 2, 1, 2, 'SARAH JANE M. FERRER, MIT'),
(6, 2, 1, 3, 'ROSALIE G. DIEGO, MBA'),
(7, 2, 1, 4, 'MICHAEL RYAN C. PEORO, MIT'),
(8, 2, 1, 5, 'KIM ERIC B, NANLABI, MIT'),
(9, 2, 1, 6, 'EDILBERTO L. CARALOS JR., MIT'),
(10, 2, 1, 7, 'JUDITH ALLISON Y. CASTRO'),
(11, 2, 1, 8, 'SHARYLL KAY P. CORPUZ, MIT'),
(12, 2, 1, 9, 'WENDELL F. SALOSAGCOL'),
(13, 2, 1, 10, 'DESIRE C. LICAWEN'),
(14, 2, 1, 11, 'MATTHEW JOHN F. SINO CRUZ, MIT/MCS'),
(15, 2, 1, 99, 'TEACHER X');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_schedule`
--

CREATE TABLE `teacher_schedule` (
  `teacher_sched_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `prof_id` int(11) NOT NULL,
  `sub_id` varchar(30) DEFAULT NULL,
  `block_id` varchar(30) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `day_of_week` varchar(15) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `semester` varchar(100) NOT NULL,
  `school_year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_schedule`
--

INSERT INTO `teacher_schedule` (`teacher_sched_id`, `course_id`, `prof_id`, `sub_id`, `block_id`, `room_id`, `day_of_week`, `start_time`, `end_time`, `semester`, `school_year`) VALUES
(1, NULL, 4, 'BYGEE 1', 'BTLED ?-?', 7, 'MONDAY', '08:00:00', '09:00:00', '', ''),
(2, NULL, 4, 'BYGEE 1', 'BECED 3-1', 8, 'MONDAY', '09:00:00', '10:00:00', '', ''),
(3, NULL, 4, 'BYSAD 101', 'BSIT DA 2-1', 4, 'MONDAY', '14:00:00', '15:00:00', '', ''),
(4, NULL, 4, 'BYSAD 101', 'BSIT WMT 2-1', 4, 'MONDAY', '16:00:00', '17:00:00', '', ''),
(5, NULL, 4, 'BYGEE 1', 'BTLED ?-?', 7, 'TUESDAY', '08:00:00', '09:00:00', '', ''),
(6, NULL, 4, 'BYGEE 1', 'BECED 3-1', 8, 'TUESDAY', '09:00:00', '10:00:00', '', ''),
(7, NULL, 4, 'BYSAD 101', 'BSIT DA 2-1', 4, 'TUESDAY', '14:00:00', '15:00:00', '', ''),
(8, NULL, 4, 'BYSAD 101', 'BSIT WMT 2-1', 4, 'TUESDAY', '16:00:00', '17:00:00', '', ''),
(9, NULL, 4, 'BYGEE 1', 'BTLED ?-?', 7, 'WEDNESDAY', '08:00:00', '09:00:00', '', ''),
(10, NULL, 4, 'BYGEE 1', 'BECED 3-1', 8, 'WEDNESDAY', '09:00:00', '10:00:00', '', ''),
(11, NULL, 4, 'BYSAD 101', 'BSIT DA 2-1', 4, 'WEDNESDAY', '14:00:00', '15:00:00', '', ''),
(12, NULL, 4, 'BYSAD 101', 'BSIT WMT 2-1', 4, 'WEDNESDAY', '16:00:00', '17:00:00', '', ''),
(13, NULL, 4, 'BYNET 101', 'BSIT DA 2-1', 3, 'THURSDAY', '07:30:00', '10:30:00', '', ''),
(14, NULL, 4, 'BYNET 101', 'BSIT WMT 2-1', 3, 'THURSDAY', '10:30:00', '12:00:00', '', ''),
(15, NULL, 4, 'BYNET 101', 'BSIT WMT 2-1', 4, 'THURSDAY', '13:00:00', '14:30:00', '', ''),
(16, NULL, 4, 'BYNET 101', 'BSIT DA 2-1', 3, 'FRIDAY', '07:30:00', '10:30:00', '', ''),
(17, NULL, 4, 'BYNET 101', 'BSIT WMT 2-1', 3, 'FRIDAY', '10:30:00', '12:00:00', '', ''),
(18, NULL, 4, 'BYNET 101', 'BSIT WMT 2-1', 4, 'FRIDAY', '13:00:00', '14:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_activity` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role_id`, `username`, `email`, `password`, `is_active`, `last_activity`) VALUES
(1, 1, 'Admin1', 'admintest@gmail.com', '$2y$10$lvfnTOrc1/3k6SlWJOTmDOnd03TFKJ3HSFDhbBZWntGG5BpzbKpuK', 1, '2026-10-12 16:22:41'),
(2, 2, 'Teacher1UpTest101', 'teachertest@gmail.com', '$2y$10$bCz61avi4dGwkuIyzUitTe5I4/fy.A5Jz.xODwSq4OZzkEqXWW.ki', 0, '2026-10-07 14:25:07'),
(3, 3, 'BSIT WMT 2-1', 'studenttest@gmail.com', '$2y$10$UU0/HM0NsavV4GFnSeoA6OkgkWl8U9sEZvSxSIwA4gu2oCDJJz08u', 1, '2026-06-11 15:13:13'),
(4, 1, 'JANICE C. FRANCISCO', 'sample_email1@gmail.com', '$2y$10$vv.12V1t40aougrwtd3HBOtHZRaBBDZFlCKP2M6CFc54PWelykDVe', 1, '2026-08-12 23:07:45'),
(5, 2, 'SARAH JANE M. FERRER', 'sample_email2@gmail.com', '$2y$10$nksmDUXmJiz73cogSCE3TuKHN6Uqtxj1xAxN8fXm/z8iND4pgvGF6', 1, '2026-06-04 07:57:16'),
(6, 2, 'ROSALIE G. DIEGO', 'sample_email3@gmail.com', '$2y$10$X.oOI7Ox/8n0ygJZfGzWhujRIVBsGyRD13BOZa9QrwuIzHYDCw6V.', 1, NULL),
(7, 2, 'MRPeoro', 'sample_email4@gmail.com', '$2y$10$t41uu9dxmMTGkLpO7rbd2eNcKArxjL2PXIPL09a3XDfGrveu6Owoq', 1, '2026-06-11 12:02:13'),
(8, 2, 'KIM ERIC B, NANLABI', 'sample_email5@gmail.com', '$2y$10$ShqzAE6CMD9brzPT4fWhuuQYwMlGVgd0XWCHH8znvCgYfgy/DWW9C', 1, '2026-06-04 07:55:21'),
(9, 2, 'EDILBERTO L. CARALOS JR.', 'sample_email6@gmail.com', '$2y$10$8ud39HXMq.p8oUUxkZeaNOfwxrY4m5OX01/yETl6lOSYnR2c8st92', 1, NULL),
(10, 2, 'JUDITH ALLISON Y. CASTRO', 'sample_email7@gmail.com', '$2y$10$lWa9iQVmJY7u8LYBZCVoWO3ECzAqsMjSM5nC0r3c8qpi1bR5wA5y.', 1, '2026-06-08 14:26:03'),
(11, 2, 'SHARYLL KAY P. CORPUZ', 'sample_email8@gmail.com', '$2y$10$/PiRxTzz0.1QNuNB.lW8N..j7atkK0KGpVUzap3KKftNJivJ/dRZ2', 1, NULL),
(12, 2, 'WENDELL F. SALOSAGCOL', 'sample_email9@gmail.com', '$2y$10$adUJfcEHy6/a.mrJnUuxNe3/dNuiluGd.HkO2H.4PBjabzsbOWDqK', 1, NULL),
(13, 2, 'DESIRE C. LICAWEN', 'sample_email10@gmail.com', '$2y$10$F5SWVaa4dUwjokA24JFpF.f9Y/.jcKraV7R35n52KLGzVeFr8vnV2', 1, NULL),
(14, 2, 'MATTHEW JOHN F. SINO CRUZ', 'sample_email11@gmail.com', '$2y$10$LcbuKWtRn9v5S9Vkj5R1VetXr.nLcZQCfLntOTQM6XXZ2hpdY9AQm', 1, NULL),
(15, 2, 'TEACHER X', '', '$2y$10$B47ZxERYotn6eL/I1jwr4uIcpuz2KDKXNk8gqk8EbT.HmjBl5h2zK', 1, NULL),
(18, 4, 'SuperAdminTest', 'testing@gmail.com', '$2y$10$u.EECl.Bbh0hNnKFMINnJOBjD7Yh2j7OTm7khnulQpNjG5och/ReO', 1, '2026-10-07 14:47:02'),
(19, 3, 'vince', 'vince@psu.edu.ph', '$2y$12$NJ.3szz7unfp4iZEbkjufO2lp00pZHRapDVhUsa5PPKNrFEko61tO', 1, NULL),
(20, 3, 'sample', 'sample@psu.edu.ph', '$2y$12$PiHzJSEJPnRKKFb67yUtXeouQJQixEoutKzKTLWYHM/qTvc.zwYpe', 1, NULL),
(21, 1, 'ad1', 'ad1@gmail.com', '$2y$12$Skoxeue1fjFJcIL7A9Ad4umohMRlftYVG0y9Lm6nD5/x7G/hT6qR6', 1, '2026-09-16 09:23:46'),
(22, 3, 'elijah', 'elijah@psu.edu.ph', '$2y$12$Qs0ignWYYU2qLn9Nh.t6Pevgp16JOv4mQ6.RAiiGvOUneW.sQvTiK', 1, NULL),
(23, 2, 'LItodane L. Loñez', 'sample_email33@gmail.com', '$2y$12$s9s9ZBRP7U9GGB..urxiY.uLc/5q7lhJVkQn9d0o90cBKYVdwNNvW', 1, NULL),
(24, 3, 'Aleah Mae Valdez', 'vinvin1@gmail.com', '$2y$12$2.nsqYZbWOm4lVYCXO4xr.XXZvsIbKEXPyyLHnEEmOX1mrOEdW22u', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`block_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`building_id`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `curr_sysem`
--
ALTER TABLE `curr_sysem`
  ADD PRIMARY KEY (`curr_id`),
  ADD KEY `sem_id` (`sem_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `dept_code` (`dept_code`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_list`
--
ALTER TABLE `room_list`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `room_logs`
--
ALTER TABLE `room_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `sched_id` (`sched_id`),
  ADD KEY `prof_id` (`prof_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `room_sched`
--
ALTER TABLE `room_sched`
  ADD PRIMARY KEY (`sched_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `prof_id` (`prof_id`),
  ADD KEY `sub_id` (`sub_id`),
  ADD KEY `block_id` (`block_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`year_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`prof_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `teacher_schedule`
--
ALTER TABLE `teacher_schedule`
  ADD PRIMARY KEY (`teacher_sched_id`),
  ADD KEY `prof_id` (`prof_id`),
  ADD KEY `sub_id` (`sub_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `block_id` (`block_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `building_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
