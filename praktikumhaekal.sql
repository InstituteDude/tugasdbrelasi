-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 05:02 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikumhaekal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambilmk2`
--

CREATE TABLE `ambilmk2` (
  `NIM` int(15) NOT NULL,
  `kode_mk` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambilmk2`
--

INSERT INTO `ambilmk2` (`NIM`, `kode_mk`) VALUES
(101, 'PTI447'),
(103, 'TIK333'),
(104, 'PTI333'),
(104, 'PTI447'),
(111, 'PTI123'),
(123, 'PTI999');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(15) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(101, 'Arif', 'L', 'Jl.Kenangan'),
(102, 'Budi', 'L', 'Jl.Jombang'),
(103, 'Wati', 'P', 'Jl.Surabaya'),
(104, 'Ika', 'P', 'Jl.Jombang'),
(105, 'Tono', 'L', 'Jl.Jakarta'),
(106, 'Iwan', 'L', 'Jl.Bandung'),
(107, 'Sari', 'P', 'Jl.Malang');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(12) NOT NULL,
  `nama_mk` varchar(25) NOT NULL,
  `sks` int(5) NOT NULL,
  `semester` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('PTI447', 'Praktikum Basis Data', 1, 3),
('TIK342', 'Praktikum Basis Data', 1, 3),
('PTI333', 'Basis Data Terdistribusi', 3, 5),
('TIK123', 'Jaringan Komputer', 2, 5),
('TIK333', 'Sistem Operasi', 3, 5),
('PTI123', 'Grafika Multimedia', 3, 5),
('PTI777', 'Sistem Informasi', 2, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
