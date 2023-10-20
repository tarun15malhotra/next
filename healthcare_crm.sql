-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 10:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare_crm`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_10_13_145713_create_permission_tables', 1),
(11, '2023_10_13_145916_create_products_table', 1),
(12, '2023_10_16_185815_create_timezones_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 11),
(1, 'App\\Models\\User', 22),
(1, 'App\\Models\\User', 24),
(1, 'App\\Models\\User', 25),
(1, 'App\\Models\\User', 29),
(1, 'App\\Models\\User', 40),
(1, 'App\\Models\\User', 48),
(1, 'App\\Models\\User', 49),
(1, 'App\\Models\\User', 50),
(1, 'App\\Models\\User', 51),
(1, 'App\\Models\\User', 52),
(1, 'App\\Models\\User', 56),
(1, 'App\\Models\\User', 57),
(1, 'App\\Models\\User', 58),
(1, 'App\\Models\\User', 59),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 52),
(2, 'App\\Models\\User', 56);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0673da0735964e618a5de631db40282eb391dd4fe3ac9f2b4bd404810ebd6acf01a20210161a1477', 3, 1, 'MyApp', '[]', 0, '2023-10-18 21:51:43', '2023-10-18 21:51:43', '2024-10-18 14:51:43'),
('06ae6075e02f4fc7d71b2e490bbc9bd7af15cc1935073380cde67b57ca0bbc4b3b19bb4857079b17', 3, 1, 'MyApp', '[]', 0, '2023-10-18 22:22:59', '2023-10-18 22:22:59', '2024-10-18 15:22:59'),
('09d331baf82c2bae40a141a18841593b9e9d306805f8dcaf2af594e25c24679b3f238a07c500fe17', 1, 1, 'MyApp', '[]', 0, '2023-10-14 04:12:40', '2023-10-14 04:12:40', '2024-10-13 21:12:40'),
('216ea763d65b1078153ce90f37ec51b39429c652fa68575d8ac6b2e40ce5d97a9b0baf5ada72429e', 1, 1, 'MyApp', '[]', 0, '2023-10-14 04:13:53', '2023-10-14 04:13:53', '2024-10-13 21:13:53'),
('24a7f77caf41444074b9cfa8e36490367b2378ee3d9c21bde805f2be52d02d1307f72171329c8bcb', 3, 1, 'MyApp', '[]', 0, '2023-10-18 22:17:41', '2023-10-18 22:17:41', '2024-10-18 15:17:41'),
('2ae02b2b445dc175ace280588167f6794585e366e839b02377ae06a1f4dd1ef2e2e7094abe3edf5f', 56, 1, 'MyApp', '[]', 0, '2023-10-16 22:12:36', '2023-10-16 22:12:36', '2024-10-16 15:12:36'),
('30cff77a0b753c5a856864511929720d9c58cf4cf6e3252da8eb5b58fb3e88aaed199e00c95bca51', 1, 1, 'MyApp', '[]', 0, '2023-10-14 02:46:45', '2023-10-14 02:46:45', '2024-10-13 19:46:45'),
('34c56d653a6116b9ccc90af344ba1a5124b38a23483bd1c65a8a609d8aec421454a68bc354b539c3', 7, 1, 'MyApp', '[]', 0, '2023-10-14 03:28:40', '2023-10-14 03:28:40', '2024-10-13 20:28:40'),
('3f1e76190cb07a1fd70a3e48cf44048fae700e8934adf46c5f6754e4c4e29ab58947ba41f5689494', 22, 1, 'MyApp', '[]', 0, '2023-10-14 04:33:42', '2023-10-14 04:33:42', '2024-10-13 21:33:42'),
('4283b2f0419fdc646fad387882700178a7646405e2158766040a53e28e6d70a5768a6a66319bc68d', 3, 1, 'MyApp', '[]', 0, '2023-10-18 22:24:29', '2023-10-18 22:24:29', '2024-10-18 15:24:29'),
('4920927ab48bb060519498978a9e1245923f6da7f151dfd8b63cc236f43f37282a9946ffb67e368f', 29, 1, 'MyApp', '[]', 0, '2023-10-16 21:03:56', '2023-10-16 21:03:56', '2024-10-16 14:03:56'),
('5866430a8adbb42ca26b0d7b09b7bcf4404b4ef2be297dab9cc3b3fc1a5e2da5671342eb89296629', 25, 1, 'MyApp', '[]', 0, '2023-10-14 04:33:51', '2023-10-14 04:33:51', '2024-10-13 21:33:51'),
('5904533312806fa0950ba6faf737ba9ce2b21727f52634bec9354d71e593bddcd4294971965c94d6', 3, 1, 'MyApp', '[]', 0, '2023-10-18 22:26:07', '2023-10-18 22:26:07', '2024-10-18 15:26:07'),
('65a510b6e7a18169fad8ff22bcb5da36b5ea828ffa0861b8fe897edae07d0e6fcce9235eba7e4854', 2, 1, 'MyApp', '[]', 0, '2023-10-14 03:17:57', '2023-10-14 03:17:57', '2024-10-13 20:17:57'),
('6873efcece27291b3722ca9b26ec45e6167564c4a2948f161b0ee9c3969b3d071080ef6f82150d88', 25, 1, 'MyApp', '[]', 0, '2023-10-14 04:33:31', '2023-10-14 04:33:31', '2024-10-13 21:33:31'),
('6a0087d765bed1d08e90341f4df103725252a745beb9fcf7cde2e7c518e7a3c33d2a3318953c9e5c', 3, 1, 'MyApp', '[]', 0, '2023-10-18 19:10:29', '2023-10-18 19:10:29', '2024-10-18 12:10:29'),
('8c0d0d0840d0fb6c9df09e64e4d72bc34de0472c77cc975199e1a2769c0117babfca06f1eba85773', 24, 1, 'MyApp', '[]', 0, '2023-10-14 04:33:13', '2023-10-14 04:33:13', '2024-10-13 21:33:13'),
('aab1602d25e0b20e0b2329803c0cd52ff030afb18193e3933a26d31b49c0618446830ad9b1a4448c', 3, 1, 'MyApp', '[]', 0, '2023-10-18 21:52:15', '2023-10-18 21:52:15', '2024-10-18 14:52:15'),
('b18ee68c0e02bf0adce225b622f158017b446fe2ed9f154e305a4eaff7b00acdc8bd9d9b707f94db', 3, 1, 'MyApp', '[]', 0, '2023-10-14 03:20:32', '2023-10-14 03:20:32', '2024-10-13 20:20:32'),
('bdb6ce893d8f1a126475ce6916794f1db32730e0900702c5cc585412c95f6cf5c4ce1478addf14cf', 3, 1, 'MyApp', '[]', 0, '2023-10-17 01:54:37', '2023-10-17 01:54:37', '2024-10-16 18:54:37'),
('c51888f3ad5fc57ca4cec0f6b6cf6dd0efa82e92aa64e4f2e385ffff179d9ec6eeb908d1258fa0f7', 5, 1, 'MyApp', '[]', 0, '2023-10-19 02:14:27', '2023-10-19 02:14:27', '2024-10-18 19:14:27'),
('d5d4d89e857b80670a38ae46fc428872e96342a665299cf94c8ea71fb69a8625fa7c14a2c88e03ee', 3, 1, 'MyApp', '[]', 0, '2023-10-18 22:21:21', '2023-10-18 22:21:21', '2024-10-18 15:21:21'),
('dc1837247d33d4990a53ec35fd491504740366272b13635d167ea5a3967924f3d43e96dbaff0288d', 3, 1, 'MyApp', '[]', 0, '2023-10-18 22:22:05', '2023-10-18 22:22:05', '2024-10-18 15:22:05'),
('e27e60cd4d051846b5b7902de3bbda077ceff84232ae0e3f123fab8f74ac980634249068c76138a0', 22, 1, 'MyApp', '[]', 0, '2023-10-14 04:32:39', '2023-10-14 04:32:39', '2024-10-13 21:32:39'),
('e540e4efd4c97dadaa213ba5571fe68714559e3115ec2faeee249ba5b6845d5496f4b1b47b9ca11d', 25, 1, 'MyApp', '[]', 0, '2023-10-16 20:59:04', '2023-10-16 20:59:04', '2024-10-16 13:59:04'),
('eb0122ba92aecf5ba39b1af6ccde8246500691b1fe7bd6078934df3ee49517b50c72fd020f800815', 3, 1, 'MyApp', '[]', 0, '2023-10-18 22:20:25', '2023-10-18 22:20:25', '2024-10-18 15:20:25'),
('f13eb3563991ec4af3fd1b6ff8f938a904b4dd4487910c01e3a2e5a459d8b72ccf880e7678462fb9', 3, 1, 'MyApp', '[]', 0, '2023-10-19 02:50:43', '2023-10-19 02:50:43', '2024-10-18 19:50:43'),
('f581a7f40a4341111ebb63ce78879863c259420a776d93327733537feb153212440aefd728284633', 3, 1, 'MyApp', '[]', 0, '2023-10-18 22:26:43', '2023-10-18 22:26:43', '2024-10-18 15:26:43'),
('f6836a1cb30be3999f5b859c97ce55678c6820bdcf2240a2e84be21569c4384fcb3bf762a74da6df', 22, 1, 'MyApp', '[]', 0, '2023-10-14 04:31:32', '2023-10-14 04:31:32', '2024-10-13 21:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Healthcare Personal Access Client', '5Fp8KFUuDew1JxWObP7Frg9GvrahuP0CZPCJ266D', NULL, 'http://localhost', 1, 0, 0, '2023-10-14 02:46:37', '2023-10-14 02:46:37'),
(2, NULL, 'Healthcare Password Grant Client', '9AlbWXT40JxAet8q5P0IZwiNdckjWxplPI5Hwusv', 'users', 'http://localhost', 0, 1, 0, '2023-10-14 02:46:37', '2023-10-14 02:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-10-14 02:46:37', '2023-10-14 02:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-10-14 01:54:16', '2023-10-14 01:54:16'),
(2, 'role-create', 'web', '2023-10-14 01:54:16', '2023-10-14 01:54:16'),
(3, 'role-edit', 'web', '2023-10-14 01:54:16', '2023-10-14 01:54:16'),
(4, 'role-delete', 'web', '2023-10-14 01:54:16', '2023-10-14 01:54:16'),
(5, 'product-list', 'web', '2023-10-14 01:54:16', '2023-10-14 01:54:16'),
(6, 'product-create', 'web', '2023-10-14 01:54:16', '2023-10-14 01:54:16'),
(7, 'product-edit', 'web', '2023-10-14 01:54:16', '2023-10-14 01:54:16'),
(8, 'product-delete', 'web', '2023-10-14 01:54:16', '2023-10-14 01:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Testing', '2023-10-14 01:56:06', '2023-10-14 01:56:06'),
(2, 'test', 'test1', '2023-10-18 19:11:00', '2023-10-18 19:11:00'),
(3, 'fgsdg', 'sdfgsdf', '2023-10-18 19:28:04', '2023-10-18 19:28:04'),
(4, 'dfgd', 'gdfg', '2023-10-18 19:30:04', '2023-10-18 19:30:04'),
(5, 'dfgd', 'gdfg', '2023-10-18 19:30:15', '2023-10-18 19:30:15'),
(6, 'sdfsdf', 'sdfsdsdfsdf', '2023-10-18 19:31:39', '2023-10-18 19:31:39'),
(7, 'erter', 'tert', '2023-10-18 19:31:53', '2023-10-18 19:31:53'),
(8, 'a@gmail.com', 'a@gmail.com', '2023-10-18 22:06:25', '2023-10-18 22:06:25'),
(9, 'fsdf', 'sdfs', '2023-10-19 02:04:35', '2023-10-19 02:04:35'),
(10, 'asdasd', 'asda', '2023-10-19 03:23:40', '2023-10-19 03:23:40'),
(11, 'asdfasd', 'asd', '2023-10-19 03:23:56', '2023-10-19 03:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'api', '2023-10-14 01:55:11', '2023-10-14 01:55:11'),
(2, 'User', 'api', '2023-10-14 03:18:48', '2023-10-14 03:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `country`, `timezone`, `created_at`, `updated_at`) VALUES
(1, 'India', 'Asia/Kolkata', '2023-10-17 02:07:07', '2023-10-17 02:07:07');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$gGYjnf4YO7qYA9qTrzK11udU/FsYYZezWclMbSWm445McBpi5kmGC', NULL, '2023-10-14 01:55:11', '2023-10-14 01:55:11'),
(2, 'admin', 'admin1@gmail.com', NULL, '$2y$10$OYP5DUXem5IcNzXv6BY6aeH/qWPwja3mad14CcaLimDPWxWD3anlK', NULL, '2023-10-14 03:17:57', '2023-10-14 03:17:57'),
(3, 'user', 'user1@gmail.com', NULL, '$2y$10$5KrLcyXLsgqjm0m/eYnAw.XgG6DBb76RDo7Zd1uT2yJOn3HsZM/z2', NULL, '2023-10-14 03:20:31', '2023-10-14 03:20:31'),
(5, 'user', 'user2@gmail.com', NULL, '$2y$10$thQEDJR.DprLCzOVlrwJfOEfprvwfe2EhZTU4sZn5HxhUZHrbxHmm', NULL, '2023-10-14 03:21:36', '2023-10-14 03:21:36'),
(7, 'user', 'user3@gmail.com', NULL, '$2y$10$Um8CQ067Crc57MDDhmrA7ugRYL4bdmpt3FY6s37puf4otCURza3qK', NULL, '2023-10-14 03:28:40', '2023-10-14 03:28:40'),
(8, 'user', 'user4@gmail.com', NULL, '$2y$10$i8xtKeFQAAP6xPIA2ku4fOWhdyE/O0HPgScBhxonYOdXEDbzvcOXW', NULL, '2023-10-14 04:17:11', '2023-10-14 04:17:11'),
(10, 'user', 'user5@gmail.com', NULL, '$2y$10$khW1MEFYlnLNaY2ntmDLTO49AriWgQlNutc8S8vOR5qk9DyInt/re', NULL, '2023-10-14 04:17:51', '2023-10-14 04:17:51'),
(11, 'User', 'user6@gmail.com', NULL, '$2y$10$mxNXi0u.DVOqLpn6LYzehe3t/Z/HqhK6hs0mocYkU1qvPZDM6NF8K', NULL, '2023-10-14 04:19:19', '2023-10-14 04:19:19'),
(14, 'user', 'user7@gmail.com', NULL, '$2y$10$o0z8IzcvI5gCVe8cSvssa.VbP7X3YWNLwXZ1drFSZzpeJ4jmuP27u', NULL, '2023-10-14 04:22:47', '2023-10-14 04:22:47'),
(16, 'user', 'user8@gmail.com', NULL, '$2y$10$ESpzVXSYBm0n9vcesKo6q.JNZo8fhQw0A1of.Sm86sPjXlpncamyy', NULL, '2023-10-14 04:23:32', '2023-10-14 04:23:32'),
(18, 'user', 'user9@gmail.com', NULL, '$2y$10$8VSDyMjjOzxAlP5/kXGrk.MYvWh7/2uhTho40A3WmjtgNUwYLylia', NULL, '2023-10-14 04:24:53', '2023-10-14 04:24:53'),
(20, 'user', 'user10@gmail.com', NULL, '$2y$10$wulYHAiZ3sWqz2L7VkeUIu8IE/o7Jd/Y3sBPFEw.oc6zK5yk3RTN.', NULL, '2023-10-14 04:25:14', '2023-10-14 04:25:14'),
(22, 'user', 'user12@gmail.com', NULL, '$2y$10$7DrhH5h0O0BarbdhfC8.WOILu/Jk5A0dN0/31o95Rd8ZrIySsrksi', NULL, '2023-10-14 04:31:32', '2023-10-14 04:31:32'),
(24, 'user', 'user13@gmail.com', NULL, '$2y$10$GnkPgaECeuJiOB2mm70TnevKMPA/XwArkzvRhxE54xnWa8LMehF9S', NULL, '2023-10-14 04:33:13', '2023-10-14 04:33:13'),
(25, 'user', 'user14@gmail.com', NULL, '$2y$10$meICW2QV45G7Ao92A.8pc.lZkmSe5jVXxIOcwSNGEmll0wPaWxDfm', NULL, '2023-10-14 04:33:31', '2023-10-14 04:33:31'),
(26, 'user15', 'user15@gmail.com', NULL, '$2y$10$VDPFrsfViORM82nOnC3wXuV28nud1uzxzaKxOnFV/G.T.nopeRuC.', NULL, '2023-10-16 21:01:50', '2023-10-16 21:01:50'),
(27, 'user16', 'user16@gmail.com', NULL, '$2y$10$R3xvatXY.rrZAxRi8V4ox.f7Fj9R5GntvhrgBqPPdKap3mF86HEt2', NULL, '2023-10-16 21:02:37', '2023-10-16 21:02:37'),
(28, 'user', 'user17@gmail.com', NULL, '$2y$10$.21C6DTcQf49kPMy3JautulT4klFjgIKM4UtIuTUt953IMfdZtl4K', NULL, '2023-10-16 21:03:09', '2023-10-16 21:03:09'),
(29, 'user', 'user18@gmail.com', NULL, '$2y$10$IWTYPXdVa7qN6DrVbt2eE.fSjR.LenQLOuYA.DmWtdNwvQWS2kzaq', NULL, '2023-10-16 21:03:56', '2023-10-16 21:03:56'),
(30, 'user', 'user20@gmail.com', NULL, '$2y$10$kizW1G2mk/uNyEvG1/0h7ujXrfUXjywolfxyLhrF137aSsxCxHGji', NULL, '2023-10-16 21:05:47', '2023-10-16 21:05:47'),
(31, 'user', 'user21@gmail.com', NULL, '$2y$10$ylYRXd/HWfGNrHZN.AisDOfqetiTqGk2Uj9mDU4kLcKk/EaryFw32', NULL, '2023-10-16 21:06:34', '2023-10-16 21:06:34'),
(32, 'user', 'user22@gmail.com', NULL, '$2y$10$FmDI1f1krzNL9BcJof3cSOtTKq5.gYcJ7ILbjpzc8KBxy7TnF3YuW', NULL, '2023-10-16 21:09:24', '2023-10-16 21:09:24'),
(33, 'user', 'user23@gmail.com', NULL, '$2y$10$7nWtby0iv868TshworVFOO9LL28sct1HdRmdW6GAwVgLfRa5noIn2', NULL, '2023-10-16 21:10:18', '2023-10-16 21:10:18'),
(34, 'user', 'user24@gmail.com', NULL, '$2y$10$jVxiwYmqqGrbafkHeUPR5enhOsZDKweIN5eLiD5sMAUsBOwbQpgKu', NULL, '2023-10-16 21:10:40', '2023-10-16 21:10:40'),
(35, 'user', 'user25@gmail.com', NULL, '$2y$10$r94Y4xo/7ldHNWmWTgSR3...06nmJ0fCAqCp.BqUlL9.kqBKvHYKO', NULL, '2023-10-16 21:10:56', '2023-10-16 21:10:56'),
(36, 'user', 'user26@gmail.com', NULL, '$2y$10$LlJaR3gUs3.f1N9AxTUBTOOjjwO2.FRM589KHsrK1IoAuQUgONMqe', NULL, '2023-10-16 21:11:36', '2023-10-16 21:11:36'),
(37, 'user', 'user27@gmail.com', NULL, '$2y$10$zrYeqUTKKUIKgEWXMF0nVuJJ88YlND1jOex8k3vwop7UbUSPVal76', NULL, '2023-10-16 21:15:23', '2023-10-16 21:15:23'),
(38, 'user', 'user29@gmail.com', NULL, '$2y$10$2Ul5k13jR.EMa8nE2yQpqunevHAhZWq0G87BxhqKxx3N1Irfqx5z6', NULL, '2023-10-16 21:16:47', '2023-10-16 21:16:47'),
(39, 'user', 'user30@gmail.com', NULL, '$2y$10$0xulCeOQNjxtjcjNUYcDouhW/o/hU4gjX.Lhh3l7lJxWOe1vpLWHK', NULL, '2023-10-16 21:18:08', '2023-10-16 21:18:08'),
(40, 'user', 'user31@gmail.com', NULL, '$2y$10$bWlqgRn/7Pf5njiey8PpEuOfGt0kxEuvvK7MrLcDQ2cJ.ZY98ecJu', NULL, '2023-10-16 21:18:39', '2023-10-16 21:18:39'),
(41, 'user', 'user32@gmail.com', NULL, '$2y$10$/ZHPon6MELYff/6uqAwglOc6PJlt9LcXQwkk4viGy5dd8rMLQSdce', NULL, '2023-10-16 21:19:21', '2023-10-16 21:19:21'),
(42, 'user', 'user33@gmail.com', NULL, '$2y$10$pIJte.xHbakX397MMZqCP.Vw0OObMbqo7ja6zzWQXOJKwRUKZS98G', NULL, '2023-10-16 21:20:10', '2023-10-16 21:20:10'),
(43, 'user', 'user34@gmail.com', NULL, '$2y$10$SWfYrG7Ar48miJv5PW/v8.tdKy6Y78Vi5ps99SdIhnNip4xsbpE5i', NULL, '2023-10-16 21:24:55', '2023-10-16 21:24:55'),
(44, 'user', 'user35@gmail.com', NULL, '$2y$10$I6jgD6HAwyNN1iAS3llBwOQHIDfgw4QgrNCsk6/3NBFemYlxFqHNS', NULL, '2023-10-16 21:27:00', '2023-10-16 21:27:00'),
(45, 'user', 'user36@gmail.com', NULL, '$2y$10$/ZWARy1QmYOCB6RKByHDPewHNjCVnVP/PlKNy9e.hnQgD2CRX/aqm', NULL, '2023-10-16 21:27:34', '2023-10-16 21:27:34'),
(46, 'user', 'user37@gmail.com', NULL, '$2y$10$FZPvnwBVFPjzXfZPr/X8/OfuhqBooI7bjws0X1yA8kJgBS0m8MTSy', NULL, '2023-10-16 21:30:44', '2023-10-16 21:30:44'),
(47, 'user', 'user38@gmail.com', NULL, '$2y$10$l868JDSxv5OankeqEZB8vu2fSNjKVHD2zW7xj2aqYiB2dpgT35EJK', NULL, '2023-10-16 21:31:14', '2023-10-16 21:31:14'),
(48, 'user', 'user39@gmail.com', NULL, '$2y$10$cilBQc/q7wPr.NGmuBsa/uDsH0Sp1356Hj7o4QNbqCztU0hNDndM6', NULL, '2023-10-16 21:33:02', '2023-10-16 21:33:02'),
(49, 'user', 'user40@gmail.com', NULL, '$2y$10$jLzH1nKyu/NAOz/pF934JORP2E4er1F/AnUvn/G5PsW0CN5iUkg2.', NULL, '2023-10-16 21:34:09', '2023-10-16 21:34:09'),
(50, 'user', 'user41@gmail.com', NULL, '$2y$10$8SQ4/i1DZlV4eFHSpoBNlOboDkgi8v1ubEvqbHdyQ7NLLhd8Gkmvi', NULL, '2023-10-16 21:34:47', '2023-10-16 21:34:47'),
(51, 'user', 'user42@gmail.com', NULL, '$2y$10$gv/arUqz3aTkNOot9s8HcuKXmujRAwmb.ZEJ2g43J.ute6C99E3ZW', NULL, '2023-10-16 21:35:17', '2023-10-16 21:35:17'),
(52, 'user', 'user43@gmail.com', NULL, '$2y$10$JgLGoH/4z0GcepuKtwgw0eqy4xXDX30pG4FWtxEqxa9zcEW3UA6Z.', NULL, '2023-10-16 21:35:32', '2023-10-16 21:35:32'),
(53, 'user', 'user44@gmail.com', NULL, '$2y$10$V6NasWLK9Ya3QSszeXhwyOxHja6isLahEYroJ17rR2bt/diugHMFG', NULL, '2023-10-16 21:35:55', '2023-10-16 21:35:55'),
(54, 'user', 'user46@gmail.com', NULL, '$2y$10$.nSQOZ4P2qBmJ9DIHvECou0dNQkLGD9htMTWYpztvcNoI0feIcni.', NULL, '2023-10-16 21:51:27', '2023-10-16 21:51:27'),
(56, 'user', 'user47@gmail.com', NULL, '$2y$10$QEaPckFRySjut7QrckS/TOtt.jTH4N/cCQpLVEaBOIdsLS2ynMNKG', NULL, '2023-10-16 22:10:34', '2023-10-16 22:10:34'),
(57, 'admin2@gmail.com', 'admin2@gmail.com', NULL, '$2y$10$kYdTTY7lwpfSpTIY2Ibf.O5z2tihVI1Xhc5qfkLJAs9rEV9JH01PG', NULL, '2023-10-19 02:51:35', '2023-10-19 02:51:35'),
(58, 'sdfgsdf', 'admin3@gmail.com', NULL, '$2y$10$zWZ8EaAMPs3xXmHcdF2Bpe4NYFMHkyLG72sfddEGh3x8E6/aM/R0.', NULL, '2023-10-19 03:24:27', '2023-10-19 03:24:27'),
(59, 'admin4@gmail.com', 'admin4@gmail.com', NULL, '$2y$10$G4p33oyy3.GxFfnwJPORZOJGspw4.HKPVTt/5QTCBwJhNxTKag4le', NULL, '2023-10-19 03:24:53', '2023-10-19 03:24:53');

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
