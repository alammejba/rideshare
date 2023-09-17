-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 11:33 AM
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
-- Database: `laravel-carshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_user_roles`
--

CREATE TABLE IF NOT EXISTS `app_user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_user_roles`
--

INSERT INTO `app_user_roles` (`id`, `name`, `email`, `role`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Admin Access', 'admin@gmail.com', 'Admin', 'Active', '2022-08-18 13:15:49', NULL),
(6, 'Abul Kashem', 'a_kashem@gamil.com', 'User', 'Active', '2022-08-19 10:47:25', NULL),
(8, 'Kashem Mia', 'kashem_1212@gmail.com', 'Rider', 'Active', '2022-08-19 10:54:44', NULL),
(9, 'Abir Hassan', 'abir@mail.com', 'Rider', 'Active', '2022-08-19 12:08:07', NULL),
(10, 'Anis Molla', 'anis_m@gmail.com', 'User', 'Active', '2022-09-12 12:04:55', NULL),
(11, 'Abir Mia', 'abir@mail.com', 'Rider', 'Active', '2022-09-14 00:26:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a_p_i_users`
--

CREATE TABLE IF NOT EXISTS `a_p_i_users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `api_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_range` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a_p_i_users`
--

INSERT INTO `a_p_i_users` (`id`, `api_user`, `token`, `access`, `limit`, `limit_range`, `limit_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 'car-ride-share-uiu', '$2y$10$jolHHE5vAZjjhSBXvGwjVO9hR5cZNq/pAs7siHY3lowyNf.YG2pOO', 'Backend', 'Unlimited', NULL, NULL, 'Active', '2022-08-15 02:37:25', NULL),
(5, 'api-user-1', '$2y$10$OoSk5fVwzlbSdPpqB4FsseNo5/rTNtEuUCdsCCK0sLYf0QnbQSnSa', 'Frontend', 'Limited', '20', '6', 'Active', '2022-08-15 03:11:48', '2022-08-15 06:56:31'),
(7, 'api-user-3', '$2y$10$gnLWFhw72NymvasIaYfCh.3NGep1GXhsQ0QT1eD1gBm.kUs6x33BS', 'Frontend', 'Limited', '10', '9', 'Active', '2022-08-15 09:49:31', '2022-08-18 12:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_booked` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_fare_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booked_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_id`, `post_id`, `seat_booked`, `total_fare_cost`, `booked_by`, `status`, `created_at`, `updated_at`) VALUES
(66, 'BN-000000001', 'POST-0000001', '2', '1000', 'a_kashem@gamil.com', 'Paid', '2022-09-17 13:39:28', '2022-09-18 02:48:11'),
(70, 'BN-000000002', 'POST-0000001', '3', '1500', 'anis_m@gmail.com', 'Paid', '2022-09-18 02:05:48', '2022-09-18 03:25:03'),
(71, 'BN-000000003', 'POST-0000002', '5', '2250', 'anis_m@gmail.com', 'Paid', '2022-09-18 03:25:28', '2022-09-18 03:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `cities_tables`
--

CREATE TABLE IF NOT EXISTS `cities_tables` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities_tables`
--

INSERT INTO `cities_tables` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'DHAKA', 'dhaka', '2022-08-15 05:55:58', NULL),
(2, 'CHITTAGONG', 'chittagong', '2022-08-15 05:56:31', NULL),
(3, 'RAJSHAHI', 'rajshahi', '2022-08-15 05:57:00', NULL),
(4, 'KHULNA', 'khulna', '2022-08-15 05:57:22', NULL),
(5, 'MYMENSINGH', 'mymensingh', '2022-09-01 13:39:05', NULL),
(6, 'SYLHET', 'sylhet', '2022-09-01 13:40:30', NULL),
(7, 'BARISAL', 'barisal', '2022-09-01 13:40:40', NULL),
(8, 'RANGPUR', 'rangpur', '2022-09-01 13:40:49', NULL),
(9, 'COMILLA', 'comilla', '2022-09-01 13:41:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_08_185432_create_sessions_table', 1),
(7, '2022_08_15_081506_create_a_p_i_users_table', 2),
(8, '2022_08_15_113757_create_cities_tables_table', 3),
(9, '2022_08_15_142715_create_app_user_roles_table', 4),
(10, '2022_08_17_202650_create_vehicle_types_table', 5),
(11, '2022_08_18_171127_create_vehicle_details_table', 6),
(12, '2022_08_18_181447_create_vehicle_multi_images_table', 6),
(13, '2022_08_19_161606_create_rider_details_table', 7),
(14, '2022_08_19_162209_create_user_details_table', 7),
(15, '2022_09_01_153402_create_posts_table', 8),
(16, '2022_09_09_191323_create_bookings_table', 9),
(17, '2022_09_12_180025_create_user_cancelled_posts_table', 10),
(18, '2022_09_17_180939_create_trackings_table', 11),
(19, '2022_09_18_032841_create_rattings_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_loc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_loc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurney_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_per_seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_fare` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_id`, `from_loc`, `to_loc`, `vehicle_id`, `plate`, `jurney_date`, `seat`, `price_per_seat`, `total_fare`, `author`, `status`, `created_at`, `updated_at`) VALUES
(12, 'POST-0000001', 'DHAKA', 'MYMENSINGH', 'VN-000000003', 'Chotto Metro - Kha 256632', '2022-09-20', '0', '500', '0', 'kashem_1212@gmail.com', 'Approved', '2022-09-14 00:16:49', '2022-09-18 02:05:48'),
(13, 'POST-0000002', 'KHULNA', 'BARISAL', 'VN-000000008', 'Barishal Metro BA - 255885', '2022-09-20', '0', '450', '0', 'kashem_1212@gmail.com', 'Approved', '2022-09-14 00:18:31', '2022-09-18 03:25:28'),
(14, 'POST-0000003', 'MYMENSINGH', 'DHAKA', 'VN-000000010', 'Dhaka Metro Ga - 253300', '2022-09-20', '4', '500', '2000', 'abir@mail.com', 'Approved', '2022-09-14 00:57:11', '2022-09-14 02:50:12'),
(15, 'POST-0000004', 'RAJSHAHI', 'DHAKA', 'VN-000000005', 'ঢাকা মেট্রো - ক - ২২০২২৫', '2022-09-21', '6', '550', '3300', 'kashem_1212@gmail.com', 'Approved', '2022-09-18 03:31:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rattings`
--

CREATE TABLE IF NOT EXISTS `rattings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rattings`
--

INSERT INTO `rattings` (`id`, `comment`, `rate`, `rider`, `author`, `created_at`, `updated_at`) VALUES
(1, NULL, '4', 'kashem_1212@gmail.com', 'a_kashem@gamil.com', '2022-09-18 02:48:11', NULL),
(2, 'খুব দক্ষ চালক। এই রুটে এনার সাথেই ট্রাভেল করব পরবর্তীতে।', '5', 'kashem_1212@gmail.com', 'anis_m@gmail.com', '2022-09-18 03:30:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rider_details`
--

CREATE TABLE IF NOT EXISTS `rider_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` float NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider_details`
--

INSERT INTO `rider_details` (`id`, `name`, `email`, `nid`, `contact`, `address`, `rating`, `created_at`, `updated_at`) VALUES
(2, 'Kashem Mia', 'kashem_1212@gmail.com', '65132125123102', '01865896324', 'Uttarkhan, Dhaka', 1.2, '2022-08-19 10:54:44', '2022-09-18 03:30:02'),
(4, 'Abir Mia', 'abir@mail.com', '51221212131313513535', '01452775522', 'Mymensingh, Bangladesh', 0, '2022-09-14 00:26:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6oXNSs2IqsB0PyCGDW60wYxhP8kA3TdwgQIz1mEs', 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo2OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE4OiJodHRwOi8vbG9jYWxob3N0L0pveS1VSVUtUmlkZS1zaGFyZS1hcHAtcmVkZXYvcmlkZS1zaGFyZS1hcHAvYm9va2luZy92aWV3P3Bvc3RfaWQ9UE9TVC0wMDAwMDA1JnZlaGljbGVfaWQ9Vk4tMDAwMDAwMDAyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IlJ1MnB5bGpjVzNDaXYyd2duR3pobEo5RGR1MlE1dlpMRVhzcDd2bmsiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHYwb1U4bFNSd1lrOFZNQ0VNNjBYdi5OUFgyVnRoRVREa1RFM2FhRDdFZnJpcFF3NXoudHE2IjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O30=', 1663007320),
('9UBT8bRvJ59FCzIv0Kvbt3qKSkqWcHpJZnnt3O1I', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo2OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3QvSm95LVVJVS1SaWRlLXNoYXJlLWFwcC1yZWRldi9yaWRlLXNoYXJlLWFwcC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiUG43eFozakdFdGpQM2xuSk5NT0ZCdTFXT3lRZW9mUWRHYnhNRXBkOCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR6M3AzRW1PRWM1ajMudERveThVb2YuY1BQL1VmdjBVYmw5T0xkRDdOUnMvM1R0bmlObEo3ZSI7fQ==', 1660854096),
('DiyakWQkwjob0SzGnge3DzVuS15lZCVjBRO89RG2', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVHVjdUpReU1xUjFCTzA4MlNqb1FoY3F1RHg5M09uZWxyRUdMd0s1ZyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjYwOiJodHRwOi8vbG9jYWxob3N0L0pveS1VSVUtUmlkZS1zaGFyZS1hcHAtcmVkZXYvcmlkZS1zaGFyZS1hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRVT01BTTZGaGkwV1hraTlFSC56ZTQuZnV1cDZLL1h5WG54LlFZYnVqa3Q5UGc3eDdUWnNxYSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1660769504),
('Eyu5HjXFHcS84NZk2PgXvIi4Yd8m1ap7ifJx3Ble', 10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42', 'YTo2OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE4OiJodHRwOi8vbG9jYWxob3N0L0pveS1VSVUtUmlkZS1zaGFyZS1hcHAtcmVkZXYvcmlkZS1zaGFyZS1hcHAvYm9va2luZy92aWV3P3Bvc3RfaWQ9UE9TVC0wMDAwMDA0JnZlaGljbGVfaWQ9Vk4tMDAwMDAwMDA1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IjNlakVHd3hsSGM5eWdYbm1Jd1Y4V3J1aElLS25nc01FSjFKdjNURjkiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFpaN1NhQVpGUHdrUWxMSWczZ2Mzd2VxSnlTQzlDYkFsVDA3RkY3Zi5KWm5BYk5jU1ouVWhtIjt9', 1663493505),
('N3kRd7hyUsfkqyeOjPh9lGobAYGvl1QTOZwUgYIr', 8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo2OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3QvSm95LVVJVS1SaWRlLXNoYXJlLWFwcC1yZWRldi9yaWRlLXNoYXJlLWFwcC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiS0VzNlVmWGtBQVJNMldIaDNtMnd0bDdyTE84OGlBVXlKcWlJMzlRNiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRzWHptVkZxVkhnVUtuMzdQYTVXWVR1M1ZabnVNV09abDlhVjR5aXVQVVFrVS8ubDJ1dlE5aSI7fQ==', 1663493466),
('rz4vxAxP718sMFp3mEHkTE4r43wfqTyD0oz2lukA', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNkZpd29INUxmZlpLUXRlY0twVkZzVUY4YTM4eGVYWVVTY2RackhiYyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjc3OiJodHRwOi8vbG9jYWxob3N0L0pveS1VSVUtUmlkZS1zaGFyZS1hcHAtcmVkZXYvcmlkZS1zaGFyZS1hcHAvcmlkZXIvcGFuZWwvdmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkejNwM0VtT0VjNWozLnREb3k4VW9mLmNQUC9VZnYwVWJsOU9MZEQ3TlJzLzNUdG5pTmxKN2UiO30=', 1660892234),
('Yf4bPh8zszxqGHwTUtc9XvRZGcEvrX0VQVcXOihC', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWmU3dU14WFJWc0l2cm93MlhoV2ZLNWhGTXFFQW9zU09Oa2w2d3c5VSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo5OToiaHR0cDovL2xvY2FsaG9zdC9Kb3ktVUlVLVJpZGUtc2hhcmUtYXBwLXJlZGV2L3JpZGUtc2hhcmUtYXBwL2ZldGNoL3RvL2NpdHk/c2VsZWN0ZWRfZnJvbV9jaXR5PURIQUtBIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly9sb2NhbGhvc3QvSm95LVVJVS1SaWRlLXNoYXJlLWFwcC1yZWRldi9yaWRlLXNoYXJlLWFwcC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1660767003);

-- --------------------------------------------------------

--
-- Table structure for table `trackings`
--

CREATE TABLE IF NOT EXISTS `trackings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booked_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rider_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trackings`
--

INSERT INTO `trackings` (`id`, `booking_id`, `post_id`, `booked_by`, `rider_email`, `status`, `created_at`, `updated_at`) VALUES
(2, 'BN-000000001', 'POST-0000001', 'a_kashem@gamil.com', 'kashem_1212@gmail.com', 'Paid', '2022-09-17 13:39:28', '2022-09-18 02:48:11'),
(6, 'BN-000000002', 'POST-0000001', 'anis_m@gmail.com', 'kashem_1212@gmail.com', 'Paid', '2022-09-18 02:05:48', '2022-09-18 03:25:03'),
(7, 'BN-000000003', 'POST-0000002', 'anis_m@gmail.com', 'kashem_1212@gmail.com', 'Paid', '2022-09-18 03:25:28', '2022-09-18 03:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(5, 'Admin Access', 'admin@gmail.com', NULL, '$2y$10$G4iuXtwtJk.MLpDWEbx7XuWCfiuIR6TBkXFmbcC48pS42oSQAMRvK', NULL, NULL, NULL, 'c1BOnEHxiTaj7sRYvtZf7CJU0Jr6El8RfDBJ7QWBeS5Sm1q8DRSUp0oEMmM4', NULL, NULL, '2022-08-18 13:15:49', '2022-08-21 14:05:01'),
(6, 'Abul Kashem', 'a_kashem@gamil.com', NULL, '$2y$10$v0oU8lSRwYk8VMCEM60Xv.NPX2VthETDkTE3aaD7EfripQw5z.tq6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 10:47:25', NULL),
(8, 'Kashem Mia', 'kashem_1212@gmail.com', NULL, '$2y$10$sXzmVFqVHgUKn37Pa5WYTu3VZnuMWOZl9aV4yiuPUQkU/.l2uvQ9i', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19 10:54:44', NULL),
(10, 'Anis Molla', 'anis_m@gmail.com', NULL, '$2y$10$ZZ7SaAZFPwkQlLIg3gc3weqJySC9CbAlT07FF7f.JZnAbNcSZ.Uhm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 12:04:55', NULL),
(11, 'Abir Mia', 'abir@mail.com', NULL, '$2y$10$pmAK2aa71w9q0wNo1c/bJOPNkC/R77kAS1LcJJbKSbuyj.3OcIz2K', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 00:26:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_cancelled_posts`
--

CREATE TABLE IF NOT EXISTS `user_cancelled_posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `name`, `email`, `nid`, `contact`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Abul Kashem', 'a_kashem@gamil.com', '599521323542412', '01226624684', 'Road - 12, Sector - 4, Uttara, Dhaka', '2022-08-19 10:47:25', NULL),
(2, 'Anis Molla', 'anis_m@gmail.com', '69933252295', '01711244865', 'House - 12, Road - 15, Sector -10, Uttara, Dhaka -1230', '2022-09-12 12:04:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

CREATE TABLE IF NOT EXISTS `vehicle_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vehicle_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mileage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seats` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_details`
--

INSERT INTO `vehicle_details` (`id`, `vehicle_id`, `mileage`, `plate`, `condition`, `model`, `type`, `seats`, `color`, `main_image`, `author`, `status`, `created_at`, `updated_at`) VALUES
(6, 'VN-000000003', '125560 KM', 'Chotto Metro - Kha 256632', 'In good condition', 'Toyota Alion 2016', 'SEDAN', '5', '#ffffff', '/public/service_assets/vehicle_image/1741603420591801.jpeg', 'kashem_1212@gmail.com', 'Active', '2022-08-19 09:20:51', '2022-08-27 12:52:42'),
(7, 'VN-000000004', '658822 KM', 'খুলনা মেট্রো - প ৭৬৯৮৫২', 'In Better condition. Drive and maintain by owner', 'Toyota Prado 2016', 'SUV', '8', '#303030', '/public/service_assets/vehicle_image/1741603668561844.jpg', 'kashem_1212@gmail.com', 'Inactive', '2022-08-19 09:24:48', '2022-09-14 00:43:05'),
(8, 'VN-000000005', '158220 KM', 'ঢাকা মেট্রো - ক - ২২০২২৫', 'In Best conditon', '2017 Toyota Noah  Si', 'MINI-VAN', '6', '#ffffff', '/public/service_assets/vehicle_image/1741603848333821.jpg', 'kashem_1212@gmail.com', 'Active', '2022-08-19 09:27:39', '2022-08-27 12:52:54'),
(10, 'VN-000000007', '6565265 KM', 'ঢাকা মেট্রো - খ - ২২০২৬৫', 'In Better condition. Drive and maintain by owner', 'Toyota Prado 2016', 'SUV', '8', '#212121', '/public/service_assets/vehicle_image/1741688583904187.jpg', 'kashem_1212@gmail.com', 'Active', '2022-08-20 07:54:30', '2022-08-27 12:51:52'),
(11, 'VN-000000008', '5000 KM', 'Barishal Metro BA - 255885', 'নিজে চালাই । ভাল কন্ডিশনে ইন্টেরিয়র আর গাড়ি।', 'Toyota prius 2018', 'SEDAN', '5', '#cac9cf', '/public/service_assets/vehicle_image/1742880179993407.jpeg', 'kashem_1212@gmail.com', 'Active', '2022-09-02 11:34:24', '2022-09-02 11:38:37'),
(13, 'VN-000000009', '25552 KM', 'ঢাকা মেট্রো - হ - ৫৫২৬৫২', 'First hand driven . Completely new car', 'Mitshubishi Outlander Aspire 2022', 'SUV', '5', '#ffffff', '/public/service_assets/vehicle_image/1743049465934906.jpeg', 'kashem_1212@gmail.com', 'Active', '2022-09-04 08:25:08', '2022-09-04 08:26:17'),
(14, 'VN-000000010', '25000 KM', 'Dhaka Metro Ga - 253300', 'নিজে চালাই। গাড়ি একদম ফ্রেশ কন্ডিশনে।', 'Toyota Corolla Axio (2008)', 'SEDAN', '4', '#d4d4d4', '/public/service_assets/vehicle_image/1743925456438778.jpeg', 'abir@mail.com', 'Active', '2022-09-14 00:28:37', '2022-09-14 00:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_multi_images`
--

CREATE TABLE IF NOT EXISTS `vehicle_multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vehicle_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_multi_images`
--

INSERT INTO `vehicle_multi_images` (`id`, `vehicle_id`, `img_description`, `img_path`, `created_at`, `updated_at`) VALUES
(12, 'VN-000000010', 'Toyota Corolla Axio (2008)', '/public/service_assets/vehicle_image/internal/1743925456759782.jpg', '2022-09-14 00:28:38', NULL),
(13, 'VN-000000010', 'Toyota Corolla Axio (2008)', '/public/service_assets/vehicle_image/internal/1743925456936556.jpg', '2022-09-14 00:28:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE IF NOT EXISTS `vehicle_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `type`, `minimum_seat`, `maximum_seat`, `created_at`, `updated_at`) VALUES
(1, 'SEDAN', '4', '5', '2022-08-17 14:43:51', NULL),
(2, 'COUPE', '2', '2', '2022-08-17 14:50:41', NULL),
(3, 'SUV', '6', '8', '2022-08-17 14:50:55', NULL),
(4, 'MINI-VAN', '12', '16', '2022-08-17 14:51:08', NULL),
(5, 'MINI-BUS', '17', '32', '2022-08-18 11:27:21', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
