-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2022 at 11:09 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epmtdb`
--
CREATE DATABASE IF NOT EXISTS `epmtdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `epmtdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `designation` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `designation`, `email`, `contact`) VALUES
(1, 'Admin', 'CEO', 'admin@gmail.com', '0128182123232');

-- --------------------------------------------------------

--
-- Table structure for table `admin_auth`
--

CREATE TABLE `admin_auth` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_auth`
--

INSERT INTO `admin_auth` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `contact_person` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name`, `contact_person`, `phone`, `address`) VALUES
(1, 'client 1', 'adam', '6543323288989', '22 bekar street'),
(2, 'Client Mango', 'Barley', '01828323232223', '23 bekar street'),
(3, 'Client Orange', 'Hulk', '012893822323', '24 bekar street');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `designation` varchar(500) NOT NULL,
  `department` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `designation`, `department`, `contact`, `email`, `gender`) VALUES
(1, 'Ayon', 'Software Engineer', 'IT', '0197812732322', 'ayon@gmail.com', 'Male'),
(2, 'Mahadi', 'QA', 'IT', '901288182832', 'mahadi@gmail.com', 'Male'),
(3, 'Arnab', 'Graphics Designer', 'Graphics', '0127828323234', 'arnab@gmail.com', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `employee_auth`
--

CREATE TABLE `employee_auth` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_auth`
--

INSERT INTO `employee_auth` (`id`, `username`, `password`) VALUES
(1, 'Ayon', 'ayon'),
(2, 'Mahadi', 'mahadi'),
(3, 'Arnab', 'arnab');

-- --------------------------------------------------------

--
-- Table structure for table `project_info`
--

CREATE TABLE `project_info` (
  `id` int(11) NOT NULL,
  `project_name` varchar(500) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `estimated_time` int(11) NOT NULL,
  `client_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_info`
--

INSERT INTO `project_info` (`id`, `project_name`, `start_date`, `end_date`, `estimated_time`, `client_id`) VALUES
(1, 'project mars', '2022-11-17', '2022-12-11', 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` int(255) NOT NULL,
  `task_name` varchar(500) NOT NULL,
  `task_time` varchar(500) NOT NULL,
  `task_start_date` date NOT NULL,
  `task_end_date` date NOT NULL,
  `progress` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `dependency` varchar(100) NOT NULL,
  `assigned` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_task`
--

INSERT INTO `project_task` (`id`, `task_name`, `task_time`, `task_start_date`, `task_end_date`, `progress`, `color`, `dependency`, `assigned`) VALUES
(1, 'Design UI', '4 Days', '2022-11-17', '2022-11-20', '0%', '0x673ab7ff', '', 3),
(1, 'Develop UI', '4 Days', '2022-11-21', '2022-11-24', '0%', '0x009688ff', 'Design UI', 1),
(1, 'Test the UI', '4 Days', '2022-11-26', '2022-11-29', '0%', '0x26c6daff', 'Develop UI', 2);
