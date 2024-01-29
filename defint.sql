-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 11:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
  `rank` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fName`, `lName`, `otherName`, `email`, `nia`, `regimentalNo`, `number`, `password`, `gender`, `region`, `subDivision`, `rank`) VALUES
(1, 'Kennedy', 'Danku', 'Edem', 'dankukennedy@gmail.com', 'GHA-714021260-3', '123456', '0203760941', '$2y$10$.MPSLnCFSKi7UhRBJvyRnO1wqeQK3C9nlGatMMScfaYFmk8/TphHy', 'Male', 'Greater_Accra', 'Odododiodio', 'Warrant Officer class I  '),
(4, 'Mustapha', 'Awal', 'Mohammed', 'mohammedawalmustapha0@gmail.com', 'GHA-12345678-7', 'gh-23456677-1', '0543753754', '$2y$10$05FVVIgCVLkdBtJ5pbb8V.bY1PFQ1veaT9H71SH0Ek7wvALyaMdZa', 'Male', 'Greater_Accra', 'Ablekuma Central Municipal', 'Colonel ');

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
(9, '    ALLEGED EXTREMISTS MOVEMENT', 'hamile', '    EXTREMISTS MOVEMENT', '\r\nBetween 2300 and 0100 hours on 4 Dec 22, there was an alleged extremist movement within some communities in Burkina Faso 13 Kilometers away from Fielmou a border community in Ghana. Burkinabes (women and children) numbering 700 in Boura and its sur', 'COMMENTS \r\n\r\nIt\'s suggested that heavy security is deploy at the Fielmon unapproved route to control the situation since GRA NABCO personnel deployed there are not armed. \r\n\r\nRespectfully submitted sir                        \r\n\r\n                     ', '', '2023-01-27'),
(10, ' ALLEGED EXTREMISTS MOVEMENT', 'UWR', ' EXTREMISTS ', '\r\nBetween 2300 and 0100 hours on 4 Dec 22, there was an alleged extremist movement within some communities in Burkina Faso 13 Kilometers away from Fielmou a border community in Ghana. Burkinabes (women and children) numbering 700 in Boura and its surround', 'Comment HereCOMMENTS \r\n\r\nIt\'s suggested that heavy security is deploy at the Fielmon unapproved route to control the situation since GRA NABCO personnel deployed there are not armed. \r\n\r\nRespectfully submitted sir     \r\n\r\n                            ', '', '2023-01-27');

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
(7, 'mohammedawalmustapha6@gmail.com', '\r\nCOLLECTION PLAN FOR RESEARCH DUTIES\r\n\r\n1.	Identify respective Fulani groups residing within AOR.\r\n\r\n2.	Identify uniqueness of respective Fulani communities withing AOR.\r\n\r\n3.	Identify location of various Fulani communities within AOR. (Locations to', '2023-01-27');

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
  `rank` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fName`, `lName`, `otherName`, `email`, `nia`, `regimentalNo`, `number`, `password`, `gender`, `region`, `subDivision`, `rank`) VALUES
(8, 'Awal', 'A', 'Mustapha', 'mohammedawalmustapha@gmail.com', 'GHA-12345678-0', '123456', '0244123456', '$2y$10$22yoHRz72sb9WFoLiRt1KOIkdJYG6U3K/BTbRrhTTlPafBQuvAqLG', 'Male', 'Ahafo', 'Asunafo South', 'Warrant Officer II '),
(9, 'Rhuza', 'Sim', 'Adams', 'mohammedawalmustapha1@gmail.com', 'GHA-12345678-1', '000000', '0241234567', '$2y$10$6sGuUnegvtuz4F2f5FXkJ.awY.dNBXOKIpLfjJ4iJ3LaYIvrPlLre', 'Femal', 'Central', 'Abura Asebu Kwamankese', 'Staff Sergeant /Sergeant major '),
(10, 'Solomon', 'Sedor', 'Kofi', 'mohammedawalmustapha3@gmail.com', 'gha-12346655-2', '234517', '0245233565', '$2y$10$Ra6Kt7ia4JcfxwY6qy7yCOwqMByBSsjA5qJOcTJHc7gl9IcGMwbO.', 'Male', 'Northern', 'Gushegu Municipal', 'Lieutenant Colonel '),
(11, 'Adeywod', 'Kaku', 'Yaw', 'mohammedawalmustapha4@gmail.com', 'GHA-000000000-9', '232228', '0246123456', '$2y$10$Q.6DF4q8oG12.ipI0tk4jeHqKx2.XQOFUXkxpljc72U.0oiNdOgA.', 'Male', 'Greater_Accra', 'Ablekuma Central Municipal', 'Major  '),
(12, 'Anita', 'Dakpare', 'Esi', 'mohammedawalmustapha5@gmail.com', 'gha-111113111-1', '230675', '0241234561', '$2y$10$bTEDenIbpkkrAPGkWu1IM.hnbaJjEGIyfQz/oGyiP/saShCWSCloG', 'Male', 'Savannah', 'Bole', 'Lieutenant  '),
(13, 'Issah', 'Abdul', 'Rahman', 'mohammedawalmustapha6@gmail.com', 'gha-111313111-1', '008000', '0242341234', '$2y$10$lJd/bTbcpRGgv8gNuWZYWuY3NgP6puISIhRhGApN7/1PnDePZaSte', 'Male', 'Western', 'Ahanta West Municipal', 'Warrant Officer class I  '),
(14, 'Solomon', 'Sedor', 'Kaku', 'mohammedawalmustapha7@gmail.com', 'gha-111211111-1', '646666', '0245432176', '$2y$10$Y4FdrYiULUPkr6l3pAnYIuaIbIyeW3UzN9Dglnh/Csgps1kmqY1Ya', 'Male', 'Northern', 'Gushegu Municipal', 'Sergeant  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proof`
--
ALTER TABLE `proof`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `proof`
--
ALTER TABLE `proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
