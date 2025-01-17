-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2025 at 09:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2210010091_pbo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id_biodata` int NOT NULL,
  `nip` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `telp` int NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `anggota_keluarga` int NOT NULL,
  `id_cabang` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id_biodata`, `nip`, `nama`, `status`, `telp`, `alamat`, `anggota_keluarga`, `id_cabang`, `id_user`) VALUES
(44, 55, 'dfkdjjk', 'bdsjb', 842, 'kjbvudh', 3, 9283, 9482);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kecelakaan_kerja`
--

CREATE TABLE `laporan_kecelakaan_kerja` (
  `id_laporan_KK` int NOT NULL,
  `korban` varchar(100) NOT NULL,
  `kronologi_kejadian` varchar(100) NOT NULL,
  `unit_kerja` varchar(50) NOT NULL,
  `id_input_data` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan_kecelakaan_kerja`
--

INSERT INTO `laporan_kecelakaan_kerja` (`id_laporan_KK`, `korban`, `kronologi_kejadian`, `unit_kerja`, `id_input_data`) VALUES
(123, 'abdan', 'jatuh dari pohon cabe', '22', '33');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_pengobatan`
--

CREATE TABLE `laporan_pengobatan` (
  `id_laporan_pengobatan` int NOT NULL,
  `jenis_pengobatan` varchar(100) NOT NULL,
  `biaya_pengobatan` int NOT NULL,
  `nama_pengobatan` varchar(100) NOT NULL,
  `nama_rumahsakit` varchar(100) NOT NULL,
  `id_input_data` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan_pengobatan`
--

INSERT INTO `laporan_pengobatan` (`id_laporan_pengobatan`, `jenis_pengobatan`, `biaya_pengobatan`, `nama_pengobatan`, `nama_rumahsakit`, `id_input_data`) VALUES
(22, 'tes', 11, 'tes', 'tes', 33);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_uji_kesehatan_berkala`
--

CREATE TABLE `laporan_uji_kesehatan_berkala` (
  `id_laporan_uji_kesehatan_berkala` int NOT NULL,
  `pemeriksaan_fisik` varchar(100) NOT NULL,
  `pemeriksaan_mata` varchar(100) NOT NULL,
  `pemeriksaan_gigi_mulut` varchar(100) NOT NULL,
  `pemeriksaan_tht` varchar(100) NOT NULL,
  `pemeriksaan_paru` varchar(100) NOT NULL,
  `pemeriksaan_labolatorium` varchar(100) NOT NULL,
  `id_biodata` int NOT NULL,
  `tgl` int NOT NULL,
  `rekomendasi` varchar(100) NOT NULL,
  `id_input_data` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan_uji_kesehatan_berkala`
--

INSERT INTO `laporan_uji_kesehatan_berkala` (`id_laporan_uji_kesehatan_berkala`, `pemeriksaan_fisik`, `pemeriksaan_mata`, `pemeriksaan_gigi_mulut`, `pemeriksaan_tht`, `pemeriksaan_paru`, `pemeriksaan_labolatorium`, `id_biodata`, `tgl`, `rekomendasi`, `id_input_data`) VALUES
(12, 'qw', 'qwqww', 'qw', 'qw', 'qw', 'qw22', 222, 44, 'fsd', 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id_biodata`);

--
-- Indexes for table `laporan_kecelakaan_kerja`
--
ALTER TABLE `laporan_kecelakaan_kerja`
  ADD PRIMARY KEY (`id_laporan_KK`);

--
-- Indexes for table `laporan_pengobatan`
--
ALTER TABLE `laporan_pengobatan`
  ADD PRIMARY KEY (`id_laporan_pengobatan`);

--
-- Indexes for table `laporan_uji_kesehatan_berkala`
--
ALTER TABLE `laporan_uji_kesehatan_berkala`
  ADD PRIMARY KEY (`id_laporan_uji_kesehatan_berkala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id_biodata` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `laporan_kecelakaan_kerja`
--
ALTER TABLE `laporan_kecelakaan_kerja`
  MODIFY `id_laporan_KK` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `laporan_pengobatan`
--
ALTER TABLE `laporan_pengobatan`
  MODIFY `id_laporan_pengobatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `laporan_uji_kesehatan_berkala`
--
ALTER TABLE `laporan_uji_kesehatan_berkala`
  MODIFY `id_laporan_uji_kesehatan_berkala` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
