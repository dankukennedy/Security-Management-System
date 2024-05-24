-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 10:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `defint`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `otherName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nia` varchar(50) NOT NULL,
  `regimentalNo` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `region` varchar(50) NOT NULL,
  `subDivision` varchar(50) NOT NULL,
  `rank` varchar(50) NOT NULL,
  `profile_img` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `about` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fName`, `lName`, `otherName`, `email`, `nia`, `regimentalNo`, `number`, `password`, `gender`, `region`, `subDivision`, `rank`, `profile_img`, `created_at`, `about`) VALUES
(1, 'Kennedy', 'Danku', 'Edem', 'dankukennedy@gmail.com', 'GHA-714021260-3', '123456', '0203760941', '$2a$12$XP8bLlVjxYl5gAnmxiTYVu3LP8INU9.oO0tVovtj1HMSG/68IOoS2', 'Male', 'Greater_Accra', 'Odododiodio', 'Warrant Officer class I  ', 'male.jpg-2024.05.22-02.42.01pm.jpg', '2024-05-22 12:42:01', ''),
(2, 'Mustapha', 'Awal', 'Mohammed', 'mohammedawalmustapha@gmail.com', 'GHA-12345678-7', 'gh-23456677-1', '0543753754', '$2a$12$XP8bLlVjxYl5gAnmxiTYVu3LP8INU9.oO0tVovtj1HMSG/68IOoS2', 'Male', 'Central', 'Abura Asebu Kwamankese', 'Lieutenant General', '', '2024-05-22 12:29:52', 'About You ..... \r\nThis is my profile');

-- --------------------------------------------------------

--
-- Table structure for table `geolocations`
--

CREATE TABLE `geolocations` (
  `id` int(11) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(64) NOT NULL,
  `comment` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `content` varchar(250) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `subject`, `content`, `created_at`) VALUES
(3, '\r\n\r\n        \"SEE SOMETHING SAY SOMETHING\"\r\n', ' Enter Messages\r\n\r\n         ................................\r\nI have been informed that a man from Burkina Faso recently put up this building (photo above) near the farmsted of one of my elders. Just after harvest of crops and with no one frequenting', '2023-01-27'),
(4, 'COLLECTION PLAN FOR RESEARCH DUTIES\r\n\r\n', ' Enter Messages\r\n\r\n         1.	Identify respective Fulani groups residing within AOR.\r\n\r\n2.	Identify uniqueness of respective Fulani communities withing AOR.\r\n\r\n3.	Identify location of various Fulani communities within AOR. (Locations to be marked wi', '2023-01-27');

-- --------------------------------------------------------

--
-- Table structure for table `proof`
--

CREATE TABLE `proof` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `file_url` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proof`
--

