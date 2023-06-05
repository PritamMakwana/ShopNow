-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 11:25 AM
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
-- Database: `shopnow`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Mi', 'mi', 0, '2023-05-03 00:30:36', '2023-05-03 00:30:36', 3),
(2, 'poco', 'poco', 1, '2023-05-03 00:30:44', '2023-05-10 04:53:09', 3),
(3, 'realme', 'realme', 0, '2023-05-03 00:30:57', '2023-05-13 12:58:21', 6),
(4, 'apple', 'apple', 0, '2023-05-13 12:58:47', '2023-05-13 12:58:47', 4),
(5, 'vivo', 'vivo', 0, '2023-05-13 22:30:23', '2023-05-13 22:30:23', 3),
(6, 'Lenovo', 'lenovo', 0, '2023-06-05 03:14:44', '2023-06-05 03:14:44', 4),
(7, 'Peter England', 'peter-england', 0, '2023-06-05 03:29:28', '2023-06-05 03:29:28', 7);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(17, 3, 16, 11, 2, '2023-06-03 07:51:52', '2023-06-03 07:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible,1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Mobile', 'mobile', 'hand on pc.', 'uploads/category/1685955447.png', 'Mobile', 'Mobile,smart phone', 'hand on pc.', 0, '2023-05-07 07:41:24', '2023-06-05 03:27:27'),
(4, 'Laptop', 'laptop', 'Laptop is to Work.', 'uploads/category/1685955234.jpg', 'laptop', 'Laptop,pc', 'Laptop is to Work.', 0, '2023-05-07 07:42:24', '2023-06-05 03:23:54'),
(5, 'sports', 'sports', 'sports is nice', 'uploads/category/1683465189.jpg', 'sports', 'sport,sports', 'sports is nice', 1, '2023-05-07 07:43:09', '2023-05-07 07:43:09'),
(7, 'clothing', 'clothing', 'clothing', 'uploads/category/1685955222.jpg', 'clothing', 'clothing', 'clothing', 0, '2023-06-05 03:23:42', '2023-06-05 03:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'red', '#FF0000', 0, '2023-05-07 00:25:17', '2023-05-14 07:50:31'),
(3, 'green', '#00ff00', 0, '2023-05-07 00:27:34', '2023-05-14 07:50:52'),
(5, 'brown', '#964B00', 0, '2023-05-07 00:32:14', '2023-05-14 07:51:11'),
(6, 'yellow', '#FFFF00', 1, '2023-05-07 00:32:24', '2023-05-14 07:51:58');

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_04_27_064123_add_to_users_table', 1),
(16, '2023_04_28_131909_create_categories_table', 1),
(17, '2023_04_30_060120_create_brands_table', 1),
(18, '2023_05_02_042223_create_products_table', 1),
(19, '2023_05_02_050455_create_product_images_table', 2),
(21, '2023_05_07_052333_create_colors_table', 3),
(23, '2023_05_08_114947_create_product_colors_table', 4),
(24, '2023_05_10_121239_create_sliders_table', 5),
(25, '2023_05_13_182232_add_category_id_to_brands_table', 6),
(26, '2023_05_15_170626_create_wishlists_table', 7),
(27, '2023_05_17_130932_create_carts_table', 8),
(28, '2023_05_20_121648_create_orders_table', 9),
(29, '2023_05_20_122454_create_order_items_table', 9),
(31, '2023_05_28_172954_create_settings_table', 10),
(32, '2023_05_31_150643_create_user_details_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `status_message` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 3, 'ShopNowYPyofcbuco', 'PRITAMBHAI MAKWANA', 'pritammakwana17561@gmail.com\n', '9714217561', '365601', 'Hanumanpara street no 5 ,amreli', 'completed', 'Cash on Delivery', NULL, '2023-05-25 10:35:05', '2023-05-26 12:10:07'),
(2, 3, 'ShopNowLTkudSG74V', 'PRITAMBHAI MAKWANA', 'pritam@gmail.com', '09714217561', '365601', 'Hanumanpara street no 5 ,amreli', 'in progress', 'Cash on Delivery', NULL, '2023-05-20 10:37:58', '2023-05-20 10:37:58'),
(3, 3, 'ShopNowkHxM2aAily', 'PRITAMBHAI PRAVINBHAI MAKWANA', 'pritammakwana17561@gmail.com', '09714217561', '365601', 'Hanumanpara street no 5 ,amreli', 'in progress', 'Cash on Delivery', NULL, '2023-05-20 11:53:20', '2023-05-20 11:53:20'),
(4, 3, 'ShopNowb2KsIM1CeC', 'PRITAMBHAI PRAVINBHAI MAKWANA', 'pritammakwana17561@gmail.com', '09714217561', '365601', 'Hanumanpara street no 5 ,amreli', 'completed', 'Cash on Delivery', NULL, '2023-05-20 11:54:52', '2023-05-20 11:54:52'),
(5, 3, 'ShopNowM33HJsqa3X', 'PRITAMBHAI PRAVINBHAI MAKWANA', 'pritammakwana17561@gmail.com', '09714217561', '365601', 'Hanumanpara street no 5 ,amreli', 'in progress', 'Cash on Delivery', NULL, '2023-05-20 12:04:50', '2023-05-20 12:04:50'),
(6, 3, 'ShopNowoIh5ZQmeu6', 'PRITAMBHAI PRAVINBHAI MAKWANA', 'pritammakwana17561@gmail.com', '09714217561', '365601', 'Hanumanpara street no 5 ,amreli', 'in progress', 'Cash on Delivery', NULL, '2023-05-25 10:21:11', '2023-05-22 10:21:11'),
(7, 3, 'ShopNowrkN9aziiUH', 'PRITAMBHAI PRAVINBHAI MAKWANA', 'pritammakwana17561@gmail.com', '09714217561', '365601', 'Hanumanpara street no 5 ,amreli', 'in progress', 'Cash on Delivery', NULL, '2023-05-25 10:34:03', '2023-05-22 10:34:03'),
(8, 8, 'ShopNowFTu6DBEH5p', 'pritam makwana', 'pritammakwana17561@gmail.com', '9723417588', '365601', 'Hanumanpara amreli', 'in progress', 'Cash on Delivery', NULL, '2023-06-03 09:06:21', '2023-06-03 09:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_color_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 12, 1, 10000, '2023-05-20 10:35:05', '2023-05-20 10:35:05'),
(2, 1, 6, NULL, 10, 70000, '2023-05-20 10:35:05', '2023-05-20 10:35:05'),
(3, 1, 18, 16, 2, 20000, '2023-05-20 10:35:05', '2023-05-20 10:35:05'),
(4, 1, 17, 13, 1, 20000, '2023-05-20 10:35:05', '2023-05-20 10:35:05'),
(5, 2, 16, 12, 2, 10000, '2023-05-20 10:37:58', '2023-05-20 10:37:58'),
(6, 3, 6, NULL, 2, 70000, '2023-05-20 11:53:20', '2023-05-20 11:53:20'),
(7, 3, 17, 14, 2, 20000, '2023-05-20 11:53:21', '2023-05-20 11:53:21'),
(8, 4, 16, 12, 2, 10000, '2023-05-20 11:54:52', '2023-05-20 11:54:52'),
(9, 5, 16, 11, 5, 10000, '2023-05-20 12:04:50', '2023-05-20 12:04:50'),
(10, 5, 6, NULL, 2, 70000, '2023-05-20 12:04:50', '2023-05-20 12:04:50'),
(11, 6, 6, NULL, 1, 70000, '2023-05-22 10:21:11', '2023-05-22 10:21:11'),
(12, 7, 6, NULL, 1, 70000, '2023-05-22 10:34:03', '2023-05-22 10:34:03'),
(13, 8, 16, 12, 2, 10000, '2023-06-03 09:06:21', '2023-06-03 09:06:21'),
(14, 8, 18, 16, 1, 20000, '2023-06-03 09:06:21', '2023-06-03 09:06:21');

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `small_description` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=trending,0=not-trending',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=featured,0=not featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(6, 4, 'Xioami NotebookUltra', 'xioami-notebookultra', 'realme', 'Xioami NotebookUltra 3.2K Resolution Display Intel Core I5-11300H 11Th Gen 15.6 Inch Thin Light Laptop(16Gb/512Gb Ssd/Iris Xe Graphics/Windows 11 Home/Ms Office21/Backlit Kb/Fingerprint Sensor/1.7Kg)', 'Processor: 11th Gen Intel Tiger Lake Core i5-11300H processor| Speed: 3.1 GHz(base) - 4.4 GHz(max) | 4 cores | 8 Threads | 8 MB Cache\r\nDisplay: 39.62 centimeters IPS 3.2K resolution (3200x2000) | 16:10 aspect ratio, 100% sRGB, 90Hz refresh rate, 241 PPI, 1500:1 contrast ratio | Anti glare | TUV Low blue light\r\nMemory & Storage: 16GB DDR4 3200 MHz | 512GB PCIe NVMe M.2 SSD\r\nOperating System & Software: Windows 11 Home | Microsoft Office Home and Student 2021; Graphics: Intel Iris Xe graphics\r\nNative Resolution: 3200 X 2000 Pixels; Form Factor: Thin & Light Laptop; Software Included: Windows 10 Home', 76999, 59999, 10, 1, 1, 0, 'Xioami NotebookUltra', 'Xioami NotebookUltra,Xioami,NotebookUltra', 'Xioami NotebookUltra', '2023-05-07 07:47:16', '2023-06-05 03:40:10'),
(12, 3, 'Redmi A1', 'redmi-a1', 'Mi', 'Redmi A1 (Light Green, 2GB RAM 32GB ROM) | Segment Best AI Dual Cam | 5000mAh Battery | Leather Texture Design | Android 12', 'Display: 16.56cm HD+ Scratch resistant display\r\nProcessor: MediaTek Helio A22 processor; up to 2.0GHz\r\nCamera: 8MP Dual camera | 5MP Front camera\r\nMemory, Storage & SIM: 2GB LPDDR4x RAM | 32GB storage expandable up to 512GB with dedicated SD card slot | Dual SIM (nano+nano) dual standby (4G+4G)\r\nBattery: 5000 mAh large battery with 10W in-box charger', 8999, 5699, 20, 1, 1, 0, 'Redmi A1', 'Redmi A1,Redmi,A1', 'Redmi A1 (Light Green, 2GB RAM 32GB ROM) | Segment Best AI Dual Cam | 5000mAh Battery | Leather Texture Design | Android 12', '2023-05-08 06:56:39', '2023-06-05 03:44:36'),
(16, 3, 'Mi 10', 'mi-10', 'Mi', 'Mi 10 Mi 10 Mi 10 Mi 10 Mi 10', 'Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10', 50000, 10000, 50, 0, 0, 0, 'Mi 10', 'Mi 10 ,Mi,10', 'Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10 Mi 10', '2023-05-13 22:29:44', '2023-06-05 03:48:10'),
(17, 3, 'vivo v19', 'vivo-v19', 'vivo', 'vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19', 'vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19', 40000, 20000, 20, 0, 0, 0, 'vivo v19', 'vivo v19,vivo,v19', 'vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19vivo v19', '2023-05-13 22:32:15', '2023-05-27 06:49:07'),
(18, 3, 'mi 9', 'mi-9', 'Mi', 'mi 9mi 9mi 9mi 9', 'mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9', 30000, 20000, 50, 1, 1, 0, 'mi 9', 'mi 9,mi,9', 'mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9mi 9', '2023-05-13 22:33:37', '2023-05-13 22:33:37'),
(19, 4, 'Lenovo IdeaPad Slim 3 Intel Core i5 11th Gen 15.6 inches (39.62cm) FHD Thin & Light Business Laptop', 'lenovo-ideapad-slim-3', 'Lenovo', 'Processor: 11th Gen Intel Core i5-1135G7 | Speed: 2.4 GHz (Base) - 4.2 GHz (Max) | 4 Cores | 8 Threads | 8 MB Cache\r\nDisplay: 15.6\" FHD (1920x1080)| TN Technology | 250Nits Brightness Anti Glare || Memory and Storage: 8GB RAM DDR4-3200, Upgradable Up to 16GB | 512 GB SSD', 'Processor: 11th Gen Intel Core i5-1135G7 | Speed: 2.4 GHz (Base) - 4.2 GHz (Max) | 4 Cores | 8 Threads | 8 MB Cache\r\nDisplay: 15.6\" FHD (1920x1080)| TN Technology | 250Nits Brightness Anti Glare || Memory and Storage: 8GB RAM DDR4-3200, Upgradable Up to 16GB | 512 GB SSD\r\nOS and Software: Windows 11 Home 64 | Office Home and Student 2021 | Xbox GamePass Ultimate 3-month subscription*\r\nGraphics: Integrated Intel Iris Xe Graphics\r\nBattery Life: 45Wh | Upto 6 Hours | Rapid Charge (Up to 80% in 1 Hour) | Design: 4 side narrow bezel | 1.99 cm Thick and 1.65 kg Light | Narrow Bezel\r\nCamera (Built-in): 720p with Privacy Shutter | Fixed Focus | Integrated Dual Array Microphone || Audio: 2x 1.5W Stereo Speakers | HD Audio | Dolby Audio\r\nSmart Learning Features : Lenovo Aware | Whisper Voice | Eye Care', 60000, 49990, 10, 1, 1, 0, 'Lenovo IdeaPad Slim 3', 'Lenovo,IdeaPad,Lenovo IdeaPad', 'Lenovo IdeaPad', '2023-06-05 03:16:44', '2023-06-05 03:16:44'),
(20, 4, 'Lenovo IdeaPad Slim 5', 'lenovo-ideapad-slim-5', 'Lenovo', 'Lenovo IdeaPad Slim 5 Intel Core i5 11th Gen 15.6\" (39.62cm) FHD IPS Thin & Light Laptop (16GB/512GB SSD/Windows 11/Office 2021/Backlit/FPR/3months Game Pass/Graphite Grey/1.66Kg), 82FG01B5IN', 'Processor: 11th Gen Intel Tiger Lake Core i5-1135G7 | Speed: 2.4 GHz (Base) - 4.2 GHz (Max) | 4 Cores | 8MB Cache\r\nOS and Software: Pre-Loaded Windows 11 Home with Lifetime Validity | MS Office Home and Student 2021 | Xbox GamePass Ultimate 3-month subscription*\r\nMemory, Storage & Graphics: 16GB RAM DDR4-3200 | 512 GB SSD | Integrated Intel Iris Xe Graphics\r\nDisplay: 15.6\" FHD (1920x1080) | Brightness: 300 nits | Anti-Glare | IPS Technology\r\nDesign: 1.79 cm Thin and 1.66 kg Light | Aluminium Material Top | Backlit Keyboard | Fingerprint Reader\r\nBattery Life: 8 Hours | 57Wh Battery | Rapid Charge (Up to 80% in 1 Hour)\r\nCamera (Built in) & Audio: HD 720p (1.0MP) Camera | Fixed Focus | Privacy Shutter | Integrated Dual Array Microphone | 2 x 2W Stereo Speakers | HD Audio | Dolby Audio', 97890, 59990, 60, 1, 1, 0, 'Lenovo IdeaPad Slim 5', 'Lenovo IdeaPad Slim 5,Lenovo,IdeaPad,Slim 5', 'Lenovo IdeaPad Slim 5 Intel Core i5 11th Gen 15.6\" (39.62cm) FHD IPS Thin & Light Laptop (16GB/512GB SSD/Windows 11/Office 2021/Backlit/FPR/3months Game Pass/Graphite Grey/1.66Kg), 82FG01B5IN', '2023-06-05 03:20:22', '2023-06-05 03:49:27'),
(21, 7, 'Park Avenue Men Shirt', 'park-avenue-men-shirt', 'Peter England', 'Care Instructions: Machine Wash\r\nFit Type: Slim Fit\r\nPARK AVENUE MEN\'s FULL SLEEVE SLIM FIT MEDIUM YELLOW FORMAL SHIRT', 'Product Dimensions ‏ : ‎ 27.5 x 22.5 x 2 cm; 300 Grams\r\nDate First Available ‏ : ‎ 22 February 2023\r\nManufacturer ‏ : ‎ ABFRL\r\nASIN ‏ : ‎ B0BWJZL1KR\r\nItem model number ‏ : ‎ PESFWSLP843983\r\nCountry of Origin ‏ : ‎ India\r\nDepartment ‏ : ‎ Men\r\nManufacturer ‏ : ‎ ABFRL, Aditya Birla Fashion and Retail Ltd,7th Floor, Skyline Icon Business Park, 86-92, Off A.K. Road, Marol Village, Andheri (East), Mumbai, Maharashtra 400059\r\nItem Weight ‏ : ‎ 300 g\r\nItem Dimensions LxWxH ‏ : ‎ 27.5 x 22.5 x 2 Centimeters\r\nGeneric Name ‏ : ‎ Shirt\r\nBest Sellers Rank: #3,080 in Clothing & Accessories (See Top 100 in Clothing & Accessories)\r\n#40 in Men\'s Formal Shirts', 1399, 980, 100, 0, 0, 0, 'Park Avenue Men Shirt', 'Park Avenue Men Shirt,Park Avenue, Men Shirt', 'Park Avenue Men Shirt', '2023-06-05 03:31:20', '2023-06-05 03:47:23'),
(22, 7, 'ACCOX Men\'s Half Sleeves Formal Regular', 'accox-mens-half-sleeves-formal-regular', 'Peter England', 'Colour	Yellow\r\nBrand	ACCOX\r\nLight Colour	yellow\r\nTheme	Plain\r\nOccasion	Formal\r\nStyle	Regular', 'Colour	Yellow\r\nBrand	ACCOX\r\nLight Colour	Yellow\r\nTheme	Plain\r\nOccasion	Formal\r\nStyle	Regular\r\nMaterial	Cotton\r\nNumber of Light Sources	10\r\nItem Weight	190 Grams\r\nControl Method	Touch', 2099, 959, 20, 0, 0, 0, 'ACCOX Men\'s Half Sleeves Formal Regular', 'ACCOX Men\'s,Half Sleeves Formal Regular,ACCOX Men\'s Half Sleeves Formal Regular', 'Colour	Yellow\r\nBrand	ACCOX\r\nLight Colour	Yellow\r\nTheme	Plain\r\nOccasion	Formal\r\nStyle	Regular', '2023-06-05 03:34:08', '2023-06-05 03:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(11, 16, 1, 15, '2023-05-13 22:29:44', '2023-05-20 12:04:50'),
(12, 16, 3, 1, '2023-05-13 22:29:44', '2023-06-03 09:06:21'),
(13, 17, 1, 5, '2023-05-13 22:32:15', '2023-05-13 22:32:15'),
(14, 17, 5, 13, '2023-05-13 22:32:15', '2023-05-20 11:53:21'),
(15, 18, 1, 0, '2023-05-13 22:33:37', '2023-05-13 22:33:37'),
(16, 18, 3, 24, '2023-05-13 22:33:37', '2023-06-03 09:06:21'),
(17, 18, 5, 13, '2023-05-13 22:33:37', '2023-05-13 22:33:37'),
(18, 19, 1, 5, '2023-06-05 03:16:44', '2023-06-05 03:16:44'),
(19, 19, 5, 5, '2023-06-05 03:16:44', '2023-06-05 03:16:44'),
(20, 20, 1, 15, '2023-06-05 03:20:22', '2023-06-05 03:20:22'),
(21, 20, 3, 15, '2023-06-05 03:20:22', '2023-06-05 03:20:22'),
(22, 20, 5, 30, '2023-06-05 03:20:22', '2023-06-05 03:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(37, 16, 'uploads/products/16840367841.png', '2023-05-13 22:29:44', '2023-05-13 22:29:44'),
(39, 16, 'uploads/products/16840367843.png', '2023-05-13 22:29:44', '2023-05-13 22:29:44'),
(40, 16, 'uploads/products/16840367844.png', '2023-05-13 22:29:44', '2023-05-13 22:29:44'),
(41, 17, 'uploads/products/16840369351.png', '2023-05-13 22:32:15', '2023-05-13 22:32:15'),
(42, 17, 'uploads/products/16840369352.png', '2023-05-13 22:32:15', '2023-05-13 22:32:15'),
(43, 17, 'uploads/products/16840369353.png', '2023-05-13 22:32:15', '2023-05-13 22:32:15'),
(44, 18, 'uploads/products/16840370171.png', '2023-05-13 22:33:37', '2023-05-13 22:33:37'),
(45, 18, 'uploads/products/16840370172.jpg', '2023-05-13 22:33:37', '2023-05-13 22:33:37'),
(46, 18, 'uploads/products/16840370173.jpg', '2023-05-13 22:33:37', '2023-05-13 22:33:37'),
(47, 18, 'uploads/products/16840370174.png', '2023-05-13 22:33:37', '2023-05-13 22:33:37'),
(48, 19, 'uploads/products/16859548041.jpg', '2023-06-05 03:16:44', '2023-06-05 03:16:44'),
(49, 19, 'uploads/products/16859548042.jpg', '2023-06-05 03:16:44', '2023-06-05 03:16:44'),
(50, 19, 'uploads/products/16859548043.jpg', '2023-06-05 03:16:44', '2023-06-05 03:16:44'),
(51, 20, 'uploads/products/16859550221.jpg', '2023-06-05 03:20:22', '2023-06-05 03:20:22'),
(52, 20, 'uploads/products/16859550222.jpg', '2023-06-05 03:20:22', '2023-06-05 03:20:22'),
(53, 20, 'uploads/products/16859550223.jpg', '2023-06-05 03:20:22', '2023-06-05 03:20:22'),
(54, 21, 'uploads/products/16859556801.jpg', '2023-06-05 03:31:20', '2023-06-05 03:31:20'),
(55, 21, 'uploads/products/16859556802.jpg', '2023-06-05 03:31:20', '2023-06-05 03:31:20'),
(56, 21, 'uploads/products/16859556803.jpg', '2023-06-05 03:31:20', '2023-06-05 03:31:20'),
(57, 21, 'uploads/products/16859556804.jpg', '2023-06-05 03:31:20', '2023-06-05 03:31:20'),
(58, 21, 'uploads/products/16859556805.jpg', '2023-06-05 03:31:20', '2023-06-05 03:31:20'),
(59, 22, 'uploads/products/16859558481.jpg', '2023-06-05 03:34:08', '2023-06-05 03:34:08'),
(60, 22, 'uploads/products/16859558482.jpg', '2023-06-05 03:34:08', '2023-06-05 03:34:08'),
(61, 22, 'uploads/products/16859558483.jpg', '2023-06-05 03:34:08', '2023-06-05 03:34:08'),
(62, 22, 'uploads/products/16859558484.jpg', '2023-06-05 03:34:08', '2023-06-05 03:34:08'),
(63, 22, 'uploads/products/16859558485.jpg', '2023-06-05 03:34:08', '2023-06-05 03:34:08'),
(64, 6, 'uploads/products/16859562101.jpg', '2023-06-05 03:40:10', '2023-06-05 03:40:10'),
(65, 6, 'uploads/products/16859562102.jpg', '2023-06-05 03:40:10', '2023-06-05 03:40:10'),
(66, 6, 'uploads/products/16859562103.jpg', '2023-06-05 03:40:10', '2023-06-05 03:40:10'),
(67, 6, 'uploads/products/16859562104.jpg', '2023-06-05 03:40:10', '2023-06-05 03:40:10'),
(68, 6, 'uploads/products/16859562105.jpg', '2023-06-05 03:40:10', '2023-06-05 03:40:10'),
(69, 12, 'uploads/products/16859563981.jpg', '2023-06-05 03:43:18', '2023-06-05 03:43:18'),
(70, 12, 'uploads/products/16859563982.jpg', '2023-06-05 03:43:18', '2023-06-05 03:43:18'),
(71, 12, 'uploads/products/16859563983.jpg', '2023-06-05 03:43:18', '2023-06-05 03:43:18'),
(72, 12, 'uploads/products/16859563984.jpg', '2023-06-05 03:43:18', '2023-06-05 03:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(500) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_url`, `page_title`, `meta_keyword`, `meta_description`, `address`, `phone1`, `phone2`, `email1`, `email2`, `facebook`, `twitter`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'ShopNow', 'http://127.0.0.1:8000/', 'ShopNow to day', 'shop , now ,shopnow', 'welcome shopnow', 'Hanumanpara,amreli', '9898985643', '8787879012', 'pritam@gmail.com', 'gopalshop@gmail.com', 'https://www.facebook.com/pritamgopal.makwana', 'twitter.com', 'https://www.instagram.com/pritam_makwana2002/', NULL, '2023-05-28 12:30:12', '2023-05-28 12:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nice Offers ! to Sales Sales  Sales', 'We offer an industry-driven and successful digital marketing strategy that helps our clients\r\n                            in achieving a strong online presence and maximum company profit.', 'uploads/slider/1683804893.jpg', 0, '2023-05-10 08:07:41', '2023-05-11 06:27:36'),
(3, 'Shop Now', 'Shop Now Shop Now Shop Now !', 'uploads/slider/1685956582.jpg', 0, '2023-05-10 08:09:18', '2023-06-05 03:46:22');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$7SkngYSCi/vJLAWN3j61ZeOKCqbb4olp1tlZ3ZpMvi4crVCaKLDBK', NULL, '2023-05-02 00:17:36', '2023-05-02 00:17:36', 1),
(2, 'gopal makwan', 'gopal@gmail.com', NULL, '$2y$10$IWrekpxcCP8rESwTLoF2MOHgr67yBDoA59DNIDnbKXcxqgi8yFVqG', NULL, '2023-05-15 12:03:32', '2023-05-15 12:03:32', 0),
(3, 'pritam bhai', 'pritam@gmail.com', NULL, '$2y$10$xLEPpZNsSiI.UvgPt7QT3e03DDVDzKS6zNFmUNus56WL64yppcIty', NULL, '2023-05-15 12:06:03', '2023-06-01 07:42:56', 0),
(8, 'pritam', 'pritammakwana17561@gmail.com', NULL, '$2y$10$I77.YCo6lrfFMNKN34Dgfeu4947wHNVgRJ291Y7FbcQ7n8/x5rJVi', NULL, '2023-06-03 09:04:23', '2023-06-03 09:04:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `phone`, `pin_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 3, '8888866667', '365602', 'amreli,hanumanpara street no 5', '2023-05-31 10:20:02', '2023-05-31 10:20:34'),
(2, 8, '9723417588', '365601', 'Hanumanpara amreli', '2023-06-03 09:06:05', '2023-06-03 09:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 16, '2023-05-15 12:03:44', '2023-05-15 12:03:44'),
(2, 2, 17, '2023-05-15 12:04:38', '2023-05-15 12:04:38'),
(4, 2, 18, '2023-05-15 12:29:32', '2023-05-15 12:29:32'),
(6, 3, 16, '2023-05-16 06:38:24', '2023-05-16 06:38:24'),
(11, 3, 18, '2023-05-16 07:01:21', '2023-05-16 07:01:21'),
(12, 3, 6, '2023-05-19 06:48:18', '2023-05-19 06:48:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
