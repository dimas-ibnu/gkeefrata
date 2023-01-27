-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 27, 2023 at 12:03 PM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efrata`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulanan`
--

DROP TABLE IF EXISTS `bulanan`;
CREATE TABLE IF NOT EXISTS `bulanan` (
  `id_pb` int(11) NOT NULL,
  `tgl_pb` date NOT NULL,
  `uraian_pb` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `waktu_pb` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dana_kas`
--

DROP TABLE IF EXISTS `dana_kas`;
CREATE TABLE IF NOT EXISTS `dana_kas` (
  `id_kas` int(11) NOT NULL,
  `tgl_kas` date NOT NULL,
  `uraian_kas` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dana_kas`
--

INSERT INTO `dana_kas` (`id_kas`, `tgl_kas`, `uraian_kas`, `masuk`, `keluar`, `jenis`, `waktu`) VALUES
(0, '2023-01-16', 'Parapah', 6000000, 0, 'Masuk', '2023-01-17 14:43:39'),
(1, '2023-01-16', 'Dana Penopang', 0, 400000, 'Keluar', '2023-01-17 15:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `dana_sosial`
--

DROP TABLE IF EXISTS `dana_sosial`;
CREATE TABLE IF NOT EXISTS `dana_sosial` (
  `id_ds` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_ds` date NOT NULL,
  `uraian_ds` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ds`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dana_sosial`
--

INSERT INTO `dana_sosial` (`id_ds`, `tgl_ds`, `uraian_ds`, `masuk`, `keluar`, `jenis`, `waktu`) VALUES
(1, '1999-10-01', 'oakwd', 1000, 0, 'Masuk', '2023-01-27 11:32:34'),
(2, '1999-10-01', 'oakwd', 1000, 0, 'Masuk', '2023-01-27 11:32:53'),
(3, '1999-12-19', 'oke mantap', 101283, 0, 'Masuk', '2023-01-27 11:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `perpuluhan`
--

DROP TABLE IF EXISTS `perpuluhan`;
CREATE TABLE IF NOT EXISTS `perpuluhan` (
  `id_pul` int(11) NOT NULL,
  `tgl_pul` date NOT NULL,
  `uraian_pul` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `waktu_pul` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

DROP TABLE IF EXISTS `tb_pengguna`;
CREATE TABLE IF NOT EXISTS `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pengguna` varchar(30) NOT NULL,
  `username` varchar(1028) NOT NULL,
  `password` longtext NOT NULL,
  `level` enum('Administrator','Bendahara') NOT NULL,
  `kode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`, `kode`) VALUES
(1, 'Antoni Sephtianus', 'bendahara', 'bendahara', 'Bendahara', 0),
(2, 'Meisa', 'admin', 'admin', 'Administrator', 0),
(3, 'dimas', 'dimasibnumalik@gmail.com', 'qwe12345', 'Administrator', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
