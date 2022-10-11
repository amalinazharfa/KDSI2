-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 08:54 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni_informatika`
--

CREATE TABLE `alumni_informatika` (
  `NIM` int(12) NOT NULL,
  `NAMA` varchar(100) NOT NULL,
  `JUDUL_SKRIPSI` varchar(200) NOT NULL,
  `TAHUN_MASUK` int(4) NOT NULL,
  `TAHUN_LULUS` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumni_informatika`
--

INSERT INTO `alumni_informatika` (`NIM`, `NAMA`, `JUDUL_SKRIPSI`, `TAHUN_MASUK`, `TAHUN_LULUS`) VALUES
(1020304001, 'Sabrina Aprilia', 'Rancang Bangun Sistem Informasi Perpustakaan Daerah Kota Madiun', 2014, 2019),
(1020304002, 'Dimas Anggara', 'Desain UI/UX pada website UMKM Kabupaten Sleman', 2014, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `detail_alumni`
--

CREATE TABLE `detail_alumni` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(100) NOT NULL,
  `TTL` varchar(100) NOT NULL,
  `ALAMAT` varchar(200) NOT NULL,
  `NAMA_AYAH` varchar(100) NOT NULL,
  `NAMA_IBU` varchar(100) NOT NULL,
  `PEKERJAAN` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_alumni`
--

INSERT INTO `detail_alumni` (`NIK`, `NAMA`, `TTL`, `ALAMAT`, `NAMA_AYAH`, `NAMA_IBU`, `PEKERJAAN`) VALUES
('3519044704000001', 'Dimas Anggara', 'Madiun, 5 April 1998', 'JL. Pagu Indah, No. 134, RT 10/RW 2, Kel. Maniserjo, Madiun', 'Hadi Wijaya', 'Siti Alifah', 'Wiraswasta'),
('3519044811000002', 'Sabrina Aprilia', 'Surabaya, 6 Januari 1998', 'JL. Mawar,No. 403, RT 7/RW 2, Kel. Keputih, Surabaya', 'Susasnto', 'Maryani', 'Data Analyst di PT. Telkom Indonesia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni_informatika`
--
ALTER TABLE `alumni_informatika`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `NAMA` (`NAMA`),
  ADD KEY `NAMA_2` (`NAMA`);

--
-- Indexes for table `detail_alumni`
--
ALTER TABLE `detail_alumni`
  ADD PRIMARY KEY (`NIK`),
  ADD KEY `NAMA` (`NAMA`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni_informatika`
--
ALTER TABLE `alumni_informatika`
  ADD CONSTRAINT `alumni_informatika_ibfk_1` FOREIGN KEY (`NAMA`) REFERENCES `detail_alumni` (`NAMA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
