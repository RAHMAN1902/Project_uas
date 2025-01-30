-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 10:38 AM
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
-- Database: `sim_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_guru`
--

CREATE TABLE `absensi_guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `status` enum('Pending','Confirmed') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi_guru`
--

INSERT INTO `absensi_guru` (`id`, `nama`, `tanggal`, `jam`, `status`) VALUES
(4, 'Rahman', '2025-01-4', '15:09:34', 'Confirmed'),
(11, 'Fidan', '2025-01-5', '15:52:59', 'Confirmed'),
(12, 'Ilham', '2025-01-5', '15:53:54', 'Confirmed'),
(15, 'Fidan', '2025-01-8', '16:27:40', 'Confirmed'),
(16, 'Ilham', '2025-01-8', '16:30:09', 'Confirmed'),
(18, 'Rahman', '2025-01-10', '18:31:00', 'Confirmed'),
(19, 'Danu', '2025-01-14', '08:35:01', 'Confirmed'),
(20, 'Danu', '2025-01-14', '09:24:04', 'Confirmed'),
(30, 'Rahman', '2025-01-14', '09:48:02', 'Pending'),
(32, 'Danu', '2025-01-14', '09:48:18', 'Confirmed'),
(34, 'Danu', '2025-01-14', '10:05:01', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin1', 'admin1@gmail.com', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `name`, `hours`) VALUES
(1, 'Matematika', 3),
(2, 'Bahasa Indonesia', 2),
(3, 'IPS', 2),
(4, 'Kimia', 3),
(5, 'Bahasa Inggris', 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class`, `created_at`) VALUES
(3, 'Michael Brown', 'Bahasa Indonesia', '2025-01-11 23:23:04'),
(4, 'Emily Davis', 'Kimia', '2025-01-10 19:20:48'),
(5, 'Redy', 'Bahasa Indonesia', '2025-01-10 00:25:45'),
(6, 'Rahma', 'Kimia', '2025-01-12 19:40:10'),
(8, 'Bob Smi', 'Biologi', '2025-01-12 04:55:30'),
(9, 'Charlie Brown', 'Seni Budaya', '2025-01-11 17:00:36'),
(10, 'Daisy Green', 'Penjas', '2025-01-10 07:32:50'),
(11, 'Ethan White', 'Biologi', '2025-01-11 22:18:25'),
(12, 'Fiona Black', 'Agama', '2025-01-13 03:02:58'),
(13, 'George Carter', 'IPS', '2025-01-12 06:45:10'),
(14, 'Hannah Lee', 'Penjas', '2025-01-13 07:29:37'),
(15, 'Ian Davis', 'PPKN', '2025-01-10 11:36:22'),
(16, 'Jenny Adams', 'Bahasa Indonesia', '2025-01-10 10:01:09'),
(17, 'Kevin Hall', 'Biologi', '2025-01-13 08:47:13'),
(18, 'Laura Scott', 'Agama', '2025-01-11 21:04:33'),
(19, 'Mason Young', 'IPS', '2025-01-13 01:49:10'),
(20, 'Nina Clark', 'Bahasa Indonesia', '2025-01-12 13:37:46'),
(21, 'Olivia Turner', 'Seni Budaya', '2025-01-11 03:21:11'),
(22, 'Peter Harris', 'PPKN', '2025-01-13 06:30:49'),
(23, 'Quinn Walker', 'Bahasa Inggris', '2025-01-10 09:27:52'),
(24, 'Ruby King', 'Penjas', '2025-01-11 14:02:31'),
(25, 'Samuel Hill', 'Bahasa Inggris', '2025-01-12 20:45:54'),
(26, 'Tina Baker', 'Seni Budaya', '2025-01-11 04:35:16'),
(27, 'Uma Collins', 'IPS', '2025-01-12 12:14:38'),
(28, 'Victor Murphy', 'Kimia', '2025-01-13 05:12:45'),
(29, 'Wendy Foster', 'Penjas', '2025-01-12 01:33:29'),
(30, 'Xander Price', 'PPKN', '2025-01-11 20:19:57'),
(31, 'Yara Morgan', 'Seni Budaya', '2025-01-13 09:48:17'),
(32, 'Zachary Brooks', 'Agama', '2025-01-12 08:50:25'),
(33, 'Alan Reed', 'Bahasa Inggris', '2025-01-10 15:40:17'),
(34, 'Betty Ross', 'IPS', '2025-01-12 17:56:32'),
(37, 'Rehan Karna', 'Biologi', '2025-01-11 11:26:49');


-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `subject`) VALUES
(5, 'Rahman', 'Bahasa Inggris'),
(6, 'Fidan', 'Kimia'),
(7, 'Ilham', 'Bahasa Indonesia'),
(8, 'Danu', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'rahman', 'rahman@gmail.com', '$2y$10$90cX9e4o/4EXOq/yShFfI.vdkl6G4j8IwpdSkHO3eKcVG9tV7D74m'),
(2, 'ilham', 'ilham@gmail.com', '$2y$10$szjRTyS57S6Dho3.Xi3rHunDAbYCx1QH7AMyjVYnOxMa1aqjPHTLK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_guru`
--
ALTER TABLE `absensi_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_guru`
--
ALTER TABLE `absensi_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
