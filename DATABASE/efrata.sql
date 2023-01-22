-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2023 pada 16.30
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `bulanan`
--

CREATE TABLE `bulanan` (
  `id_pb` int(11) NOT NULL,
  `tgl_pb` date NOT NULL,
  `uraian_pb` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `waktu_pb` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dana_kas`
--

CREATE TABLE `dana_kas` (
  `id_kas` int(11) NOT NULL,
  `tgl_kas` date NOT NULL,
  `uraian_kas` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dana_kas`
--

INSERT INTO `dana_kas` (`id_kas`, `tgl_kas`, `uraian_kas`, `masuk`, `keluar`, `jenis`, `waktu`) VALUES
(0, '2023-01-16', 'Parapah', 6000000, 0, 'Masuk', '2023-01-17 14:43:39'),
(1, '2023-01-16', 'Dana Penopang', 0, 400000, 'Keluar', '2023-01-17 15:03:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dana_sosial`
--

CREATE TABLE `dana_sosial` (
  `id_ds` int(11) NOT NULL,
  `tgl_ds` date NOT NULL,
  `uraian_ds` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dana_sosial`
--

INSERT INTO `dana_sosial` (`id_ds`, `tgl_ds`, `uraian_ds`, `masuk`, `keluar`, `jenis`, `waktu`) VALUES
(0, '2023-01-16', 'Dana Penopang ', 200000, 0, 'Masuk', '2023-01-17 14:44:07'),
(1, '2023-01-13', 'Kapakat I', 1000000, 0, 'Masuk', '2023-01-17 14:44:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perpuluhan`
--

CREATE TABLE `perpuluhan` (
  `id_pul` int(11) NOT NULL,
  `tgl_pul` date NOT NULL,
  `uraian_pul` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `waktu_pul` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Administrator','Bendahara') NOT NULL,
  `kode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`, `kode`) VALUES
(1, 'Antoni Sephtianus', 'bendahara', 'bendahara', 'Bendahara', 0),
(2, 'Meisa', 'admin', 'admin', 'Administrator', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dana_kas`
--
ALTER TABLE `dana_kas`
  ADD PRIMARY KEY (`id_kas`);

--
-- Indeks untuk tabel `dana_sosial`
--
ALTER TABLE `dana_sosial`
  ADD PRIMARY KEY (`id_ds`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
