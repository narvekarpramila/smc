-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2021 at 07:17 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smc`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_manufactures`
--

CREATE TABLE `car_manufactures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_of_manufacture` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`id`, `name`, `address`, `phone_no`, `created_at`, `updated_at`) VALUES
(1, 'Pramila', '<p>Pune</p>', '9527418520', '2021-01-31 05:59:10', '2021-01-31 05:59:10'),
(2, 'Pramila', '<p>Pune</p>', '9527418520', '2021-01-31 06:04:23', '2021-01-31 06:04:23'),
(3, 'Pramila', '<p>Pune</p>', '9527418520', '2021-01-31 06:04:55', '2021-01-31 06:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketplace__inventories`
--

CREATE TABLE `marketplace__inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `KM` double NOT NULL,
  `major_scratches` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_paints` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_accidents` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_prev_buyers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marketplace__inventories`
--

INSERT INTO `marketplace__inventories` (`id`, `KM`, `major_scratches`, `original_paints`, `no_of_accidents`, `no_of_prev_buyers`, `registration_place`, `created_at`, `updated_at`) VALUES
(1, 50, '<p>Yes</p>', 'yes', '2', '1', 'Pune', '2021-01-31 08:33:04', '2021-01-31 08:33:04');

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
(4, '2021_01_31_102350_create_dealers_table', 1),
(5, '2021_01_31_102850_create_car_manufactures_table', 1),
(6, '2021_01_31_103023_create_o_e_m__specs_table', 1),
(7, '2021_01_31_103819_create_marketplace__inventories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `o_e_m__specs`
--

CREATE TABLE `o_e_m__specs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_of_model` int(11) NOT NULL,
  `price` double NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mileage` double NOT NULL,
  `power` double NOT NULL,
  `max_speed` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `o_e_m__specs`
--

INSERT INTO `o_e_m__specs` (`id`, `model_name`, `year_of_model`, `price`, `color`, `mileage`, `power`, `max_speed`, `created_at`, `updated_at`) VALUES
(1, 'Honda', 2011, 500000, 'Black', 15, 15, 15, NULL, NULL),
(2, 'BMW', 2019, 1500000, 'Grey', 50, 50, 50, NULL, NULL),
(3, 'Audi', 2019, 520000, 'Navy Blue', 120, 120, 120, NULL, NULL),
(4, 'Maruti', 2015, 1000000, 'Black', 50, 50, 50, NULL, NULL);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pramila', 'narvekarpramila11@gmail.com', NULL, '$2y$10$sgvQCm.3kBMmGhSlq1Cuy.hAsEC7Eq75u3evdKiOKFbEVo7hXIGPi', 'dealer', 'Hu9N5cEuMlY38Kvtq5yM', '2021-01-31 05:22:37', '2021-01-31 05:22:37'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$jfOKFpEOmKvR4yAFhx9V0.o7lpgzWESQuq9eQ5xV2FXxOey5RBc0G', 'admin', '4dLnoJvD2xGzaoaoRwJE', '2021-01-31 10:11:20', '2021-01-31 10:11:20'),
(3, 'Dealer', 'dealer@gmail.com', NULL, '$2y$10$.A5i6Qz.EDgeKEmf5yetbeKk8PFw/iHvXCb/tMYBo7Ag1MQGzF4W6', 'dealer', 'qJPKCFDVm5Wz4PlMQN4s', '2021-01-31 11:07:23', '2021-01-31 11:07:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_manufactures`
--
ALTER TABLE `car_manufactures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace__inventories`
--
ALTER TABLE `marketplace__inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o_e_m__specs`
--
ALTER TABLE `o_e_m__specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `car_manufactures`
--
ALTER TABLE `car_manufactures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace__inventories`
--
ALTER TABLE `marketplace__inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `o_e_m__specs`
--
ALTER TABLE `o_e_m__specs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
