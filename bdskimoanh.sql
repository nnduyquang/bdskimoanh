-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2018 at 02:10 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `congtybdskimoan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_items`
--

CREATE TABLE IF NOT EXISTS `category_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_items_seo_id_foreign` (`seo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category_items`
--

INSERT INTO `category_items` (`id`, `name`, `path`, `description`, `image`, `image_mobile`, `level`, `parent_id`, `type`, `order`, `is_active`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Đất Nền Dự Án', 'dat-nen-du-an', '<p>\r\n	Đất Nền Dự Án 1\r\n</p>', NULL, NULL, 0, NULL, 1, 1, 1, '2018-09-22 15:19:52', '2018-09-22 16:00:13', 32),
(2, 'Căn Hộ Dự Án', 'can-ho-du-an', '<p>\r\n	Căn Hộ Dự Án\r\n</p>', NULL, NULL, 0, NULL, 1, 1, 1, '2018-09-22 15:29:10', '2018-09-22 15:29:10', 33),
(3, 'Tin Tức', 'tin-tuc', NULL, NULL, NULL, 0, NULL, 0, 1, 1, '2018-09-27 01:34:17', '2018-09-27 01:34:17', 34);

-- --------------------------------------------------------

--
-- Table structure for table `category_many`
--

CREATE TABLE IF NOT EXISTS `category_many` (
  `category_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_many`
--

INSERT INTO `category_many` (`category_id`, `item_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-09-27 02:30:40', '2018-09-27 02:30:40'),
(1, 2, 1, '2018-09-27 03:04:31', '2018-09-27 03:04:31'),
(1, 3, 1, '2018-09-28 03:06:32', '2018-09-28 03:06:32'),
(1, 4, 1, '2018-09-28 03:20:44', '2018-09-28 03:20:44'),
(1, 5, 1, '2018-09-28 03:51:41', '2018-09-28 03:51:41'),
(3, 1, 0, '2018-09-27 03:53:13', '2018-09-27 03:53:13'),
(3, 2, 0, '2018-09-27 04:09:45', '2018-09-30 14:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE IF NOT EXISTS `category_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_permissions_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(2, 'User', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(3, 'Menu', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(4, 'Page', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(5, 'Post', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(7, 'Product', '2018-03-27 03:05:29', '2018-03-27 03:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE IF NOT EXISTS `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `configs_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'config-contact', '<p>\r\n	<strong><em><span style="background-color:#f1c40f;">Hotline đặt hàng</span>:</em></strong><em>&nbsp;&nbsp;<strong>097.388.9336 - 0914.675.777</strong></em>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Hotline hỗ trợ tư vấn và phản hồi ý kiến</em></strong><em>:&nbsp;&nbsp;<strong>097.388.9336</strong></em>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Hân hạnh được phục vụ quý khách hàng.!</em></strong>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Thông tin liên hệ với chúng tôi:</em></strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<strong>CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ THÉP KHÁNH NAM</strong>\r\n</p>\r\n\r\n<p>\r\n	<strong>TRỤ SỞ CHÍNH:</strong>&nbsp;<em>201 Bình Thành, KP 4, P. Bình Hưng Hòa, Q. Bình Tân, thành phố Hồ Chí Minh</em>\r\n</p>\r\n\r\n<p>\r\n	<strong>Di động:</strong><em>&nbsp;097.388.9336 - 0914.675.777</em>\r\n</p>', 1, NULL, '2018-03-30 09:07:51'),
(3, 'config-company-name', 'Quang', 1, NULL, '2018-09-19 08:26:28'),
(4, 'config-phone', NULL, 1, NULL, NULL),
(5, 'config-email', NULL, 1, NULL, NULL),
(6, 'config-seo-keywords', NULL, 1, NULL, NULL),
(7, 'config-seo-title', NULL, 1, NULL, NULL),
(8, 'config-seo-description', NULL, 1, NULL, NULL),
(9, 'config-seo-image', NULL, 1, NULL, NULL),
(10, 'email-receive', 'nnduyquang@gmail.com', 1, NULL, '2018-09-19 08:44:00'),
(11, 'email-sender-subject', NULL, 1, NULL, NULL),
(12, 'email-sender-from', NULL, 1, NULL, NULL),
(13, 'email-receive-subject', NULL, 1, NULL, NULL),
(14, 'email-receive-from', NULL, 1, NULL, NULL),
(15, 'email-sender-content', NULL, 1, NULL, NULL),
(16, 'email-signatures', NULL, 1, NULL, NULL),
(17, 'script-js-header', NULL, 1, NULL, '2018-09-19 08:58:22'),
(18, 'script-js-body', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directions`
--

CREATE TABLE IF NOT EXISTS `directions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `directions`
--

INSERT INTO `directions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'KXĐ', NULL, NULL),
(2, 'Đông', NULL, NULL),
(3, 'Tây', NULL, NULL),
(4, 'Nam', NULL, NULL),
(5, 'Bắc', NULL, NULL),
(6, 'Đông - Bắc', NULL, NULL),
(7, 'Tây - Bắc', NULL, NULL),
(8, 'Tây - Nam', NULL, NULL),
(9, 'Đông - Nam', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `level` tinyint(1) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `seo_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `path`, `is_active`, `level`, `order`, `parent_id`, `seo_id`, `created_at`, `updated_at`) VALUES
(1, 'Bình Dương', 'binh-duong', 1, 0, 1, NULL, 1, '2018-09-21 09:46:25', '2018-09-21 09:46:25'),
(2, 'Thủ Dầu Một', 'thu-dau-mot', 1, 1, 1, 1, 2, '2018-09-21 09:48:26', '2018-09-21 09:48:26'),
(3, 'Đồng Nai', 'dong-nai', 1, 0, 1, NULL, 3, '2018-09-21 09:48:49', '2018-09-21 09:48:49'),
(4, 'Thị Xã Bến Cát', 'thi-xa-ben-cat', 1, 1, 1, 1, 4, '2018-09-21 09:51:56', '2018-09-21 09:51:56'),
(5, 'Bắc Tân Uyên', 'bac-tan-uyen', 1, 1, 1, 1, 6, '2018-09-21 13:44:51', '2018-09-21 13:44:51'),
(6, 'Bàu Bàng', 'bau-bang', 1, 1, 1, 1, 6, '2018-09-21 13:46:04', '2018-09-21 13:46:04'),
(7, 'Dầu Tiếng', 'dau-tieng', 1, 1, 1, 1, 7, '2018-09-21 13:46:20', '2018-09-21 13:46:20'),
(8, 'Dĩ An', 'di-an', 1, 1, 1, 1, 8, '2018-09-21 13:46:32', '2018-09-21 13:46:32'),
(9, 'Phú Giáo', 'phu-giao', 1, 1, 1, 1, 9, '2018-09-21 13:46:43', '2018-09-21 13:46:43'),
(10, 'Tân Uyên', 'tan-uyen', 1, 1, 1, 1, 10, '2018-09-21 13:47:18', '2018-09-21 13:47:18'),
(11, 'Thuận An', 'thuan-an', 1, 1, 1, 1, 11, '2018-09-21 13:47:33', '2018-09-21 13:47:33'),
(12, 'An Tây', 'an-tay', 1, 2, 1, 4, 12, '2018-09-21 13:47:59', '2018-09-21 13:47:59'),
(13, 'An Điền', 'an-dien', 1, 2, 1, 4, 13, '2018-09-21 13:48:15', '2018-09-21 13:48:15'),
(14, 'Chánh Phú Hòa', 'chanh-phu-hoa', 1, 2, 1, 4, 14, '2018-09-21 13:48:30', '2018-09-21 13:48:30'),
(15, 'Cây Trường', 'cay-truong', 1, 2, 1, 4, 15, '2018-09-21 13:48:45', '2018-09-21 13:48:45'),
(16, 'Hòa Lợi', 'hoa-loi', 1, 2, 1, 4, 16, '2018-09-21 13:48:59', '2018-09-21 13:48:59'),
(17, 'Mỹ Phước', 'my-phuoc', 1, 2, 1, 4, 17, '2018-09-21 13:49:13', '2018-09-21 13:49:13'),
(18, 'Phú An', 'phu-an', 1, 2, 1, 4, 18, '2018-09-21 13:49:31', '2018-09-21 13:49:31'),
(19, 'Thới Hòa', 'thoi-hoa', 1, 2, 1, 4, 19, '2018-09-21 13:49:43', '2018-09-21 13:49:43'),
(20, 'Tân Định', 'tan-dinh', 1, 2, 1, 4, 20, '2018-09-21 13:50:15', '2018-09-21 13:50:15'),
(21, 'Cẩm Mỹ', 'cam-my', 1, 1, 1, 3, 21, '2018-09-21 13:53:10', '2018-09-21 13:53:10'),
(22, 'Định Quán', 'dinh-quan', 1, 1, 1, 3, 22, '2018-09-21 13:53:27', '2018-09-21 13:53:27'),
(23, 'Long Thành', 'long-thanh', 1, 1, 1, 3, 23, '2018-09-21 13:54:08', '2018-09-21 13:54:08'),
(24, 'Nhơn Trạch', 'nhon-trach', 1, 1, 1, 3, 24, '2018-09-21 13:54:25', '2018-09-21 13:54:25'),
(25, 'Tân Phú', 'tan-phu', 1, 1, 1, 3, 25, '2018-09-21 13:54:37', '2018-09-21 13:54:37'),
(26, 'Thống Nhất', 'thong-nhat', 1, 1, 1, 3, 26, '2018-09-21 13:55:02', '2018-09-21 13:55:02'),
(27, 'Trảng Bom', 'trang-bom', 1, 1, 1, 3, 27, '2018-09-21 13:55:16', '2018-09-21 13:55:16'),
(28, 'Vĩnh Cửu', 'vinh-cuu', 1, 1, 1, 3, 28, '2018-09-21 13:55:53', '2018-09-21 13:55:53'),
(29, 'Xuân Lộc', 'xuan-loc', 1, 1, 1, 3, 29, '2018-09-21 13:56:05', '2018-09-21 13:56:05'),
(30, 'Biên Hòa', 'bien-hoa', 1, 1, 1, 3, 30, '2018-09-21 13:56:21', '2018-09-21 13:56:21'),
(31, 'Long Khánh', 'long-khanh', 1, 1, 1, 3, 31, '2018-09-21 13:56:37', '2018-09-21 13:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 'Trang Chủ', '/', '_self', NULL, '#000000', NULL, 1, '2018-09-14 04:10:33', '2018-09-25 14:28:08', NULL, ''),
(2, 'Giới Thiệu', 'gioi-thieu.html', '_self', NULL, '#000000', NULL, 2, '2018-09-14 04:48:02', '2018-09-27 01:20:33', NULL, ''),
(3, 'Tin Tức', 'tin-tuc.html', '_self', NULL, '#000000', NULL, 3, '2018-09-14 04:49:28', '2018-09-27 01:20:45', NULL, ''),
(4, 'Dự Án', 'duan.html', '_self', NULL, '#000000', NULL, 4, '2018-09-25 14:28:54', '2018-09-27 01:20:56', NULL, ''),
(5, 'Video', '#', '_self', NULL, '#000000', NULL, 5, '2018-09-25 14:29:05', '2018-09-25 14:29:05', NULL, ''),
(6, 'Tuyển Dụng', 'tuyen-dung.html', '_self', NULL, '#000000', NULL, 6, '2018-09-25 14:29:14', '2018-09-27 01:21:19', NULL, ''),
(7, 'Liên Hệ', 'lien-he.html', '_self', NULL, '#000000', NULL, 7, '2018-09-25 14:29:24', '2018-09-27 01:21:30', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_14_140923_create_entrust_setup_tables', 1),
(4, '2018_07_12_085612_create_seos_table', 2),
(5, '2018_07_12_090313_add_seo_id_to_posts_table', 3),
(6, '2018_07_12_091007_add_seo_id_to_products_table', 4),
(7, '2018_07_12_091116_add_seo_id_to_category_items_table', 5),
(8, '2018_07_17_084914_create_category_many_table', 6),
(9, '2018_09_21_102446_create_locations_table', 7),
(10, '2018_09_23_212531_create_directions_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_category_permission_id_foreign` (`category_permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(9, 'menu-list', 'Toàn Quyền Menu', 'Được Toàn Quyền Menu', 3, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(10, 'menu-create', 'Thêm Mới Menu', 'Được Thêm Mới Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(11, 'menu-edit', 'Cập Nhật Menu', 'Được Cập Nhật Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(12, 'menu-delete', 'Xóa Menu', 'Được Xóa Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(13, 'page-list', 'Toàn Quyền Trang', 'Được Toàn Quyền Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(14, 'page-create', 'Thêm Mới Trang', 'Được Thêm Mới Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(15, 'page-edit', 'Cập Nhật Trang', 'Được Cập Nhật Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(16, 'page-delete', 'Xóa Trang', 'Được Xóa Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(17, 'post-list', 'Toàn Quyền Bài Viết', 'Được Toàn Quyền Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(18, 'post-create', 'Thêm Mới Bài Viết', 'Được Thêm Mới Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(19, 'post-edit', 'Cập Nhật Bài Viết', 'Được Cập Nhật Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(20, 'post-delete', 'Xóa Bài Viết', 'Được Xóa Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(21, 'product-list', 'Toàn Quyền Sản Phẩm', 'Được Toàn Quyền Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(22, 'product-create', 'Thêm Mới Sản Phẩm', 'Được Thêm Mới Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(23, 'product-edit', 'Cập Nhật Sản Phẩm', 'Được Cập Nhật Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(24, 'product-delete', 'Xóa Sản Phẩm', 'Được Xóa Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_image` longtext COLLATE utf8mb4_unicode_ci,
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `category_item_id` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_seo_id_foreign` (`seo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `image`, `sub_image`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Bến xe Miền Đông mới (Tp.HCM) sẽ đi vào hoạt động đầu năm 2019', 'ben-xe-mien-dong-moi-tphcm-se-di-vao-hoat-dong-dau-nam-2019', '<p>\r\n	Theo Tổng Công ty Cơ khí giao thông vận tải Sài Gòn - chủ đầu tư dự án Bến xe miền Đông mới, hiện các đơn vị thi công đang đẩy nhanh tiến độ xây dựng bến xe Miền Đông mới để kịp tiến độ hoàn thành nhà ga giai đoạn 1 vào cuối tháng 12 và đưa vào khai thác từ quý I/2019.\r\n</p>', '<p>\r\n	Được khởi công xây dựng vào tháng 4/2017, Bến xe Miền Đông mới có diện tích hơn 16ha thuộc phường Bình Thắng, thị xã Dĩ An (Bình Dương) và phường Long Bình, Q.9, (Tp.HCM). Các đơn vị thi công đang khẩn trương xây dựng để kịp đưa vào sử dụng vào quý I/2019.\r\n</p>\r\n\r\n<p>\r\n	Cụ thể, giai đoạn 1 nhà ga bến xe Miền Đông mới được xây dựng với kết cấu gồm 2 tầng hầm và 4 tầng nổi. Công trình bến xe được thiết kế theo kiến trúc hiện đại, trở thành bến xe lớn nhất nước và là một trong những bến xe hiện đại của khu vực Đông Nam Á.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/tintuc/benxemiendong/ben-xe-icon.jpg" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<em>Dự án bến xe miền Đông mới có tổng vốn đầu tư khoảng 4.000 tỷ đồng</em>\r\n</p>\r\n\r\n<p>\r\n	Theo quy hoạch Phát triển giao thông vận tải Tp.HCM đến năm 2020 tầm nhìn đến năm 2025, khu vực Bến xe miền Đông mới và ga Suối Tiên sẽ là đầu mối giao thông lớn của Tp.HCM với các tỉnh Đông Nam Bộ, miền Trung và miền Bắc. Các dự án này sẽ kết nối trực tiếp với hai nhà ga metro lớn để di chuyển vào khu vực trung tâm Tp.HCM.\r\n</p>\r\n\r\n<p>\r\n	Được biết, bến xe Miền Đông bao gồm bốn khu A, B, C, D; trong đó, khu A là đất bến bãi, công trình công cộng và phụ trợ, với công trình cao nhất có 26 tầng, diện tích 122.480m2 (chiếm 76,37%,); khu B là trạm xe buýt cao 2 tầng; khu C là kho trung chuyển và giao dịch hàng hóa cao 5 tầng và khu D là khu thương mại dịch vụ cao 15 tầng. Dự án có tổng vốn đầu tư khoảng 4.000 tỷ đồng.\r\n</p>', 'images/uploads/images/tintuc/benxemiendong/ben-xe-icon.jpg', NULL, 1, 1, NULL, 1, '2018-09-27 03:53:13', '2018-09-27 03:53:13', 40),
(2, 'Kim Oanh Real khai trương chi nhánh thứ 7 tại Bình Dương', 'kim-oanh-real-khai-truong-chi-nhanh-thu-7-tai-binh-duong', '<p>\r\n	Kim Oanh Real khai trương chi nhánh thứ 7 tại Bình Dương\r\n</p>', '<p>\r\n	Để phục vụ khách hàng tốt hơn cũng như tạo điều kiện thuận lợi để khách hàng dễ dàng tìm hiểu và tiếp cận các dự án của Kim Oanh Group đầu tư, phân phối, ngày 24-9-2018, Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real) đã tổ chức lễ khai trương và chính thức đưa vào hoạt động chi nhánh thứ 7 tại trung tâm thị xã Bến Cát, tỉnh Bình Dương.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong-ben-cat.jpg" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<em>Nghi thức cắt băng khai trương chi nhánh Bến Cát</em>\r\n</p>\r\n\r\n<p>\r\n	Chi nhánh Bến Cát tọa lạc tại ô số 12-13, lô B, ngay góc đường D1 và quốc lộ 13, thuộc khuôn viên&nbsp;<strong>khu đô thị Golden Center City</strong>&nbsp;của Kim Oanh Group làm chủ đầu tư. Với tổng diện tích sàn khoảng 260 m2, chi nhánh Bến Cát được thiết kế sang trọng, trang bị cơ sở vật chất hiện đại và quy tụ hơn 100 nhân viên năng động, nhiệt huyết, giàu kinh nghiệm, tận tâm phục vụ khách hàng.\r\n</p>\r\n\r\n<p>\r\n	Phát biểu tại lễ khai trương, bà Đặng Thị Kim Oanh,<strong>&nbsp;Tổng giám đốc Kim Oanh Real</strong>, cho biết việc đưa chi nhánh Bến Cát vào hoạt động nằm trong chiến lược đẩy mạnh thương hiệu, mở rộng hệ thống phân phối và tiếp thị các sản phẩm do&nbsp;<strong>Kim Oanh Group</strong>&nbsp;đầu tư. Điều này không chỉ giúp khách hàng có một địa chỉ giao dịch tin cậy, gia tăng cơ hội an cư và đầu tư hiệu quả, góp phần xây dựng một thị trường bất động sản chuyên nghiệp và lành mạnh mà còn tạo điều kiện để đông đảo người lao động có nguồn thu nhập ổn định, thăng tiến trong sự nghiệp.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/van-phong-golden.jpg" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<em>Màn múa lân rất sôi động chúc mừng Kim Oanh Real khai trương chi nhánh mới.</em>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<em><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/icon-khai-truong.jpg" style="width: 80%; height: 80%;"></em>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<em>Văn phòng của chi nhánh Bến Cát là căn shophouse khang trang, thuộc khu đô thị Golden Center City nằm ngay mặt tiền quốc lộ 13</em>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Được thành lập vào năm 2008, trải qua 10 năm hình thành và phát triển, Kim Oanh Real đã không ngừng lớn mạnh, khẳng định được vị thế, uy tín và thương hiệu trên thị trường bất động sản. Với triết lý kinh doanh &ldquo;Sản phẩm thật &ndash; Giá trị thật&rdquo;, cung cấp cho khách hàng những dự án có vị trí tốt, giàu tiềm năng, pháp lý đầy đủ với giá bán hợp lý nên các dự án của&nbsp;<strong>Kim Oanh Real</strong>&nbsp;khi tung ra thị trường luôn được đông đảo khách hàng đón nhận tích cực.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong.jpg" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Ban lãnh đạo Kim Oanh Real chụp hình lưu niệm cùng với cán bộ nhân viên chi nhánh Bến Cát.\r\n</p>\r\n\r\n<p>\r\n	Trung bình mỗi năm,&nbsp;<strong>Kim Oanh Real&nbsp;</strong>phân phối thành công khoảng trên 3.000 sản phẩm đất nền, nhà xây sẵn. Chỉ tính riêng 6 tháng đầu năm 2018, Kim Oanh Real đã phân phối thành công hơn 6.000 sản phẩm. Trong đó, nổi bật nhất là dự án&nbsp;<strong>khu đô thị Mega City 2</strong>, quy mô 84 ha (Nhơn Trạch, Đồng Nai) do Kim Oanh Group làm chủ đầu tư với&nbsp; toàn bộ 3.100 sản phẩm được tiêu thụ thành công chỉ trong một ngày.&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&ldquo;Với số lượng dự án phân phối ngày càng nhiều, đặc biệt là các dự án do Kim Oanh Group đầu tư và phát triển, Kim Oanh Real sẽ tiếp tục mở rộng hoạt động kinh doanh sang một số thị trường trọng điểm. Theo đó, bên cạnh các chi nhánh đang hoạt động tại TPHCM, Bình Dương, Đồng Nai, từ nay đến cuối năm, công ty sẽ mở thêm một chi nhánh mới tại tỉnh Thừa Thiên &ndash; Huế, nâng hệ thống phân phối của Kim Oanh Real lên thành 8 chi nhánh với tổng cộng hơn 1.000 nhân viên. Đây sẽ là nền tảng vững chắc cho những bước tiến mới của Kim Oanh Real nói riêng, Kim Oanh Group nói chung trong thời gian tới&rdquo;, bà Oanh cho biết.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				Bên cạnh chương tri ân &ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo; với tổng giá trị lên đến hơn 35 tỉ đồng sẽ được tổ chức vào cuối năm 2018, nhân dịp khai trương chi nhánh Bến Cát, khách hàng giao dịch thành công các sản phẩm do Kim Oanh Real phân phối từ ngày 24/9 đến hết ngày 31/10/2018 sẽ được tặng ngay thẻ cào từ 3 &ndash; 5 chỉ vàng.<br>\r\n				<br>\r\n				Mọi thông tin chi tiết vui lòng liên hệ&nbsp;<strong>hotline: 0988 12 12 12</strong>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align: center;">\r\n	<strong>Một số hình ảnh khác</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong-vp.jpg" style="width: 80%; height: 80%;"></strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong-vn.jpg" style="width: 80%; height: 80%;"></strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong-1.jpg" style="width: 80%; height: 80%;"></strong>\r\n</p>', 'images/uploads/images/tintuc/khaitruong/icon-khai-truong.jpg', NULL, 1, 1, NULL, 1, '2018-09-27 04:09:45', '2018-09-27 04:09:45', 41);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_image` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `area` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `direction_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  KEY `products_seo_id_foreign` (`seo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `path`, `is_active`, `image`, `sub_image`, `description`, `content`, `area`, `price`, `order`, `is_hot`, `location_id`, `direction_id`, `unit_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Paradise Riverside', 'paradise-riverside', 1, 'images/uploads/images/datnen/paradiseriverside/du-an-phuoc-tan.jpg', 'images/uploads/images/datnen/paradiseriverside/do-thi-moi.jpg;images/uploads/images/datnen/paradiseriverside/do-thi.jpg;images/uploads/images/datnen/paradiseriverside/du-an-phuoc-tan.jpg;images/uploads/images/datnen/paradiseriverside/khong-gian.jpg', '<p>\r\n	Nép mình bên dòng sông Buông thơ mộng cùng với lối thiết kế độc đáo, kết hợp hài hòa với thiên nhiên, Paradise Riverside hứa hẹn sẽ mang đến cho các chủ sở hữu những giá trị khác biệt của một bất động sản thương mại kết hợp sinh thái.\r\n</p>', '<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><strong><span style="color:#f58220;">MUA ĐẤT VÀNG TRÚNG NGÀN QUÀ TẶNG</span></strong></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><strong><span style="color:#f58220;"><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/img8.jpg" style="width: 80%; height: 80%;"></span></strong></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Khi giao dịch thành công sản phẩm Paradise Riverside ngay trong ngày giới thiệu dự án, khách hàng sẽ được tặng ngay <strong><span style="color:#e74c3c;"><span style="font-size:18px;">1 &ndash; 2 lượng vàng</span></span></strong>, bốc thăm trúng nhiều giải thưởng giá trị cao và tham gia chương trình tri ân <strong><span style="color:#e74c3c;">&ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo;</span></strong> được tổ chức vào cuối năm 2018. Tổng giá trị giải thưởng cho chương trình này lên đến <span style="font-size:18px;"><span style="color:#e74c3c;"><strong>35 tỉ đồng</strong></span></span> với nhiều giải thưởng hấp dẫn gồm :\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Mercedes Benz GLC 300</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>&nbsp;1 xe Honda CR-V</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>&nbsp;1 xe Honda City</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>&nbsp;20 xe gắn máy Honda SH</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>&nbsp;20 xe gắn máy Honda Airblade</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>&nbsp;25 điện thoại IPhone X và hàng trăm quà tặng giá trị khác.</strong>\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><strong><span style="color:#f58220;">TỔNG QUAN</span></strong></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/tong-quan.jpg" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Nằm ngay khu vực phát triển năng động của thành phố Biên Hòa, cách quận 9 (TPHCM) chỉ một con sông và được ôm trọn bởi dòng sông Buông, Paradise Riverside được kiến tạo dựa trên ý tưởng một thành phố thu nhỏ, đầy đủ tất cả dịch vụ, tiện ích đáp ứng mọi nhu cầu của cuộc sống và tương lai sẽ trở thành trung tâm mới về thương mại, dịch vụ, du lịch sinh thái hàng đầu của khu vực cửa ngõ phía Đông TPHCM. Tại Paradise Riverside, các cư dân không chỉ được thụ hưởng một môi trường sống sinh thái tiện nghi, đẳng cấp mà còn có cơ hội sở hữu một bất động sản giàu tiềm năng gia tăng giá trị nhờ lợi thế &ldquo;cận thị, cận giang, cận lộ&rdquo; và sự phát triển mạnh mẽ của khu vực dự án tọa lạc.\r\n</p>\r\n\r\n<p>\r\n	<strong>Vị trí:&nbsp;</strong>Đường Phước Tân &ndash; Long Hưng, thành phố Biên Hòa, tỉnh Đồng Nai<br>\r\n	<strong>Quy mô:&nbsp;</strong>156 ha<br>\r\n	<strong>Chủ đầu tư:</strong>&nbsp;Công ty cổ phần Thương mại &amp; Xây dựng Phước Tân<br>\r\n	<strong>Hợp tác đầu tư &amp; phân phối độc quyền:&nbsp;</strong>Kim Oanh Real<br>\r\n	<strong>Hạ tầng:&nbsp;</strong>Đường nhựa rộng từ 14 &ndash; 67m, hệ thống điện âm, nước thủy cục, hệ thống viễn thông đầy đủ, hệ thống nước thải và nước mưa riêng biệt, vỉa hè rộng thoáng nhiều cây xanh&hellip;<br>\r\n	<strong>Tiện ích nội khu:</strong>&nbsp;32,6 ha cây xanh mặt nước; 5,06ha đất thương mại dịch vụ; 5,77 ha đất trường học; bến du thuyền, công viên ven sông, trung tâm chăm sóc sức khỏe, khu vui chơi trẻ em,&hellip;<br>\r\n	<strong>Tiện ích liên kết:</strong>&nbsp;Sân golf Long Thành, chợ Tân Mai 2; khu du lịch sinh thái Suối Tiên, Sơn Tiên; bệnh viện quốc tế Shink Mark, bệnh viện Ung Bướu 2; bến xe miền Đông mới; Làng đại học TPHCM, đại học Fulbright; khu công nghệ cao quận 9; khu đô thị Vincity, sân bay quốc tế Long Thành, khu đô thị dịch vụ ven sông và công nghệ cao AMATA&hellip;<br>\r\n	<strong>Pháp lý:&nbsp;</strong>Minh bạch, đầy đủ\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><strong><span style="color:#f58220;">VỊ TRÍ</span></strong></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<strong><span style="color:#f58220;"><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/vi-tri.jpg" style="width: 80%; height: 80%;"></span></strong>\r\n</p>\r\n\r\n<p>\r\n	Paradise Riverside sở hữu vị trí đắc địa khi nằm trải dài theo mặt tiền Phước Tân &ndash; Long Hưng của thành phố Biên Hòa, ba mặt còn lại được sông Buông bao quanh. Từ Paradise Riverside dễ dàng kết nối nhanh chóng với các khu vực năng động của TPHCM, Đồng Nai, Bình Dương, Bà Rịa Vũng Tàu và các đô thị, cảng biển quốc tế. Bởi bao quanh dự án là hệ thống giao thông liên vùng thông suốt từ đường bộ, đường sắt, đường thủy đến đường hàng không gồm Hương lộ 2, quốc lộ 51, xa lộ Hà Nội, đường vành đai 3, cao tốc TPHCM &ndash; Long Thành &ndash; Dầu Giây, đường Võ Nguyên Giáp metro Bến Thành &ndash; Suối Tiên kéo dài đến thành phố Biên Hòa, cao tốc Biên Hòa &ndash; Vũng Tàu, tuyến đường sắt Biên Hòa &ndash; Vũng Tàu,&hellip;Đặc biệt, nếu việc xây dựng cầu bắc qua sông Đồng Nai để kết nối đường Vành đai 3 (đoạn 1 B, quận 9, TPHCM) vào quốc lộ 51 thành hiện thực sẽ là động lực to lớn giúp khu vực dự án tọa lạc bứt phá mạnh mẽ, thậm chí có thể sẽ phát triển giống như khu đô thị mới Thủ Thiêm hiện nay. Khi đó, giá bất động sản tại Paradise Riverside sẽ không ngừng tăng lên.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>ĐÔ THỊ MỚI ĐANG HÌNH THÀNH</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/do-thi-moi.jpg" style="width: 80%; height: 80%;"></strong></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Theo quy hoạch tổng thể phát triển kinh tế &ndash; xã hội của tỉnh Đồng Nai đến năm 2020, Paradise Riverside nằm trên trục hành lang phát triển kinh tế Biên Hòa &ndash; sân bay quốc tế Long Thành, và nằm trong khu vực tập trung phát triển các khu đô thị quy mô lớn, có nhiều tiện ích nhằm phục vụ cho chiến lược giãn dân của TPHCM. Nhiều dự án quy mô lên đến hàng trăm héc ta như AquaCity (308ha), khu đô thị Long Hưng (227ha), Đồng Nai WaterPoint (366ha), khu du lịch Sơn Tiên (374ha)&hellip; Và sự xuất hiện của Paradise Riverside với nhiều ưu điểm nổi bật sẽ góp phần biến nơi đây sớm trở thành một khu đô thị lớn phát triển cực kỳ sôi động bên cạnh quận 9 (TPHCM), đồng thời cung cấp một không gian sống đẳng cấp và đáp ứng mọi nhu cầu kết nối giao thương cho người dân địa phương cũng như các chuyên gia, doanh nhân, lực lượng lao động trình độ cao làm việc trong các khu công nghiệp, khu công nghệ cao tại TPHCM, Biên Hòa, Long Thành, Nhơn Trạch, sân bay quốc tế Long Thành.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>TRUNG TÂM TIỆN ÍCH</strong></span></span>\r\n</h2>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/tat-ca.png" style="width: 80%; height: 80%;"></strong></span></span>\r\n</h2>\r\n\r\n<h2 style="text-align: center;">\r\n	&nbsp;\r\n</h2>\r\n\r\n<p>\r\n	Với tiêu chí &ldquo;tất cả trong một&rdquo;, Paradise Riverside tích hợp nhiều tiện ích đẳng cấp đáp ứng trọn vẹn mọi nhu cầu cuộc sống của cư dân. Ngay trung tâm dự án là 6 khu phức hợp thương mại với đầy đủ các dịch vụ như vui chơi giải trí, thể dục thể thao, thời trang, ẩm thực,&hellip;Bên cạnh đó là hệ thống trường mầm non, trường tiểu học, khu chăm sóc sức khỏe, khu vui chơi trẻ em, bến du thuyền&hellip; cũng được đầu tư rất chuẩn mực.\r\n</p>\r\n\r\n<p>\r\n	Di chuyển ra bên ngoài dự án, cư dân còn được thụ hưởng hàng loạt tiện ích hiện đại của khu vực. Ngoài sân golf Long Thành và khu du lịch sinh thái Sơn Tiên kề bên, từ Paradise Riverside chỉ mất khoảng 2-10 phút là đến chợ Tân Mai 2, trường Tiểu học Tân Mai, bệnh viện quốc tế Shink Mark, sân bay quốc tế Long Thành,&hellip;Hơn nữa, nhờ hệ thống giao thông kết nối thông suốt, cư dân Paradise Riverside còn dễ dàng tiếp cận Depot metro, làng đại học Quốc gia TPHCM, đại học Fulbright, khu du lịch Suối Tiên, Bệnh viện Ung Bướu 2, bến xe Miền Đông mới, khu công nghệ cao quận 9, hệ thống tiện ích đẳng cấp của khu đô thị Vincity&hellip;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<strong><span style="font-size:22px;"><span style="color:#f58220;">KHÔNG GIAN SỐNG TUYỆT VỜI</span></span></strong>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/khong-gian.jpg" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Với quy mô lên đến hơn 156 ha nhưng phần lớn diện tích của Paradise Riverside chủ yếu dành cho công trình mảng xanh, mặt nước nhằm mang đến cho các cư dân một không gian sống hiện đại nhưng vẫn gần gũi với thiên nhiên, sông nước. Bên cạnh các công viên ven sông, Paradise Riverside còn được bố trí 17 công viên lớn nhỏ đan xen với các dãy nhà tạo nên sự thoáng đãng cho toàn bộ khu vực của dự án.\r\n</p>\r\n\r\n<p>\r\n	Sau những giờ làm việc căng thẳng hay vào bất cứ thời điểm nào trong ngày, mọi thành viên trong gia đình đều có thể dạo bước trên những con đường xanh mát để tận hưởng bầu không khí trong lành, mát mẻ. Hay chỉ đơn thuần là cùng con trẻ thoả thích vui đùa, cùng những người thân yêu tận hưởng những giai điệu du dương trên du thuyền đẳng cấp.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<strong><span style="color:#f58220;"><span style="font-size:22px;">HẠ TẦNG CHẤT LƯỢNG</span></span></strong>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<strong><span style="color:#f58220;"><span style="font-size:22px;"><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/ha-tang.jpg" style="width: 80%; height: 80%;"></span></span></strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Hạ tầng của Paradise Riverside được đầu tư theo tiêu chuẩn cao cấp nhất và thiết kế hài hòa với quy hoạch phát triển chung của thành phố Biên Hòa. Theo đó, các tuyến đường nội bộ của dự án rộng từ 14 &ndash; 67 m2, kết nối thông suốt với các tuyến đường huyết mạch xung quanh; vỉa hè rộng thoáng; hệ thống điện âm, nước thủy cục; hệ thống viễn thông đầy đủ; hệ thống nước thải và nước mưa riêng biệt&hellip;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><strong>GIÁ TRỊ GIA TĂNG BỀN VỮNG</strong></span>\r\n</h2>\r\n\r\n<h2 style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/don.jpg" style="width: 80%; height: 80%;">\r\n</h2>\r\n\r\n<p>\r\n	Một điểm cộng thêm cho Paradise Riverside là nằm gần nhiều khu công nghiệp quy mô lớn như Amata, Long Thành, Tam Phước, khu công nghệ cao quận 9,&hellip;với hàng chục ngàn chuyên gia, kỹ sư, người lao động sinh sống và làm việc. Hơn nữa, dự án còn nằm liền kề du lịch Sơn Tiên, tương lai sẽ thu hút một lượng lớn du khách nên tiềm năng khai thác kinh doanh thương mại rất lớn. Thêm vào đó là hiện nay, hệ thống hạ tầng của khu vực dự án tọa lạc ngày càng hoàn thiện cùng với việc xây dựng sân bay quốc tế Long Thành sẽ sớm biến nơi đây trở thành &ldquo;đô thị sân bay&rdquo; tầm cỡ khu vực. Chính những yếu tố này đảm bảo cho giá trị bất động sản của Paradise Riverside gia tăng bền vững.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>ĐÓN ĐẦU VÙNG ĐÔ THỊ TPHCM</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/do-thi.jpg" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Bên cạnh TPHCM, thành phố Biên Hòa đang trở thành cực tăng trưởng rất mạnh trong vùng kinh tế trọng điểm phía Nam. Trong khi đó quỹ đất của TPHCM ngày càng khan hiếm, buộc phải mở rộng không gian đô thị sang các vùng phụ cận theo đề án quy hoạch Vùng TPHCM. Điều này mở ra cơ hội lớn cho thị trường bất động sản mà Paradise Riverside là dự án được hưởng lợi trực tiếp do chỉ cách quận 9 (TPHCM) chỉ một con sông Đồng Nai.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>CƠ HỘI ĐẦU TƯ HẤP DẪN</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/sinh-loi.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Nằm cách TPHCM chỉ bởi một con sông nhưng Paradise Riverside có giá bán chỉ từ 750 triệu đồng/nền, áp dụng lịch thanh toán linh hoạt. Mức giá này khá cạnh tranh so với mặt bằng giá đất khu vực và tiềm năng của dự án mang lại. Xét về sự phát triển của thị trường đất nền vùng ven TPHCM, nhiều ý kiến cho rằng Biên Hòa đang ở bước khởi đầu của giai đoạn tăng trưởng. Trong tương lai, giá bất động sản tại đây sẽ còn tiếp tục tăng mạnh vì hạ tầng đang ngày càng kết nối tốt hơn. Do đó, đầu tư hay an cư tại Paradise Riverside ngay thời điểm này là cơ hội tốt nhất với mức đầu tư hợp lý nhất để tối đa hóa lợi nhuận.\r\n</p>', NULL, NULL, 1, 0, 30, 1, NULL, 1, '2018-09-27 02:30:40', '2018-09-27 02:55:30', 35),
(2, 'Khu Đô Thị Mega City 2', 'khu-do-thi-mega-city-2', 1, 'images/uploads/images/datnen/megacity2/cm1-1.jpg', '', '<p>\r\n	Với định hướng trở thành &ldquo;đô thị hạt nhân&rdquo; của thành phố Nhơn Trạch, Mega City 2 hứa hẹn sẽ là nơi mang lại cuộc sống thịnh vượng và cơ hội đầu tư hấp dẫn nhất cho khách hàng.\r\n</p>', '<h2 style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/img8.jpg" style="width: 80%; height: 80%;">\r\n</h2>\r\n\r\n<p>\r\n	Khách hàng mua Mega City 2 sẽ được hưởng nhiều chương trình khuyến mãi hấp dẫn. Cụ thể, bên cạnh chương trình <span style="font-size:18px;"><strong>tặng thẻ cào 5 &ndash; 10 chỉ vàng và rút thăm trúng thưởng giá trị cao</strong></span> trong ngày mở bán, khách hàng giao dịch thành công còn được tham gia chương trình rút thăm may mắn &ldquo;<span style="color:#e74c3c;"><strong><span style="font-size:18px;">Mua đất vàng &ndash; Trúng xe sang</span></strong></span>&rdquo; được tổ chức vào cuối năm 2018. Đây là chương trình khuyến mãi lớn nhất của Kim Oanh Group từ trước đến nay với tổng giá trị lên đến<span style="font-size:18px;"><strong><span style="color:#e74c3c;"> 35,5 tỉ đồng</span></strong></span> nhân dịp kỉ niệm 10 năm thành lập Công ty cổ phần Địa ốc Kim Oanh. Cơ cấu giải thưởng gồm:\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Mercedes- Benz GLC 300</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Honda CR-V</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Honda City</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>20 xe gắn máy Honda SH</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>20 xe Honda Air Blade&nbsp;</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>25 điện thoại iPhone X</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>30 laptop Macbook Air</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>35 smart tivi Sony 43 inch</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>&nbsp;40 quạt làm mát không khí Sunhouse Shd774</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>&nbsp;50 điện thoại Oppo A71 </strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>và hàng ngàn quà tặng giá trị khác.</strong>\r\n</p>\r\n\r\n<p>\r\n	Đây chính là <span style="font-size:18px;"><span style="color:#f1c40f;"><strong>cơ hội đầu tư vàng</strong></span></span> dành cho các nhà đầu tư bởi đất nền khu vực vệ tinh của TPHCM đang tăng giá từng ngày.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>TỔNG QUAN</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/1-min.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	&nbsp;\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		<strong>Vị trí:&nbsp;</strong>Tọa lạc giữa bốn tuyến đường: 25C, 319, Tôn Đức Thắng và Nguyễn Hữu Cảnh, trung tâm thành phố Nhơn Trạch, tỉnh Đồng Nai\r\n	</li>\r\n	<li>\r\n		<strong>Quy mô:&nbsp;</strong>84 ha, cung cấp hơn 3.100 sản phẩm\r\n	</li>\r\n	<li>\r\n		<strong>Đầu tư và phân phối:&nbsp;</strong>Kim Oanh Group\r\n	</li>\r\n	<li>\r\n		<strong>Hạ tầng:&nbsp;</strong>Đường nhựa rộng từ 13-100m, hệ thống điện âm, nước thủy cục, mạng lưới viễn thông, hệ thống nước thải và nước mưa riêng biệt&hellip;\r\n	</li>\r\n	<li>\r\n		<strong>Tiện ích nội khu:&nbsp;</strong>Trung tâm thương mại, công viên cảnh quan, khu phức hợp thể thao ngoài trời (hồ bơi, sân tennis, sân bóng rổ&hellip;), trung tâm y tế, khu vui chơi trẻ em, trường học,&hellip;\r\n	</li>\r\n	<li>\r\n		<strong>Tiện ích liên kết:&nbsp;</strong>Bệnh viện đa khoa Nhơn Trạch, sân bay quốc tế Long Thành, siêu thị VN Mart, trung tâm triển lãm &ndash; hội chợ quốc tế Nhơn Trạch 107 héc ta, trường Trung cấp Kỹ thuật Đồng Nai, trường THCS Nguyễn Bỉnh Khiêm, trường THCS Phú Hội, ngân hàng, khu du lịch sinh thái, cụm công nghiệp&hellip;\r\n	</li>\r\n	<li>\r\n		<strong>Pháp lý:&nbsp;</strong>Minh bạch, đầy đủ\r\n	</li>\r\n</ul>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>VỊ TRÍ</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/so-do-vi-tri-mega-city-2.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Mega City nằm giữa bốn tuyến đường chiến lược của thành phố Nhơn Trạch gồm đường Nguyễn Hữu Cảnh, Tôn Đức Thắng, 319 và 25C (rộng 100 mét). Bao quanh dự án là hàng loạt tuyến đường huyết mạch kết nối thông suốt với các khu vực trọng điểm của TPHCM, Đồng Nai, Bình Dương, Bà Rịa Vũng Tàu và các tỉnh miền Tây. Chẳng hạn như đường Hùng Vương, Lý Thái Tổ, cao tốc TPHCM &ndash; Long Thành &ndash; Dầu Giây, cao tốc Bến Lức &ndash; Long Thành, đường Mỹ Phước &ndash; Tân Vạn &ndash; Nhơn Trạch (Vành đai 3), cao tốc Biên Hòa &ndash; Vũng Tàu&hellip; Đặc biệt, khi các cây cầu nối Nhơn Trạch với quận 2, quận 9 và Cần Giờ được triển khai xây dựng kết hợp với hệ thống cảng quốc tế Cát Lái, Cái Mép &ndash; Thị Vải, sân bay quốc tế Long Thành&hellip;sẽ là &ldquo;đòn bẩy&rdquo; giúp Nhơn Trạch phát triển bùng nổ, mở toang cánh cửa giao thương và trở thành vùng đất vàng khai thác kinh doanh. Cùng với đó, giá trị bất động sản tại Mega City 2 sẽ không ngừng gia tăng.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>TIỆN ÍCH</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/tienich1.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Quy mô lên đến 84 ha nhưng phần lớn diện tích của Mega City 2 chủ yếu dành cho các công trình dịch vụ, tiện ích phục vụ nhu cầu cuộc sống hàng ngày của cư dân và khu vực lân cận. Nhiều tiện ích cao cấp có thể kể đến như hơn 2,6 ha đất thương mại &ndash; dịch vụ; 3,1 ha trường học; 2,5 ha công viên cây xanh; 5.320 m2 đất trung tâm y tế; 5.592 m2 đất bưu điện; 1.558 m2 trung tâm sinh hoạt cộng đồng; khu phức hợp thể thao ngoài trời, khu vui chơi cho trẻ em; đài phun nước; vườn ươm&hellip; đảm bảo cho cư dân cuộc sống tiện nghi nhất.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Bên cạnh hệ thống tiện ích nội khu, Mega City 2 còn được thụ hưởng mọi tiện ích sẵn có của thành phố Nhơn Trạch . Từ dự án chỉ mất vài phút là đến UBND huyện Nhơn Trạch, bệnh viện Đa khoa Nhơn Trạch, bưu điện Nhơn Trạch; trung tâm thể dục &ndash; thể thao huyện Nhơn Trạch, siêu thị VN Mart; trường Trung cấp Kỹ thuật Đồng Nai, trường THCS Nguyễn Bỉnh Khiêm, trường THCS Phú Hội; hệ thống ngân hàng Agribank, VietinBank; trung tâm triển lãm &ndash; hội chợ quốc tế Nhơn Trạch 107 héc ta, sân bay quốc tế Long Thành, khu du lịch sinh thái, sân golf&hellip; Đặc biệt, khi cầu nối quận 2, quận 9 với Nhơn Trạch hoàn thành, cư dân Mega City 2 còn dễ dàng tiếp cận hệ thống tiện ích và dịch vụ đẳng cấp của TPHCM.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<strong><span style="color:#f58220;"><span style="font-size:22px;">QUY HOẠCH CHUẨN MỰC</span></span></strong>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/img4.jpg" style="width: 80%; height: 80%;"></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Với mục tiêu trở thành &ldquo;đô thị hạt nhân&rdquo; của thành phố Nhơn Trạch, khu đô thị thương mại Mega City 2 được Kim Oanh Group quy hoạch và đầu tư hạ tầng theo chuẩn mực quốc tế với các tuyến đường nội bộ rộng từ 13 &ndash; 100 mét, vỉa hè phủ kín mảng xanh, hệ thống viễn thông, điện âm, nước thủy cục, hệ thống thoát nước mưa và nước thải riêng biệt&hellip; Hệ thống tiện ích và các dãy nhà phố của Mega City 2 cũng được bố trí hài hòa, hợp lý tạo ra một không gian sống sang trọng, đẳng cấp cho cư dân.\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<br>\r\n	Đặc biệt, Mega City 2 đã hoàn thiện pháp lý nên khách hàng hoàn toàn có thể yên tâm giao dịch.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>ĐA DẠNG TIỆN ÍCH</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/570.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Quy mô lên đến 84 ha nhưng phần lớn diện tích của Mega City 2 chủ yếu dành cho các công trình dịch vụ, tiện ích phục vụ nhu cầu cuộc sống hàng ngày của cư dân và khu vực lân cận. Nhiều tiện ích cao cấp có thể kể đến như hơn 2,6 ha đất thương mại &ndash; dịch vụ; 3,1 ha trường học; 2,5 ha công viên cây xanh; 5.320 m2 đất trung tâm y tế; 5.592 m2 đất bưu điện; 1.558 m2 trung tâm sinh hoạt cộng đồng; khu phức hợp thể thao ngoài trời, khu vui chơi cho trẻ em; đài phun nước; vườn ươm&hellip; đảm bảo cho cư dân cuộc sống tiện nghi nhất.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Bên cạnh hệ thống tiện ích nội khu, Mega City 2 còn được thụ hưởng mọi tiện ích sẵn có của thành phố Nhơn Trạch . Từ dự án chỉ mất vài phút là đến UBND huyện Nhơn Trạch, bệnh viện Đa khoa Nhơn Trạch, bưu điện Nhơn Trạch; trung tâm thể dục &ndash; thể thao huyện Nhơn Trạch, siêu thị VN Mart; trường Trung cấp Kỹ thuật Đồng Nai, trường THCS Nguyễn Bỉnh Khiêm, trường THCS Phú Hội; hệ thống ngân hàng Agribank, VietinBank; trung tâm triển lãm &ndash; hội chợ quốc tế Nhơn Trạch 107 héc ta, sân bay quốc tế Long Thành, khu du lịch sinh thái, sân golf&hellip; Đặc biệt, khi cầu nối quận 2, quận 9 với Nhơn Trạch hoàn thành, cư dân Mega City 2 còn dễ dàng tiếp cận hệ thống tiện ích và dịch vụ đẳng cấp của TPHCM.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>TIỀM NĂNG SINH LỜI ĐỘT PHÁ</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/img6.jpg" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Nằm ngay khu vực đang phát triển mạnh về hạ tầng giao thông, đồng thời được bao quanh bởi hàng loạt công trình trọng điểm như sân bay quốc tế Long Thành, cảng quốc tế Cát Lái, cụm cảng Cái Mép &ndash; Thị Vải, Trung tâm triển lãm &ndash; hội chợ quốc tế Nhơn Trạch, cụm công nghiệp Nhơn Trạch,&hellip;nên tại Mega City 2 rất thuận lợi khai thác kinh doanh thương mại.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Hơn nữa, theo quy hoạch phát triển vùng kinh tế trọng điểm phía Nam, trong tương lai thành phố Nhơn Trạch không chỉ là đô thị vệ tinh của TPHCM mà còn trở thành trung tâm giao thương quốc tế với những lợi thế lớn về hệ thống giao thông và vận chuyển hàng hóa, dịch vụ hoàn chỉnh từ đường bộ, đường sắt, đường thủy cho đến đường hàng không. Điều này sẽ đảm bảo cho giá trị bất động sản tại Mega City 2 không ngừng gia tăng cho các chủ nhân.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>ĐẦU TƯ AN TOÀN, HIỆU QUẢ</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/img7.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Là dự án giàu tiềm năng bậc nhất tại Nhơn Trạch nhưng Mega City 2 có giá bán chỉ từ 650 triệu đồng/nền, thanh toán linh hoạt trong nhiều đợt. Theo dự báo của các chuyên gia lẫn các công ty nghiên cứu thị trường, phân khúc đất nền vùng ven vẫn còn rất nhiều tiềm năng khi hệ thống hạ tầng và giao thông đang ngày càng phát triển mạnh mẽ, giúp kết nối thuận tiện giữa các khu vực. Chính vì vậy, Mega City 2 sẽ là sản phẩm đầu tư cực kỳ hấp dẫn nhờ vị trí đặc biệt chiến lược của mình.\r\n</p>', NULL, NULL, 1, 0, 24, 1, NULL, 1, '2018-09-27 03:04:31', '2018-09-28 02:47:28', 36),
(3, 'Bến Cát Center City 2', 'ben-cat-center-city-2', 1, 'images/uploads/images/datnen/bencancity2/cm2.jpg', NULL, '<p>\r\n	Bến Cát Center City 2\r\n</p>', '<h2 style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/khuyen-mai-lon.jpg" style="width: 80%; height: 80%;">\r\n</h2>\r\n\r\n<p>\r\n	Bến Cát Center City 2 là một dự án giàu tiềm năng, đáp ứng tốt nhu cầu đầu tư lẫn an cư đang tăng mạnh tại thị xã Bến Cát nhưng giá bán chỉ từ <span style="color:#e74c3c;"><strong><span style="font-size:18px;">480 triệu đồng/nền</span></strong></span>, hứa hẹn mang lại tỷ suất lợi nhuận rất cao cho các chủ nhân khi Bến Cát lên đô thị loại 3.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Đặc biệt, khách hàng mua Bến Cát Center City 2 sẽ được tham gia chương trình khuyến mãi lớn nhất từ trước đến nay của Công ty cổ phần Địa ốc Kim Oanh với <span style="color:#e74c3c;"><span style="font-size:18px;"><strong>tổng giá trị lên đến 35 tỉ đồng</strong></span></span> nhân kỷ niệm 10 năm thành lập công ty. Theo đó, bên cạnh thẻ cào trị giá<strong> <span style="color:#e74c3c;"><span style="font-size:18px;">3 &ndash; 6 chỉ vàng và rút thăm trúng nhiều giải thưởng giá trị</span></span> cao</strong> trong ngày mở bán, khách hàng còn được tham dự chương trình rút thăm may mắn vào cuối năm 2018 với cơ cấu giải thưởng gồm:\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Mercedes-Benz GLC 300</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Honda CR-V</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Honda City</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>20 xe gắn máy Honda SH</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>20 xe gắn máy Honda Airblade</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>25 điện thoại iPhone X</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>30 Laptop Apple Macbook Air</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>35 Smart Tivi Sony 43 Inch</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>40 Quạt làm mát không khí Sunhouse Shd774</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>50 Điện thoại Oppo A71 </strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>và hàng ngàn quà tặng giá trị khác</strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><strong><span style="font-size:22px;">TỔNG QUAN</span></strong></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><strong><span style="font-size:22px;"><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/tong-quan-an-dien.jpg" style="width: 80%; height: 80%;"></span></strong></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Vị trí:&nbsp;</strong>Ngã 4 đường Hùng Vương và đường Mỹ Phước &ndash; An Điền &ndash; An Tây, thị xã Bến Cát, tỉnh Bình Dương\r\n</p>\r\n\r\n<p>\r\n	<strong>Quy mô:&nbsp;</strong>8,6 héc ta\r\n</p>\r\n\r\n<p>\r\n	<strong>Chủ đầu tư:&nbsp;</strong>Công ty cổ phần Đầu tư Phát triển Thuận Lợi (thành viên Kim Oanh Group)\r\n</p>\r\n\r\n<p>\r\n	<strong>Xây dựng hạ tầng:&nbsp;</strong>Công ty cổ phần Xây dựng An Phước Bình Dương (thành viên Kim Oanh Group)\r\n</p>\r\n\r\n<p>\r\n	<strong>Phát triển và phân phối:&nbsp;</strong>Công ty cổ phần Địa ốc Kim Oanh\r\n</p>\r\n\r\n<p>\r\n	<strong>Sản phẩm:&nbsp;</strong>Đất nền diện tích từ 100 &ndash; 200m2\r\n</p>\r\n\r\n<p>\r\n	<strong>Hạ tầng:</strong>&nbsp;đường nội bộ trải nhựa 10 &ndash; 42m, hệ thống điện âm, hệ thống cấp &ndash; thoát nước, viễn thông&hellip;\r\n</p>\r\n\r\n<p>\r\n	<strong>Hệ thống tiện ích:</strong>&nbsp;Phố thương mại, công viên, trường mầm non, trường Tiểu học An Điền, trường Tiểu học Trần Quốc Tuấn, trường quốc tế Phù Đổng, trrường Đại học Quốc tế Việt Đức, chợ An Điền, chợ Bến Cát, TTHC thị xã Bến Cát, trung tâm điện máy Thiên Hòa, trung tâm triển lãm Bến Cát, bệnh viện đa khoa Mỹ Phước, khu đô thị &ndash; công nghiệp Mỹ Phước, KCN Rạch Bắp, KCN Protrade Singapore&hellip;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>VỊ TRÍ</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/21vi-tri.png" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Với quy mô 8,6ha, khu đô thị Bến Cát Center City 2 tọa lạc ngay trung tâm thị xã Bến Cát và được bao quanh bởi khu dân cư hiện hữu sầm uất. Đây là khu vực đang phát triển rất mạnh của thị xã Bến Cát cũng như tỉnh Bình Dương với hệ thống giao thông kết nối thông suốt và được đầu tư ngày càng hoàn chỉnh gồm đại lộ Hùng Vương, đường Mỹ Phước &ndash; An Điền &ndash; An Tây, đường ĐT 748, ĐT 744, ĐT 749, đường 30-4, quốc lộ 13, Ngô Quyền, An Điền &ndash; Bến Tranh&hellip;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Nhờ đó, từ Bến Cát Center City 2 dễ dàng kết nối đến Tây Ninh, Bình Phước, TPHCM, thành phố Thủ Dầu Một và thành phố mới Bình Dương. Như vậy, Bến Cát Center City 2 giống như một trung tâm tập kết hàng hóa, dịch vụ trung chuyển đi các thị trường tiêu thụ của doanh nghiệp hoạt động trong các khu công nghiệp trên địa bàn thị xã Bến Cát.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>TIỆN NGHI TRONG TẦM TAY</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/so-do-tien-ich.png" style="width: 80%; height: 80%;">\r\n</p>\r\n\r\n<p>\r\n	Thị xã Bến Cát đang được đầu tư mạnh mẽ để trở thành đô thị loại 2 trước năm 2020. Chính vì vậy, lĩnh vực thương mại &ndash; dịch vụ tại đây cũng đang bùng nổ nhằm đáp ứng nhu cầu của người dân. Chỉ mất từ 2-7 phút, mọi nhu cầu của cư dân của Bến Cát Center City 2 sẽ được đáp ứng ngay với phố thương mại, công viên, trường mầm non, trường Tiểu học An Điền, trường Tiểu học Trần Quốc Tuấn, trường THCS &ndash; Mẫu giáo Phù Đổng, chợ An Điền, chợ Bến Cát, TTHC thị xã Bến Cát, trung tâm điện máy Thiên Hòa, trung tâm triển lãm Bến Cát, bệnh viện đa khoa Mỹ Phước&hellip;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Chỉ mất khoảng 15 phút, từ Bến Cát Center City 2 cư dân cũng sẽ tiếp cận trung tâm thành phố mới Bình Dương &ndash; nơi có thể trải nghiệm những dịch vụ cao cấp nhất nhà hàng, khu vui chơi giải trí, khách sạn 5 sao, trung tâm hội nghị, triển lãm, chợ đêm&hellip;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>ĐÔ THỊ THỊNH VƯỢNG</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/cm2.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Chính quyền thị xã Bến Cát đã xác định sẽ đẩy mạnh tái cơ cấu kinh tế, phát triển công nghiệp và thương mại &ndash; dịch vụ cũng như cơ sở hạ tầng để xây dựng một đô thị thịnh vượng, thu nhập và đời sống của người dân được nâng cao. Theo đó, hàng loạt cơ sở thương mại &ndash; dịch vụ lớn đã và đang chuẩn bị được đầu tư hứa hẹn đưa thị xã Bến Cát trở thành một trung tâm kinh doanh sôi động. Tất cả làm nền tảng cho một đô thị Bến Cát văn minh, thịnh vượng và thu hút các doanh nhân, chuyên gia đến làm ăn, sinh sống.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>HẠ TẦNG VÀ PHÁP LÝ HOÀN CHỈNH</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/view-truong-hoc.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Bến Cát Center City 2 được Kim Oanh Group chuẩn bị từ khá lâu và dành nhiều tâm huyết đầu tư hứa hẹn mang đến một sản phẩm chất lượng giải &ldquo;cơn khát&rdquo; đầu tư đất nền trong dịp cuối năm 2017. Khách hàng giao dịch Bến Cát Center City 2 hoàn toàn an tâm vì dự án đã có pháp lý hoàn chỉnh, quy hoạch và hạ tầng cũng được đầu tư rất bài bản. Đặc biệt, chủ đầu tư cam kết sẽ bàn giao nền đúng thời hạn hợp đồng cho khách hàng để có thể xây nhà ở ngay.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>CƠ HỘI ĐẦU TƯ MỚI</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/view-can-canh-khu-pho-1.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Tính đến giữa năm 2017, thị xã Bến Cát đang có khoảng 10 khu công nghiệp lớn như Mỹ Phước 1,2,3, Rạch Bắp, Singapore Ascendas &ndash; Protrade, Mapletree, Việt Hương 2&hellip; thu hút rất nhiều doanh nghiệp đến mở nhà máy và hàng chục ngàn lao động đổ về làm việc. Chỉ tính riêng doanh nghiệp nước ngoài đã có 461 dự án với tổng số vốn hơn 5,5 tỉ đô la Mỹ.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Cùng với đó, người lao động từ khắp nơi cũng sẽ đổ về đây làm việc kéo theo nhu cầu về nhà ở và sử dụng dịch vụ tăng cao. Điều này sẽ biến khu đô thị Bến Cát Center City 2 trở thành điểm đến an cư cũng như đầu tư gia tăng giá trị bất động sản cực kỳ hấp dẫn.\r\n</p>', NULL, NULL, 1, 0, 17, -1, NULL, 1, '2018-09-28 03:06:32', '2018-09-28 03:06:32', 42);
INSERT INTO `products` (`id`, `name`, `path`, `is_active`, `image`, `sub_image`, `description`, `content`, `area`, `price`, `order`, `is_hot`, `location_id`, `direction_id`, `unit_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(4, 'Golden Center City 3', 'golden-center-city-3', 1, 'images/uploads/images/datnen/goldencentercity3/cm3.jpg', NULL, '<p>\r\n	Golden Center City 3\r\n</p>', '<h2 style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/1110x950-khuyen-mai.png" style="width: 80%; height: 80%;">\r\n</h2>\r\n\r\n<p>\r\n	Tiềm năng lớn nhưng giá bán của Golden Center City 3 chỉ từ <span style="color:#e74c3c;"><span style="font-size:18px;"><strong>540 triệu đồng/nền</strong></span></span>. Đây là mức giá rất cạnh tranh dành cho những khách hàng đang muốn tạo lập chốn an cư hoặc đầu tư sinh lời trong bối cảnh mặt bằng giá phân khúc đất nền đang ngày càng tăng và khan hiếm.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Đặc biệt, khách hàng mua Golden Center City 3 sẽ được tham gia chương trình khuyến mãi lớn nhất từ trước đến nay của Công ty cổ phần Địa ốc Kim Oanh với tổng giá trị lên đến 35 tỉ đồng nhân kỷ niệm 10 năm thành lập công ty. Theo đó, bên cạnh thẻ cào trị giá<span style="color:#e74c3c;"><span style="font-size:18px;"> 5 &ndash; 10 chỉ vàng và rút thăm trúng nhiều giải thưởng giá trị cao</span></span> trong ngày mở bán, khách hàng còn được tham dự chương trình rút thăm may mắn <span style="color:#e74c3c;"><span style="font-size:22px;">&ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo;</span></span> vào cuối năm 2018 với cơ cấu giải thưởng gồm:\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Mercedes Benz GLC 300, </strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Honda CR-V, </strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Honda City, </strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>20 xe gắn máy Honda SH, </strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>20 xe gắn máy Honda Airblade, </strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>25 điện thoại IPhone X và hàng ngàn quà tặng giá trị khác.</strong>\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>TỔNG QUAN</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/tong-quan.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Vị trí:</strong>&nbsp;Mặt tiền đại lộ Bắc Sơn Long Thành, Tp. Biên Hòa, Đồng Nai\r\n</p>\r\n\r\n<p>\r\n	<strong>Chủ đầu tư:</strong>&nbsp;Công ty cổ phần Địa ốc Phú Thuận Lợi (thành viên Kim Oanh Group)\r\n</p>\r\n\r\n<p>\r\n	<strong>Xây dựng hạ tầng:</strong>&nbsp;Công ty cổ phần Xây dựng An Phước Bình Dương (thành viên Kim Oanh Group)\r\n</p>\r\n\r\n<p>\r\n	<strong>Phát triển và phân phối:&nbsp;</strong>Công ty cổ phần Địa ốc Kim Oanh\r\n</p>\r\n\r\n<p>\r\n	<strong>Hạ tầng:&nbsp;</strong>Đường nhựa rộng 12 &ndash; 60m; hệ thống điện âm, nước thủy cục, viễn thông&hellip;\r\n</p>\r\n\r\n<p>\r\n	<strong>Quy mô:&nbsp;</strong>hơn 19 ha\r\n</p>\r\n\r\n<p>\r\n	<strong>Sản phẩm: 815 nền đất diện tích 72 &ndash; 171m2</strong>\r\n</p>\r\n\r\n<p>\r\n	<strong>Pháp lý:&nbsp;</strong>Minh bạch, đầy đủ\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>VỊ TRÍ</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/sdvt-tam-phuoc-fa-moi.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Tọa lạc ngay mặt tiền đường Bắc Sơn &ndash; Long Thành, cách sân bay quốc tế Long Thành chỉ 7 phút, cách trung tâm thành phố Biên Hòa khoảng 10 phút và di chuyển đến TPHCM cũng chỉ mất khoảng 25 phút, khu đô thị Golden Center City 3 có rất nhiều tiềm năng phát triển trong tương lai gần. Bên cạnh đường Bắc Sơn &ndash; Long Thành, bao quanh Golden Center City 3 còn có hệ thống giao thông kết nối thông suốt gồm đường Phùng Hưng, cao tốc TPHCM &ndash; Long Thành &ndash; Dầu Giây, đường Võ Nguyên Giáp, quốc lộ 51, đường An Viễn &ndash; Hưng Thịnh, quốc lộ 1&hellip; Trong tương lai sẽ có thêm các tuyến đường mới được xây dựng như cao tốc Biên Hòa &ndash; Vũng Tàu, Vành đai 4&hellip; Đây cũng là khu vực đang được đầu tư hệ thống hạ tầng hiện đại cùng các tiện ích cao cấp phục vụ cho sân bay quốc tế Long Thành và đáp ứng mục tiêu trở thành &ldquo;thành phố sân bay&rdquo; tầm cỡ châu Á.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>ĐA DẠNG TIỆN ÍCH</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/so-do-tien-ich-28-11.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Golden Center City 3 được quy hoạch hiện đại, đáp ứng tối đa nhu cầu an cư của cư dân với hệ thống tiện ích nội khu gồm khu thương mại &ndash; dịch vụ, trường học, công viên, khu thể dục thể thao&hellip; Bên cạnh đó, từ Golden Center City 3 còn dễ dàng tiếp cận các tiện ích liên kết đa dạng như UBND xã An Viễn; sân bay quốc tế Long Thành; các khu công nghiệp An Phước, Long Đức, Tam Phước, Giang Điền; chợ An Bình; các trường Đại học Tài nguyên Môi trường, Đại học Sỹ quan Lục quân 2, Đại học Tăng Thiết Giáp; trường mẫu giáo An Viễn; trường Tiểu học An Viễn; trường THCS Hòa Bình; khu du lịch sinh thái Thác Giang Điền, sân golf Long Thành&hellip; Tất cả đảm bảo cho cư dân một cuộc sống tiện nghi, thuận tiện trong sinh hoạt, công việc hàng ngày.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>PHÁT TRIỂN SÔI ĐỘNG</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/can-canh-chung-cu-tam-phuoc-(1).jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Theo quy hoạch phát triển của tỉnh Đồng Nai đến năm 2020, tầm nhìn đến 2030, Golden Center City 3 sẽ nằm ngay trung tâm khu vực phát triển trọng điểm và năng động bậc nhất, được chú trọng đầu tư về mọi mặt nhằm trở thành &ldquo;thành phố sân bay&rdquo; hiện đại bậc nhất khu vực châu Á.\r\n</p>\r\n\r\n<p>\r\n	Sở hữu hệ thống giao thông kết nối thông suốt và lợi thế nằm gần sân bay quốc tế Long Thành, đồng thời được bao quanh bởi nhiều khu công nghiệp quy mô lớn không chỉ biến Golden Center City 3 thành chốn an cư lý tưởng mà còn là một sản phẩm đầu tư cực kỳ tiềm năng. Bởi khi sân bay quốc tế Long Thành đi vào hoạt động sẽ kéo theo việc phát triển thương mại &ndash; dịch vụ và các tiện ích cao cấp. Khi đó, Golden Center City 3 sẽ trở thành mảnh &ldquo;đất vàng&rdquo; mang lại giá trị gia tăng rất lớn cũng như cơ hội kinh doanh hấp dẫn cho các chủ nhân.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>HẠ TẦNG HIỆN ĐẠI VÀ CAO CẤP</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/can-canh-truong-hoc.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Là dự án thuộc dòng sản phẩm &ldquo;Golden&rdquo; được Kim Oanh Group dành nhiều tậm huyết đầu tư, khu đô thị Golden Center City 3 được xây dựng hệ thống hạ tầng chất lượng với các tuyến đường rộng từ 12-60m với vỉa hè rộng thoáng và nhiều cây xanh, mang lại môi trường sống xanh mát, hiện đại cho cư dân. Các hệ thống điện, cấp &ndash; thoát nước và viễn thông của dự án cũng được đầu tư cao cấp, đáp ứng những tiêu chuẩn khắt khe nhất.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>CƠ HỘI GIAO THƯƠNG TỪ &quot; THÀNH PHỐ SÂN BAY&quot;</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/san-bay-long-thanh.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Trong quy hoạch định hướng phát triển, xã Tam Phước được tỉnh Đồng Nai xác định là địa bàn trọng điểm phát triển đô thị, cơ cấu kinh tế theo hướng công nghiệp, tiểu thủ công nghiệp và dịch vụ &ndash; thương mại, phát triển cơ sở hạ tầng. Trong tương lai, khu vực này sẽ là một &ldquo;thành phố sân bay&rdquo; hiện đại với đầy đủ các loại hình thương mại, dịch vụ thu hút doanh nghiệp, thương nhân đến làm ăn, sinh sống.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Bản thân Golden Center City 3 cũng được kết nối trực tiếp với một loạt dự án khu đô thị quy mô lớn, tích hợp nhiều tiện ích cao cấp mở ra một triển vọng về một đô thị sôi động, hiện đại bậc nhất.Như vậy, giá trị bất động sản của Golden Center City 3 sẽ không ngừng gia tăng theo chiều hướng phát triển thương mại &ndash; dịch vụ của khu vực.\r\n</p>', NULL, NULL, 1, 0, 30, -1, NULL, 1, '2018-09-28 03:20:44', '2018-09-28 03:20:44', 43),
(5, 'Biên Hòa New Town 2', 'bien-hoa-new-town-2', 1, 'images/uploads/images/datnen/bienhoanewtown2/bienhoa.jpg', NULL, '<p>\r\n	Biên Hòa New Town 2\r\n</p>', '<h2 style="text-align: center;">\r\n	<img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/khuyen-mai-lon.jpg" style="width: 80%; height: 80%;">\r\n</h2>\r\n\r\n<p>\r\n	Khách hàng giao dịch thành công tại Bien Hoa New Town 2 sẽ được tham gia chương trình tri ân <span style="color:#e74c3c;"><span style="font-size:18px;">&ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo;</span></span> với <span style="font-size:18px;"><span style="color:#e74c3c;">tổng giá trị lên đến 35 tỉ đồng</span></span>, được tổ chức vào cuối năm 2018. Đây là chương trình lớn nhất từ trước đến nay của Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real) nhân dịp kỉ niệm 10 năm thành lập công ty. Cơ cấu giải thưởng gồm:\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Mercedes- Benz GLC 300</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Honda CR-V</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>1 xe Honda City</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>20 xe gắn máy Honda SH</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>20 xe Honda Air Blade</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>25 điện thoại iPhone X</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>30 laptop Macbook Air</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>35 smart tivi Sony 43 inch</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>40 quạt làm mát không khí Sunhouse Shd774</strong>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	<strong>50 điện thoại Oppo A71 và hàng ngàn quà tặng giá trị khác.&nbsp;</strong>\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>TỔNG QUAN</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/tong-quan-bien-hoa-2.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Vị trí:&nbsp;</strong>Mặt tiền Nguyễn Thị Tồn, phường Bửu Hòa, thành phố Biên Hòa&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Quy mô:&nbsp;</strong>&nbsp;2,7 héc ta, gồm 164 sản phẩm&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Đầu tư và phân phối:&nbsp;</strong>Kim Oanh Group&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Hạ tầng:&nbsp;</strong>Đường nội bộ rộng 12-17,5 mét, hệ thống điện âm, nước thủy cục, hệ thống chiếu sáng, cây xanh,&hellip;&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Tiện ích liên kết:</strong>&nbsp;Chợ, trường học, trung tâm thương mại, khu du lịch, công viên, bệnh viện, sân golf, ga metro&hellip;&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Pháp lý:&nbsp;</strong>Minh bạch Thanh toán: Linh hoạt trong nhiều đợt\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>VỊ TRÍ</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/1so-do-vi-tri.png" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Tọa lạc ngay mặt tiền đường Nguyễn Thị Tồn, nơi giao thoa của tam giác kinh tế trọng điểm phía Nam gồm TPHCM, Đồng Nai và Bình Dương, Bien Hoa New Town 2 có vị trí thuận lợi kết nối với nhiều tuyến đường như Bùi Hữu Nghĩa, Quốc lộ 1K, Quốc lộ 1A, đường Vành đai 3, cầu An Hảo,&hellip; Đây là những tuyến đường huyết mạch giúp cho việc di chuyển của cư dân dễ dàng, nhanh chóng đến TPHCM và các tỉnh, thành lân cận như Bình Dương, Bà Rịa - Vũng Tàu,&hellip;&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Trong tương lai, xung quanh khu vực Bien Hoa New Town 2 còn có thêm các công trình như đường nối cầu Bửu Hòa với Quốc lộ 1K, đường trục trung tâm hành chính Biên Hòa, đường cao tốc TPHCM &ndash; Chơn Thành, tuyến Metro Bến Thành &ndash; Suối Tiên kéo dài đến thành phố Biên Hòa,...Tất cả sẽ tạo nên một mạng lưới giao thông thông thoáng, giúp rút ngắn thời gian từ Bien Hoa New Town 2 đến các tỉnh, thành vùng kinh tế trọng điểm phía Nam. Kết hợp với tuyến giao thông đường thủy của sông Đồng Nai, hệ thống này sẽ tạo nên&ldquo;cú hích&rdquo; cho thành phố Biên Hòa phát triển đột phá, đồng thời giúp cho giá trị bất động sản có vị trí chiến lược như Bien Hoa New Town 2 tăng lên nhanh chóng.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>VƯỢNG KHÍ HỘI TỤ</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/vuon-khi-hoi-tu.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Hội tụ đầy đủ các yếu tố &ldquo;tam tài&rdquo; cho một bất động sản hàng đầu là &ldquo;cận thị, cận giang, cận lộ&rdquo;, Bien Hoa New Town 2 không chỉ nằm liền kề các đô thị đang phát triển năng động như thành phố Biên Hòa, thị xã Dĩ An (Bình Dương), quận 9 và quận Thủ Đức (TPHCM), giao thông kết nối liên hoàn mà còn được hưởng môi trường sống yên bình do được bao quanh bởi sông Đồng Nai. Theo phong thủy, địa thế &ldquo;tam tài&rdquo; này hứa hẹn sẽ mang đến cuộc sống sung túc, thịnh vượng cho các chủ nhân.&nbsp;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>TIỆN ÍCH TRONG TẦM TAY</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/tien-tich-hoan.png" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Tại Bien Hoa New Town 2, mọi nhu cầu về giáo dục, y tế, vui chơi - giải trí của cư dân sẽ được đáp ứng nhanh chóng và hoàn hảo nhất. Cụ thể như chợ Bửu Hòa, bệnh viện Đa khoa Bửu Hòa, trường tiểu học Trần Văn Ơn, trường THCS Ngô Gia Tự, khu du lịch sinh thái Bửu Long, Bệnh viện Đa khoa Đồng Nai, công viên Nguyễn Văn Trị, trung tâm thương mại, trường mầm non, trung tâm hành chính tỉnh Đồng Nai,&hellip;Đó là chưa kể các tiện ích dịch vụ từ khu đô thị sinh thái ven sông Đồng Nai với quy mô 72 héc ta đang được tỉnh Đồng Nai quy hoạch phát triển.\r\n</p>\r\n\r\n<p>\r\n	Ngoài ra, từ Bien Hoa New Town 2 còn dễ dàng đến làng đại học Quốc gia TPHCM, bến xe Miền Đông mới, Bệnh viện Ung Bướu 2 hay đến các điểm du lịch nổi tiếng như khu du lịch Đền Hùng, khu du lịch Suối Tiên, sân golf Park,&hellip;phục vụ nhu cầu nghỉ ngơi, giải trí vào mỗi dịp cuối tuần. Khi tuyền metro Bến Thành - Suối Tiên đi vào hoạt động, chỉ trong vài phút cư dân Bien Hoa New Town 2 sẽ có mặt tại trung tâm sôi động của TPHCM để làm việc, vui chơi hay tham quan các lễ hội đặc sắc.\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>KHÔNG GIAN SỐNG TRỌN VẸN</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/khong-gian-song.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Một điểm cộng cho Bien Hoa New Town 2 là nằm gần sông Đồng Nai nên khí hậu trong lành, mát mẻ và có lợi cho sức khỏe. Còn gì tuyệt vời hơn, sau những giờ làm việc căng thẳng, bạn có thể tận hưởng những giây phút bình yên, thư thái cùng với những người thân yêu. Ở những thành phố đang phát triển nhanh như Biên Hòa, không gian xanh thuần khiết này còn quý giá hơn vàng.&nbsp;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>HẠ TẦNG HIỆN ĐẠI ĐỒNG BỘ</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/icon-ha-tang.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Bien Hoa New Town 2 được đầu tư hạ tầng đồng bộ và hiện đại với hệ thống điện âm, nước thủy cục, đường nội bộ rộng 12-17,5 mét, vỉa hè rộng thoáng với chất lượng tốt nhất. Mỗi căn nhà tại Bien Hoa New Town 2 không chỉ mang phong cách hiện đại mà còn được thiết kế với mặt tiền rộng thoáng, hài hòa giữa không gian sống và phần diện tích thương mại, giúp&nbsp; chủ nhân khai thác kinh doanh một cách thuận lợi nhất.&nbsp;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong>GIÁ TRỊ GIA TĂNG VƯỢT TRỘI</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="font-size:22px;"><span style="color:#f58220;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/icon-gia-tang.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Nằm trong khu vực phát triển năng động, bao quanh nhiều khu công nghiệp quy mô lớn như Pouchen, Tân Đông Hiệp B, Amata, khu công nghiệp Biên Hòa 2, Linh Trung, khu công nghệ cao quận 9,&hellip; Bien Hoa New Town 2&nbsp; được phát triển với mục tiêu trở thành nơi an cư hiện đại cho các chuyên gia, doanh nhân đến sinh sống, làm việc tại Biên Hòa. Đây cũng&nbsp; chính là yếu tố để Bien Hoa New Town 2 phát huy tiềm năng khai thác kinh doanh thương mại, cũng như giúp giá trị bất động sản không ngừng gia tăng theo thời gian.&nbsp;\r\n</p>\r\n\r\n<h2 style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong>ĐẦU TƯ HÔM NAY, LỢI NHUẬN NGÀY MAI</strong></span></span>\r\n</h2>\r\n\r\n<p style="text-align: center;">\r\n	<span style="color:#f58220;"><span style="font-size:22px;"><strong><img alt="" src="http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/dau-tu.jpg" style="width: 80%; height: 80%;"></strong></span></span>\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Hội tụ nhiều ưu thế vượt trội, nhưng giá bán của Bien Hoa New Town 2 chỉ từ 14 triệu đồng/m2, thấp hơn rất nhiều so với giá đất tại các khu vực liền kề thuộc Biên Hòa, quận 9, Thủ Đức (TPHCM) và được thanh toán linh hoạt trong nhiều đợt. Đây là cơ hội đầu tư cực kỳ hấp dẫn cho các nhà đầu tư cũng như những ai đang tìm kiếm một nơi an cư tiện nghi hiện đại gần gũi với thiên nhiên trong bối cảnh giá đất đang tăng lên từng ngày. Trong bối cảnh TPHCM đang phát triển mạnh về phía đông thì việc đầu tư váo Bien Hoa New Town 2 càng nhiều triển vọng mang đến lợi nhận đột phá trong thời gian ngắn.&nbsp;\r\n</p>', NULL, NULL, 1, 0, 30, -1, NULL, 1, '2018-09-28 03:51:41', '2018-09-28 03:51:41', 44);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2018-03-14 07:23:50', '2018-03-14 07:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE IF NOT EXISTS `seos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `seo_title`, `seo_description`, `seo_keywords`, `seo_image`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, '2018-09-21 13:46:04', '2018-09-21 13:46:04'),
(7, NULL, NULL, NULL, NULL, '2018-09-21 13:46:20', '2018-09-21 13:46:20'),
(8, NULL, NULL, NULL, NULL, '2018-09-21 13:46:32', '2018-09-21 13:46:32'),
(9, NULL, NULL, NULL, NULL, '2018-09-21 13:46:42', '2018-09-21 13:46:42'),
(10, NULL, NULL, NULL, NULL, '2018-09-21 13:47:18', '2018-09-21 13:47:18'),
(11, NULL, NULL, NULL, NULL, '2018-09-21 13:47:33', '2018-09-21 13:47:33'),
(12, NULL, NULL, NULL, NULL, '2018-09-21 13:47:59', '2018-09-21 13:47:59'),
(13, NULL, NULL, NULL, NULL, '2018-09-21 13:48:15', '2018-09-21 13:48:15'),
(14, NULL, NULL, NULL, NULL, '2018-09-21 13:48:30', '2018-09-21 13:48:30'),
(15, NULL, NULL, NULL, NULL, '2018-09-21 13:48:44', '2018-09-21 13:48:44'),
(16, NULL, NULL, NULL, NULL, '2018-09-21 13:48:59', '2018-09-21 13:48:59'),
(17, NULL, NULL, NULL, NULL, '2018-09-21 13:49:13', '2018-09-21 13:49:13'),
(18, NULL, NULL, NULL, NULL, '2018-09-21 13:49:31', '2018-09-21 13:49:31'),
(19, NULL, NULL, NULL, NULL, '2018-09-21 13:49:43', '2018-09-21 13:49:43'),
(20, NULL, NULL, NULL, NULL, '2018-09-21 13:50:15', '2018-09-21 13:50:15'),
(21, NULL, NULL, NULL, NULL, '2018-09-21 13:53:10', '2018-09-21 13:53:10'),
(22, NULL, NULL, NULL, NULL, '2018-09-21 13:53:27', '2018-09-21 13:53:27'),
(23, NULL, NULL, NULL, NULL, '2018-09-21 13:54:08', '2018-09-21 13:54:08'),
(24, NULL, NULL, NULL, NULL, '2018-09-21 13:54:24', '2018-09-21 13:54:24'),
(25, NULL, NULL, NULL, NULL, '2018-09-21 13:54:37', '2018-09-21 13:54:37'),
(26, NULL, NULL, NULL, NULL, '2018-09-21 13:55:02', '2018-09-21 13:55:02'),
(27, NULL, NULL, NULL, NULL, '2018-09-21 13:55:16', '2018-09-21 13:55:16'),
(28, NULL, NULL, NULL, NULL, '2018-09-21 13:55:53', '2018-09-21 13:55:53'),
(29, NULL, NULL, NULL, NULL, '2018-09-21 13:56:05', '2018-09-21 13:56:05'),
(30, NULL, NULL, NULL, NULL, '2018-09-21 13:56:21', '2018-09-21 13:56:21'),
(31, NULL, NULL, NULL, NULL, '2018-09-21 13:56:37', '2018-09-21 13:56:37'),
(32, 'Đất Nền Dự Án', 'Đất Nền Dự Án', 'Đất Nền Dự Án', NULL, '2018-09-22 15:19:52', '2018-09-22 16:00:44'),
(33, NULL, NULL, NULL, NULL, '2018-09-22 15:29:10', '2018-09-22 15:29:10'),
(34, NULL, NULL, NULL, NULL, '2018-09-27 01:34:17', '2018-09-27 01:34:17'),
(35, NULL, NULL, NULL, NULL, '2018-09-27 02:30:40', '2018-09-27 02:30:40'),
(36, NULL, NULL, NULL, NULL, '2018-09-27 03:04:30', '2018-09-27 03:04:30'),
(40, NULL, NULL, NULL, NULL, '2018-09-27 03:53:13', '2018-09-27 03:53:13'),
(41, NULL, NULL, NULL, NULL, '2018-09-27 04:09:45', '2018-09-27 04:09:45'),
(42, NULL, NULL, NULL, NULL, '2018-09-28 03:06:32', '2018-09-28 03:06:32'),
(43, NULL, NULL, NULL, NULL, '2018-09-28 03:20:44', '2018-09-28 03:20:44'),
(44, NULL, NULL, NULL, NULL, '2018-09-28 03:51:41', '2018-09-28 03:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'triệu/m2', NULL, NULL),
(2, 'triệu', NULL, NULL),
(3, 'tỷ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$mStg572JFNI89/0Cg7TOGOUkACFaBl/nsNeOvx8zglr1qyJPA0tj6', NULL, '2018-03-14 07:24:10', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_items`
--
ALTER TABLE `category_items`
  ADD CONSTRAINT `category_items_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
