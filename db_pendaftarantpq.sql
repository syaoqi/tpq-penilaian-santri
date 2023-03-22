-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2021 pada 12.23
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pendaftarantpq`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(1, 'aa', 'bb'),
(11, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda'),
(12, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(13, 'e', 'e1671797c52e15f763380b45e841ec32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggotalogin`
--

CREATE TABLE `anggotalogin` (
  `id` int(11) NOT NULL,
  `useranggota` varchar(255) NOT NULL,
  `passanggota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggotalogin`
--

INSERT INTO `anggotalogin` (`id`, `useranggota`, `passanggota`) VALUES
(1, 'anggota', 'dfb9e85bc0da607ff76e0559c62537e8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas1`
--

CREATE TABLE `tbl_kelas1` (
  `nis` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(20) NOT NULL,
  `tgl` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas1`
--

INSERT INTO `tbl_kelas1` (`nis`, `nama`, `umur`, `tgl`, `alamat`, `email`) VALUES
(782, 'js', 1, '2020-08-04', 'jns', 'zasa@aa'),
(121121221, 'sa', 0, '2020-07-30', 'asas', 'sa@aa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas2`
--

CREATE TABLE `tbl_kelas2` (
  `nis2` int(20) NOT NULL,
  `nama2` varchar(50) NOT NULL,
  `umur` int(20) NOT NULL,
  `tgl` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas2`
--

INSERT INTO `tbl_kelas2` (`nis2`, `nama2`, `umur`, `tgl`, `alamat`, `email`) VALUES
(311414124, 'sip', 19, '1999-01-05', 'daw', 'aa@aa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `nis` int(20) NOT NULL,
  `iqra_123` int(10) NOT NULL,
  `h_doa` int(10) NOT NULL,
  `h_jus_am` int(10) NOT NULL,
  `p_am` int(10) NOT NULL,
  `tauhid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`nis`, `iqra_123`, `h_doa`, `h_jus_am`, `p_am`, `tauhid`) VALUES
(213131312, 56, 76, 56, 43, 22),
(234556677, 7, 7, 5, 5, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai2`
--

CREATE TABLE `tbl_nilai2` (
  `nis2` int(20) NOT NULL,
  `iqra_456` int(10) NOT NULL,
  `h_doa` int(10) NOT NULL,
  `h_jus_am` int(10) NOT NULL,
  `p_am` int(10) NOT NULL,
  `tauhid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilai2`
--

INSERT INTO `tbl_nilai2` (`nis2`, `iqra_456`, `h_doa`, `h_jus_am`, `p_am`, `tauhid`) VALUES
(311414124, 87, 66, 77, 99, 78);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `anggotalogin`
--
ALTER TABLE `anggotalogin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kelas1`
--
ALTER TABLE `tbl_kelas1`
  ADD UNIQUE KEY `nis` (`nis`);

--
-- Indeks untuk tabel `tbl_kelas2`
--
ALTER TABLE `tbl_kelas2`
  ADD UNIQUE KEY `nis` (`nis2`);

--
-- Indeks untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD KEY `nis` (`nis`);

--
-- Indeks untuk tabel `tbl_nilai2`
--
ALTER TABLE `tbl_nilai2`
  ADD KEY `nis` (`nis2`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `anggotalogin`
--
ALTER TABLE `anggotalogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
