-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2024 pada 12.23
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `ID_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jenis` varchar(20) DEFAULT NULL,
  `Ukuran` varchar(5) DEFAULT NULL,
  `HargaBeli` decimal(10,0) DEFAULT NULL,
  `HargaJual` decimal(10,0) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`ID_Barang`, `Nama_Barang`, `Jenis`, `Ukuran`, `HargaBeli`, `HargaJual`, `Stok`) VALUES
('BR002', 'adidas', 'Celana', 'M', '80000', '160000', 5),
('BR003', 'miniso', 'Baju', 'S', '75000', '100000', 10),
('BR004', 'zara', 'Celana', 'M', '200000', '300000', 15),
('BR006', 'apa', 'Baju', 'S', '50000', '200000', 5),
('BR007', 'h&m', 'Baju', 'S', '20000', '60000', 10),
('BR008', 'mango', 'Kemeja', 'M', '120000', '150000', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` varchar(50) NOT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `Username`, `Password`) VALUES
('AD9010087', 'dara', '567'),
('AD9010088', 'ayu', '345'),
('AD9010089', 'dhia', '123'),
('AD9010090', 'rachma', '123'),
('AD9010091', 'nadia', '789');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(20) NOT NULL,
  `Tanggal` varchar(20) DEFAULT NULL,
  `ID_Customer` varchar(10) DEFAULT NULL,
  `TotalBeli` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`NoFaktur`, `Tanggal`, `ID_Customer`, `TotalBeli`) VALUES
('TR0002', '10-01-2024', 'CS001', '260000'),
('TR0003', '10-01-2024', 'CS0003', '600000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) DEFAULT NULL,
  `ID_Barang` varchar(10) DEFAULT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Harga` decimal(10,0) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`NoFaktur`, `ID_Barang`, `Nama_Barang`, `Jumlah`, `Harga`, `Total`) VALUES
('TR001', 'BR001', 'Baju', 1, '75000', '75000'),
('TR0002', 'BR003', 'miniso', 2, '100000', '200000'),
('TR0002', 'BR002', 'adidas', 2, '160000', '320000'),
('TR0002', 'BR003', 'miniso', 1, '100000', '100000'),
('TR001', 'BR002', 'adidas', 1, '160000', '160000'),
('TR001', 'BR003', 'miniso', 2, '100000', '200000'),
('TR001', 'BR004', 'zara', 1, '300000', '300000'),
('TR001', 'BR008', 'mango', 1, '150000', '150000'),
('TR0002', 'BR002', 'adidas', 1, '160000', '160000'),
('TR0002', 'BR003', 'miniso', 1, '100000', '100000'),
('TR0002', 'BR002', 'adidas', 1, '160000', '160000'),
('TR0002', 'BR003', 'miniso', 1, '100000', '100000'),
('TR0003', 'BR004', 'zara', 2, '300000', '600000'),
('TR0003', 'BR004', 'zara', 2, '300000', '600000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_Barang`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NoFaktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
