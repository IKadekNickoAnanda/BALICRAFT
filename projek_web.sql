-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 03:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_20_150653_create_model_barangs_table', 1),
(6, '2021_10_20_152034_create_model_pengrajins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_barangs`
--

CREATE TABLE `model_barangs` (
  `id_brg` bigint(20) UNSIGNED NOT NULL,
  `id_peng` bigint(20) UNSIGNED NOT NULL,
  `nama_kerajinan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_barangs`
--

INSERT INTO `model_barangs` (`id_brg`, `id_peng`, `nama_kerajinan`, `bahan`, `keterangan`, `harga`, `created_at`, `updated_at`, `gambar`) VALUES
(1, 9, 'Bucket M', 'aluminium', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor.</p>', 10000, '2021-11-11 04:18:38', '2021-12-27 04:43:02', 'gambar-barang/1638886549Bucket-m.jpg'),
(2, 9, 'Chocolate Box', 'Aluminium', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor.</p>', 20000, '2021-11-11 04:19:45', '2021-12-26 06:02:29', 'gambar-barang/1636699871coklate-box-set-of-3.jpg'),
(3, 8, 'Box-set-3', 'Aluminium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor.', 100000, '2021-11-17 00:44:06', '2021-11-17 00:44:06', 'gambar-barang/1637138646box-set-of-3.jpg'),
(4, 9, 'Box-set-6', 'Aluminium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor.', 121000, '2021-11-17 00:46:10', '2021-11-17 00:46:10', 'gambar-barang/1637138770box-set-6.jpg'),
(5, 8, 'Candy-decor', 'Aluminium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor.', 10000, '2021-11-17 00:48:54', '2021-11-17 00:48:54', 'gambar-barang/1637138934candy-decor.jpg'),
(6, 8, 'Bucket-L', 'Aluminium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor. Ut viverra sapien lacus, ac pretium augue suscipit at. Ut turpis ipsum, lacinia in ex quis, bibendum ultricies neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque nec libero at tortor commodo egestas. Morbi efficitur consectetur neque, at iaculis lectus sollicitudin non. Aliquam convallis nisi a arcu semper, at rhoncus ex euismod.', 9000, '2021-11-21 21:39:38', '2021-11-21 21:39:38', 'gambar-barang/1637559577bucket-L.jpg'),
(7, 9, 'Bucket-M', 'Aluminium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor. Ut viverra sapien lacus, ac pretium augue suscipit at. Ut turpis ipsum, lacinia in ex quis, bibendum ultricies neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque nec libero at tortor commodo egestas. Morbi efficitur consectetur neque, at iaculis lectus sollicitudin non. Aliquam convallis nisi a arcu semper, at rhoncus ex euismod.', 8000, '2021-11-21 21:40:23', '2021-11-21 21:40:23', 'gambar-barang/1637559623Bucket-m.jpg'),
(8, 8, 'Water-Holder', 'Aluminium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor. Ut viverra sapien lacus, ac pretium augue suscipit at. Ut turpis ipsum, lacinia in ex quis, bibendum ultricies neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque nec libero at tortor commodo egestas. Morbi efficitur consectetur neque, at iaculis lectus sollicitudin non. Aliquam convallis nisi a arcu semper, at rhoncus ex euismod.', 50000, '2021-11-21 21:41:07', '2021-11-21 21:41:07', 'gambar-barang/1637559667water-holder.jpg'),
(9, 8, 'Round-Mirror', 'Aluminium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor. Ut viverra sapien lacus, ac pretium augue suscipit at. Ut turpis ipsum, lacinia in ex quis, bibendum ultricies neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque nec libero at tortor commodo egestas. Morbi efficitur consectetur neque, at iaculis lectus sollicitudin non. Aliquam convallis nisi a arcu semper, at rhoncus ex euismod.', 50000, '2021-11-21 21:43:39', '2021-11-21 21:43:39', 'gambar-barang/1637559819round-mirror.jpg'),
(12, 8, 'Cermin-Kotak', 'Aluminium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac facilisis sapien, eu semper nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean malesuada est et risus ultrices, nec fringilla velit porttitor. Ut viverra sapien lacus, ac pretium augue suscipit at. Ut turpis ipsum, lacinia in ex quis, bibendum ultricies neque.', 570000, '2021-12-02 20:34:54', '2021-12-02 20:34:54', 'gambar-barang/1638506093square-mirror.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `model_keranjangs`
--

CREATE TABLE `model_keranjangs` (
  `Id` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_brg` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model_keranjangs`
--

INSERT INTO `model_keranjangs` (`Id`, `jumlah`, `alamat`, `no_telp`, `id_brg`, `created_at`, `updated_at`) VALUES
(1, 10, 'Bangli', '89999999', 1, '2021-12-26 23:45:16', '2021-12-26 23:45:16'),
(2, 12, 'Jawa', '88888', 2, '2021-12-26 23:45:57', '2021-12-26 23:45:57'),
(9, 1, 'jl. apel', '081222', 1, '2021-12-27 04:19:30', '2021-12-27 04:19:30'),
(10, 1, 'jl. apel', '081222222', 1, '2021-12-27 04:21:25', '2021-12-27 04:21:25'),
(11, 1, 'Jl. Kintamani', '081222222222', 1, '2021-12-27 04:40:10', '2021-12-27 04:40:10'),
(12, 1, 'Jl. Gatsu, Denpasar, Bali', '08123456789', 12, '2021-12-27 04:56:12', '2021-12-27 04:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `model_pengrajins`
--

CREATE TABLE `model_pengrajins` (
  `id_peng` bigint(20) UNSIGNED NOT NULL,
  `nama_peng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_pengrajins`
--

INSERT INTO `model_pengrajins` (`id_peng`, `nama_peng`, `alamat`, `email`, `created_at`, `updated_at`) VALUES
(8, 'Pak Dhe', 'Jl. Gatot Subroto', 'pak@ge.dhe', '2021-11-11 03:58:45', '2021-11-11 22:02:12'),
(9, 'Kadek', 'gianyar', 'kadek@ke.dua', '2021-11-11 04:00:05', '2021-12-26 04:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gede Wahyu Purnama', 'gede@denpasar.bali', NULL, '$2y$10$MxxlJPX.vmKvexq80G30JuDQ9WUAkfQw1StUEVFeRTILEDzhDfm7m', 'VuDpj5N68gK0boh5ifZdFpVXuTQsxO8zxeKiDqRxrGOQSwuYgnBcvlKyRamr', '2021-10-21 05:42:27', '2021-10-21 05:42:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_barangs`
--
ALTER TABLE `model_barangs`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `model_keranjangs`
--
ALTER TABLE `model_keranjangs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `model_pengrajins`
--
ALTER TABLE `model_pengrajins`
  ADD PRIMARY KEY (`id_peng`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `model_barangs`
--
ALTER TABLE `model_barangs`
  MODIFY `id_brg` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `model_keranjangs`
--
ALTER TABLE `model_keranjangs`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `model_pengrajins`
--
ALTER TABLE `model_pengrajins`
  MODIFY `id_peng` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
