-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 03:25 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techchain_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', '2024-05-20 06:08:53', '2024-05-20 06:08:53'),
(2, 'Máy tính', '2024-05-20 06:08:53', '2024-05-20 06:08:53'),
(3, 'Máy tính bảng', '2024-05-20 06:08:53', '2024-05-20 06:08:53'),
(4, 'Đồng hồ', '2024-05-20 06:08:53', '2024-05-20 06:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL DEFAULT '5',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Good', 5, '2024-05-29 12:14:10', NULL),
(2, 2, 1, 'Chất lượng tốt', 4, '2024-05-29 12:14:10', NULL),
(3, 1, 1, 'Tạm ổn', 4, '2024-05-29 12:14:10', NULL),
(4, 2, 1, 'Tuỵt vời :D', 5, '2024-05-29 12:14:10', NULL),
(5, 1, 1, 'nooo', 5, '2024-05-29 13:26:52', '2024-05-29 13:26:52'),
(6, 1, 3, 'HAHA', 4, '2024-06-01 06:14:35', '2024-06-01 06:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_20_125421_create_categories_table', 1),
(7, '2024_05_29_061710_create_products_table', 2),
(8, '2024_05_29_084318_create_product_images_table', 3),
(9, '2024_05_29_115803_create_comments_table', 4),
(10, '2024_06_03_191544_create_orders_table', 5),
(11, '2024_06_03_191555_create_order_details_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','prepare','shiping','success','cancle') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_money` int NOT NULL DEFAULT '0',
  `total_quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_fullname`, `user_email`, `user_phone`, `user_address`, `status`, `total_money`, `total_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 'PHAN THANH KHAI', '123@gmail.com', '0987654321', '123/abc/def', 'success', 53930000, 7, '2024-05-03 13:12:31', '2024-06-03 13:12:31'),