INSERT INTO `proof` (`id`, `title`, `post`, `file_url`, `description`, `comment`, `email`, `created_at`) VALUES
(4, 'Robbery case', 'Accra Oyibi', '664c837a1e3517.08167749.jpg', 'In the year 2023, there has been a considerable increase in armed robbery cases in the country.\r\n\r\nThe critical issue of escalating armed robbery incidents in some parts of the country has become alarming and the growth in such instances has become a', 'Reports stated that the attack occurred when the bullion van made a stop at a fuel station, presumably to purchase fuel. It was during this moment that the assailants reportedly attacked the vehicle\r\n                                        ', 'mohammedawalmustapha@gmail.com', '2024-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `occurance` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `title`, `post`, `occurance`, `description`, `comment`, `email`, `created_at`) VALUES
(9, '    ALLEGED EXTREMISTS MOVEMENT', 'hamile town', '    EXTREMISTS MOVEMENT', '  \r\nBetween 2300 and 0100 hours on 4 Dec 22, there was an alleged extremist movement within some communities in Burkina Faso 13 Kilometers away from Fielmou a border community in Ghana. Burkinabes (women and children) numbering 700 in Boura and its sur   ', '  COMMENTS \r\n\r\nIt\'s suggested that heavy security is deploy at the Fielmon unapproved route to control the situation since GRA NABCO personnel deployed there are not armed. \r\n\r\nRespectfully submitted sir                        \r\n\r\n                   ', '', '2023-01-27'),
(10, ' ALLEGED EXTREMISTS MOVEMENT', 'UWR', ' EXTREMISTS ', '\r\nBetween 2300 and 0100 hours on 4 Dec 22, there was an alleged extremist movement within some communities in Burkina Faso 13 Kilometers away from Fielmou a border community in Ghana. Burkinabes (women and children) numbering 700 in Boura and its surround', 'Comment HereCOMMENTS \r\n\r\nIt\'s suggested that heavy security is deploy at the Fielmon unapproved route to control the situation since GRA NABCO personnel deployed there are not armed. \r\n\r\nRespectfully submitted sir     \r\n\r\n                            ', '', '2023-01-27'),
(11, 'Terrorist', 'Ho', 'Market Area', 'London. Michaelmas term lately over, and the Lord Chancellor sitting in Lincoln\'s Inn Hall. Implacable November weather', 'As much mud in the streets as if the waters had but newly retired from the face of the earth, and it would not be wonderful to meet a Megalosaurus, forty feet long or so, waddling like an elephantine lizard up Holborn Hill.', 'mohammedawalmustapha@gmail.com', '2024-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` varchar(250) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `email`, `content`, `created_at`) VALUES
(6, 'mohammedawalmustapha2@gmail.com', '\"SEE SOMETHING SAY SOMETHING\"\r\n................................\r\nI have been informed that a man from Burkina Faso recently put up this building (photo above) near the farmsted of one of my elders. Just after harvest of crops and with no one frequent', '2023-01-27'),
(7, 'mohammedawalmustapha6@gmail.com', '\r\nCOLLECTION PLAN FOR RESEARCH DUTIES\r\n\r\n1.	Identify respective Fulani groups residing within AOR.\r\n\r\n2.	Identify uniqueness of respective Fulani communities withing AOR.\r\n\r\n3.	Identify location of various Fulani communities within AOR. (Locations to', '2023-01-27'),
(8, 'mohammedawalmustapha@gmail.com', ' Assign Task\r\nAccra Patrol', '2024-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `otherName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nia` varchar(50) NOT NULL,
  `regimentalNo` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `region` varchar(50) NOT NULL,
  `subDivision` varchar(50) NOT NULL,
  `rank` varchar(50) NOT NULL,
  `profile_img` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `about` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fName`, `lName`, `otherName`, `email`, `nia`, `regimentalNo`, `number`, `password`, `gender`, `region`, `subDivision`, `rank`, `profile_img`, `created_at`, `about`) VALUES
(8, 'Awal', 'A', 'Mustapha', 'mohammedawalmustapha@gmail.com', 'GHA-12345678-0', '123456', '0244123456', '$2a$12$3ECm8PNDnvoG5gEoh1vLU.3dUEh.2D8gWUDNR6QzAs2fuUzVl2Pt6', 'Male', 'Ahafo', 'Asunafo North Municipal', 'Private', 'male.jpg-2024.05.22-03.03.50pm.jpg', '2024-05-21 00:00:00', 'About You ..... all is well'),
(9, 'Rhuza', 'Sim', 'Adams', 'mohammedawalmustapha1@gmail.com', 'GHA-12345678-1', '000000', '0241234567', '$2a$12$3ECm8PNDnvoG5gEoh1vLU.3dUEh.2D8gWUDNR6QzAs2fuUzVl2Pt6', 'Femal', 'Central', 'Abura Asebu Kwamankese', 'Staff Sergeant /Sergeant major ', '', '2024-05-21 00:00:00', ''),
(10, 'Solomon', 'Sedor', 'Kofi', 'mohammedawalmustapha3@gmail.com', 'gha-12346655-2', '234517', '0245233565', '$2a$12$3ECm8PNDnvoG5gEoh1vLU.3dUEh.2D8gWUDNR6QzAs2fuUzVl2Pt6', 'Male', 'Northern', 'Gushegu Municipal', 'Lieutenant Colonel ', '', '2024-05-21 00:00:00', ''),
(11, 'Adeywod', 'Kaku', 'Yaw', 'mohammedawalmustapha4@gmail.com', 'GHA-000000000-9', '232228', '0246123456', '$2a$12$3ECm8PNDnvoG5gEoh1vLU.3dUEh.2D8gWUDNR6QzAs2fuUzVl2Pt6', 'Male', 'Greater_Accra', 'Ablekuma Central Municipal', 'Major  ', '', '2024-05-21 00:00:00', ''),
(12, 'Anita', 'Dakpare', 'Esi', 'mohammedawalmustapha5@gmail.com', 'gha-111113111-1', '230675', '0241234561', '$2a$12$3ECm8PNDnvoG5gEoh1vLU.3dUEh.2D8gWUDNR6QzAs2fuUzVl2Pt6', 'Male', 'Savannah', 'Bole', 'Lieutenant  ', '', '2024-05-21 00:00:00', ''),
(13, 'Issah', 'Abdul', 'Rahman', 'mohammedawalmustapha6@gmail.com', 'gha-111313111-1', '008000', '0242341234', '$2a$12$3ECm8PNDnvoG5gEoh1vLU.3dUEh.2D8gWUDNR6QzAs2fuUzVl2Pt6', 'Male', 'Western', 'Ahanta West Municipal', 'Warrant Officer class I  ', '', '2024-05-21 00:00:00', ''),
(14, 'Solomon', 'Sedor', 'Kaku', 'mohammedawalmustapha7@gmail.com', 'gha-111211111-1', '646666', '0245432176', '$2a$12$3ECm8PNDnvoG5gEoh1vLU.3dUEh.2D8gWUDNR6QzAs2fuUzVl2Pt6', 'Male', 'Northern', 'Gushegu Municipal', 'Sergeant  ', '', '2024-05-21 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fName` (`fName`,`lName`,`otherName`,`email`,`nia`,`regimentalNo`,`number`,`gender`,`region`,`subDivision`,`rank`,`about`);

--
-- Indexes for table `geolocations`
--
ALTER TABLE `geolocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `reg_date` (`reg_date`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject`,`created_at`);

--
-- Indexes for table `proof`
--
ALTER TABLE `proof`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`,`email`,`created_at`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`,`occurance`,`email`,`created_at`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`,`content`,`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `email_2` (`email`),
  ADD KEY `region` (`region`),
  ADD KEY `subDivision` (`subDivision`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `gender` (`gender`),
  ADD KEY `number` (`number`),
  ADD KEY `regimentalNo` (`regimentalNo`),
  ADD KEY `nia` (`nia`),
  ADD KEY `fName` (`fName`),
  ADD KEY `lName` (`lName`),
  ADD KEY `rank` (`rank`),
  ADD KEY `otherName` (`otherName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `geolocations`
--
ALTER TABLE `geolocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `proof`
--
ALTER TABLE `proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
