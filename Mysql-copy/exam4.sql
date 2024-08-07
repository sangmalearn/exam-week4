-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2024 at 04:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam4`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'James Sipes Dany', 'kraig.bradtke.dany@example.com', '(847) 928-0482', '93391 Hudson Square Apt. 12 East Audreyview, NY  21540-99', '2024-08-02 03:29:34', '2024-08-06 10:48:44'),
(2, 'Miss Anita Nolan', 'adella45@example.org', '586.290.1146', '459 Raquel PlainCormiertown, DC 41588', '2024-08-02 03:29:34', '2024-08-02 15:04:25'),
(4, 'Laura Treutel Misa', 'kenna.bednar@example.net', '626-284-8427', '432 Kutch Ferry Suite 395Walterchester, MI 46836', '2024-08-02 03:29:34', '2024-08-02 14:58:37'),
(5, 'Alford Murazik', 'klein.korey@example.net', '820-927-6499', '8244 Jaskolski Port\nGaylordview, NM 54861', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(6, 'Agustina Daniel', 'rowena77@example.org', '336.728.5981', '171 Molly StationKaylahstad, NJ 82488', '2024-08-02 03:29:34', '2024-08-06 10:51:08'),
(9, 'Dr. Wallace', 'desmond98@example.org', '+17857165572', '592 Tromp Pines Apt. 586Bodeberg, OK 33145', '2024-08-02 03:29:34', '2024-08-02 15:04:58'),
(10, 'Kareem Khan', 'kareem.khan@example.com', '+1-754-950-2298', '3750 Janiya Locks Suite 284Weberhaven, TX 52902', '2024-08-02 03:29:34', '2024-08-02 14:10:15'),
(11, 'Haleigh Fisher', 'gstiedemann@example.net', '854.216.9230', '32594 Weldon Motorway Apt. 915\nOlsonton, TX 67020-8930', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(12, 'Shanel Shields', 'xhoppe@example.net', '1-279-289-1866', '55958 Chance Isle\nSchillershire, PA 01593', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(13, 'Miss Lizzie King IV', 'vincenza18@example.net', '+1-848-942-3988', '202 Gutmann Street Apt. 602\nKubbury, HI 83422-4118', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(14, 'Bill Gutkowski', 'napoleon63@example.net', '+1-858-600-2921', '30638 Harold Via Apt. 823\nDietrichborough, KS 62967', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(15, 'Macy Moore', 'johathan.prosacco@example.org', '+19306640585', '961 Robbie Flats Apt. 796\nSouth Koleton, AL 84872-7613', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(16, 'Aiyana Keeling MD', 'justice98@example.net', '1-972-897-8249', '563 Gaylord Terrace\nEast Jazminshire, NJ 71038-0093', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(17, 'Rosanna Turner', 'walter.courtney@example.com', '+1-517-240-2958', '2634 Carolanne Via Apt. 930\nJohnsonfurt, MO 96715', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(18, 'Alison Balistreri', 'murazik.kasey@example.com', '(657) 324-5201', '5990 Zieme Ridges Apt. 758\nWest Guidotown, OH 34137', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(19, 'Rowena Block', 'shany56@example.net', '+1.442.668.3567', '12865 Titus Fields\nEdshire, TX 29885', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(20, 'Josiah Schneider', 'bgusikowski@example.net', '458-642-7475', '8602 Murazik Vista Apt. 508\nNorth Leonard, KY 25230-6831', '2024-08-02 03:29:34', '2024-08-02 03:29:34'),
(21, 'Shanto', 'shanto@gmail.com', '018377473', 'Dhaka', '2024-08-02 07:51:32', '2024-08-02 07:51:32'),
(22, 'Ruma Roy', 'rumaroy@gmail.com', '01762573847', '44, Bonani, Dhaka', '2024-08-03 11:57:41', '2024-08-03 11:57:41'),
(23, 'Raju Sarkar', 'raju@gmail.com', '0281993784', '33 Rajarbag, Dhaka', '2024-08-06 10:32:06', '2024-08-06 10:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_02_055546_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('v3YGeRsxTSQD9x3MZF2E8HEXKJrpFOywUT6dx4MA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHlpem01UXJqVG5IR2RnOFY4NXU1Tjh0ZVhwdVFkVHMwYkRkNG5xaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cz9zZWFyY2g9JnNvcnQ9Y3JlYXRlZF9hdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722967878),
('wFuLPmb2ixxl1uoIiP1ShQh5fXkrr0qsXlf6K5yB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0N2ejZ1b3Y4QlF2ZjB0RHNjbk9aVnZTMk5zQ0NzUWRjV3dmcEEzQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722956661);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