(2, 1, 'PHAN THANH KHAI', '123@gmail.com', '0987654321', '123/abc/def', 'success', 53930000, 7, '2024-06-03 13:14:03', '2024-06-03 13:14:03'),
(3, 1, 'PHAN THANH KHAI', '123@gmail.com', '0987654321', '123/abc/def', 'success', 300000000, 5, '2024-06-03 13:14:17', '2024-06-03 13:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 8490000, '2024-04-03 13:12:31', '2024-06-03 13:12:31'),
(2, 1, 3, 5, 5990000, '2024-05-03 13:12:31', '2024-06-03 13:12:31'),
(3, 1, 4, 1, 15490000, '2024-05-03 13:12:31', '2024-06-03 13:12:31'),
(4, 2, 2, 1, 8490000, '2024-06-03 13:14:03', '2024-06-03 13:14:03'),
(5, 2, 3, 5, 5990000, '2024-06-03 13:14:03', '2024-06-03 13:14:03'),
(6, 2, 4, 1, 15490000, '2024-06-03 13:14:03', '2024-06-03 13:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int NOT NULL,
  `sale_price` int DEFAULT NULL,
  `instock` int NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `description`, `price`, `sale_price`, `instock`, `rating`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy S23 FE 5G 128GB', 'samsung-galaxy-s23-fe-5g-128gb', '638471599704474139_samsung-galaxy-s23--fe-den-dd-AI.webp', NULL, 14890000, NULL, 73, 4.5, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(2, 'OPPO Reno11 F 5G 8GB-256GB', 'oppo-reno11-f-5g-8gb-256gb', '638493832157161657_oppo-reno11-f-green-1.webp', NULL, 8990000, 8490000, 65, 4.3, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(3, 'Xiaomi Poco M6 Pro 8GB-256GB', 'xiaomi-poco-m6-pro-8gb-256gb', '638417729562660990_xiaomi-poco-m6-pro-dd-docquyen-bh.webp', NULL, 6490000, 5990000, 82, 4.9, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(4, 'Samsung Galaxy S23 5G 256GB', 'samsung-galaxy-s23-5g-256gb', '638518175414796345_samsung-galaxy-s23-5g-thumb-doc-quyen.webp', NULL, 24990000, 15490000, 76, 3, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(5, 'Honor X7b 8GB-256GB', 'honor-x7b-8gb-256gb', '638454261816142342_honor-x7b-xanh-6.webp', NULL, 5290000, 4990000, 95, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(6, 'OPPO A18 4GB-128GB', 'oppo-a18-4gb-128gb', '638509283036082649_OPPO-A18-thumb.webp', NULL, 3990000, 3690000, 76, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(7, 'iPhone 15 Pro Max 256GB', 'iphone-15-pro-max-256gb', '638342502751589917_ip-15-pro-max-dd-bh-2-nam.webp', NULL, 34990000, 29290000, 93, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(8, 'Samsung Galaxy S24 Ultra 5G 256GB', 'samsung-galaxy-s24-ultra-5g-256gb', '638477639726536939_samsung-galaxy-s24-ultra-dd-AI.webp', NULL, 33990000, 31990000, 57, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(9, 'Honor X9B 5G 12GB-256GB', 'honor-x9b-5g-12gb-256gb', '638405567889290705_honor-x9b-dd-dq-1.webp', NULL, 8990000, 8390000, 80, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(10, 'OPPO A58 6GB-128GB', 'oppo-a58-6gb-128gb', '638265802441511578_oppo-a58-dd.webp', NULL, 4990000, 4690000, 60, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(11, 'Samsung Galaxy Z Flip4 5G 128GB', 'samsung-galaxy-z-flip4-5g-128gb', '638131739579610504_samsung-galaxy-z-flip4-tim-dd-tragop.webp', NULL, 23990000, 11990000, 97, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(12, 'Tecno Spark Go 2024 4GB-64GB', 'tecno-spark-go-2024-4gb-64gb', '638518773813324397_tecno-spark-go-2024-thumb-thu-cu-2g-100k.webp', NULL, 2190000, 1990000, 83, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(13, 'OPPO A78 8GB-256GB', 'oppo-a78-8gb-256gb', '638241536485031136_oppo-a78-den-dd.webp', NULL, 6990000, 6490000, 97, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(14, 'Xiaomi Redmi Note 13 6GB-128GB', 'xiaomi-redmi-note-13-6gb-128gb', '638421256103594350_xiaomi-redmi-note-13-dd-bh.webp', NULL, 4890000, 4690000, 7, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(15, 'Samsung Galaxy A05s 128GB', 'samsung-galaxy-a05s-128gb', '638352249930121103_samsung-galaxy-a05s-dd-doimay.webp', NULL, 3990000, 3590000, 5, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(16, 'Honor X5 Plus 4GB-64GB', 'honor-x5-plus-4gb-64gb', '638376267641979247_honor-x5-plus-dd-doimoi.webp', NULL, 2790000, 2490000, 100, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(17, 'Samsung Galaxy A23 5G', 'samsung-galaxy-a23-5g', '638451444037915753_samsung-galaxy-a23-5g-dd.webp', NULL, 5990000, 4190000, 98, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(18, 'OPPO A17k 3GB-64GB', 'oppo-a17k-3gb-64gb', '638071502453762468_oppo-a17k-dd.webp', NULL, 3290000, 2790000, 92, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(19, 'Xiaomi Redmi A2 2GB-32GB', 'xiaomi-redmi-a2-2gb-32gb', '638475676879245067_xiaomi-redmi-a2-den-dd-bh-thucu.webp', NULL, 2190000, 1690000, 64, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(20, 'Samsung Galaxy Z Fold5 5G 256GB', 'samsung-galaxy-z-fold5-5g-256gb', '638472349027667377_samsung-galaxy-zfold-5-dd-ai.webp', NULL, 40990000, 34990000, 92, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(21, 'Samsung Galaxy Z Flip5 5G 256GB', 'samsung-galaxy-z-flip5-5g-256gb', '638472349027667377_samsung-galaxy-zflip-5-dd-ai.webp', NULL, 25990000, 19990000, 58, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(22, 'iPhone 12 64GB', 'iphone-12-64gb', '638440267786171563_iphone-12-dd-bh.webp', NULL, 17990000, 11590000, 99, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(23, 'iPhone 11 64GB', 'iphone-11-64gb', '638440266267791271_iphone-11-dd-bh.webp', NULL, 11990000, 8690000, 85, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(24, 'OPPO Reno10 5G 128GB', 'oppo-reno10-5g-128gb', '638253719457391276_oppo-reno10-5g-xanh-5.webp', NULL, 9990000, 8490000, 10, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(25, 'OPPO Reno8 T 4G 256GB', 'oppo-reno8-t-4g-256gb', '638155148198300095_oppo-reno8-t-4g-dd.webp', NULL, 8490000, 6490000, 88, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(26, 'Samsung Galaxy A34 5G', 'samsung-galaxy-a34-5g', '638241722578403987_samsung-galaxy-a34-dd.webp', NULL, 8490000, 6490000, 91, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(27, 'Honor 90 Lite 5G 8GB-256GB', 'honor-90-lite-5g-8gb-256gb', '638372867419434789_honor-90-lite-den-dd-100ngadoimoi.webp', NULL, 6490000, 5490000, 86, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(28, 'OPPO A77s 8GB-128GB', 'oppo-a77s-8gb-128gb', '638071499364966239_oppo-a77s-dd.webp', NULL, 6290000, 5190000, 80, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(29, 'Vivo Y22s 8GB-128GB', 'vivo-y22s-8gb-128gb', '637983398315589960_vivo-y22s-xanh-dd.webp', NULL, 5990000, 4990000, 54, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(30, 'Honor X8A 8GB-128GB', 'honor-x8a-8gb-128gb', '638451449167360007_honor-x8a-dd-docquyen.webp', NULL, 4990000, 3990000, 90, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(31, 'realme C55 6GB-128GB', 'realme-c55-6gb-128gb', '638150119693895777_realme-c55-dd.webp', NULL, 4990000, 3990000, 74, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(32, 'Realme C51 6GB-256GB', 'realme-c51-6gb-256gb', '638423850797799428_realme-c51-dd-doimoi.webp', NULL, 4490000, 3890000, 97, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(33, 'Vivo T1x 4GB-64GB', 'vivo-t1x-4gb-64gb', '637939995401683559_vivo-t1x-xanh-dd.webp', NULL, 4490000, 3290000, 65, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(34, 'Vivo Y16 4GB-128GB', 'vivo-y16-4gb-128gb', '637983383787368693_vivo-y16-vang-dd.webp', NULL, 4490000, 3290000, 79, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(35, 'Samsung Galaxy A04s', 'samsung-galaxy-a04s', '638204394272841272_samsung-galaxy-a04s-dd.webp', NULL, 3990000, 2990000, 79, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(36, 'OPPO Find N3 5G 16GB-512GB', 'oppo-find-n3-5g-16gb-512gb', '638372781579679832_oppo-find-n3-5g-vang-dd.webp', NULL, 44990000, 41990000, 56, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(37, 'Xiaomi 14 Ultra 16GB-512GB', 'xiaomi-14-ultra-16gb-512gb', '638512907059406867_xiaomi-14-ultra-dd.webp', NULL, 32990000, 28990000, 91, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(38, 'iPhone 14 Pro Max 256GB', 'iphone-14-pro-max-256gb', '638007285202545738_iphone-14-pro-max-dd-bh.webp', NULL, 32990000, 27990000, 51, 0, 1, '2024-05-29 00:27:33', '2024-05-29 00:27:33'),
(39, 'Samsung Galaxy S23 Ultra 5G 256GB', 'samsung-galaxy-s23-ultra-5g-256gb', '638471599704942918_samsung-galaxy-s23-ultra-xanh-dd-AI.webp', NULL, 31990000, 24990000, 73, 0, 1, '2024-05-29 00:27:34', '2024-05-29 00:27:34'),
(40, 'Samsung Galaxy S24 Plus 5G 256GB', 'samsung-galaxy-s24-plus-5g-256gb', '638477639726536939_samsung-galaxy-s24-dd-ai.webp', NULL, 26990000, 24990000, 77, 0, 1, '2024-05-29 00:27:34', '2024-05-29 00:27:34'),
(41, 'iPhone 15 Pro 128GB', 'iphone-15-pro-128gb', '638342505369309720_ip-15-pro-dd-bh-2-nam.webp', NULL, 28990000, 24790000, 89, 0, 1, '2024-05-29 00:27:34', '2024-05-29 00:27:34'),
(42, 'iPhone 15 Plus 128GB', 'iphone-15-plus-128gb', '638342507329455238_ip-15-plus-dd-bh-2-nam.webp', NULL, 25990000, 22190000, 73, 0, 1, '2024-05-29 00:27:34', '2024-05-29 00:27:34'),
(43, 'Samsung Galaxy S24 5G 256GB', 'samsung-galaxy-s24-5g-256gb', '638477647082711479_samsung-galaxy-s24-plus-dd-ai.webp', NULL, 22990000, 21990000, 70, 0, 1, '2024-05-29 00:27:34', '2024-05-29 00:27:34'),
(44, 'Xiaomi 14 12GB-256GB', 'xiaomi-14-12gb-256gb', '638470498770132071_xiaomi-14-dd-bh.webp', NULL, 22990000, 20990000, 72, 0, 1, '2024-05-29 00:27:34', '2024-05-29 00:27:34'),
(45, 'iPhone 14 Plus 128GB', 'iphone-14-plus-128gb', '638440340613418500_iphone-14-plus-dd-bh.webp', NULL, 24990000, 19390000, 87, 0, 1, '2024-05-29 00:27:34', '2024-05-29 00:27:34'),
(46, 'iPhone 15 128GB', 'iphone-15-128gb', '638342508308826366_ip-15-dd-bh-2-nam.webp', NULL, 22990000, 19090000, 70, 0, 1, '2024-05-29 00:27:34', '2024-05-29 00:27:34'),
(47, 'test', 'test', '', 'haha', 123456, 1234, 12, 0, 1, '2024-06-07 12:49:39', '2024-06-07 12:49:39'),
(48, 'test12', 'test12', '48.jpg', 'haha', 123456, 1234, 122, 0, 1, '2024-06-07 12:51:47', '2024-06-07 12:51:47'),
(49, 'test 2', 'test-2', '49.jpg', 'hahahahah', 18888888, 177777, 12, 0, 1, '2024-06-07 13:01:17', '2024-06-07 13:01:17'),
(50, 'test 2', 'test-2', '50.jpg', 'hahahahah', 18888888, 177777, 12, 0, 1, '2024-06-07 13:02:51', '2024-06-07 13:02:51'),
(51, 'test 3', 'test-3', '51.webp', 'haha', 9999999, 888888, 12, 0, 1, '2024-06-07 13:03:26', '2024-06-07 13:03:26'),
(52, 'test 3', 'test-3', '52.webp', 'haha', 9999999, 888888, 12, 0, 1, '2024-06-07 13:04:36', '2024-06-07 13:04:36'),
(53, 'test 3', 'test-3', '53.webp', 'haha', 9999999, 888888, 12, 0, 1, '2024-06-07 13:05:33', '2024-06-07 13:05:33'),
(54, 'test 3', 'test-3', '54.jpg', 'haha', 9999999, 888888, 12, 0, 1, '2024-06-07 13:05:50', '2024-06-07 13:05:50'),
(55, 'test 3', 'test-3', '55.jpg', 'hahha', 1234213, 121213, 12, 0, 1, '2024-06-07 13:06:38', '2024-06-07 13:06:38'),
(56, 'test 5', 'test-5', '56.jpg', 'hahha', 1234213, 121213, 12, 0, 1, '2024-06-07 13:08:18', '2024-06-07 13:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`) VALUES
(1, '638463753210935577_samsung-galaxy-s23-fe-den-2.webp', 1),
(2, '638463753211404407_samsung-galaxy-s23-fe-den-3.webp', 1),
(3, '638463753210310750_samsung-galaxy-s23-fe-den-4.webp', 1),
(4, '638463753210779352_samsung-galaxy-s23-fe-den-5.webp', 1),
(5, '56.0.jfif', 56),
(6, '56.1.jfif', 56);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `adress`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'PHAN THANH KHAI', '123@gmail.com', NULL, NULL, NULL, '$2y$12$5rqvQ9F8QX98Q7nwUcvkyOoL8aCH3aRyV9n.B5i7bNDjubCJerdJ6', 'user', NULL, '2024-05-22 05:33:26', '2024-05-22 05:33:26'),
(2, 'PHAN THANH KHAI', '1233@gmail.com', NULL, NULL, NULL, '$2y$12$YffP8FB4EqQFnPlYf.NVzeY0T3Y1DmBZfYdlfXes7d.rw2qI4gKcG', 'user', NULL, '2024-05-22 05:53:57', '2024-05-22 05:53:57'),
(3, 'admin', 'admin@gmail.com', NULL, NULL, NULL, '$2y$12$BvhqYPXjg2b13CLr7WPF1eVfhccHWfoVBvsjkB7GfXnb2ZGQQ5p7y', 'admin', NULL, '2024-06-07 05:47:49', '2024-06-07 05:47:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

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
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
