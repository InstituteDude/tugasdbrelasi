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
-- Database: `universiteit`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambil_mk`
--

CREATE TABLE `ambil_mk` (
  `NIP` int(1) DEFAULT NULL,
  `kd_mk` varchar(6) DEFAULT NULL,
  `ruangan` varchar(5) DEFAULT NULL,
  `jml_mhs` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambil_mk`
--

INSERT INTO `ambil_mk` (`NIP`, `kd_mk`, `ruangan`, `jml_mhs`) VALUES
(3, 'PTI01', 'H5211', 40),
(2, 'PTI02', 'H5212', 45),
(2, 'PTI03', 'H5206', 40),
(1, 'IS101', '17312', 30);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(5) NOT NULL,
  `customer_name` varchar(10) DEFAULT NULL,
  `customer_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_address`) VALUES
('CS001', 'Aan', 'Pasuruan'),
('CS002', 'Hanif', 'Banyuwangi'),
('CS003', 'Mirza', 'Malang'),
('CS004', 'Tanti', 'Tegal'),
('CS005', 'Budie', 'Kediri');

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `NIP` int(1) NOT NULL,
  `nama_ins` varchar(30) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `asal_kota` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instruktur`
--

INSERT INTO `instruktur` (`NIP`, `nama_ins`, `jurusan`, `asal_kota`) VALUES
(1, 'Muhammad Akbar', 'Ilmu Sejarah', 'Malang'),
(2, 'Saichul Fitrian A.', 'Ilmu Komputer', 'Malang'),
(3, 'Annafia Oktafian', 'Ilmu Komputer', 'Klaten'),
(4, 'Budy Pratama', 'Ilmu Komputer', 'Magelang');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(6) NOT NULL,
  `nama_mk` varchar(30) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
('IS101', 'Sejarah Indonesia', 3),
('PTI01', 'Algoritma dan Pemrograman', 3),
('PTI02', 'Basis Data', 3),
('PTI03', 'Visual Basic', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(5) NOT NULL,
  `order_date` date DEFAULT NULL,
  `customer_id` varchar(5) DEFAULT NULL,
  `qty` int(2) DEFAULT NULL,
  `amount` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `customer_id`, `qty`, `amount`) VALUES
('CS001', '2016-12-10', 'CS001', 1, 40000),
('CS002', '2017-12-11', 'CS002', 2, 50000),
('CS003', '2017-12-12', 'CS005', 3, 35000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
