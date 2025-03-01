-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2025 at 08:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2dstyle`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE `data_admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`id`, `nama`, `username`, `email`, `password`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '$2y$10$BbDoGztTa7gdHMKZq1OEjeGTfDBCRv9gPVRP6NLRhF.mKbY/pr0BS'),
(2, 'Admin', 'daryll', 'daryll@gmail.com', '$2y$10$7rdGA7ZcBiVTHc6hT5h7o.6CWVRxwVOMmVcd4pg3dcPjsUf.cqG.W');

-- --------------------------------------------------------

--
-- Table structure for table `data_bank`
--

CREATE TABLE `data_bank` (
  `id` int(11) NOT NULL,
  `nama_bank` int(11) NOT NULL,
  `no_rek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_flashsale`
--

CREATE TABLE `data_flashsale` (
  `id_produk` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `harga_sale` int(20) NOT NULL,
  `start_sale` varchar(100) NOT NULL,
  `end_sale` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_kategori`
--

CREATE TABLE `data_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kategori`
--

INSERT INTO `data_kategori` (`id_kategori`, `nama`) VALUES
(3, 'Hoodie'),
(4, 'T-Shirt'),
(7, 'Celana');

-- --------------------------------------------------------

--
-- Table structure for table `data_pengguna`
--

CREATE TABLE `data_pengguna` (
  `users_id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `alamat_jalan` text DEFAULT NULL,
  `kecamatan` varchar(180) DEFAULT NULL,
  `kelurahan` varchar(180) DEFAULT NULL,
  `kota` varchar(170) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pengguna`
--

INSERT INTO `data_pengguna` (`users_id`, `nama`, `email`, `no_hp`, `alamat_jalan`, `kecamatan`, `kelurahan`, `kota`, `password`, `created_at`, `updated_at`) VALUES
(8, 'daryll irsyad', 'daryllir@gmail.com', '0869696969', 'Contoh saja', 'Klojen', 'Bareng', 'Malang', '$2y$10$srzIm3TNsaVo7NZ.GoMPneP8Tg43dm4KvKNoybc/Owgw0KXEeOGZi', '2024-05-16 19:25:04', '2024-05-29 03:34:09'),
(9, 'dummy', 'dummy@gmail.com', NULL, NULL, NULL, NULL, '', '$2y$10$Zz4Tecp20UdUFqjwfbDzQeCMCuEH8J4lqeBhJPW.PnI2/5xid7QM6', '2024-05-22 00:35:08', '2024-05-22 00:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `data_produk`
--

CREATE TABLE `data_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategori` int(100) NOT NULL,
  `url_slug` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_produk`
--

INSERT INTO `data_produk` (`id`, `nama`, `deskripsi`, `gambar`, `kategori`, `url_slug`, `created_at`, `updated_at`) VALUES
(15, 'Asta', '<p>Black Clover</p>', '1715223808_83de137505d1e2dc259c.png', 4, 'Asta-663c3d0022822', '2024-05-09 03:03:28', '2024-05-16 19:29:58'),
(16, 'Itachi', '<p>Naruto Shippuden</p>', '1715223875_ee7cefe31d1f0dfe5b5a.png', 4, 'Itachi-663c3d4335bcb', '2024-05-09 03:04:35', '2024-05-09 03:04:35'),
(17, 'Luffy Gear 5', '<p>One Piece</p>', '1715223904_c23aaf2d951bcef3cea6.png', 3, 'Luffy-Gear-5-663c3d601b53d', '2024-05-09 03:05:04', '2024-05-09 03:05:04'),
(18, 'Luffy Bounceman', '<p>One Piece</p>', '1715888259_021878a8ea1236782072.png', 4, 'Luffy-Bounceman-664660833057b', '2024-05-16 19:37:39', '2024-05-16 19:37:39'),
(19, 'Celana Levi', '<p>Attack On TItan</p>', '1717440838_7b5b1646bf9d7f5ec8ac.png', 7, 'Celana-Levi-665dfeeebabbc', '2024-06-03 17:35:42', '2024-06-03 18:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `data_stok_produk`
--

CREATE TABLE `data_stok_produk` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_stok_produk`
--

INSERT INTO `data_stok_produk` (`id`, `id_produk`, `ukuran`, `stok`, `harga`) VALUES
(23, 15, 'XL', 4, 200000),
(24, 16, 'L', 1, 150000),
(25, 17, 'XL', 2, 250000),
(26, 15, 'L:', 1, 100000),
(27, 18, 'L', 1, 200000),
(28, 19, 'XL', 4, 555555);

-- --------------------------------------------------------

--
-- Table structure for table `data_transaksi`
--

CREATE TABLE `data_transaksi` (
  `id` int(11) NOT NULL,
  `kode_trx` varchar(100) NOT NULL,
  `id_buyer` int(11) NOT NULL,
  `nama_produk` text DEFAULT NULL,
  `nama_bank` text DEFAULT NULL,
  `no_rek_bank` varchar(50) DEFAULT NULL,
  `variasi` text NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `kurir` varchar(255) NOT NULL,
  `harga` int(20) NOT NULL,
  `alamat_jalan` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_transaksi`
--

INSERT INTO `data_transaksi` (`id`, `kode_trx`, `id_buyer`, `nama_produk`, `nama_bank`, `no_rek_bank`, `variasi`, `kuantitas`, `status`, `bukti_bayar`, `no_resi`, `kurir`, `harga`, `alamat_jalan`, `created_at`, `updated_at`) VALUES
(25, '2DS663C3FBBDA860', 7, 'Asta', NULL, NULL, 'XL', 1, 'Selesai', '1715224538_b23a249640a228bd36bf.jpg', 'JNE1234567', 'JNE', 200000, 'Jl. Blablabla', '2024-05-09 03:15:07', '2024-05-09 03:16:41'),
(26, '2DS66465E3DE99E4', 8, 'Itachi', NULL, NULL, 'L', 1, 'Selesai', '1715887705_a59a7abdaba4df7f6e9f.jpg', 'JNE1234567', 'JNE', 150000, 'Contoh saja', '2024-05-16 19:27:57', '2024-05-16 19:34:06'),
(27, '2DS66465E3DE99E4', 8, 'Luffy Gear 5', NULL, NULL, 'XL', 2, 'Selesai', '1715887705_a59a7abdaba4df7f6e9f.jpg', 'JNE1234567', 'JNE', 250000, 'Contoh saja', '2024-05-16 19:27:57', '2024-05-16 19:34:06'),
(28, '2DS66465E3DE99E4', 8, 'Asta', NULL, NULL, 'XL', 2, 'Selesai', '1715887705_a59a7abdaba4df7f6e9f.jpg', 'JNE1234567', 'JNE', 200000, 'Contoh saja', '2024-05-16 19:27:57', '2024-05-16 19:34:06'),
(29, '2DS66466357D22F0', 8, 'Luffy Bounceman', NULL, NULL, 'L', 1, 'Selesai', '1715889017_cf3d5add1c5b5b56889f.png', 'JNE1234567', 'JNE', 200000, 'Contoh saja', '2024-05-16 19:49:43', '2024-05-16 19:51:10'),
(30, '2DS66466357D22F0', 8, 'Itachi', NULL, NULL, 'L', 2, 'Selesai', '1715889017_cf3d5add1c5b5b56889f.png', 'JNE1234567', 'JNE', 150000, 'Contoh saja', '2024-05-16 19:49:43', '2024-05-16 19:51:10'),
(31, '2DS66466357D22F0', 8, 'Luffy Gear 5', NULL, NULL, 'XL', 2, 'Selesai', '1715889017_cf3d5add1c5b5b56889f.png', 'JNE1234567', 'JNE', 250000, 'Contoh saja', '2024-05-16 19:49:43', '2024-05-16 19:51:10'),
(32, '2DS66466357D22F0', 8, 'Asta', NULL, NULL, 'L:', 2, 'Selesai', '1715889017_cf3d5add1c5b5b56889f.png', 'JNE1234567', 'JNE', 100000, 'Contoh saja', '2024-05-16 19:49:43', '2024-05-16 19:51:10'),
(33, '2DS666D19C58E013', 8, 'Itachi', NULL, NULL, 'L', 1, 'Selesai', '1718426074_e493b37f0b35b237b454.png', 'JNE1234567', 'JNE', 150000, 'Contoh saja', '2024-06-15 04:34:13', '2024-06-15 04:41:40'),
(34, '2DS666D1C75F07B9', 8, 'Asta', NULL, NULL, 'XL', 1, 'Dibatalkan - Pembayaran Tidak Valid', '1718426753_621520d3e585d893c4c5.png', NULL, '', 200000, 'Contoh saja', '2024-06-15 04:45:42', '2024-06-15 04:46:04'),
(35, '2DS6671977A8B9A3', 8, 'Asta', NULL, NULL, 'XL', 1, 'Menunggu Pembayaran', NULL, NULL, '', 200000, 'Contoh saja', '2024-06-18 14:19:38', '2024-06-18 14:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_bank`
--
ALTER TABLE `data_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_flashsale`
--
ALTER TABLE `data_flashsale`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `id_produk` (`id_produk`);

--
-- Indexes for table `data_kategori`
--
ALTER TABLE `data_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `data_pengguna`
--
ALTER TABLE `data_pengguna`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `data_produk`
--
ALTER TABLE `data_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`kategori`);

--
-- Indexes for table `data_stok_produk`
--
ALTER TABLE `data_stok_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produk` (`id_produk`) USING BTREE;

--
-- Indexes for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_bank`
--
ALTER TABLE `data_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_kategori`
--
ALTER TABLE `data_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_pengguna`
--
ALTER TABLE `data_pengguna`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_produk`
--
ALTER TABLE `data_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `data_stok_produk`
--
ALTER TABLE `data_stok_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_flashsale`
--
ALTER TABLE `data_flashsale`
  ADD CONSTRAINT `data_flashsale_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `data_produk` (`id`);

--
-- Constraints for table `data_produk`
--
ALTER TABLE `data_produk`
  ADD CONSTRAINT `data_produk_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `data_kategori` (`id_kategori`);

--
-- Constraints for table `data_stok_produk`
--
ALTER TABLE `data_stok_produk`
  ADD CONSTRAINT `data_stok_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `data_produk` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
