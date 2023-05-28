-- phpMyAdmin SQL Dump
-- version 5.2.2-dev+20230527.7943cf86ed
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 02:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hellopets`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(20) NOT NULL,
  `foto` varchar(1000) DEFAULT 'noprofil.jpg',
  `gelar` varchar(20) DEFAULT 'drh. ',
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `passmd5` varchar(1000) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'dokter',
  `ket` varchar(200) DEFAULT 'dokter hewan umum',
  `bio` text DEFAULT NULL,
  `jadwal_operasional` text DEFAULT NULL,
  `jam_operasional` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `foto`, `gelar`, `nama`, `email`, `password`, `passmd5`, `telepon`, `status`, `ket`, `bio`, `jadwal_operasional`, `jam_operasional`) VALUES
(1, 'noprofil.jpg', 'drh. ', 'I Dewa Made Suwardana', 'dewa@gmail.com', '12345', NULL, '081234222311', 'dokter', 'dokter hewan umum', '33 Tahun Pengalaman | Klinik Hewan Puri, Jakarta Bara', 'Senin - Sabtu', '10.00 - 18.00'),
(2, 'noprofil.jpg', 'drh. ', 'Lita Widari', 'lita@gmail.com', '12345', NULL, '081234555677', 'dokter', 'dokter hewan umum', '15 Tahun Pengalaman | Klinik Alit Vet, Jakarta Barat', 'Senin - Sabtu', '08.00 - 19.00'),
(3, 'noprofil.jpg', 'drh. ', 'Adi Nugraha', 'adi@gmail.com', '12345', NULL, '081298774566', 'dokter', 'dokter hewan umum', '17 Tahun Pengalaman | Kelapa Dua Pets, Jakarta Barat', 'Senin, Rabu. Jum`at', '09.00 - 19.00');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `isi` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `foto` varchar(1000) DEFAULT 'noprofil.jpg',
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `passmd5` varchar(1000) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `foto`, `nama`, `email`, `password`, `passmd5`, `telepon`, `status`) VALUES
(1, 'noprofil.jpg', 'Ikmal Dwi Darmawan', 'ikmaldwi.2021@student.uny.ac.id', '12345678', '$2y$10$Kmasq6NJmKyVL3j7p.rVTOmteL9fhaGtZUB1F5ol.cmaeYI.ZBtEG', '082322766908', 'user'),
(2, 'noprofil.jpg', 'Ikmal Dwi Darmawan', 'abc@student.uny.ac.id', '123456789', '$2y$10$WdXGUtOMHVJaB.15Kiecm.BxWOTxnBg1QyZnWDEtHcKjIuWXg.Fca', '082322766908', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
