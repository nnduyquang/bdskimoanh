-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2018 lúc 09:02 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bdskimoanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_items`
--

CREATE TABLE `category_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_items`
--

INSERT INTO `category_items` (`id`, `name`, `path`, `description`, `image`, `image_mobile`, `level`, `parent_id`, `type`, `order`, `is_active`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Đất Nền Dự Án', 'dat-nen-du-an', '<p>\r\n	Đất Nền Dự Án 1\r\n</p>', NULL, NULL, 0, NULL, 1, 1, 1, '2018-09-22 15:19:52', '2018-09-22 16:00:13', 32),
(2, 'Căn Hộ Dự Án', 'can-ho-du-an', '<p>\r\n	Căn Hộ Dự Án\r\n</p>', NULL, NULL, 0, NULL, 1, 1, 1, '2018-09-22 15:29:10', '2018-09-22 15:29:10', 33),
(3, 'Tin Tức', 'tin-tuc', NULL, NULL, NULL, 0, NULL, 0, 1, 1, '2018-09-27 01:34:17', '2018-09-27 01:34:17', 34);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_many`
--

CREATE TABLE `category_many` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_many`
--

INSERT INTO `category_many` (`category_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-09-27 02:30:40', '2018-09-27 02:30:40'),
(1, 2, '2018-09-27 03:04:31', '2018-09-27 03:04:31'),
(3, 1, '2018-09-27 03:53:13', '2018-09-27 03:53:13'),
(3, 2, '2018-09-27 04:09:45', '2018-09-27 04:09:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_permissions`
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
-- Cấu trúc bảng cho bảng `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'config-contact', '<p>\r\n	<strong><em><span style=\"background-color:#f1c40f;\">Hotline đặt hàng</span>:</em></strong><em>&nbsp;&nbsp;<strong>097.388.9336 - 0914.675.777</strong></em>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Hotline hỗ trợ tư vấn và phản hồi ý kiến</em></strong><em>:&nbsp;&nbsp;<strong>097.388.9336</strong></em>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Hân hạnh được phục vụ quý khách hàng.!</em></strong>\r\n</p>\r\n\r\n<p>\r\n	<strong><em>Thông tin liên hệ với chúng tôi:</em></strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<strong>CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ THÉP KHÁNH NAM</strong>\r\n</p>\r\n\r\n<p>\r\n	<strong>TRỤ SỞ CHÍNH:</strong>&nbsp;<em>201 Bình Thành, KP 4, P. Bình Hưng Hòa, Q. Bình Tân, thành phố Hồ Chí Minh</em>\r\n</p>\r\n\r\n<p>\r\n	<strong>Di động:</strong><em>&nbsp;097.388.9336 - 0914.675.777</em>\r\n</p>', 1, NULL, '2018-03-30 09:07:51'),
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
-- Cấu trúc bảng cho bảng `directions`
--

CREATE TABLE `directions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `directions`
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
-- Cấu trúc bảng cho bảng `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `level` tinyint(1) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `seo_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `locations`
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
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
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
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
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
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_image` longtext COLLATE utf8mb4_unicode_ci,
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `category_item_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `image`, `sub_image`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Bến xe Miền Đông mới (Tp.HCM) sẽ đi vào hoạt động đầu năm 2019', 'ben-xe-mien-dong-moi-tphcm-se-di-vao-hoat-dong-dau-nam-2019', '<p>\r\n	Theo Tổng Công ty Cơ khí giao thông vận tải Sài Gòn - chủ đầu tư dự án Bến xe miền Đông mới, hiện các đơn vị thi công đang đẩy nhanh tiến độ xây dựng bến xe Miền Đông mới để kịp tiến độ hoàn thành nhà ga giai đoạn 1 vào cuối tháng 12 và đưa vào khai thác từ quý I/2019.\r\n</p>', '<p>\r\n	Được khởi công xây dựng vào tháng 4/2017, Bến xe Miền Đông mới có diện tích hơn 16ha thuộc phường Bình Thắng, thị xã Dĩ An (Bình Dương) và phường Long Bình, Q.9, (Tp.HCM). Các đơn vị thi công đang khẩn trương xây dựng để kịp đưa vào sử dụng vào quý I/2019.\r\n</p>\r\n\r\n<p>\r\n	Cụ thể, giai đoạn 1 nhà ga bến xe Miền Đông mới được xây dựng với kết cấu gồm 2 tầng hầm và 4 tầng nổi. Công trình bến xe được thiết kế theo kiến trúc hiện đại, trở thành bến xe lớn nhất nước và là một trong những bến xe hiện đại của khu vực Đông Nam Á.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/tintuc/benxemiendong/ben-xe-icon.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em>Dự án bến xe miền Đông mới có tổng vốn đầu tư khoảng 4.000 tỷ đồng</em>\r\n</p>\r\n\r\n<p>\r\n	Theo quy hoạch Phát triển giao thông vận tải Tp.HCM đến năm 2020 tầm nhìn đến năm 2025, khu vực Bến xe miền Đông mới và ga Suối Tiên sẽ là đầu mối giao thông lớn của Tp.HCM với các tỉnh Đông Nam Bộ, miền Trung và miền Bắc. Các dự án này sẽ kết nối trực tiếp với hai nhà ga metro lớn để di chuyển vào khu vực trung tâm Tp.HCM.\r\n</p>\r\n\r\n<p>\r\n	Được biết, bến xe Miền Đông bao gồm bốn khu A, B, C, D; trong đó, khu A là đất bến bãi, công trình công cộng và phụ trợ, với công trình cao nhất có 26 tầng, diện tích 122.480m2 (chiếm 76,37%,); khu B là trạm xe buýt cao 2 tầng; khu C là kho trung chuyển và giao dịch hàng hóa cao 5 tầng và khu D là khu thương mại dịch vụ cao 15 tầng. Dự án có tổng vốn đầu tư khoảng 4.000 tỷ đồng.\r\n</p>', 'images/uploads/images/tintuc/benxemiendong/ben-xe-icon.jpg', NULL, 1, 1, NULL, 1, '2018-09-27 03:53:13', '2018-09-27 03:53:13', 40),
(2, 'Kim Oanh Real khai trương chi nhánh thứ 7 tại Bình Dương', 'kim-oanh-real-khai-truong-chi-nhanh-thu-7-tai-binh-duong', '<p>\r\n	Kim Oanh Real khai trương chi nhánh thứ 7 tại Bình Dương\r\n</p>', '<p>\r\n	Để phục vụ khách hàng tốt hơn cũng như tạo điều kiện thuận lợi để khách hàng dễ dàng tìm hiểu và tiếp cận các dự án của Kim Oanh Group đầu tư, phân phối, ngày 24-9-2018, Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real) đã tổ chức lễ khai trương và chính thức đưa vào hoạt động chi nhánh thứ 7 tại trung tâm thị xã Bến Cát, tỉnh Bình Dương.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/tintuc/khaitruong/khai-truong-ben-cat.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em>Nghi thức cắt băng khai trương chi nhánh Bến Cát</em>\r\n</p>\r\n\r\n<p>\r\n	Chi nhánh Bến Cát tọa lạc tại ô số 12-13, lô B, ngay góc đường D1 và quốc lộ 13, thuộc khuôn viên&nbsp;<strong>khu đô thị Golden Center City</strong>&nbsp;của Kim Oanh Group làm chủ đầu tư. Với tổng diện tích sàn khoảng 260 m2, chi nhánh Bến Cát được thiết kế sang trọng, trang bị cơ sở vật chất hiện đại và quy tụ hơn 100 nhân viên năng động, nhiệt huyết, giàu kinh nghiệm, tận tâm phục vụ khách hàng.\r\n</p>\r\n\r\n<p>\r\n	Phát biểu tại lễ khai trương, bà Đặng Thị Kim Oanh,<strong>&nbsp;Tổng giám đốc Kim Oanh Real</strong>, cho biết việc đưa chi nhánh Bến Cát vào hoạt động nằm trong chiến lược đẩy mạnh thương hiệu, mở rộng hệ thống phân phối và tiếp thị các sản phẩm do&nbsp;<strong>Kim Oanh Group</strong>&nbsp;đầu tư. Điều này không chỉ giúp khách hàng có một địa chỉ giao dịch tin cậy, gia tăng cơ hội an cư và đầu tư hiệu quả, góp phần xây dựng một thị trường bất động sản chuyên nghiệp và lành mạnh mà còn tạo điều kiện để đông đảo người lao động có nguồn thu nhập ổn định, thăng tiến trong sự nghiệp.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/tintuc/khaitruong/van-phong-golden.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em>Màn múa lân rất sôi động chúc mừng Kim Oanh Real khai trương chi nhánh mới.</em>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/tintuc/khaitruong/icon-khai-truong.jpg\" style=\"width: 80%; height: 80%;\"></em>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em>Văn phòng của chi nhánh Bến Cát là căn shophouse khang trang, thuộc khu đô thị Golden Center City nằm ngay mặt tiền quốc lộ 13</em>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Được thành lập vào năm 2008, trải qua 10 năm hình thành và phát triển, Kim Oanh Real đã không ngừng lớn mạnh, khẳng định được vị thế, uy tín và thương hiệu trên thị trường bất động sản. Với triết lý kinh doanh &ldquo;Sản phẩm thật &ndash; Giá trị thật&rdquo;, cung cấp cho khách hàng những dự án có vị trí tốt, giàu tiềm năng, pháp lý đầy đủ với giá bán hợp lý nên các dự án của&nbsp;<strong>Kim Oanh Real</strong>&nbsp;khi tung ra thị trường luôn được đông đảo khách hàng đón nhận tích cực.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/tintuc/khaitruong/khai-truong.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Ban lãnh đạo Kim Oanh Real chụp hình lưu niệm cùng với cán bộ nhân viên chi nhánh Bến Cát.\r\n</p>\r\n\r\n<p>\r\n	Trung bình mỗi năm,&nbsp;<strong>Kim Oanh Real&nbsp;</strong>phân phối thành công khoảng trên 3.000 sản phẩm đất nền, nhà xây sẵn. Chỉ tính riêng 6 tháng đầu năm 2018, Kim Oanh Real đã phân phối thành công hơn 6.000 sản phẩm. Trong đó, nổi bật nhất là dự án&nbsp;<strong>khu đô thị Mega City 2</strong>, quy mô 84 ha (Nhơn Trạch, Đồng Nai) do Kim Oanh Group làm chủ đầu tư với&nbsp; toàn bộ 3.100 sản phẩm được tiêu thụ thành công chỉ trong một ngày.&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&ldquo;Với số lượng dự án phân phối ngày càng nhiều, đặc biệt là các dự án do Kim Oanh Group đầu tư và phát triển, Kim Oanh Real sẽ tiếp tục mở rộng hoạt động kinh doanh sang một số thị trường trọng điểm. Theo đó, bên cạnh các chi nhánh đang hoạt động tại TPHCM, Bình Dương, Đồng Nai, từ nay đến cuối năm, công ty sẽ mở thêm một chi nhánh mới tại tỉnh Thừa Thiên &ndash; Huế, nâng hệ thống phân phối của Kim Oanh Real lên thành 8 chi nhánh với tổng cộng hơn 1.000 nhân viên. Đây sẽ là nền tảng vững chắc cho những bước tiến mới của Kim Oanh Real nói riêng, Kim Oanh Group nói chung trong thời gian tới&rdquo;, bà Oanh cho biết.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				Bên cạnh chương tri ân &ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo; với tổng giá trị lên đến hơn 35 tỉ đồng sẽ được tổ chức vào cuối năm 2018, nhân dịp khai trương chi nhánh Bến Cát, khách hàng giao dịch thành công các sản phẩm do Kim Oanh Real phân phối từ ngày 24/9 đến hết ngày 31/10/2018 sẽ được tặng ngay thẻ cào từ 3 &ndash; 5 chỉ vàng.<br>\r\n				<br>\r\n				Mọi thông tin chi tiết vui lòng liên hệ&nbsp;<strong>hotline: 0988 12 12 12</strong>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>Một số hình ảnh khác</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/tintuc/khaitruong/khai-truong-vp.jpg\" style=\"width: 80%; height: 80%;\"></strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/tintuc/khaitruong/khai-truong-vn.jpg\" style=\"width: 80%; height: 80%;\"></strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/tintuc/khaitruong/khai-truong-1.jpg\" style=\"width: 80%; height: 80%;\"></strong>\r\n</p>', 'images/uploads/images/tintuc/khaitruong/icon-khai-truong.jpg', NULL, 1, 1, NULL, 1, '2018-09-27 04:09:45', '2018-09-27 04:09:45', 41);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `path`, `is_active`, `image`, `sub_image`, `description`, `content`, `area`, `price`, `order`, `is_hot`, `location_id`, `direction_id`, `unit_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Paradise Riverside', 'paradise-riverside', 1, 'images/uploads/images/datnen/paradiseriverside/du-an-phuoc-tan.jpg', 'images/uploads/images/datnen/paradiseriverside/do-thi-moi.jpg;images/uploads/images/datnen/paradiseriverside/do-thi.jpg;images/uploads/images/datnen/paradiseriverside/du-an-phuoc-tan.jpg;images/uploads/images/datnen/paradiseriverside/khong-gian.jpg', '<p>\r\n	Nép mình bên dòng sông Buông thơ mộng cùng với lối thiết kế độc đáo, kết hợp hài hòa với thiên nhiên, Paradise Riverside hứa hẹn sẽ mang đến cho các chủ sở hữu những giá trị khác biệt của một bất động sản thương mại kết hợp sinh thái.\r\n</p>', '<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><strong><span style=\"color:#f58220;\">MUA ĐẤT VÀNG TRÚNG NGÀN QUÀ TẶNG</span></strong></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><strong><span style=\"color:#f58220;\"><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/img8.jpg\" style=\"width: 80%; height: 80%;\"></span></strong></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Khi giao dịch thành công sản phẩm Paradise Riverside ngay trong ngày giới thiệu dự án, khách hàng sẽ được tặng ngay <strong><span style=\"color:#e74c3c;\"><span style=\"font-size:18px;\">1 &ndash; 2 lượng vàng</span></span></strong>, bốc thăm trúng nhiều giải thưởng giá trị cao và tham gia chương trình tri ân <strong><span style=\"color:#e74c3c;\">&ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo;</span></strong> được tổ chức vào cuối năm 2018. Tổng giá trị giải thưởng cho chương trình này lên đến <span style=\"font-size:18px;\"><span style=\"color:#e74c3c;\"><strong>35 tỉ đồng</strong></span></span> với nhiều giải thưởng hấp dẫn gồm :\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Mercedes Benz GLC 300</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;1 xe Honda CR-V</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;1 xe Honda City</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;20 xe gắn máy Honda SH</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;20 xe gắn máy Honda Airblade</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;25 điện thoại IPhone X và hàng trăm quà tặng giá trị khác.</strong>\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><strong><span style=\"color:#f58220;\">TỔNG QUAN</span></strong></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/tong-quan.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Nằm ngay khu vực phát triển năng động của thành phố Biên Hòa, cách quận 9 (TPHCM) chỉ một con sông và được ôm trọn bởi dòng sông Buông, Paradise Riverside được kiến tạo dựa trên ý tưởng một thành phố thu nhỏ, đầy đủ tất cả dịch vụ, tiện ích đáp ứng mọi nhu cầu của cuộc sống và tương lai sẽ trở thành trung tâm mới về thương mại, dịch vụ, du lịch sinh thái hàng đầu của khu vực cửa ngõ phía Đông TPHCM. Tại Paradise Riverside, các cư dân không chỉ được thụ hưởng một môi trường sống sinh thái tiện nghi, đẳng cấp mà còn có cơ hội sở hữu một bất động sản giàu tiềm năng gia tăng giá trị nhờ lợi thế &ldquo;cận thị, cận giang, cận lộ&rdquo; và sự phát triển mạnh mẽ của khu vực dự án tọa lạc.\r\n</p>\r\n\r\n<p>\r\n	<strong>Vị trí:&nbsp;</strong>Đường Phước Tân &ndash; Long Hưng, thành phố Biên Hòa, tỉnh Đồng Nai<br>\r\n	<strong>Quy mô:&nbsp;</strong>156 ha<br>\r\n	<strong>Chủ đầu tư:</strong>&nbsp;Công ty cổ phần Thương mại &amp; Xây dựng Phước Tân<br>\r\n	<strong>Hợp tác đầu tư &amp; phân phối độc quyền:&nbsp;</strong>Kim Oanh Real<br>\r\n	<strong>Hạ tầng:&nbsp;</strong>Đường nhựa rộng từ 14 &ndash; 67m, hệ thống điện âm, nước thủy cục, hệ thống viễn thông đầy đủ, hệ thống nước thải và nước mưa riêng biệt, vỉa hè rộng thoáng nhiều cây xanh&hellip;<br>\r\n	<strong>Tiện ích nội khu:</strong>&nbsp;32,6 ha cây xanh mặt nước; 5,06ha đất thương mại dịch vụ; 5,77 ha đất trường học; bến du thuyền, công viên ven sông, trung tâm chăm sóc sức khỏe, khu vui chơi trẻ em,&hellip;<br>\r\n	<strong>Tiện ích liên kết:</strong>&nbsp;Sân golf Long Thành, chợ Tân Mai 2; khu du lịch sinh thái Suối Tiên, Sơn Tiên; bệnh viện quốc tế Shink Mark, bệnh viện Ung Bướu 2; bến xe miền Đông mới; Làng đại học TPHCM, đại học Fulbright; khu công nghệ cao quận 9; khu đô thị Vincity, sân bay quốc tế Long Thành, khu đô thị dịch vụ ven sông và công nghệ cao AMATA&hellip;<br>\r\n	<strong>Pháp lý:&nbsp;</strong>Minh bạch, đầy đủ\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><strong><span style=\"color:#f58220;\">VỊ TRÍ</span></strong></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\"><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/vi-tri.jpg\" style=\"width: 80%; height: 80%;\"></span></strong>\r\n</p>\r\n\r\n<p>\r\n	Paradise Riverside sở hữu vị trí đắc địa khi nằm trải dài theo mặt tiền Phước Tân &ndash; Long Hưng của thành phố Biên Hòa, ba mặt còn lại được sông Buông bao quanh. Từ Paradise Riverside dễ dàng kết nối nhanh chóng với các khu vực năng động của TPHCM, Đồng Nai, Bình Dương, Bà Rịa Vũng Tàu và các đô thị, cảng biển quốc tế. Bởi bao quanh dự án là hệ thống giao thông liên vùng thông suốt từ đường bộ, đường sắt, đường thủy đến đường hàng không gồm Hương lộ 2, quốc lộ 51, xa lộ Hà Nội, đường vành đai 3, cao tốc TPHCM &ndash; Long Thành &ndash; Dầu Giây, đường Võ Nguyên Giáp metro Bến Thành &ndash; Suối Tiên kéo dài đến thành phố Biên Hòa, cao tốc Biên Hòa &ndash; Vũng Tàu, tuyến đường sắt Biên Hòa &ndash; Vũng Tàu,&hellip;Đặc biệt, nếu việc xây dựng cầu bắc qua sông Đồng Nai để kết nối đường Vành đai 3 (đoạn 1 B, quận 9, TPHCM) vào quốc lộ 51 thành hiện thực sẽ là động lực to lớn giúp khu vực dự án tọa lạc bứt phá mạnh mẽ, thậm chí có thể sẽ phát triển giống như khu đô thị mới Thủ Thiêm hiện nay. Khi đó, giá bất động sản tại Paradise Riverside sẽ không ngừng tăng lên.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>ĐÔ THỊ MỚI ĐANG HÌNH THÀNH</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/do-thi-moi.jpg\" style=\"width: 80%; height: 80%;\"></strong></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Theo quy hoạch tổng thể phát triển kinh tế &ndash; xã hội của tỉnh Đồng Nai đến năm 2020, Paradise Riverside nằm trên trục hành lang phát triển kinh tế Biên Hòa &ndash; sân bay quốc tế Long Thành, và nằm trong khu vực tập trung phát triển các khu đô thị quy mô lớn, có nhiều tiện ích nhằm phục vụ cho chiến lược giãn dân của TPHCM. Nhiều dự án quy mô lên đến hàng trăm héc ta như AquaCity (308ha), khu đô thị Long Hưng (227ha), Đồng Nai WaterPoint (366ha), khu du lịch Sơn Tiên (374ha)&hellip; Và sự xuất hiện của Paradise Riverside với nhiều ưu điểm nổi bật sẽ góp phần biến nơi đây sớm trở thành một khu đô thị lớn phát triển cực kỳ sôi động bên cạnh quận 9 (TPHCM), đồng thời cung cấp một không gian sống đẳng cấp và đáp ứng mọi nhu cầu kết nối giao thương cho người dân địa phương cũng như các chuyên gia, doanh nhân, lực lượng lao động trình độ cao làm việc trong các khu công nghiệp, khu công nghệ cao tại TPHCM, Biên Hòa, Long Thành, Nhơn Trạch, sân bay quốc tế Long Thành.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>TRUNG TÂM TIỆN ÍCH</strong></span></span>\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/tat-ca.png\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	&nbsp;\r\n</h2>\r\n\r\n<p>\r\n	Với tiêu chí &ldquo;tất cả trong một&rdquo;, Paradise Riverside tích hợp nhiều tiện ích đẳng cấp đáp ứng trọn vẹn mọi nhu cầu cuộc sống của cư dân. Ngay trung tâm dự án là 6 khu phức hợp thương mại với đầy đủ các dịch vụ như vui chơi giải trí, thể dục thể thao, thời trang, ẩm thực,&hellip;Bên cạnh đó là hệ thống trường mầm non, trường tiểu học, khu chăm sóc sức khỏe, khu vui chơi trẻ em, bến du thuyền&hellip; cũng được đầu tư rất chuẩn mực.\r\n</p>\r\n\r\n<p>\r\n	Di chuyển ra bên ngoài dự án, cư dân còn được thụ hưởng hàng loạt tiện ích hiện đại của khu vực. Ngoài sân golf Long Thành và khu du lịch sinh thái Sơn Tiên kề bên, từ Paradise Riverside chỉ mất khoảng 2-10 phút là đến chợ Tân Mai 2, trường Tiểu học Tân Mai, bệnh viện quốc tế Shink Mark, sân bay quốc tế Long Thành,&hellip;Hơn nữa, nhờ hệ thống giao thông kết nối thông suốt, cư dân Paradise Riverside còn dễ dàng tiếp cận Depot metro, làng đại học Quốc gia TPHCM, đại học Fulbright, khu du lịch Suối Tiên, Bệnh viện Ung Bướu 2, bến xe Miền Đông mới, khu công nghệ cao quận 9, hệ thống tiện ích đẳng cấp của khu đô thị Vincity&hellip;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong><span style=\"font-size:22px;\"><span style=\"color:#f58220;\">KHÔNG GIAN SỐNG TUYỆT VỜI</span></span></strong>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/khong-gian.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Với quy mô lên đến hơn 156 ha nhưng phần lớn diện tích của Paradise Riverside chủ yếu dành cho công trình mảng xanh, mặt nước nhằm mang đến cho các cư dân một không gian sống hiện đại nhưng vẫn gần gũi với thiên nhiên, sông nước. Bên cạnh các công viên ven sông, Paradise Riverside còn được bố trí 17 công viên lớn nhỏ đan xen với các dãy nhà tạo nên sự thoáng đãng cho toàn bộ khu vực của dự án.\r\n</p>\r\n\r\n<p>\r\n	Sau những giờ làm việc căng thẳng hay vào bất cứ thời điểm nào trong ngày, mọi thành viên trong gia đình đều có thể dạo bước trên những con đường xanh mát để tận hưởng bầu không khí trong lành, mát mẻ. Hay chỉ đơn thuần là cùng con trẻ thoả thích vui đùa, cùng những người thân yêu tận hưởng những giai điệu du dương trên du thuyền đẳng cấp.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\"><span style=\"font-size:22px;\">HẠ TẦNG CHẤT LƯỢNG</span></span></strong>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/ha-tang.jpg\" style=\"width: 80%; height: 80%;\"></span></span></strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Hạ tầng của Paradise Riverside được đầu tư theo tiêu chuẩn cao cấp nhất và thiết kế hài hòa với quy hoạch phát triển chung của thành phố Biên Hòa. Theo đó, các tuyến đường nội bộ của dự án rộng từ 14 &ndash; 67 m2, kết nối thông suốt với các tuyến đường huyết mạch xung quanh; vỉa hè rộng thoáng; hệ thống điện âm, nước thủy cục; hệ thống viễn thông đầy đủ; hệ thống nước thải và nước mưa riêng biệt&hellip;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><strong>GIÁ TRỊ GIA TĂNG BỀN VỮNG</strong></span>\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/don.jpg\" style=\"width: 80%; height: 80%;\">\r\n</h2>\r\n\r\n<p>\r\n	Một điểm cộng thêm cho Paradise Riverside là nằm gần nhiều khu công nghiệp quy mô lớn như Amata, Long Thành, Tam Phước, khu công nghệ cao quận 9,&hellip;với hàng chục ngàn chuyên gia, kỹ sư, người lao động sinh sống và làm việc. Hơn nữa, dự án còn nằm liền kề du lịch Sơn Tiên, tương lai sẽ thu hút một lượng lớn du khách nên tiềm năng khai thác kinh doanh thương mại rất lớn. Thêm vào đó là hiện nay, hệ thống hạ tầng của khu vực dự án tọa lạc ngày càng hoàn thiện cùng với việc xây dựng sân bay quốc tế Long Thành sẽ sớm biến nơi đây trở thành &ldquo;đô thị sân bay&rdquo; tầm cỡ khu vực. Chính những yếu tố này đảm bảo cho giá trị bất động sản của Paradise Riverside gia tăng bền vững.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>ĐÓN ĐẦU VÙNG ĐÔ THỊ TPHCM</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/do-thi.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Bên cạnh TPHCM, thành phố Biên Hòa đang trở thành cực tăng trưởng rất mạnh trong vùng kinh tế trọng điểm phía Nam. Trong khi đó quỹ đất của TPHCM ngày càng khan hiếm, buộc phải mở rộng không gian đô thị sang các vùng phụ cận theo đề án quy hoạch Vùng TPHCM. Điều này mở ra cơ hội lớn cho thị trường bất động sản mà Paradise Riverside là dự án được hưởng lợi trực tiếp do chỉ cách quận 9 (TPHCM) chỉ một con sông Đồng Nai.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>CƠ HỘI ĐẦU TƯ HẤP DẪN</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://localhost:8080/bdskimoanh/images/uploads/images/datnen/paradiseriverside/sinh-loi.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Nằm cách TPHCM chỉ bởi một con sông nhưng Paradise Riverside có giá bán chỉ từ 750 triệu đồng/nền, áp dụng lịch thanh toán linh hoạt. Mức giá này khá cạnh tranh so với mặt bằng giá đất khu vực và tiềm năng của dự án mang lại. Xét về sự phát triển của thị trường đất nền vùng ven TPHCM, nhiều ý kiến cho rằng Biên Hòa đang ở bước khởi đầu của giai đoạn tăng trưởng. Trong tương lai, giá bất động sản tại đây sẽ còn tiếp tục tăng mạnh vì hạ tầng đang ngày càng kết nối tốt hơn. Do đó, đầu tư hay an cư tại Paradise Riverside ngay thời điểm này là cơ hội tốt nhất với mức đầu tư hợp lý nhất để tối đa hóa lợi nhuận.\r\n</p>', NULL, NULL, 1, 0, 30, 1, NULL, 1, '2018-09-27 02:30:40', '2018-09-27 02:55:30', 35),
(2, 'Khu Đô Thị Mega City 2', 'khu-do-thi-mega-city-2', 1, 'images/uploads/images/datnen/megacity2/cm1-1.jpg', NULL, '<p>\r\n	Khu Đô Thị Mega City 2\r\n</p>', '<p>\r\n	Khu Đô Thị Mega City 2\r\n</p>', NULL, NULL, 1, 0, 24, 1, NULL, 1, '2018-09-27 03:04:31', '2018-09-27 03:04:31', 36);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2018-03-14 07:23:50', '2018-03-14 07:23:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seos`
--

CREATE TABLE `seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seos`
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
(41, NULL, NULL, NULL, NULL, '2018-09-27 04:09:45', '2018-09-27 04:09:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `units`
--

INSERT INTO `units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'triệu/m2', NULL, NULL),
(2, 'triệu', NULL, NULL),
(3, 'tỷ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$mStg572JFNI89/0Cg7TOGOUkACFaBl/nsNeOvx8zglr1qyJPA0tj6', NULL, '2018-03-14 07:24:10', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_items`
--
ALTER TABLE `category_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_items_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `category_many`
--
ALTER TABLE `category_many`
  ADD PRIMARY KEY (`category_id`,`item_id`);

--
-- Chỉ mục cho bảng `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configs_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_items`
--
ALTER TABLE `category_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `directions`
--
ALTER TABLE `directions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category_items`
--
ALTER TABLE `category_items`
  ADD CONSTRAINT `category_items_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
