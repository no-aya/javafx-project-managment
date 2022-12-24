-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : sam. 24 déc. 2022 à 17:49
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `epmtdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `designation` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `name`, `designation`, `email`, `contact`) VALUES
(1, 'Admin', 'CEO', 'admin@gmail.com', '0111111111');

-- --------------------------------------------------------

--
-- Structure de la table `admin_auth`
--

CREATE TABLE `admin_auth` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin_auth`
--

INSERT INTO `admin_auth` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `name`, `contact_person`, `phone`, `address`) VALUES
(1, 'Client CDG', '', '0655733357', 'Casa'),
(2, 'Client Total', '', '0642883773', 'Rabat'),
(3, 'Client Orange', '', '0655667788', 'Rabat');

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE `employee` (
  `id` int(50) NOT NULL,
  `name` varchar(500) NOT NULL,
  `designation` varchar(500) NOT NULL,
  `department` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`id`, `name`, `designation`, `department`, `contact`, `email`, `gender`) VALUES
(1, 'Asmae', 'Software Engineer', 'IT', '066666666', 'asmae@gmail.com', 'Female'),
(2, 'Aya', 'Graphics Designer', 'IT', '077777777', 'aya@gmail.com', 'Female');

-- --------------------------------------------------------

--
-- Structure de la table `employee_auth`
--

CREATE TABLE `employee_auth` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employee_auth`
--

INSERT INTO `employee_auth` (`id`, `username`, `password`) VALUES
(1, 'Asmae', 'asmae'),
(2, 'Aya', 'Aya');

-- --------------------------------------------------------

--
-- Structure de la table `project_info`
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
-- Déchargement des données de la table `project_info`
--

INSERT INTO `project_info` (`id`, `project_name`, `start_date`, `end_date`, `estimated_time`, `client_id`) VALUES
(1, 'project mars', '2022-11-17', '2022-12-11', 25, 1);

-- --------------------------------------------------------

--
-- Structure de la table `project_task`
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
-- Déchargement des données de la table `project_task`
--

INSERT INTO `project_task` (`id`, `task_name`, `task_time`, `task_start_date`, `task_end_date`, `progress`, `color`, `dependency`, `assigned`) VALUES
(1, 'Design UI', '4 Days', '2022-11-17', '2022-11-20', '0%', '0x673ab7ff', '', 3),
(1, 'Develop UI', '4 Days', '2022-11-21', '2022-11-24', '0%', '0x009688ff', 'Design UI', 1),
(1, 'Test the UI', '4 Days', '2022-11-26', '2022-11-29', '0%', '0x26c6daff', 'Develop UI', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin_auth`
--
ALTER TABLE `admin_auth`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employee_auth`
--
ALTER TABLE `employee_auth`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admin_auth`
--
ALTER TABLE `admin_auth`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `employee_auth`
--
ALTER TABLE `employee_auth`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
