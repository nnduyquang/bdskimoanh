-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2018 lúc 09:09 AM
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
(3, 'Tin Tức', 'tin-tuc', NULL, NULL, NULL, 0, NULL, 0, 1, 1, '2018-09-27 01:34:17', '2018-09-27 01:34:17', 34),
(4, 'Tuyển Dụng', 'tuyen-dung', NULL, NULL, NULL, 0, NULL, 0, 1, 1, '2018-10-04 07:50:12', '2018-10-04 07:50:12', 52);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_many`
--

CREATE TABLE `category_many` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_many`
--

INSERT INTO `category_many` (`category_id`, `item_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-09-27 02:30:40', '2018-10-05 03:34:25'),
(1, 2, 1, '2018-09-27 03:04:31', '2018-09-27 03:04:31'),
(1, 3, 1, '2018-09-28 03:06:32', '2018-09-28 03:06:32'),
(1, 4, 1, '2018-09-28 03:20:44', '2018-09-28 03:20:44'),
(1, 5, 1, '2018-09-28 03:51:41', '2018-09-28 03:51:41'),
(3, 1, 0, '2018-09-27 03:53:13', '2018-09-27 03:53:13'),
(3, 2, 0, '2018-09-27 04:09:45', '2018-09-30 14:58:06'),
(3, 4, 0, '2018-10-04 03:37:33', '2018-10-04 04:14:23'),
(3, 5, 0, '2018-10-04 03:46:07', '2018-10-04 03:46:34'),
(3, 6, 0, '2018-10-04 04:02:17', '2018-10-04 04:02:32'),
(3, 7, 0, '2018-10-04 04:06:10', '2018-10-04 04:08:41'),
(3, 8, 0, '2018-10-04 04:13:30', '2018-10-04 04:13:39'),
(3, 9, 0, '2018-10-04 04:22:32', '2018-10-04 04:22:47');

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
(1, 'config-contact', '<p>\r\n	Lô B-13, QL13, Golden A, TX Bến Cát, tỉnh Bình Dương\r\n</p>', 1, NULL, '2018-10-05 03:33:34'),
(3, 'config-company-name', 'Công ty CP DVTM và xây dựng địa ốc KIM OANH', 1, NULL, '2018-10-05 03:33:34'),
(4, 'config-phone', '0917503788', 1, NULL, '2018-10-05 02:16:14'),
(5, 'config-email', NULL, 1, NULL, NULL),
(6, 'config-seo-keywords', NULL, 1, NULL, NULL),
(7, 'config-seo-title', NULL, 1, NULL, NULL),
(8, 'config-seo-description', NULL, 1, NULL, NULL),
(9, 'config-seo-image', NULL, 1, NULL, NULL),
(10, 'email-receive', 'trangnh.sml@gmail.com', 1, NULL, '2018-10-04 08:48:40'),
(11, 'email-sender-subject', 'Bất Động Sản Kim Oanh Đã Nhận Được Mail Của Bạn', 1, NULL, '2018-10-04 08:48:40'),
(12, 'email-sender-from', 'Bất Động Sản Kim Oanh', 1, NULL, '2018-10-04 08:48:40'),
(13, 'email-receive-subject', 'Thông Tin Liên Hệ Mới Từ Khách Hàng', 1, NULL, '2018-10-04 08:48:40'),
(14, 'email-receive-from', 'Bất Động Sản Kim Oanh', 1, NULL, '2018-10-04 08:48:40'),
(15, 'email-sender-content', '<p>\r\n	Dear, Quý Khách,<br>\r\n	Bất động sản kim oanh&nbsp;đã nhận được mail của quý khách, chúng tôi sẽ phản hồi trong vòng 24h, xin cảm ơn.<br>\r\n	Trân trọng\r\n</p>', 1, NULL, '2018-10-04 08:48:40'),
(16, 'email-signatures', NULL, 1, NULL, NULL),
(17, 'script-js-header', NULL, 1, NULL, '2018-09-19 08:58:22'),
(18, 'script-js-body', NULL, 1, NULL, NULL),
(19, 'config-phone-1', '0917 503 788', 1, NULL, '2018-10-05 03:33:34'),
(20, 'config-phone-2', '098 2324 578', 1, NULL, '2018-10-05 03:33:34');

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
  `videos` longtext COLLATE utf8mb4_unicode_ci,
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

INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `videos`, `image`, `sub_image`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Bến xe Miền Đông mới (Tp.HCM) sẽ đi vào hoạt động đầu năm 2019', 'ben-xe-mien-dong-moi-tphcm-se-di-vao-hoat-dong-dau-nam-2019', '<p>\r\n	Theo Tổng Công ty Cơ khí giao thông vận tải Sài Gòn - chủ đầu tư dự án Bến xe miền Đông mới, hiện các đơn vị thi công đang đẩy nhanh tiến độ xây dựng bến xe Miền Đông mới để kịp tiến độ hoàn thành nhà ga giai đoạn 1 vào cuối tháng 12 và đưa vào khai thác từ quý I/2019.\r\n</p>', '<p>\r\n	Được khởi công xây dựng vào tháng 4/2017, Bến xe Miền Đông mới có diện tích hơn 16ha thuộc phường Bình Thắng, thị xã Dĩ An (Bình Dương) và phường Long Bình, Q.9, (Tp.HCM). Các đơn vị thi công đang khẩn trương xây dựng để kịp đưa vào sử dụng vào quý I/2019.\r\n</p>\r\n\r\n<p>\r\n	Cụ thể, giai đoạn 1 nhà ga bến xe Miền Đông mới được xây dựng với kết cấu gồm 2 tầng hầm và 4 tầng nổi. Công trình bến xe được thiết kế theo kiến trúc hiện đại, trở thành bến xe lớn nhất nước và là một trong những bến xe hiện đại của khu vực Đông Nam Á.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/benxemiendong/ben-xe-icon.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em>Dự án bến xe miền Đông mới có tổng vốn đầu tư khoảng 4.000 tỷ đồng</em>\r\n</p>\r\n\r\n<p>\r\n	Theo quy hoạch Phát triển giao thông vận tải Tp.HCM đến năm 2020 tầm nhìn đến năm 2025, khu vực Bến xe miền Đông mới và ga Suối Tiên sẽ là đầu mối giao thông lớn của Tp.HCM với các tỉnh Đông Nam Bộ, miền Trung và miền Bắc. Các dự án này sẽ kết nối trực tiếp với hai nhà ga metro lớn để di chuyển vào khu vực trung tâm Tp.HCM.\r\n</p>\r\n\r\n<p>\r\n	Được biết, bến xe Miền Đông bao gồm bốn khu A, B, C, D; trong đó, khu A là đất bến bãi, công trình công cộng và phụ trợ, với công trình cao nhất có 26 tầng, diện tích 122.480m2 (chiếm 76,37%,); khu B là trạm xe buýt cao 2 tầng; khu C là kho trung chuyển và giao dịch hàng hóa cao 5 tầng và khu D là khu thương mại dịch vụ cao 15 tầng. Dự án có tổng vốn đầu tư khoảng 4.000 tỷ đồng.\r\n</p>', NULL, 'images/uploads/images/tintuc/benxemiendong/ben-xe-icon.jpg', NULL, 1, 1, NULL, 1, '2018-09-27 03:53:13', '2018-09-27 03:53:13', 40),
(2, 'Kim Oanh Real khai trương chi nhánh thứ 7 tại Bình Dương', 'kim-oanh-real-khai-truong-chi-nhanh-thu-7-tai-binh-duong', '<p>\r\n	Kim Oanh Real khai trương chi nhánh thứ 7 tại Bình Dương\r\n</p>', '<p>\r\n	Để phục vụ khách hàng tốt hơn cũng như tạo điều kiện thuận lợi để khách hàng dễ dàng tìm hiểu và tiếp cận các dự án của Kim Oanh Group đầu tư, phân phối, ngày 24-9-2018, Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real) đã tổ chức lễ khai trương và chính thức đưa vào hoạt động chi nhánh thứ 7 tại trung tâm thị xã Bến Cát, tỉnh Bình Dương.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong-ben-cat.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em>Nghi thức cắt băng khai trương chi nhánh Bến Cát</em>\r\n</p>\r\n\r\n<p>\r\n	Chi nhánh Bến Cát tọa lạc tại ô số 12-13, lô B, ngay góc đường D1 và quốc lộ 13, thuộc khuôn viên&nbsp;<strong>khu đô thị Golden Center City</strong>&nbsp;của Kim Oanh Group làm chủ đầu tư. Với tổng diện tích sàn khoảng 260 m2, chi nhánh Bến Cát được thiết kế sang trọng, trang bị cơ sở vật chất hiện đại và quy tụ hơn 100 nhân viên năng động, nhiệt huyết, giàu kinh nghiệm, tận tâm phục vụ khách hàng.\r\n</p>\r\n\r\n<p>\r\n	Phát biểu tại lễ khai trương, bà Đặng Thị Kim Oanh,<strong>&nbsp;Tổng giám đốc Kim Oanh Real</strong>, cho biết việc đưa chi nhánh Bến Cát vào hoạt động nằm trong chiến lược đẩy mạnh thương hiệu, mở rộng hệ thống phân phối và tiếp thị các sản phẩm do&nbsp;<strong>Kim Oanh Group</strong>&nbsp;đầu tư. Điều này không chỉ giúp khách hàng có một địa chỉ giao dịch tin cậy, gia tăng cơ hội an cư và đầu tư hiệu quả, góp phần xây dựng một thị trường bất động sản chuyên nghiệp và lành mạnh mà còn tạo điều kiện để đông đảo người lao động có nguồn thu nhập ổn định, thăng tiến trong sự nghiệp.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/van-phong-golden.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em>Màn múa lân rất sôi động chúc mừng Kim Oanh Real khai trương chi nhánh mới.</em>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/icon-khai-truong.jpg\" style=\"width: 80%; height: 80%;\"></em>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<em>Văn phòng của chi nhánh Bến Cát là căn shophouse khang trang, thuộc khu đô thị Golden Center City nằm ngay mặt tiền quốc lộ 13</em>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Được thành lập vào năm 2008, trải qua 10 năm hình thành và phát triển, Kim Oanh Real đã không ngừng lớn mạnh, khẳng định được vị thế, uy tín và thương hiệu trên thị trường bất động sản. Với triết lý kinh doanh &ldquo;Sản phẩm thật &ndash; Giá trị thật&rdquo;, cung cấp cho khách hàng những dự án có vị trí tốt, giàu tiềm năng, pháp lý đầy đủ với giá bán hợp lý nên các dự án của&nbsp;<strong>Kim Oanh Real</strong>&nbsp;khi tung ra thị trường luôn được đông đảo khách hàng đón nhận tích cực.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Ban lãnh đạo Kim Oanh Real chụp hình lưu niệm cùng với cán bộ nhân viên chi nhánh Bến Cát.\r\n</p>\r\n\r\n<p>\r\n	Trung bình mỗi năm,&nbsp;<strong>Kim Oanh Real&nbsp;</strong>phân phối thành công khoảng trên 3.000 sản phẩm đất nền, nhà xây sẵn. Chỉ tính riêng 6 tháng đầu năm 2018, Kim Oanh Real đã phân phối thành công hơn 6.000 sản phẩm. Trong đó, nổi bật nhất là dự án&nbsp;<strong>khu đô thị Mega City 2</strong>, quy mô 84 ha (Nhơn Trạch, Đồng Nai) do Kim Oanh Group làm chủ đầu tư với&nbsp; toàn bộ 3.100 sản phẩm được tiêu thụ thành công chỉ trong một ngày.&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	&ldquo;Với số lượng dự án phân phối ngày càng nhiều, đặc biệt là các dự án do Kim Oanh Group đầu tư và phát triển, Kim Oanh Real sẽ tiếp tục mở rộng hoạt động kinh doanh sang một số thị trường trọng điểm. Theo đó, bên cạnh các chi nhánh đang hoạt động tại TPHCM, Bình Dương, Đồng Nai, từ nay đến cuối năm, công ty sẽ mở thêm một chi nhánh mới tại tỉnh Thừa Thiên &ndash; Huế, nâng hệ thống phân phối của Kim Oanh Real lên thành 8 chi nhánh với tổng cộng hơn 1.000 nhân viên. Đây sẽ là nền tảng vững chắc cho những bước tiến mới của Kim Oanh Real nói riêng, Kim Oanh Group nói chung trong thời gian tới&rdquo;, bà Oanh cho biết.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				Bên cạnh chương tri ân &ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo; với tổng giá trị lên đến hơn 35 tỉ đồng sẽ được tổ chức vào cuối năm 2018, nhân dịp khai trương chi nhánh Bến Cát, khách hàng giao dịch thành công các sản phẩm do Kim Oanh Real phân phối từ ngày 24/9 đến hết ngày 31/10/2018 sẽ được tặng ngay thẻ cào từ 3 &ndash; 5 chỉ vàng.<br>\r\n				<br>\r\n				Mọi thông tin chi tiết vui lòng liên hệ&nbsp;<strong>hotline: 0988 12 12 12</strong>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>Một số hình ảnh khác</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong-vp.jpg\" style=\"width: 80%; height: 80%;\"></strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong-vn.jpg\" style=\"width: 80%; height: 80%;\"></strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/khaitruong/khai-truong-1.jpg\" style=\"width: 80%; height: 80%;\"></strong>\r\n</p>', NULL, 'images/uploads/images/tintuc/khaitruong/icon-khai-truong.jpg', NULL, 1, 1, NULL, 1, '2018-09-27 04:09:45', '2018-09-27 04:09:45', 41),
(3, 'Giới Thiệu', 'gioi-thieu', NULL, '<h1 class=\"home-title\" style=\"text-align: center;\">\r\n	<span style=\"font-size:26px;\"><strong><span style=\"color:#f58220;\">THÔNG ĐIỆP TỔNG GIÁM ĐỐC</span></strong></span>\r\n</h1>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<div class=\"col-md-12\">\r\n	<div class=\"row\">\r\n		<div class=\"col-md-7\">\r\n			<div style=\"text-align:left\">\r\n				<h3>\r\n					Kính thưa quý khách hàng, quý đối tác!\r\n				</h3>\r\n\r\n				<p style=\"line-height:1.5\">\r\n					Thành lập trong bối cảnh thị trường bất động sản còn nhiều khó khăn và thách thức, đến nay, sau 10 năm cố gắng nỗ lực, Công ty cổ phần Dịch vụ Thương mại &amp; Xây dựng Địa ốc Kim (Oanh Kim Oanh Real) đã không ngừng lớn mạnh và trở thành nhà phân phối bất động sản hàng đầu khu vực phía Nam.Bên cạnh trụ sở chính, Kim Oanh Real đang có hệ thống gồm 6 chi nhánh tại Bình Dương, Đồng Nai và TPHCM với hơn 900 cán bộ nhân viên có trình độ chuyên môn cao và an hiểu sâu sắc thị trường bất<br>\r\n					động sản.\r\n				</p>\r\n\r\n				<p style=\"line-height:1.5\">\r\n					Nhằm hình thành chuỗi giá trị khép kín, mang lại lợi ích tốt nhất cho khách hàng, vào cuối năm 2015, Kim Oanh Real thực hiện bước ngoặt lớn khi góp vốn thành lập Kim Oanh Group với các đơn vị thành viên gồm Công ty cổ phần Đầu tư Kim Oanh (Kim Oanh Investment) và Công ty cổ phần Xây dựng Kim Oanh (Kim Oanh Construction). Sự kiện này là minh chứng cho sự lớn mạnh của thương hiệu Kim Oanh chuyển vai trò từ nhà phân phối bất động sản đơn thuần sang nhà đầu tư và phát triển dự án.<br>\r\n					<br>\r\n					Trong suốt quá trình hoạt động, Công ty cổ phần Địa ốc Kim Oanh luôn thực hiện theo tôn chỉ &ldquo;Sản phẩm thật &ndash; Giá trị thật&rdquo;, xây dựng uy tín và lấy lợi ích khách hàng làm trung tâm hoạt động. Các sản phẩm trước khi đến tay khách hàng đều được công ty nghiên cứu kỹ lưỡng, xây dựng mức giá phù hợp với số đông người dân và nhà đầu tư. Nhờ đó, hầu hết các dự án của Kim Oanh khi đưa ra thị trường đều được tiêu thụ nhanh chóng. Trung bình mỗi năm công ty phân phối thành công khoảng 3.000 sản phẩm đất nền và nhà xây sẵn tại nhiều thị trường khác nhau.\r\n				</p>\r\n\r\n				<p style=\"line-height:1.5\">\r\n					Bằng uy tín thương hiệu và tiềm lực sẵn có, Kim Oanh Real ngày càng được nhiều đối tác lớn tín nhiệm như Becamex, Tín Nghĩa, Thanh Lễ, Giang Điền, ATA, DIC Corp., Bái Tử Long. Các tổ chức tài chính hàng đầu như Vietcombank, BIDV, Agribank, Sacombank&hellip;tạo điều kiện tốt nhất cho khách hàng sở hữu sản phẩm bất động sản do công ty phân phối.\r\n				</p>\r\n\r\n				<p style=\"line-height:1.5\">\r\n					Trước thế mạnh và sự hậu thuẫn từ hệ thống Kim Oanh Group, Kim Oanh Real đặt ra mục tiêu trong thời gian tới sẽ trở thành thương hiệu bất động sản uy tín hàng đầu Việt Nam. Công ty cũng cam kết không ngừng nâng cao nâng lực, xây dựng bộ máy quản lý theo hướng chuyên nghiệp và hiện đại nhằm mang đến các sản phẩm, dịch vụ thương mại tốt hơn nữa đến với khách hàng.\r\n				</p>\r\n\r\n				<p style=\"line-height:1.5\">\r\n					Bên cạnh đó, Công ty cổ phần Địa ốc Kim Oanh cũng sẽ tiếp tục thực hiện chính sách chia sẻ với cộng đồng &ndash; một truyền thống nhân văn đã được xây dựng và duy trì trong suốt 10 năm qua. Ngoài các chương trình tặng học bổng cho học sinh nghèo, xây nhà tình nghĩa/nhà tình thương, tri ân gia đình chính sách, giúp đỡ nạn nhân chất độc da cam, cứu trợ đồng bào bị thiên tại/hỏa hoạn, hỗ trợ các bệnh nhân nghèo, thông qua Quỹ Từ thiện Kim Oanh, Công ty Kim Oanh sẽ tổ chức thêm nhiều chương trình<br>\r\n					thiện nguyện quy mô lớn và sâu rộng hơn.\r\n				</p>\r\n\r\n				<p style=\"line-height:1.5\">\r\n					Với sự tin yêu của quý đối tác, quý khách hàng cùng sự quyết tâm của của một tập thể đầy nhiệt huyết, chúng tôi hoàn toàn tin tưởng thương hiệu Kim Oanh sẽ còn vươn cao, vươn xa hơn nữa. Một lần nữa, thay mặt Hội đồng Quản trị Kim Oanh Real, tôi trân trọng gửi đến quý vị khách hàng, đối tác lời tri ân sâu sắc nhất và mong tiếp tục nhận được sự tín nhiệm, ủng hộ của tất cả quý vị trong thời gian tới.\r\n				</p>\r\n\r\n				<p style=\"line-height:1.5\">\r\n					&nbsp;\r\n				</p>\r\n\r\n				<p style=\"line-height:1.5\">\r\n					Trân trọng\r\n				</p>\r\n\r\n				<p>\r\n					&nbsp;\r\n				</p>\r\n\r\n				<p style=\"text-align: right;\">\r\n					Tổng giám đốc\r\n				</p>\r\n\r\n				<p>\r\n					&nbsp;\r\n				</p>\r\n\r\n				<p style=\"text-align: right;\">\r\n					Đặng Thị Kim Oanh\r\n				</p>\r\n			</div>\r\n\r\n			<p>\r\n				&nbsp;\r\n			</p>\r\n		</div>\r\n\r\n		<div class=\"col-md-5\">\r\n			<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/gioithieu/about-user2.jpg\" style=\"width: 100%;\">\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	&nbsp;\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	&nbsp;\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\">LĨNH VỰC HOẠT ĐỘNG</span></strong>\r\n</h2>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<div class=\"service-list\">\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-4\">\r\n			<figure>\r\n				<div class=\"service-img\">\r\n					<a class=\"service-col\" href=\"#!\"><img alt=\"Quảng cáo, tiếp thị bất động sản\" src=\"http://congtybdskimoanh.com/images/uploads/images/gioithieu/hd3.jpg\" style=\"height: 100%; width: 100%;\"> </a>\r\n				</div>\r\n\r\n				<figcaption>\r\n					<h3 class=\"service-name\" style=\"background:#f58220;height: 60px;display: flex;align-items: center;align-content: center;justify-content: center;color: #fff;font-size: 1rem;text-transform: uppercase;font-weight: 600;\">\r\n						Quảng cáo, tiếp thị bất động sản\r\n					</h3>\r\n				</figcaption>\r\n			</figure>\r\n		</div>\r\n\r\n		<div class=\"col-12 col-md-4\">\r\n			<figure>\r\n				<div class=\"service-img\">\r\n					<img alt=\"Phân phôí các dự án bất động sản\" src=\"http://congtybdskimoanh.com/images/uploads/images/gioithieu/hd2-1.jpg\" style=\"height: 100%; width: 100%;\">\r\n				</div>\r\n\r\n				<figcaption>\r\n					<h3 class=\"service-name\" style=\"background:#f58220;height: 60px;display: flex;align-items: center;align-content: center;justify-content: center;color: #fff;font-size: 1rem;text-transform: uppercase;font-weight: 600;\">\r\n						Phân phôí các dự án bất động sản\r\n					</h3>\r\n				</figcaption>\r\n			</figure>\r\n		</div>\r\n\r\n		<div class=\"col-12 col-md-4\">\r\n			<figure>\r\n				<div class=\"service-img\">\r\n					<img alt=\"Tư vấn bất động sản\" src=\"http://congtybdskimoanh.com/images/uploads/images/gioithieu/hd1.jpg\" style=\"height: 100%; width: 100%;\">\r\n				</div>\r\n\r\n				<figcaption>\r\n					<h3 class=\"service-name\" style=\"background:#f58220;height: 60px;display: flex;align-items: center;align-content: center;justify-content: center;color: #fff;font-size: 1rem;text-transform: uppercase;font-weight: 600;\">\r\n						Tư vấn bất động sản\r\n					</h3>\r\n				</figcaption>\r\n			</figure>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	&nbsp;\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\">TẦM NHÌN - SỨ MỆNH</span></strong>\r\n</h2>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<div class=\"vision-list\">\r\n	<div class=\"row\">\r\n		<div class=\"col-12 col-md-6 col-lg-3\">\r\n			<div class=\"vision-col\" style=\"height: 100%;background: #fff;box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.05);\">\r\n				<figure>\r\n					<div class=\"vision-img\">\r\n						<img alt=\"Tầm nhìn\" src=\"http://congtybdskimoanh.com/images/uploads/images/gioithieu/sm4.jpg\" style=\"height: 100%; width: 100%;\">\r\n					</div>\r\n\r\n					<figcaption>\r\n						<div class=\"vision-name\" style=\"font-size: 1rem;font-weight: 700;text-transform: uppercase;color: #666666;margin-bottom: 10px;\">\r\n							Tầm nhìn\r\n						</div>\r\n\r\n						<div class=\"vision-des\" style=\"font-size: 0.8125rem;line-height: 1.8;color: #666666;text-align: left;\">\r\n							Trở thành thương hiệu phân phối bất động sản uy tín hàng đầu Việt Nam\r\n						</div>\r\n					</figcaption>\r\n				</figure>\r\n			</div>\r\n		</div>\r\n\r\n		<div class=\"col-12 col-md-6 col-lg-3\">\r\n			<div class=\"vision-col\" style=\"height: 100%;background: #fff;box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.05);\">\r\n				<figure>\r\n					<div class=\"vision-img\">\r\n						<img alt=\"Sứ mệnh\" src=\"http://congtybdskimoanh.com/images/uploads/images/gioithieu/sm3.jpg\" style=\"height: 100%; width: 100%;\">\r\n					</div>\r\n\r\n					<figcaption>\r\n						<div class=\"vision-name\" style=\"font-size: 1rem;font-weight: 700;text-transform: uppercase;color: #666666;margin-bottom: 10px;\">\r\n							Sứ mệnh\r\n						</div>\r\n\r\n						<div class=\"vision-des\" style=\"font-size: 0.8125rem;line-height: 1.8;color: #666666;text-align: left;\">\r\n							<ul>\r\n								<li>\r\n									Cung cấp cho khách hàng những sản phẩm chất lượng, đa dạng và dịch vụ thương mại tốt nhất&nbsp;\r\n								</li>\r\n								<li>\r\n									Góp phần xây dựng một xã hội nhân văn, mang lại cuộc sống thịnh vượng và hạnh phúc cho cộng đồng\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</figcaption>\r\n				</figure>\r\n			</div>\r\n		</div>\r\n\r\n		<div class=\"col-12 col-md-6 col-lg-3\">\r\n			<div class=\"vision-col\" style=\"height: 100%;background: #fff;box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.05);\">\r\n				<figure>\r\n					<div class=\"vision-img\">\r\n						<img alt=\"giá trị cốt lõi\" src=\"http://congtybdskimoanh.com/images/uploads/images/gioithieu/sm2.jpg\" style=\"height: 100%; width: 100%;\">\r\n					</div>\r\n\r\n					<figcaption>\r\n						<div class=\"vision-name\" style=\"font-size: 1rem;font-weight: 700;text-transform: uppercase;color: #666666;margin-bottom: 10px;\">\r\n							giá trị cốt lõi\r\n						</div>\r\n\r\n						<div class=\"vision-des\" style=\"font-size: 0.8125rem;line-height: 1.8;color: #666666;text-align: left;\">\r\n							Sản phẩm thật &ndash; Giá trị thật\r\n						</div>\r\n					</figcaption>\r\n				</figure>\r\n			</div>\r\n		</div>\r\n\r\n		<div class=\"col-12 col-md-6 col-lg-3\">\r\n			<div class=\"vision-col\" style=\"height: 100%;background: #fff;box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.05);\">\r\n				<figure>\r\n					<div class=\"vision-img\">\r\n						<img alt=\"Triết lý kinh doanh\" src=\"http://congtybdskimoanh.com/images/uploads/images/gioithieu/sm1.jpg\" style=\"height: 100%; width: 100%;\">\r\n					</div>\r\n\r\n					<figcaption>\r\n						<div class=\"vision-name\" style=\"font-size: 1rem;font-weight: 700;text-transform: uppercase;color: #666666;margin-bottom: 10px;\">\r\n							Triết lý kinh doanh\r\n						</div>\r\n\r\n						<div class=\"vision-des\" style=\"font-size: 0.8125rem;line-height: 1.8;color: #666666;text-align: left;\">\r\n							<ul>\r\n								<li>\r\n									Lợi ích của khách hàng là ưu tiên hàng đầu\r\n								</li>\r\n								<li>\r\n									Luôn tôn trọng đạo đức kinh doanh\r\n								</li>\r\n								<li>\r\n									Hoạt động bằng tất cả đam mê, nhiệt huyết và tinh thần trách nhiệm cao\r\n								</li>\r\n								<li>\r\n									Luôn vun đắp, gìn giữ mối quan hệ với các đối tác trên cơ sở hài hòa lợi ích đôi bên\r\n								</li>\r\n							</ul>\r\n						</div>\r\n					</figcaption>\r\n				</figure>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	&nbsp;\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\">SƠ ĐỒ TỔ CHỨC</span></strong>\r\n</h2>\r\n\r\n<p>\r\n	<strong><span style=\"color:#f58220;\"><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/gioithieu/map.jpg\" style=\"width: 100%; height: 100%;\"></span></strong>\r\n</p>', NULL, NULL, NULL, 0, 1, NULL, 1, '2018-10-02 09:40:25', '2018-10-05 04:01:58', 45),
(4, 'Khách hàng Golden Center City sẽ nhận sổ đỏ vào tháng 9', 'khach-hang-golden-center-city-se-nhan-so-do-vao-thang-9', '<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Theo thông tin từ Kim Oanh Group, hiện nay dự án Golden Center City đã hoàn thành toàn bộ hạ tầng cùng nhiều hạng mục tiện ích và các dãy nhà phố. Ngay trong tháng 9 này, khách hàng sẽ được bàn giao giấy chứng nhận chủ quyền.</span></span></span>\r\n</p>', '<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><span style=\"background-color:null;\">Theo thông tin từ Kim Oanh Group, hiện nay dự án Golden Center City đã hoàn thành toàn bộ hạ tầng cùng nhiều hạng mục tiện ích và các dãy nhà phố. Ngay trong tháng 9 này, khách hàng sẽ được bàn giao giấy chứng nhận chủ quyền.</span></span></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/07/ha-tang-golden/ha-tang-golden-1.jpg\" style=\"width: 80%; height: 80%;\"></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em><span style=\"background-color:null;\">Một dãy nhà phố kiến trúc hiện đại nằm ngay mặt tiền quốc lộ 13 chuẩn bị được bàn giao cho các chủ nhân.</span></em></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><span style=\"background-color:null;\">Khu đô thị Golden Center City tọa lạc ngay mặt tiền quốc lộ 13, trung tâm thị xã Bến Cát, tỉnh Bình Dương. Dự án có quy mô gần 14 héc ta gồm 692 nền đất và nhà phố xây sẵn. Đặc biệt, dự án được quy hoạch và đầu tư đồng bộ với nhiều tiện ích như chợ Bến Cát 2, tòa nhà văn phòng &ndash; thương mại Kim Oanh Palza, trường mầm non, công viên&hellip; đáp ứng nhu cầu hàng ngày của cư dân.</span></span></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/07/ha-tang-golden/ha-tang-cho-ben-cat-2.jpg\" style=\"width: 80%; height: 80%;\"></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em><span style=\"background-color:null;\">Chợ Bến Cát 2 chuẩn bị đi vào hoạt động.</span></em></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><span style=\"background-color:null;\">Đến nay, Golden Center City đang dần hiện rõ hình hài của một khu đô thị hiện đại. Hạ tầng của dự án được đầu tư rất kỹ lưỡng và tất cả đã hoàn thiện, vỉa hè được lát gạch thẳng tắp, công viên tiểu khu được chăm chút tỉ mỉ, hệ thống điện âm, hệ thống nước sinh hoạt đấu nối với hệ thống cấp nước sạch của tỉnh Bình Dương.</span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><span style=\"background-color:null;\">Bên cạnh đó là các dãy nhà phố khang trang liên tiếp mọc lên chào đón rất nhiều cư dân chuyển về sinh sống. Công trình chợ Bến Cát 2 với quy mô xây dựng 6.342 m2 cũng đã hoàn thiện và chuẩn bị đưa vào hoạt động. Đây là một trong những hạng mục quan trọng nhất của dự án và rất được thị xã Bến Cát mong đợi nhằm đáp ứng nhu cầu kinh doanh đang tăng cao của tiểu thương trên địa bàn.</span></span></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/07/ha-tang-golden/ha-tang-golen-2.jpg\" style=\"width: 80%; height: 80%;\"></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em><span style=\"background-color:null;\">Golden Center City là một trong những dự án khu đô thị quy mô lớn nhất nằm ngay trung tâm thị xã Bến Cát.</span></em></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><span style=\"background-color:null;\">Bà Đặng Thị Kim Oanh, Tổng giám đốc Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real), cho biết hiện nay Kim Oanh Group còn đang gấp rút hoàn thiện một số khâu cuối cùng để nghiệm thu hạ tầng dự án trước khi bàn giao cho địa phương quản lý vận hành. Dự kiến, thời gian hoàn tất các thủ tục pháp lý và bàn giao sổ đỏ cho khách hàng là cuối tháng 9-2018.</span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><span style=\"background-color:null;\">&ldquo;Golden Center City là một trong những dự án lớn mà Kim Oanh Group đặt rất nhiều tâm huyết triển khai. Việc đầu tư hệ thống tiện ích hoàn chỉnh đã giúp giá trị bất động sản tại đây tăng ít nhất 50% so với thời điểm công ty bán ra thị trường. Đây cũng là cách Kim Oanh Group chứng minh uy tín của mình trên thị trường bất động sản và khiến nhiều khách hàng đặt niềm tin đồng hành lâu dài với công ty&rdquo;, ba Oanh khẳng định.</span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em><span style=\"background-color:null;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Hạ tầng của Golden Center City được Kim Oanh Group đầu tư kỹ lưỡng. Theo kế hoạch, dự án sẽ bàn giao giấy tờ chủ quyền kể từ tháng 9-2018.</span></em></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><span style=\"background-color:null;\">Song song với Golden Center City, các dự án khác tại thị xã Bến Cát như Golden Center City 2, Mega City, Bến Cát Center City 2 cũng đang được Kim Oanh Group đẩy nhanh tiến độ thi công và hoàn thiện pháp lý để bàn giao cho khách hàng. Điểm đặc biệt của các dự án này là có sự liên kết chặt chẽ, trong tương lai sẽ hợp thành một khu đô thị hiện đại tại trung tâm thị xã Bến Cát và tỉnh Bình Dương.</span></span></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><span style=\"background-color:null;\">Một số hình ảnh khác tại dự án Golden Center City:</span></strong></span></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"http://bdskimoanh.com/uploads/news/2018_07/ha-tang-cho-ben-cat-2.jpg\" style=\"width: 80%; height: 80%;\"></span></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:null;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"http://bdskimoanh.com/uploads/news/2018_07/ha-tang-ngu-dan-ben-cat.jpg\" style=\"width: 80%; height: 80%;\"></span></span></span>\r\n</p>', NULL, 'images/uploads/images/tintuc/khgoldencity/ha-tang-golen-2.jpg', NULL, 1, 1, NULL, 1, '2018-10-04 03:37:33', '2018-10-04 04:14:23', 46),
(5, 'Đồng Nai đề xuất xây cầu 5.700 tỷ nối Nhơn Trạch với Tp.HCM', 'dong-nai-de-xuat-xay-cau-5700-ty-noi-nhon-trach-voi-tphcm', '<p>\r\n	<span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">UBND tỉnh Đồng Nai vừa yêu cầu Sở Giao thông - vận tải liên hệ với Sở Giao thông- vận tải TP.HCM để bàn về việc làm cầu Cát Lái, nối từ quận 2 - TP.HCM sang huyện Nhơn Trạch. Trong đó, Đồng Nai sẽ đề xuất làm chủ đầu tư công trình này</span></span>\r\n</p>', '<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">UBND tỉnh Đồng Nai vừa yêu cầu Sở Giao thông - vận tải liên hệ với Sở Giao thông- vận tải TP.HCM để bàn về việc làm cầu Cát Lái, nối từ quận 2 - TP.HCM sang huyện Nhơn Trạch. Trong đó, Đồng Nai sẽ đề xuất làm chủ đầu tư công trình này.</span></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/khgoldencity/cau-cat-lai.jpg\" style=\"width: 70%; height: 70%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Theo UBND tỉnh Đồng Nai, dựa trên nhu cầu phục vụ phát triển kinh tế - xã hội, phía tỉnh cần có cầu Cát Lái hơn vì sẽ tạo thuận lợi cho việc đi lại và vận chuyển hàng hóa từ các khu công nghiệp Long Thành, Nhơn Trạch ra cảng ở TP.HCM và ngược lại.&nbsp;<br>\r\n	<br>\r\n	Bên cạnh đó, trong quá trình phát triển đô thị mới Nhơn Trạch, nếu có cầu Cát Lái thì kinh tế - xã hội địa phương sẽ phát triển nhanh hơn, nhất là thu hút được các dự án bất động sản, thương mại dịch vụ và thu hút thêm nhiều người dân đến Nhơn Trạch sinh sống...<br>\r\n	<br>\r\n	Theo dự kiến của tỉnh, đến năm 2026, Nhơn Trạch sẽ trở thành đô thị loại 2, nhưng tiêu chí khó đạt nhất là dân số phải tăng gấp hơn 2 lần so với thời điểm hiện nay.<br>\r\n	<br>\r\n	Từ nhu cầu thực tế, cách đây hơn 1 năm, UBND TP.HCM đã kiến nghị Thủ tướng Chính phủ cho bổ sung quy hoạch xây dựng cầu Cát Lái để thay thế phà hiện nay. Kiến nghị đó cũng đã được được Thủ tướng chấp thuận vào tháng 8/2017.<br>\r\n	<br>\r\n	Theo thiết kế, cầu Cát Lái sẽ được xây dựng vượt sông Đồng Nai, nối quận 2, TP.HCM với xã Phú Hữu, huyện Nhơn Trạch.<br>\r\n	<br>\r\n	Cầu Cát Lái có tổng chiều dài cầu và đường dẫn dài 4,5km, mặt cắt ngang đường là 60m, đảm bảo 6 làn xe cơ giới và 2 làn hỗn hợp, trong đó mặt cắt ngang cầu phù hợp với quy mô tuyến kết nối với đường đã quy hoạch. Đây là công trình đường phố chính đô thị được thiết kế vận tốc 80 km/giờ.<br>\r\n	<br>\r\n	Tổng mức đầu tư với 4 làn xe là vào khoảng 5.700 tỷ, trong đó giải phóng mặt bằng cho cả 2 địa phương là 1.225 tỷ. Phương án nhà đầu tư đang đề xuất là BOT, trong vòng 23,7 năm. Nhà đầu tư cũng đề xuất 2 tỉnh hỗ trợ khoảng 2.000 tỷ trong khoản 5.700 tỷ đó để giải phóng mặt bằng.&nbsp;<br>\r\n	<br>\r\n	Dự án cầu Cát Lái được xây dựng sẽ tạo điều kiện tốt cho các xã Phú Hữu, Đại Phước và Phú Đông của huyện phát triển. Tại các huyện này, một số dự án đang thu hút đầu tư như đường liên cảng&nbsp; để phát triển cụm cảng biển nhóm 5. Theo quy hoạch, tuyến đường liên cảng có chiều dài gần 15km, đi qua các xã: Đại Phước, Phú Hữu, Phú Đông, Phước Khánh và Vĩnh Thanh.<br>\r\n	<br>\r\n	Đường sẽ kết nối 15 cảng đã và đang được đầu tư theo quy hoạch cảng biển nhóm 5 Đông Nam bộ. Ngoài ra, còn có dự án Cảng tổng hợp Phú Hữu II (đối diện Cảng Cát Lái) có chiều dài bến quy hoạch 2km, quy mô cho tàu 20 ngàn DWT và nhiều dự án khác đang chờ triển khai. Khi có cầu Cát Lái, các dự án giao thông ở đây sẽ được kết nối thuận tiện hơn cho các xã ở khu vực Tây - Bắc huyện Nhơn Trạch.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">ÔNG TY CP TMDV &amp; XD ĐỊA ỐC KIM OANH</span></span>\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Lô C, Đường Lê Lợi, Phường Hoà Phú, TP.Thủ Dầu Một, Bình Dương</span></span>\r\n	</li>\r\n	<li>\r\n		<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Email: bdskimoanh.com</span></span>\r\n	</li>\r\n	<li>\r\n		<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Hotline: 0987.034.899</span></span>\r\n	</li>\r\n</ul>', NULL, 'images/uploads/images/tintuc/khgoldencity/cau-cat-lai.jpg', NULL, 1, 1, NULL, 1, '2018-10-04 03:46:07', '2018-10-04 03:46:34', 47),
(6, 'Tập thể Kim Oanh Group “cháy” hết mình trong Teambuilding 2018', 'tap-the-kim-oanh-group-chay-het-minh-trong-teambuilding-2018', '<p>\r\n	<span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Sau một tháng chuẩn bị kỹ lưỡng, chương trình Teambuilding 2018 của Kim Oanh Group với chủ đề &ldquo;Kim Oanh Group</span></span>\r\n</p>', '<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong>Sau một tháng chuẩn bị kỹ lưỡng, chương trình Teambuilding 2018 của Kim Oanh Group với chủ đề &ldquo;Kim Oanh Group &ndash; 10 năm tiếp bước thành công&rdquo; đã chính thức diễn ra trong 3 ngày 2 đêm (từ ngày 28 đến 30-9-2018), tại&nbsp; Mũi Né &ndash; Phan Thiết, tỉnh Bình Thuận với sự tham gia của gần 1.000 cán bộ nhân viên.</strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_7934.jpg\" style=\"height: 80%; width: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Khác với những năm trước, chương trình Teambuilding 2018 khá đặc biệt bởi không chỉ đơn thuần là chuyến du lịch nghỉ dưỡng thường niên, giúp cán bộ nhân viên có được khoảng thời gian thư giãn sau những ngày làm việc căng thẳng, mà còn là hoạt động ý nghĩa chào mừng kỉ niệm 10 năm thành lập Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real). Đây cũng là lí do chương trình Teambuilding năm nay được ban tổ chức xây dựng nhiều nội dung hấp dẫn vừa mang tính giải trí, vừa nâng cao trí tuệ, tinh thần đoàn kết giữa các thành viên trong mái nhà chung Kim Oanh.&nbsp;</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/30.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Ngay trong đêm đầu tiên đặt chân đến Mũi Né, tất cả nhân viên Kim Oanh Group đã có dịp xích lại gần nhau hơn khi cùng tham gia đốt lửa trại trên biển. Bên ánh lửa bập bùng, mọi người cùng nắm chặt tay nhau xếp thành vòng tròn, thoải mái ca hát, nhảy múa cũng như truyền cho nhau hơi ấm và sức mạnh. Chính khoảnh khắc kỳ diệu ấy, mọi ưu tư phiền muộn, áp lực của công việc, cuộc sống dường như đều tan biến.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/dsc04955.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Ấn tượng và hấp dẫn nhất của chương trình Teambuilding 2018 là những thử thách của &ldquo;Cuộc đua kì thú&rdquo; tại khu dã ngoại Bồng Lai Tiên Cảnh.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/team-buil.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Các đội phải trải qua 6 chặng đua đầy cam go gồm vượt chướng ngại vật, chinh phục vách núi, chui địa đạo, hẻm núi thang dây, lặn suối tìm chữ, chèo thuyền qua sông và lên lầu vọng cảnh. Điểm đặc biệt của tất cả các thử thách này là đòi hỏi sự khéo léo và tinh thần đồng đội cao.&nbsp;</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/11.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Sau khi vượt qua mỗi thử thách, các đội sẽ nhận được mật thư và có nhiệm vụ giải đáp mật thư thật nhanh để giành điểm số cũng như biết được địa điểm thử thách phải trải qua tiếp theo.&nbsp;</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8122.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Với tinh thần &ldquo;làm hết sức, chơi hết mình&rdquo;, các &ldquo;chiến binh&rdquo; của Kim Oanh Group đã chứng tỏ được bản lĩnh, sự thông minh, khéo léo. Đặc biệt với sức mạnh của sự đoàn kết, các đội đã vượt qua mọi thử thách của chương trình một cách ngoạn mục.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/1.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Dù cho trời nắng gay gắt nhưng vẫn không làm mất đi nhuệ khí của các &ldquo;chiến binh&rdquo; Kim Oanh Group.&nbsp;</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/tro-choi-team.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Và dù là nam hay nữ, tất cả các thành viên đều cố gắng nỗ lực hết mình vì kết quả chung của toàn đội.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/dsc05001.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Tất cả đều vỡ òa trong niềm hạnh phúc. Ở đây, gần như không còn khoảng cách cấp bậc giữa lãnh đạo và nhân viên, mọi người trở nên thân thiết, gắn bó như anh em một nhà.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8293.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Sau những trò chơi gay cấn, các thành viên Kim Oanh Group lại tiếp tục tận hưởng khoảnh khắc tuyệt vời, ấm cúng trong chương trình Gala Dinner.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8321.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Nhân dịp này, Kim Oanh Group đã tổ chức lễ sơ kết hoạt động kinh doanh 6 tháng đầu năm 2018 để đúc kết những kết quả đạt được cũng như hoạch định chiến lược trong những tháng cuối năm. Bà Đặng Thị Kim Oanh, Tổng giám đốc Kim Oanh Real, cho biết trong 6 tháng đầu năm, công ty đã đầu tư và phân phối thành công gần 7.000 nền đất và nhà xây sẵn. Trong đó, nổi bật nhất là dự án Mega City 2 khi toàn bộ hơn 3.000 sản phẩm được giao dịch thành công chỉ trong một ngày. Theo kế hoạch, từ nay đến cuối năm, Kim Oanh Group sẽ đưa ra thị trường thêm 4 dự án đất nền, nhà xây sẵn và căn hộ chung cư ở TPHCM, Bình Dương và Đồng Nai.&nbsp;</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8347.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Để ghi nhận những đóng góp tích cực của cán bộ nhân viên, trong khuôn khổ đêm Gala, Ban lãnh đạo Kim Oanh Group đã vinh danh và khen thưởng cho những cá nhân, tập thể đạt thành tích xuất sắc trong 6 tháng đầu năm. Trong ảnh là bà Đặng Thị Kim Oanh và ông Tôn Thất Khiêm, Phó tổng giám đốc Kim Oanh Real trao mức thưởng 100.000 triệu đồng cho anh Cao Như Mạnh (giữa), Phó phòng kinh doanh Chi nhánh Cộng Hòa đạt thành tích kinh doanh xuất sắc và hai cá nhân đạt giải nhất với mức thưởng là 5 tháng lương.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8374.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Ông Nguyễn Thuận, chủ tịch HĐQT và Bà Đặng Thị Kim Oanh, Tổng giám đốc Kim Oanh Real trao thưởng cho các chi nhánh bán hàng xuất sắc với mức thưởng từ 50 &ndash; 120 triệu đồng. Trong đó, dẫn đầu giải là chi nhánh Thành phố mới.&nbsp;</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8361.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Giải thưởng dành cho phòng kinh doanh đạt thành tích xuất sắc là từ 30 đến 70 triệu đồng.&nbsp;</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8354.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Bà Nguyễn Thị Ngọc Ánh, Phó tổng giám đốc đối ngoại Kim Oanh Real trao thưởng cho nhóm bán hàng đạt giải nhất và xuất sắc.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8390.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Trong không khí vui tươi và ấm cúng của đêm Gala Dinner, các nhân viên có ngày sinh trong tháng 9 đã vỡ òa hạnh phúc khi được ban tổ chức chúc mừng sinh nhật một cách bất ngờ.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/0.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong>Chương trình Teambuilding 2018&nbsp;</strong>đã khép lại với nhiều cung bậc cảm xúc và để lại những kỉ niệm khó quên trong lòng mỗi nhân viên. Tuy chuyến đi chỉ vọn vẹn trong 3 ngày nhưng cũng đủ để các anh chị em trong đại gia đình Kim Oanh thêm gắn kết bền chặt. Đây cũng chính là nền tảng vững chắc giúp tập thể Kim Oanh Group tự tin sẽ làm nên nhiều đột phá mới trên những chặng đường sắp tới.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong>Một số hình ảnh khác:</strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/4.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/2.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/15.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/14.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/bo-sung/dsc04967.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/bo-sung/dsc05191.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/bo-sung/dsc04975.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8323.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8268.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8279.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/team/img_8300.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>', NULL, 'images/uploads/images/tintuc/teambuilding2018/0.jpg', NULL, 1, 1, NULL, 1, '2018-10-04 04:02:17', '2018-10-04 04:02:32', 48);
INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `videos`, `image`, `sub_image`, `post_type`, `isActive`, `category_item_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(7, 'Kim Oanh Group bàn giao sổ đỏ cho cư dân RichHome 2', 'kim-oanh-group-ban-giao-so-do-cho-cu-dan-richhome-2', '<p>\r\n	<span style=\"font-size:16px;\"><span style=\"font-family:Tahoma,Geneva,sans-serif;\">Ngày 8-9-2018, Kim Oanh Group đã tổ chức lễ bàn giao giấy chứng nhận quyền sử dụng đất đợt đầu tiên cho các khách hàng mua đất tại khu đô thị RichHome 2, phường Hòa Lợi, thị xã Bến Cát, tỉnh Bình Dương.</span></span>\r\n</p>', '<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Ngày 8-9-2018, Kim Oanh Group đã tổ chức lễ bàn giao giấy chứng nhận quyền sử dụng đất đợt đầu tiên cho các khách hàng mua đất tại khu đô thị RichHome 2, phường Hòa Lợi, thị xã Bến Cát, tỉnh Bình Dương.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/rich/1.jpg\" style=\"height: 80%; width: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em>Hàng trăm khách hàng đã tập trung về trụ sở Kim Oanh Grouptừ sáng sớm để làm thủ tục nhận sổ đỏ.</em></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Bà Đặng Thị Kim Oanh, Tổng giám đốc Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real), cho biết đợt đầu tiên, Kim Oanh Group sẽ tiến hành trao sổ đỏ cho 304 khách hàng mua sản phẩm RichHome 2 và đã hoàn thành nghĩa vụ tài chính cũng như các thủ tục liên quan. Đối với các khách hàng còn lại, Kim Oanh Group sẽ tiếp tục bàn giao giấy chứng nhận quyền sử dụng đất, giấy chứng nhận quyền sở hữu nhà ở và tài sản gắn liền với đất trong thời gian sắp tới.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Cầm trong tay giấy chứng nhận quyền sử dụng đất, chị Nguyễn Thị Huyền không giấu được niềm hạnh phúc nói: &ldquo;Vợ chồng tôi đều là công nhân, thu nhập hàng tháng cả hai gộp lại cũng chỉ đủ để trang trải cuộc sống nên không dám nghĩ đến việc mua đất hay nhà cho đến khi biết tin Kim Oanh Group chào bán dự án RichHome 2. Với mức giá chỉ từ 360 triệu đồng/căn và được ngân hàng liên kết với chủ đầu tư hỗ trợ gói vay 30.000 tỉ đồng, vợ chồng tôi đã quyết định lựa chọn RichHome 2 làm chốn an cư và bây giờ đã chính thức nắm trong tay một tài sản tuyệt vời để an cư lạc nghiệp tại Bình Dương&rdquo;.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/rich/img_7758.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em>Ông Trần Thanh Sơn (thứ 3 từ trái sang), Giám đốc chi nhánh Thành Phố Mới, trao giấy chứng nhận quyền sử dụng đất cho các cư dân RichHome 2.</em></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Trong khi đó, anh Nguyễn Đức Thọ (TPHCM) cũng phấn khởi cho hay anh mua hai sản phẩm RichHome 2 vì nhận thấy tiềm năng của dự án khá lớn nhưng mức giá rất mềm mặc dù cũng không tránh khỏi lo ngại vì thời điểm đó thị trường bất động sản còn gặp nhiều khó khăn. Tuy nhiên, chỉ một năm sau đó, có người trả chênh lệch cao hơn 50% nhưng anh vẫn không bán vì tin rằng giá sẽ còn tăng mạnh nữa. &ldquo;Bây giờ, dự án đã có sổ đỏ, tôi chắc chắn tài sản của mình sẽ đạt lợi nhuận tối đa như kỳ vọng. Cám ơn Kim Oanh Group đã giữ đúng cam kết với khách hàng&rdquo;, anh Thọ chia sẻ.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Bà Oanh cho biết trong quá trình hoàn thành hồ sơ cấp chủ quyền cho cư dân của RichHome 2, Kim Oanh Group cũng gặp rất nhiều vướng mắc, khó khăn nhưng vì lợi ích của khách hàng, vì trách nhiệm với sản phẩm mình đã dày công kiến tạo, công ty đã cố gắng để bàn giao đúng thời hạn. &ldquo;Việc trao sổ đỏ dự án RichHome 2 hôm nay đã minh chứng cho uy tín của Kim Oanh Group trong các cam kết với khách hàng. Thời gian tới, chúng tôi sẽ tiếp tục nỗ lực mang đến cho thị trường những sản phẩm bất động sản chất lượng tốt nhất&rdquo;, bà Oanh nói.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Được Kim Oanh Group giới thiệu ra thị trường vào năm 2015, Khu đô thị RichHome 2 có quy mô 5,5 héc ta, gồm 410 nền đất và nhà xây sẵn được quy hoạch theo mô hình khép kín với đầy đủ tiện ích. Đây là dự án thứ hai của Kim Oanh Group trong chuỗi sản phẩm nhà ở dành cho người có thu nhập thấp và là dự án hiếm hoi được Chính phủ hỗ trợ gói vay 30.000 tỉ đồng tại Bình Dương. Ngay sau khi tung ra thị trường, dự án lập tức gây tiếng vang lớn, toàn bộ sản phẩm được tiêu thụ hết chỉ trong một buổi sáng mở bán. Thành công này cũng là bước ngoặt quan trọng đánh dấu sự phát triển đột phá của thương hiệu Kim Oanh, từ một nhà môi giới đơn thuần trở thành nhà đầu tư, phát triển dự án bất động sản chuyên nghiệp.</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/rich/22.png\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em>RichHome 2 trở thành nơi an cư của rất đông cư dân với môi trường sống xanh mát, an ninh và nhiều tiện nghi.</em></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Được biết, song song với việc bàn giao sổ đỏ cho các khách hàng còn lại của RichHome 2, từ nay đến cuối năm 2018, Kim Oanh Group cũng hoàn thiện một số hạng mục cuối cùng của tất cả các dự án đầu tư trên địa bàn thị xã Bến Cát như Golden Center City, Golden Center City 2, Mega City, Bến Cát Center City 2,&hellip;để làm sổ cho khách hàng. Các dự án này được Kim Oanh Group đang từng bước góp phần thay đổi bộ mặt đô thị tại thị xã Bến Cát, đồng thời giá trị tài sản của khách hàng cũng đang tăng cao theo tiến độ hoàn thiện hạ tầng của chủ đầu tư.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em><strong>Vy Trần</strong></em></span></span>\r\n</p>', NULL, 'images/uploads/images/tintuc/sodo/img_7758.jpg', NULL, 1, 1, NULL, 1, '2018-10-04 04:06:10', '2018-10-04 04:08:41', 49),
(8, 'Hỗ trợ 450 triệu đồng cho học sinh giỏi, khó khăn của ba tỉnh Thừa Thiên Huế, Tây Ninh và Bình Dương', 'ho-tro-450-trieu-dong-cho-hoc-sinh-gioi-kho-khan-cua-ba-tinh-thua-thien-hue-tay-ninh-va-binh-duong', '<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Trong không khí vui tươi của ngày tựu trường 05/9/2018, Quỹ Từ thiện Kim Oanh đã gửi tặng những phần quà, những phần học bổng giúp các em có hoàn cảnh khó khăn tại tỉnh Thừa Thiên Huế, Tây Ninh và Bình Dương có thêm điều kiện để đến trường</span></span>\r\n</p>', '<h1>\r\n	&nbsp;\r\n</h1>\r\n\r\n<hr>\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Trong không khí vui tươi của ngày tựu trường 05/9/2018, Quỹ Từ thiện Kim Oanh đã gửi tặng những phần quà, những phần học bổng giúp các em có hoàn cảnh khó khăn tại tỉnh Thừa Thiên Huế, Tây Ninh và Bình Dương có thêm điều kiện để đến trường, qua đó động viên tinh thần học tập của các em tốt hơn trong năm học mới 2018-2019. Tổng giá trị quà tặng lên đến 450 triệu đồng. Cụ thể:&nbsp;</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong>Tại tỉnh Bình Dương</strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Trao tặng 37 suất học bổng cho học sinh trường THPT Bến Cát, THPT Tây Nam và Trung tâm giáo dục thường xuyên với mỗi suất học bổng trị giá 5 triệu đồng gồm quà tặng balo và tiền mặt.&nbsp;</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/hotro450tr/1.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em>Bà Đặng Thị Kim Oanh, Tổng giám đốc Kim Oanh Group, kiêm Chủ tịch Hội đồng Quản lý Quỹ Từ thiện Kim Oanh trao học bổng cho các em học sinh trường THPT Bến Cát</em></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong>Tại tỉnh Tây Ninh</strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Quỹ Từ thiện Kim Oanh đã trao tặng 100 suất học bổng với tổng giá trị 50 triệu đồng cho học sinh trường tiểu học Long Chữ B và THCS Long Phước, huyện Bến Cầu.&nbsp;</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong>Tại tỉnh Thừa Thiên Huế</strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Cụ thể trao 20 suất học bổng và 100 phần quà với kinh phí trao tặng 60 triệu đồng cho học sinh trường THCS Điền Hải, huyện Phong Điền. Tại xã Phú Đa, huyện Phú Vang tổ chức bàn giao nhà ăn bán trú cho trường Tiểu học Phú Đa 3 với số tiền 150 triệu đồng; trao hỗ trợ kinh phí 45 triệu đồng mua sắm cơ sở vật chất, khu vui chơi cho các cháu trường mầm non Phú Đa.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Đặc biệt dịp này Quỹ từ thiện Kim Oanh còn trao 400 triệu đồng, lắp đặt thiết bị hệ thống nước nóng lạnh phục vụ nhu cầu tắm rửa vệ sinh hàng ngày cho các bệnh nhân đang điều trị tại trung tâm tâm thần tỉnh Thừa Thiên Huế. Dự kiến công trình sẽ được đưa vào sử dụng trước mùa đông năm nay.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong>Một vài hình ảnh khác:</strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/hotro450tr/ba-dang-thi-kim-oanh-trao-tang-hoc-bong-02.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/hotro450tr/ba-dang-thi-kim-oanh-trao-tang-hoc-bong-03.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/hotro450tr/ba-dang-thi-kim-oanh-trao-tang-hoc-bong-04.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/hotro450tr/chi-phuong.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/hotro450tr/chi-phuong2.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/tintuc/hotro450tr/img_0182.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>', NULL, 'images/uploads/images/tintuc/hotro450tr/1.jpg', NULL, 1, 1, NULL, 1, '2018-10-04 04:13:30', '2018-10-04 04:13:39', 50),
(9, 'Trao tặng ô tô 16 chỗ trị giá 400 triệu đồng cho Trẻ mồ côi tại Quận 8', 'trao-tang-o-to-16-cho-tri-gia-400-trieu-dong-cho-tre-mo-coi-tai-quan-8', '<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Ngày 24-9-2018, nhân dịp Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real) khai trương và chính thức đưa vào hoạt động chi nhánh thứ 7 tại trung tâm thị xã Bến Cát, tỉnh Bình Dương.</span></span>\r\n</p>', '<hr>\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong>Ngày 24-9-2018, nhân dịp Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real) khai trương và chính thức đưa vào hoạt động chi nhánh thứ 7 tại trung tâm thị xã Bến Cát, tỉnh Bình Dương. Quỹ Từ thiện Kim Oanh đã tiến hành tổ chức lễ bàn giao ô tô 16 chỗ ngồi hiệu Toyota Hiace trị giá 400 triệu đồng cho nhóm Trẻ mồ côi tại Quận 8 (nhóm trẻ Mồ côi được nhắc đến trong bài viết: Có một &ldquo;Mái ấm Không Tên&rdquo; giữa lòng Sài Gòn hoa lệ).&nbsp;</strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><strong><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/trao-xe.jpg\" style=\"height: 80%; width: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em>Bà Đặng Thị Kim Oanh, Tổng giám đốc Kim Oanh Group, kiêm Chủ tịch Hội đồng Quản lý Quỹ Từ thiện Kim Oanh và bà Nguyễn Thị Ngọc Ánh, Phó Chủ tịch Hội đồng Quản trị Kim Oanh Group, kiêm Phó Tổng giám đốc Đối ngoại Kim Oanh Group bàn giao xe 16 chỗ cho anh Nam (26 tuổi), quản lý Mái ấm Không Tên.</em></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Được biết, các em hiện đang sinh hoạt tại số nhà 53 &ndash; 55 Lương Ngọc Quyến, phường 13, quận 8, TP Hồ Chí Minh với hơn 30 em cơ nhỡ, mồ côi, và là một mái ấm tự phát nên vẫn chưa có tên (Mái ấm Không Tên.)</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Các em sống bằng tình thương của các tiểu thương chợ phường 13, quận 8, khi mà vào cuối ngày, hàng hóa buôn bán trong ngày bị ế ẩm nhưng vẫn còn sử dụng được, các cô chú ấy sẽ gọi điện để các em ra chợ mang về sử dụng dần.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Đặc biệt, các em nhỏ ở đây còn mưu sinh bằng nghề múa lân sư rồng. Tháng nào có show diễn đều thì được ăn ngon hơn, không thì sẽ ăn uống tằn tiện lại. Nguồn chi phí sinh hoạt của các em chủ yếu đến từ các dịp Tết nguyên đán và Tết trung thu, bởi đây là thời điểm Đoàn lân sư rồng có show diễn nhiều nhất. Tuy nhiên, không ít lần nhiều ông chủ, tập đoàn kinh doanh lớn nhỏ ở tỉnh lẻ ngỏ ý muốn giúp đỡ các em bằng việc mời Đoàn lân sư rồng biểu diễn nhưng ngặt nổi đường xá xa xôi, việc di chuyển gặp nhiều khó khăn, chưa kể chi phí đi lại khá lớn nên đành phải hủy show, khiến các em vô cùng hối tiếc, vì thường một show diễn như vậy, cũng đủ để trang trải sinh hoạt phí cho cả Mái ấm không tên từ 10-15 ngày.</span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Thấu hiểu được nỗi niềm mưu sinh vất vả của các em nhỏ, bà Đặng Thị Kim Oanh đã quyết định tạo mọi điều kiện cho Đoàn lân sư rồng của Mái ấm không tên được phép biểu diễn tại tất cả các sự kiện lớn nhỏ của Kim Oanh Group từ động thổ dự án, khai trương chi nhánh mới hay các dịp lễ Tết &hellip; Và chương trình múa lân sư rồng tại lễ khai trương chi nhánh mới hôm 24.09.2018 là show đầu tiên mà Kim Oanh Group đã hợp tác với các em.&nbsp;</span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://diaockimoanh.com.vn/Data/Sites/1/media/tin_tuc/2018/09/khai-truong/khai-truong.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\"><em>&quot;Hy vọng rằng với việc được giao trọng trách biểu diễn tại tất cả sự kiện của Kim Oanh Group, các em sẽ có cuộc sống sung túc hơn&quot;. Bà Đặng Thị Kim Oanh chia sẻ.</em></span></span>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<span style=\"font-family:Tahoma,Geneva,sans-serif;\"><span style=\"font-size:16px;\">Chưa hết, bà Đặng Thị Kim Oanh còn quyết định trao tặng chiếc xe ô tô 16 chỗ hiệu Toyota Hiace cho Đoàn lân sư rồng. Vậy là từ nay các em sẽ không còn tiếc hùi hụi vì mất show ở các tỉnh lẻ nữa, điều này đồng nghĩa với việc các em sẽ có thêm thu nhập để duy trì kinh phí sinh hoạt của Mái ấm không tên, đồng thời có thêm điều kiện để chăm sóc tốt hơn cho các em nhỏ trong Mái ấm thông qua những bữa ăn được đủ đầy, có rau có thịt...&nbsp;</span></span>\r\n</p>', NULL, 'images/uploads/images/tintuc/tangxe400tr/trao-xe.jpg', NULL, 1, 1, NULL, 1, '2018-10-04 04:22:32', '2018-10-04 04:22:47', 51),
(10, 'Video', 'video', '<p>\r\n	Video\r\n</p>', '<p>\r\n	Video\r\n</p>', 'https://www.youtube.com/embed/C8rQA8cWjCU;https://www.youtube.com/embed/zvPy4kUjd30', NULL, NULL, 0, 1, NULL, 1, '2018-10-05 07:08:14', '2018-10-05 07:08:14', 53);

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
  `num_bed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` longtext COLLATE utf8mb4_unicode_ci,
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

INSERT INTO `products` (`id`, `name`, `path`, `is_active`, `image`, `sub_image`, `description`, `content`, `num_bed`, `map`, `area`, `price`, `order`, `is_hot`, `location_id`, `direction_id`, `unit_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Paradise Riverside', 'paradise-riverside', 1, 'images/uploads/images/datnen/paradiseriverside/du-an-phuoc-tan.jpg', 'images/uploads/images/datnen/paradiseriverside/do-thi-moi.jpg;images/uploads/images/datnen/paradiseriverside/do-thi.jpg;images/uploads/images/datnen/paradiseriverside/du-an-phuoc-tan.jpg;images/uploads/images/datnen/paradiseriverside/khong-gian.jpg', '<p>\r\n	Nép mình bên dòng sông Buông thơ mộng cùng với lối thiết kế độc đáo, kết hợp hài hòa với thiên nhiên, Paradise Riverside hứa hẹn sẽ mang đến cho các chủ sở hữu những giá trị khác biệt của một bất động sản thương mại kết hợp sinh thái.\r\n</p>', '<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><strong><span style=\"color:#f58220;\">MUA ĐẤT VÀNG TRÚNG NGÀN QUÀ TẶNG</span></strong></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><strong><span style=\"color:#f58220;\"><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/img8.jpg\" style=\"width: 80%; height: 80%;\"></span></strong></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Khi giao dịch thành công sản phẩm Paradise Riverside ngay trong ngày giới thiệu dự án, khách hàng sẽ được tặng ngay <strong><span style=\"color:#e74c3c;\"><span style=\"font-size:18px;\">1 &ndash; 2 lượng vàng</span></span></strong>, bốc thăm trúng nhiều giải thưởng giá trị cao và tham gia chương trình tri ân <strong><span style=\"color:#e74c3c;\">&ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo;</span></strong> được tổ chức vào cuối năm 2018. Tổng giá trị giải thưởng cho chương trình này lên đến <span style=\"font-size:18px;\"><span style=\"color:#e74c3c;\"><strong>35 tỉ đồng</strong></span></span> với nhiều giải thưởng hấp dẫn gồm :\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Mercedes Benz GLC 300</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;1 xe Honda CR-V</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;1 xe Honda City</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;20 xe gắn máy Honda SH</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;20 xe gắn máy Honda Airblade</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;25 điện thoại IPhone X và hàng trăm quà tặng giá trị khác.</strong>\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><strong><span style=\"color:#f58220;\">TỔNG QUAN</span></strong></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/tong-quan.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Nằm ngay khu vực phát triển năng động của thành phố Biên Hòa, cách quận 9 (TPHCM) chỉ một con sông và được ôm trọn bởi dòng sông Buông, Paradise Riverside được kiến tạo dựa trên ý tưởng một thành phố thu nhỏ, đầy đủ tất cả dịch vụ, tiện ích đáp ứng mọi nhu cầu của cuộc sống và tương lai sẽ trở thành trung tâm mới về thương mại, dịch vụ, du lịch sinh thái hàng đầu của khu vực cửa ngõ phía Đông TPHCM. Tại Paradise Riverside, các cư dân không chỉ được thụ hưởng một môi trường sống sinh thái tiện nghi, đẳng cấp mà còn có cơ hội sở hữu một bất động sản giàu tiềm năng gia tăng giá trị nhờ lợi thế &ldquo;cận thị, cận giang, cận lộ&rdquo; và sự phát triển mạnh mẽ của khu vực dự án tọa lạc.\r\n</p>\r\n\r\n<p>\r\n	<strong>Vị trí:&nbsp;</strong>Đường Phước Tân &ndash; Long Hưng, thành phố Biên Hòa, tỉnh Đồng Nai<br>\r\n	<strong>Quy mô:&nbsp;</strong>156 ha<br>\r\n	<strong>Chủ đầu tư:</strong>&nbsp;Công ty cổ phần Thương mại &amp; Xây dựng Phước Tân<br>\r\n	<strong>Hợp tác đầu tư &amp; phân phối độc quyền:&nbsp;</strong>Kim Oanh Real<br>\r\n	<strong>Hạ tầng:&nbsp;</strong>Đường nhựa rộng từ 14 &ndash; 67m, hệ thống điện âm, nước thủy cục, hệ thống viễn thông đầy đủ, hệ thống nước thải và nước mưa riêng biệt, vỉa hè rộng thoáng nhiều cây xanh&hellip;<br>\r\n	<strong>Tiện ích nội khu:</strong>&nbsp;32,6 ha cây xanh mặt nước; 5,06ha đất thương mại dịch vụ; 5,77 ha đất trường học; bến du thuyền, công viên ven sông, trung tâm chăm sóc sức khỏe, khu vui chơi trẻ em,&hellip;<br>\r\n	<strong>Tiện ích liên kết:</strong>&nbsp;Sân golf Long Thành, chợ Tân Mai 2; khu du lịch sinh thái Suối Tiên, Sơn Tiên; bệnh viện quốc tế Shink Mark, bệnh viện Ung Bướu 2; bến xe miền Đông mới; Làng đại học TPHCM, đại học Fulbright; khu công nghệ cao quận 9; khu đô thị Vincity, sân bay quốc tế Long Thành, khu đô thị dịch vụ ven sông và công nghệ cao AMATA&hellip;<br>\r\n	<strong>Pháp lý:&nbsp;</strong>Minh bạch, đầy đủ\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><strong><span style=\"color:#f58220;\">VỊ TRÍ</span></strong></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\"><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/vi-tri.jpg\" style=\"width: 80%; height: 80%;\"></span></strong>\r\n</p>\r\n\r\n<p>\r\n	Paradise Riverside sở hữu vị trí đắc địa khi nằm trải dài theo mặt tiền Phước Tân &ndash; Long Hưng của thành phố Biên Hòa, ba mặt còn lại được sông Buông bao quanh. Từ Paradise Riverside dễ dàng kết nối nhanh chóng với các khu vực năng động của TPHCM, Đồng Nai, Bình Dương, Bà Rịa Vũng Tàu và các đô thị, cảng biển quốc tế. Bởi bao quanh dự án là hệ thống giao thông liên vùng thông suốt từ đường bộ, đường sắt, đường thủy đến đường hàng không gồm Hương lộ 2, quốc lộ 51, xa lộ Hà Nội, đường vành đai 3, cao tốc TPHCM &ndash; Long Thành &ndash; Dầu Giây, đường Võ Nguyên Giáp metro Bến Thành &ndash; Suối Tiên kéo dài đến thành phố Biên Hòa, cao tốc Biên Hòa &ndash; Vũng Tàu, tuyến đường sắt Biên Hòa &ndash; Vũng Tàu,&hellip;Đặc biệt, nếu việc xây dựng cầu bắc qua sông Đồng Nai để kết nối đường Vành đai 3 (đoạn 1 B, quận 9, TPHCM) vào quốc lộ 51 thành hiện thực sẽ là động lực to lớn giúp khu vực dự án tọa lạc bứt phá mạnh mẽ, thậm chí có thể sẽ phát triển giống như khu đô thị mới Thủ Thiêm hiện nay. Khi đó, giá bất động sản tại Paradise Riverside sẽ không ngừng tăng lên.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>ĐÔ THỊ MỚI ĐANG HÌNH THÀNH</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/do-thi-moi.jpg\" style=\"width: 80%; height: 80%;\"></strong></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Theo quy hoạch tổng thể phát triển kinh tế &ndash; xã hội của tỉnh Đồng Nai đến năm 2020, Paradise Riverside nằm trên trục hành lang phát triển kinh tế Biên Hòa &ndash; sân bay quốc tế Long Thành, và nằm trong khu vực tập trung phát triển các khu đô thị quy mô lớn, có nhiều tiện ích nhằm phục vụ cho chiến lược giãn dân của TPHCM. Nhiều dự án quy mô lên đến hàng trăm héc ta như AquaCity (308ha), khu đô thị Long Hưng (227ha), Đồng Nai WaterPoint (366ha), khu du lịch Sơn Tiên (374ha)&hellip; Và sự xuất hiện của Paradise Riverside với nhiều ưu điểm nổi bật sẽ góp phần biến nơi đây sớm trở thành một khu đô thị lớn phát triển cực kỳ sôi động bên cạnh quận 9 (TPHCM), đồng thời cung cấp một không gian sống đẳng cấp và đáp ứng mọi nhu cầu kết nối giao thương cho người dân địa phương cũng như các chuyên gia, doanh nhân, lực lượng lao động trình độ cao làm việc trong các khu công nghiệp, khu công nghệ cao tại TPHCM, Biên Hòa, Long Thành, Nhơn Trạch, sân bay quốc tế Long Thành.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>TRUNG TÂM TIỆN ÍCH</strong></span></span>\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/tat-ca.png\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	&nbsp;\r\n</h2>\r\n\r\n<p>\r\n	Với tiêu chí &ldquo;tất cả trong một&rdquo;, Paradise Riverside tích hợp nhiều tiện ích đẳng cấp đáp ứng trọn vẹn mọi nhu cầu cuộc sống của cư dân. Ngay trung tâm dự án là 6 khu phức hợp thương mại với đầy đủ các dịch vụ như vui chơi giải trí, thể dục thể thao, thời trang, ẩm thực,&hellip;Bên cạnh đó là hệ thống trường mầm non, trường tiểu học, khu chăm sóc sức khỏe, khu vui chơi trẻ em, bến du thuyền&hellip; cũng được đầu tư rất chuẩn mực.\r\n</p>\r\n\r\n<p>\r\n	Di chuyển ra bên ngoài dự án, cư dân còn được thụ hưởng hàng loạt tiện ích hiện đại của khu vực. Ngoài sân golf Long Thành và khu du lịch sinh thái Sơn Tiên kề bên, từ Paradise Riverside chỉ mất khoảng 2-10 phút là đến chợ Tân Mai 2, trường Tiểu học Tân Mai, bệnh viện quốc tế Shink Mark, sân bay quốc tế Long Thành,&hellip;Hơn nữa, nhờ hệ thống giao thông kết nối thông suốt, cư dân Paradise Riverside còn dễ dàng tiếp cận Depot metro, làng đại học Quốc gia TPHCM, đại học Fulbright, khu du lịch Suối Tiên, Bệnh viện Ung Bướu 2, bến xe Miền Đông mới, khu công nghệ cao quận 9, hệ thống tiện ích đẳng cấp của khu đô thị Vincity&hellip;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong><span style=\"font-size:22px;\"><span style=\"color:#f58220;\">KHÔNG GIAN SỐNG TUYỆT VỜI</span></span></strong>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/khong-gian.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Với quy mô lên đến hơn 156 ha nhưng phần lớn diện tích của Paradise Riverside chủ yếu dành cho công trình mảng xanh, mặt nước nhằm mang đến cho các cư dân một không gian sống hiện đại nhưng vẫn gần gũi với thiên nhiên, sông nước. Bên cạnh các công viên ven sông, Paradise Riverside còn được bố trí 17 công viên lớn nhỏ đan xen với các dãy nhà tạo nên sự thoáng đãng cho toàn bộ khu vực của dự án.\r\n</p>\r\n\r\n<p>\r\n	Sau những giờ làm việc căng thẳng hay vào bất cứ thời điểm nào trong ngày, mọi thành viên trong gia đình đều có thể dạo bước trên những con đường xanh mát để tận hưởng bầu không khí trong lành, mát mẻ. Hay chỉ đơn thuần là cùng con trẻ thoả thích vui đùa, cùng những người thân yêu tận hưởng những giai điệu du dương trên du thuyền đẳng cấp.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\"><span style=\"font-size:22px;\">HẠ TẦNG CHẤT LƯỢNG</span></span></strong>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/ha-tang.jpg\" style=\"width: 80%; height: 80%;\"></span></span></strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Hạ tầng của Paradise Riverside được đầu tư theo tiêu chuẩn cao cấp nhất và thiết kế hài hòa với quy hoạch phát triển chung của thành phố Biên Hòa. Theo đó, các tuyến đường nội bộ của dự án rộng từ 14 &ndash; 67 m2, kết nối thông suốt với các tuyến đường huyết mạch xung quanh; vỉa hè rộng thoáng; hệ thống điện âm, nước thủy cục; hệ thống viễn thông đầy đủ; hệ thống nước thải và nước mưa riêng biệt&hellip;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><strong>GIÁ TRỊ GIA TĂNG BỀN VỮNG</strong></span>\r\n</h2>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/don.jpg\" style=\"width: 80%; height: 80%;\">\r\n</h2>\r\n\r\n<p>\r\n	Một điểm cộng thêm cho Paradise Riverside là nằm gần nhiều khu công nghiệp quy mô lớn như Amata, Long Thành, Tam Phước, khu công nghệ cao quận 9,&hellip;với hàng chục ngàn chuyên gia, kỹ sư, người lao động sinh sống và làm việc. Hơn nữa, dự án còn nằm liền kề du lịch Sơn Tiên, tương lai sẽ thu hút một lượng lớn du khách nên tiềm năng khai thác kinh doanh thương mại rất lớn. Thêm vào đó là hiện nay, hệ thống hạ tầng của khu vực dự án tọa lạc ngày càng hoàn thiện cùng với việc xây dựng sân bay quốc tế Long Thành sẽ sớm biến nơi đây trở thành &ldquo;đô thị sân bay&rdquo; tầm cỡ khu vực. Chính những yếu tố này đảm bảo cho giá trị bất động sản của Paradise Riverside gia tăng bền vững.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>ĐÓN ĐẦU VÙNG ĐÔ THỊ TPHCM</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/do-thi.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Bên cạnh TPHCM, thành phố Biên Hòa đang trở thành cực tăng trưởng rất mạnh trong vùng kinh tế trọng điểm phía Nam. Trong khi đó quỹ đất của TPHCM ngày càng khan hiếm, buộc phải mở rộng không gian đô thị sang các vùng phụ cận theo đề án quy hoạch Vùng TPHCM. Điều này mở ra cơ hội lớn cho thị trường bất động sản mà Paradise Riverside là dự án được hưởng lợi trực tiếp do chỉ cách quận 9 (TPHCM) chỉ một con sông Đồng Nai.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>CƠ HỘI ĐẦU TƯ HẤP DẪN</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/paradiseriverside/sinh-loi.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Nằm cách TPHCM chỉ bởi một con sông nhưng Paradise Riverside có giá bán chỉ từ 750 triệu đồng/nền, áp dụng lịch thanh toán linh hoạt. Mức giá này khá cạnh tranh so với mặt bằng giá đất khu vực và tiềm năng của dự án mang lại. Xét về sự phát triển của thị trường đất nền vùng ven TPHCM, nhiều ý kiến cho rằng Biên Hòa đang ở bước khởi đầu của giai đoạn tăng trưởng. Trong tương lai, giá bất động sản tại đây sẽ còn tiếp tục tăng mạnh vì hạ tầng đang ngày càng kết nối tốt hơn. Do đó, đầu tư hay an cư tại Paradise Riverside ngay thời điểm này là cơ hội tốt nhất với mức đầu tư hợp lý nhất để tối đa hóa lợi nhuận.\r\n</p>', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26358.613674494347!2d106.8754305369525!3d10.869999370675067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174df94748d65a9%3A0x19908d2ea49cf57d!2sParadise+Riverside+-+diaockimoanhtpm.com!5e0!3m2!1svi!2s!4v1538709814511\" width=\"100%\" height=\"380\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, 1, 0, 30, 1, NULL, 1, '2018-09-27 02:30:40', '2018-10-05 03:34:25', 35),
(2, 'Khu Đô Thị Mega City 2', 'khu-do-thi-mega-city-2', 1, 'images/uploads/images/datnen/megacity2/cm1-1.jpg', '', '<p>\r\n	Với định hướng trở thành &ldquo;đô thị hạt nhân&rdquo; của thành phố Nhơn Trạch, Mega City 2 hứa hẹn sẽ là nơi mang lại cuộc sống thịnh vượng và cơ hội đầu tư hấp dẫn nhất cho khách hàng.\r\n</p>', '<h2 style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/img8.jpg\" style=\"width: 80%; height: 80%;\">\r\n</h2>\r\n\r\n<p>\r\n	Khách hàng mua Mega City 2 sẽ được hưởng nhiều chương trình khuyến mãi hấp dẫn. Cụ thể, bên cạnh chương trình <span style=\"font-size:18px;\"><strong>tặng thẻ cào 5 &ndash; 10 chỉ vàng và rút thăm trúng thưởng giá trị cao</strong></span> trong ngày mở bán, khách hàng giao dịch thành công còn được tham gia chương trình rút thăm may mắn &ldquo;<span style=\"color:#e74c3c;\"><strong><span style=\"font-size:18px;\">Mua đất vàng &ndash; Trúng xe sang</span></strong></span>&rdquo; được tổ chức vào cuối năm 2018. Đây là chương trình khuyến mãi lớn nhất của Kim Oanh Group từ trước đến nay với tổng giá trị lên đến<span style=\"font-size:18px;\"><strong><span style=\"color:#e74c3c;\"> 35,5 tỉ đồng</span></strong></span> nhân dịp kỉ niệm 10 năm thành lập Công ty cổ phần Địa ốc Kim Oanh. Cơ cấu giải thưởng gồm:\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Mercedes- Benz GLC 300</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Honda CR-V</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Honda City</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>20 xe gắn máy Honda SH</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>20 xe Honda Air Blade&nbsp;</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>25 điện thoại iPhone X</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>30 laptop Macbook Air</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>35 smart tivi Sony 43 inch</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;40 quạt làm mát không khí Sunhouse Shd774</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp;50 điện thoại Oppo A71 </strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>và hàng ngàn quà tặng giá trị khác.</strong>\r\n</p>\r\n\r\n<p>\r\n	Đây chính là <span style=\"font-size:18px;\"><span style=\"color:#f1c40f;\"><strong>cơ hội đầu tư vàng</strong></span></span> dành cho các nhà đầu tư bởi đất nền khu vực vệ tinh của TPHCM đang tăng giá từng ngày.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>TỔNG QUAN</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/1-min.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		<strong>Vị trí:&nbsp;</strong>Tọa lạc giữa bốn tuyến đường: 25C, 319, Tôn Đức Thắng và Nguyễn Hữu Cảnh, trung tâm thành phố Nhơn Trạch, tỉnh Đồng Nai\r\n	</li>\r\n	<li>\r\n		<strong>Quy mô:&nbsp;</strong>84 ha, cung cấp hơn 3.100 sản phẩm\r\n	</li>\r\n	<li>\r\n		<strong>Đầu tư và phân phối:&nbsp;</strong>Kim Oanh Group\r\n	</li>\r\n	<li>\r\n		<strong>Hạ tầng:&nbsp;</strong>Đường nhựa rộng từ 13-100m, hệ thống điện âm, nước thủy cục, mạng lưới viễn thông, hệ thống nước thải và nước mưa riêng biệt&hellip;\r\n	</li>\r\n	<li>\r\n		<strong>Tiện ích nội khu:&nbsp;</strong>Trung tâm thương mại, công viên cảnh quan, khu phức hợp thể thao ngoài trời (hồ bơi, sân tennis, sân bóng rổ&hellip;), trung tâm y tế, khu vui chơi trẻ em, trường học,&hellip;\r\n	</li>\r\n	<li>\r\n		<strong>Tiện ích liên kết:&nbsp;</strong>Bệnh viện đa khoa Nhơn Trạch, sân bay quốc tế Long Thành, siêu thị VN Mart, trung tâm triển lãm &ndash; hội chợ quốc tế Nhơn Trạch 107 héc ta, trường Trung cấp Kỹ thuật Đồng Nai, trường THCS Nguyễn Bỉnh Khiêm, trường THCS Phú Hội, ngân hàng, khu du lịch sinh thái, cụm công nghiệp&hellip;\r\n	</li>\r\n	<li>\r\n		<strong>Pháp lý:&nbsp;</strong>Minh bạch, đầy đủ\r\n	</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>VỊ TRÍ</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/so-do-vi-tri-mega-city-2.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Mega City nằm giữa bốn tuyến đường chiến lược của thành phố Nhơn Trạch gồm đường Nguyễn Hữu Cảnh, Tôn Đức Thắng, 319 và 25C (rộng 100 mét). Bao quanh dự án là hàng loạt tuyến đường huyết mạch kết nối thông suốt với các khu vực trọng điểm của TPHCM, Đồng Nai, Bình Dương, Bà Rịa Vũng Tàu và các tỉnh miền Tây. Chẳng hạn như đường Hùng Vương, Lý Thái Tổ, cao tốc TPHCM &ndash; Long Thành &ndash; Dầu Giây, cao tốc Bến Lức &ndash; Long Thành, đường Mỹ Phước &ndash; Tân Vạn &ndash; Nhơn Trạch (Vành đai 3), cao tốc Biên Hòa &ndash; Vũng Tàu&hellip; Đặc biệt, khi các cây cầu nối Nhơn Trạch với quận 2, quận 9 và Cần Giờ được triển khai xây dựng kết hợp với hệ thống cảng quốc tế Cát Lái, Cái Mép &ndash; Thị Vải, sân bay quốc tế Long Thành&hellip;sẽ là &ldquo;đòn bẩy&rdquo; giúp Nhơn Trạch phát triển bùng nổ, mở toang cánh cửa giao thương và trở thành vùng đất vàng khai thác kinh doanh. Cùng với đó, giá trị bất động sản tại Mega City 2 sẽ không ngừng gia tăng.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>TIỆN ÍCH</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/tienich1.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Quy mô lên đến 84 ha nhưng phần lớn diện tích của Mega City 2 chủ yếu dành cho các công trình dịch vụ, tiện ích phục vụ nhu cầu cuộc sống hàng ngày của cư dân và khu vực lân cận. Nhiều tiện ích cao cấp có thể kể đến như hơn 2,6 ha đất thương mại &ndash; dịch vụ; 3,1 ha trường học; 2,5 ha công viên cây xanh; 5.320 m2 đất trung tâm y tế; 5.592 m2 đất bưu điện; 1.558 m2 trung tâm sinh hoạt cộng đồng; khu phức hợp thể thao ngoài trời, khu vui chơi cho trẻ em; đài phun nước; vườn ươm&hellip; đảm bảo cho cư dân cuộc sống tiện nghi nhất.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Bên cạnh hệ thống tiện ích nội khu, Mega City 2 còn được thụ hưởng mọi tiện ích sẵn có của thành phố Nhơn Trạch . Từ dự án chỉ mất vài phút là đến UBND huyện Nhơn Trạch, bệnh viện Đa khoa Nhơn Trạch, bưu điện Nhơn Trạch; trung tâm thể dục &ndash; thể thao huyện Nhơn Trạch, siêu thị VN Mart; trường Trung cấp Kỹ thuật Đồng Nai, trường THCS Nguyễn Bỉnh Khiêm, trường THCS Phú Hội; hệ thống ngân hàng Agribank, VietinBank; trung tâm triển lãm &ndash; hội chợ quốc tế Nhơn Trạch 107 héc ta, sân bay quốc tế Long Thành, khu du lịch sinh thái, sân golf&hellip; Đặc biệt, khi cầu nối quận 2, quận 9 với Nhơn Trạch hoàn thành, cư dân Mega City 2 còn dễ dàng tiếp cận hệ thống tiện ích và dịch vụ đẳng cấp của TPHCM.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<strong><span style=\"color:#f58220;\"><span style=\"font-size:22px;\">QUY HOẠCH CHUẨN MỰC</span></span></strong>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/img4.jpg\" style=\"width: 80%; height: 80%;\"></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Với mục tiêu trở thành &ldquo;đô thị hạt nhân&rdquo; của thành phố Nhơn Trạch, khu đô thị thương mại Mega City 2 được Kim Oanh Group quy hoạch và đầu tư hạ tầng theo chuẩn mực quốc tế với các tuyến đường nội bộ rộng từ 13 &ndash; 100 mét, vỉa hè phủ kín mảng xanh, hệ thống viễn thông, điện âm, nước thủy cục, hệ thống thoát nước mưa và nước thải riêng biệt&hellip; Hệ thống tiện ích và các dãy nhà phố của Mega City 2 cũng được bố trí hài hòa, hợp lý tạo ra một không gian sống sang trọng, đẳng cấp cho cư dân.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<br>\r\n	Đặc biệt, Mega City 2 đã hoàn thiện pháp lý nên khách hàng hoàn toàn có thể yên tâm giao dịch.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>ĐA DẠNG TIỆN ÍCH</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/570.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Quy mô lên đến 84 ha nhưng phần lớn diện tích của Mega City 2 chủ yếu dành cho các công trình dịch vụ, tiện ích phục vụ nhu cầu cuộc sống hàng ngày của cư dân và khu vực lân cận. Nhiều tiện ích cao cấp có thể kể đến như hơn 2,6 ha đất thương mại &ndash; dịch vụ; 3,1 ha trường học; 2,5 ha công viên cây xanh; 5.320 m2 đất trung tâm y tế; 5.592 m2 đất bưu điện; 1.558 m2 trung tâm sinh hoạt cộng đồng; khu phức hợp thể thao ngoài trời, khu vui chơi cho trẻ em; đài phun nước; vườn ươm&hellip; đảm bảo cho cư dân cuộc sống tiện nghi nhất.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Bên cạnh hệ thống tiện ích nội khu, Mega City 2 còn được thụ hưởng mọi tiện ích sẵn có của thành phố Nhơn Trạch . Từ dự án chỉ mất vài phút là đến UBND huyện Nhơn Trạch, bệnh viện Đa khoa Nhơn Trạch, bưu điện Nhơn Trạch; trung tâm thể dục &ndash; thể thao huyện Nhơn Trạch, siêu thị VN Mart; trường Trung cấp Kỹ thuật Đồng Nai, trường THCS Nguyễn Bỉnh Khiêm, trường THCS Phú Hội; hệ thống ngân hàng Agribank, VietinBank; trung tâm triển lãm &ndash; hội chợ quốc tế Nhơn Trạch 107 héc ta, sân bay quốc tế Long Thành, khu du lịch sinh thái, sân golf&hellip; Đặc biệt, khi cầu nối quận 2, quận 9 với Nhơn Trạch hoàn thành, cư dân Mega City 2 còn dễ dàng tiếp cận hệ thống tiện ích và dịch vụ đẳng cấp của TPHCM.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>TIỀM NĂNG SINH LỜI ĐỘT PHÁ</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/img6.jpg\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Nằm ngay khu vực đang phát triển mạnh về hạ tầng giao thông, đồng thời được bao quanh bởi hàng loạt công trình trọng điểm như sân bay quốc tế Long Thành, cảng quốc tế Cát Lái, cụm cảng Cái Mép &ndash; Thị Vải, Trung tâm triển lãm &ndash; hội chợ quốc tế Nhơn Trạch, cụm công nghiệp Nhơn Trạch,&hellip;nên tại Mega City 2 rất thuận lợi khai thác kinh doanh thương mại.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Hơn nữa, theo quy hoạch phát triển vùng kinh tế trọng điểm phía Nam, trong tương lai thành phố Nhơn Trạch không chỉ là đô thị vệ tinh của TPHCM mà còn trở thành trung tâm giao thương quốc tế với những lợi thế lớn về hệ thống giao thông và vận chuyển hàng hóa, dịch vụ hoàn chỉnh từ đường bộ, đường sắt, đường thủy cho đến đường hàng không. Điều này sẽ đảm bảo cho giá trị bất động sản tại Mega City 2 không ngừng gia tăng cho các chủ nhân.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>ĐẦU TƯ AN TOÀN, HIỆU QUẢ</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/megacity2/img7.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Là dự án giàu tiềm năng bậc nhất tại Nhơn Trạch nhưng Mega City 2 có giá bán chỉ từ 650 triệu đồng/nền, thanh toán linh hoạt trong nhiều đợt. Theo dự báo của các chuyên gia lẫn các công ty nghiên cứu thị trường, phân khúc đất nền vùng ven vẫn còn rất nhiều tiềm năng khi hệ thống hạ tầng và giao thông đang ngày càng phát triển mạnh mẽ, giúp kết nối thuận tiện giữa các khu vực. Chính vì vậy, Mega City 2 sẽ là sản phẩm đầu tư cực kỳ hấp dẫn nhờ vị trí đặc biệt chiến lược của mình.\r\n</p>', NULL, NULL, NULL, NULL, 1, 0, 24, 1, NULL, 1, '2018-09-27 03:04:31', '2018-09-28 02:47:28', 36),
(3, 'Bến Cát Center City 2', 'ben-cat-center-city-2', 1, 'images/uploads/images/datnen/bencancity2/cm2.jpg', NULL, '<p>\r\n	Bến Cát Center City 2\r\n</p>', '<h2 style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/khuyen-mai-lon.jpg\" style=\"width: 80%; height: 80%;\">\r\n</h2>\r\n\r\n<p>\r\n	Bến Cát Center City 2 là một dự án giàu tiềm năng, đáp ứng tốt nhu cầu đầu tư lẫn an cư đang tăng mạnh tại thị xã Bến Cát nhưng giá bán chỉ từ <span style=\"color:#e74c3c;\"><strong><span style=\"font-size:18px;\">480 triệu đồng/nền</span></strong></span>, hứa hẹn mang lại tỷ suất lợi nhuận rất cao cho các chủ nhân khi Bến Cát lên đô thị loại 3.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Đặc biệt, khách hàng mua Bến Cát Center City 2 sẽ được tham gia chương trình khuyến mãi lớn nhất từ trước đến nay của Công ty cổ phần Địa ốc Kim Oanh với <span style=\"color:#e74c3c;\"><span style=\"font-size:18px;\"><strong>tổng giá trị lên đến 35 tỉ đồng</strong></span></span> nhân kỷ niệm 10 năm thành lập công ty. Theo đó, bên cạnh thẻ cào trị giá<strong> <span style=\"color:#e74c3c;\"><span style=\"font-size:18px;\">3 &ndash; 6 chỉ vàng và rút thăm trúng nhiều giải thưởng giá trị</span></span> cao</strong> trong ngày mở bán, khách hàng còn được tham dự chương trình rút thăm may mắn vào cuối năm 2018 với cơ cấu giải thưởng gồm:\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Mercedes-Benz GLC 300</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Honda CR-V</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Honda City</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>20 xe gắn máy Honda SH</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>20 xe gắn máy Honda Airblade</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>25 điện thoại iPhone X</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>30 Laptop Apple Macbook Air</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>35 Smart Tivi Sony 43 Inch</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>40 Quạt làm mát không khí Sunhouse Shd774</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>50 Điện thoại Oppo A71 </strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>và hàng ngàn quà tặng giá trị khác</strong>\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><strong><span style=\"font-size:22px;\">TỔNG QUAN</span></strong></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><strong><span style=\"font-size:22px;\"><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/tong-quan-an-dien.jpg\" style=\"width: 80%; height: 80%;\"></span></strong></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Vị trí:&nbsp;</strong>Ngã 4 đường Hùng Vương và đường Mỹ Phước &ndash; An Điền &ndash; An Tây, thị xã Bến Cát, tỉnh Bình Dương\r\n</p>\r\n\r\n<p>\r\n	<strong>Quy mô:&nbsp;</strong>8,6 héc ta\r\n</p>\r\n\r\n<p>\r\n	<strong>Chủ đầu tư:&nbsp;</strong>Công ty cổ phần Đầu tư Phát triển Thuận Lợi (thành viên Kim Oanh Group)\r\n</p>\r\n\r\n<p>\r\n	<strong>Xây dựng hạ tầng:&nbsp;</strong>Công ty cổ phần Xây dựng An Phước Bình Dương (thành viên Kim Oanh Group)\r\n</p>\r\n\r\n<p>\r\n	<strong>Phát triển và phân phối:&nbsp;</strong>Công ty cổ phần Địa ốc Kim Oanh\r\n</p>\r\n\r\n<p>\r\n	<strong>Sản phẩm:&nbsp;</strong>Đất nền diện tích từ 100 &ndash; 200m2\r\n</p>\r\n\r\n<p>\r\n	<strong>Hạ tầng:</strong>&nbsp;đường nội bộ trải nhựa 10 &ndash; 42m, hệ thống điện âm, hệ thống cấp &ndash; thoát nước, viễn thông&hellip;\r\n</p>\r\n\r\n<p>\r\n	<strong>Hệ thống tiện ích:</strong>&nbsp;Phố thương mại, công viên, trường mầm non, trường Tiểu học An Điền, trường Tiểu học Trần Quốc Tuấn, trường quốc tế Phù Đổng, trrường Đại học Quốc tế Việt Đức, chợ An Điền, chợ Bến Cát, TTHC thị xã Bến Cát, trung tâm điện máy Thiên Hòa, trung tâm triển lãm Bến Cát, bệnh viện đa khoa Mỹ Phước, khu đô thị &ndash; công nghiệp Mỹ Phước, KCN Rạch Bắp, KCN Protrade Singapore&hellip;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>VỊ TRÍ</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/21vi-tri.png\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Với quy mô 8,6ha, khu đô thị Bến Cát Center City 2 tọa lạc ngay trung tâm thị xã Bến Cát và được bao quanh bởi khu dân cư hiện hữu sầm uất. Đây là khu vực đang phát triển rất mạnh của thị xã Bến Cát cũng như tỉnh Bình Dương với hệ thống giao thông kết nối thông suốt và được đầu tư ngày càng hoàn chỉnh gồm đại lộ Hùng Vương, đường Mỹ Phước &ndash; An Điền &ndash; An Tây, đường ĐT 748, ĐT 744, ĐT 749, đường 30-4, quốc lộ 13, Ngô Quyền, An Điền &ndash; Bến Tranh&hellip;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Nhờ đó, từ Bến Cát Center City 2 dễ dàng kết nối đến Tây Ninh, Bình Phước, TPHCM, thành phố Thủ Dầu Một và thành phố mới Bình Dương. Như vậy, Bến Cát Center City 2 giống như một trung tâm tập kết hàng hóa, dịch vụ trung chuyển đi các thị trường tiêu thụ của doanh nghiệp hoạt động trong các khu công nghiệp trên địa bàn thị xã Bến Cát.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>TIỆN NGHI TRONG TẦM TAY</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/so-do-tien-ich.png\" style=\"width: 80%; height: 80%;\">\r\n</p>\r\n\r\n<p>\r\n	Thị xã Bến Cát đang được đầu tư mạnh mẽ để trở thành đô thị loại 2 trước năm 2020. Chính vì vậy, lĩnh vực thương mại &ndash; dịch vụ tại đây cũng đang bùng nổ nhằm đáp ứng nhu cầu của người dân. Chỉ mất từ 2-7 phút, mọi nhu cầu của cư dân của Bến Cát Center City 2 sẽ được đáp ứng ngay với phố thương mại, công viên, trường mầm non, trường Tiểu học An Điền, trường Tiểu học Trần Quốc Tuấn, trường THCS &ndash; Mẫu giáo Phù Đổng, chợ An Điền, chợ Bến Cát, TTHC thị xã Bến Cát, trung tâm điện máy Thiên Hòa, trung tâm triển lãm Bến Cát, bệnh viện đa khoa Mỹ Phước&hellip;\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Chỉ mất khoảng 15 phút, từ Bến Cát Center City 2 cư dân cũng sẽ tiếp cận trung tâm thành phố mới Bình Dương &ndash; nơi có thể trải nghiệm những dịch vụ cao cấp nhất nhà hàng, khu vui chơi giải trí, khách sạn 5 sao, trung tâm hội nghị, triển lãm, chợ đêm&hellip;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>ĐÔ THỊ THỊNH VƯỢNG</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/cm2.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Chính quyền thị xã Bến Cát đã xác định sẽ đẩy mạnh tái cơ cấu kinh tế, phát triển công nghiệp và thương mại &ndash; dịch vụ cũng như cơ sở hạ tầng để xây dựng một đô thị thịnh vượng, thu nhập và đời sống của người dân được nâng cao. Theo đó, hàng loạt cơ sở thương mại &ndash; dịch vụ lớn đã và đang chuẩn bị được đầu tư hứa hẹn đưa thị xã Bến Cát trở thành một trung tâm kinh doanh sôi động. Tất cả làm nền tảng cho một đô thị Bến Cát văn minh, thịnh vượng và thu hút các doanh nhân, chuyên gia đến làm ăn, sinh sống.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>HẠ TẦNG VÀ PHÁP LÝ HOÀN CHỈNH</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/view-truong-hoc.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Bến Cát Center City 2 được Kim Oanh Group chuẩn bị từ khá lâu và dành nhiều tâm huyết đầu tư hứa hẹn mang đến một sản phẩm chất lượng giải &ldquo;cơn khát&rdquo; đầu tư đất nền trong dịp cuối năm 2017. Khách hàng giao dịch Bến Cát Center City 2 hoàn toàn an tâm vì dự án đã có pháp lý hoàn chỉnh, quy hoạch và hạ tầng cũng được đầu tư rất bài bản. Đặc biệt, chủ đầu tư cam kết sẽ bàn giao nền đúng thời hạn hợp đồng cho khách hàng để có thể xây nhà ở ngay.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>CƠ HỘI ĐẦU TƯ MỚI</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/view-can-canh-khu-pho-1.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Tính đến giữa năm 2017, thị xã Bến Cát đang có khoảng 10 khu công nghiệp lớn như Mỹ Phước 1,2,3, Rạch Bắp, Singapore Ascendas &ndash; Protrade, Mapletree, Việt Hương 2&hellip; thu hút rất nhiều doanh nghiệp đến mở nhà máy và hàng chục ngàn lao động đổ về làm việc. Chỉ tính riêng doanh nghiệp nước ngoài đã có 461 dự án với tổng số vốn hơn 5,5 tỉ đô la Mỹ.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Cùng với đó, người lao động từ khắp nơi cũng sẽ đổ về đây làm việc kéo theo nhu cầu về nhà ở và sử dụng dịch vụ tăng cao. Điều này sẽ biến khu đô thị Bến Cát Center City 2 trở thành điểm đến an cư cũng như đầu tư gia tăng giá trị bất động sản cực kỳ hấp dẫn.\r\n</p>', NULL, NULL, NULL, NULL, 1, 0, 17, -1, NULL, 1, '2018-09-28 03:06:32', '2018-09-28 03:06:32', 42),
(4, 'Golden Center City 3', 'golden-center-city-3', 1, 'images/uploads/images/datnen/goldencentercity3/cm3.jpg', NULL, '<p>\r\n	Golden Center City 3\r\n</p>', '<h2 style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/1110x950-khuyen-mai.png\" style=\"width: 80%; height: 80%;\">\r\n</h2>\r\n\r\n<p>\r\n	Tiềm năng lớn nhưng giá bán của Golden Center City 3 chỉ từ <span style=\"color:#e74c3c;\"><span style=\"font-size:18px;\"><strong>540 triệu đồng/nền</strong></span></span>. Đây là mức giá rất cạnh tranh dành cho những khách hàng đang muốn tạo lập chốn an cư hoặc đầu tư sinh lời trong bối cảnh mặt bằng giá phân khúc đất nền đang ngày càng tăng và khan hiếm.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Đặc biệt, khách hàng mua Golden Center City 3 sẽ được tham gia chương trình khuyến mãi lớn nhất từ trước đến nay của Công ty cổ phần Địa ốc Kim Oanh với tổng giá trị lên đến 35 tỉ đồng nhân kỷ niệm 10 năm thành lập công ty. Theo đó, bên cạnh thẻ cào trị giá<span style=\"color:#e74c3c;\"><span style=\"font-size:18px;\"> 5 &ndash; 10 chỉ vàng và rút thăm trúng nhiều giải thưởng giá trị cao</span></span> trong ngày mở bán, khách hàng còn được tham dự chương trình rút thăm may mắn <span style=\"color:#e74c3c;\"><span style=\"font-size:22px;\">&ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo;</span></span> vào cuối năm 2018 với cơ cấu giải thưởng gồm:\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Mercedes Benz GLC 300, </strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Honda CR-V, </strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Honda City, </strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>20 xe gắn máy Honda SH, </strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>20 xe gắn máy Honda Airblade, </strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>25 điện thoại IPhone X và hàng ngàn quà tặng giá trị khác.</strong>\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>TỔNG QUAN</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/tong-quan.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Vị trí:</strong>&nbsp;Mặt tiền đại lộ Bắc Sơn Long Thành, Tp. Biên Hòa, Đồng Nai\r\n</p>\r\n\r\n<p>\r\n	<strong>Chủ đầu tư:</strong>&nbsp;Công ty cổ phần Địa ốc Phú Thuận Lợi (thành viên Kim Oanh Group)\r\n</p>\r\n\r\n<p>\r\n	<strong>Xây dựng hạ tầng:</strong>&nbsp;Công ty cổ phần Xây dựng An Phước Bình Dương (thành viên Kim Oanh Group)\r\n</p>\r\n\r\n<p>\r\n	<strong>Phát triển và phân phối:&nbsp;</strong>Công ty cổ phần Địa ốc Kim Oanh\r\n</p>\r\n\r\n<p>\r\n	<strong>Hạ tầng:&nbsp;</strong>Đường nhựa rộng 12 &ndash; 60m; hệ thống điện âm, nước thủy cục, viễn thông&hellip;\r\n</p>\r\n\r\n<p>\r\n	<strong>Quy mô:&nbsp;</strong>hơn 19 ha\r\n</p>\r\n\r\n<p>\r\n	<strong>Sản phẩm: 815 nền đất diện tích 72 &ndash; 171m2</strong>\r\n</p>\r\n\r\n<p>\r\n	<strong>Pháp lý:&nbsp;</strong>Minh bạch, đầy đủ\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>VỊ TRÍ</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/sdvt-tam-phuoc-fa-moi.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Tọa lạc ngay mặt tiền đường Bắc Sơn &ndash; Long Thành, cách sân bay quốc tế Long Thành chỉ 7 phút, cách trung tâm thành phố Biên Hòa khoảng 10 phút và di chuyển đến TPHCM cũng chỉ mất khoảng 25 phút, khu đô thị Golden Center City 3 có rất nhiều tiềm năng phát triển trong tương lai gần. Bên cạnh đường Bắc Sơn &ndash; Long Thành, bao quanh Golden Center City 3 còn có hệ thống giao thông kết nối thông suốt gồm đường Phùng Hưng, cao tốc TPHCM &ndash; Long Thành &ndash; Dầu Giây, đường Võ Nguyên Giáp, quốc lộ 51, đường An Viễn &ndash; Hưng Thịnh, quốc lộ 1&hellip; Trong tương lai sẽ có thêm các tuyến đường mới được xây dựng như cao tốc Biên Hòa &ndash; Vũng Tàu, Vành đai 4&hellip; Đây cũng là khu vực đang được đầu tư hệ thống hạ tầng hiện đại cùng các tiện ích cao cấp phục vụ cho sân bay quốc tế Long Thành và đáp ứng mục tiêu trở thành &ldquo;thành phố sân bay&rdquo; tầm cỡ châu Á.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>ĐA DẠNG TIỆN ÍCH</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/so-do-tien-ich-28-11.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Golden Center City 3 được quy hoạch hiện đại, đáp ứng tối đa nhu cầu an cư của cư dân với hệ thống tiện ích nội khu gồm khu thương mại &ndash; dịch vụ, trường học, công viên, khu thể dục thể thao&hellip; Bên cạnh đó, từ Golden Center City 3 còn dễ dàng tiếp cận các tiện ích liên kết đa dạng như UBND xã An Viễn; sân bay quốc tế Long Thành; các khu công nghiệp An Phước, Long Đức, Tam Phước, Giang Điền; chợ An Bình; các trường Đại học Tài nguyên Môi trường, Đại học Sỹ quan Lục quân 2, Đại học Tăng Thiết Giáp; trường mẫu giáo An Viễn; trường Tiểu học An Viễn; trường THCS Hòa Bình; khu du lịch sinh thái Thác Giang Điền, sân golf Long Thành&hellip; Tất cả đảm bảo cho cư dân một cuộc sống tiện nghi, thuận tiện trong sinh hoạt, công việc hàng ngày.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>PHÁT TRIỂN SÔI ĐỘNG</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/can-canh-chung-cu-tam-phuoc-(1).jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Theo quy hoạch phát triển của tỉnh Đồng Nai đến năm 2020, tầm nhìn đến 2030, Golden Center City 3 sẽ nằm ngay trung tâm khu vực phát triển trọng điểm và năng động bậc nhất, được chú trọng đầu tư về mọi mặt nhằm trở thành &ldquo;thành phố sân bay&rdquo; hiện đại bậc nhất khu vực châu Á.\r\n</p>\r\n\r\n<p>\r\n	Sở hữu hệ thống giao thông kết nối thông suốt và lợi thế nằm gần sân bay quốc tế Long Thành, đồng thời được bao quanh bởi nhiều khu công nghiệp quy mô lớn không chỉ biến Golden Center City 3 thành chốn an cư lý tưởng mà còn là một sản phẩm đầu tư cực kỳ tiềm năng. Bởi khi sân bay quốc tế Long Thành đi vào hoạt động sẽ kéo theo việc phát triển thương mại &ndash; dịch vụ và các tiện ích cao cấp. Khi đó, Golden Center City 3 sẽ trở thành mảnh &ldquo;đất vàng&rdquo; mang lại giá trị gia tăng rất lớn cũng như cơ hội kinh doanh hấp dẫn cho các chủ nhân.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>HẠ TẦNG HIỆN ĐẠI VÀ CAO CẤP</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/can-canh-truong-hoc.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Là dự án thuộc dòng sản phẩm &ldquo;Golden&rdquo; được Kim Oanh Group dành nhiều tậm huyết đầu tư, khu đô thị Golden Center City 3 được xây dựng hệ thống hạ tầng chất lượng với các tuyến đường rộng từ 12-60m với vỉa hè rộng thoáng và nhiều cây xanh, mang lại môi trường sống xanh mát, hiện đại cho cư dân. Các hệ thống điện, cấp &ndash; thoát nước và viễn thông của dự án cũng được đầu tư cao cấp, đáp ứng những tiêu chuẩn khắt khe nhất.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>CƠ HỘI GIAO THƯƠNG TỪ &quot; THÀNH PHỐ SÂN BAY&quot;</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/goldencentercity3/san-bay-long-thanh.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Trong quy hoạch định hướng phát triển, xã Tam Phước được tỉnh Đồng Nai xác định là địa bàn trọng điểm phát triển đô thị, cơ cấu kinh tế theo hướng công nghiệp, tiểu thủ công nghiệp và dịch vụ &ndash; thương mại, phát triển cơ sở hạ tầng. Trong tương lai, khu vực này sẽ là một &ldquo;thành phố sân bay&rdquo; hiện đại với đầy đủ các loại hình thương mại, dịch vụ thu hút doanh nghiệp, thương nhân đến làm ăn, sinh sống.\r\n</p>\r\n\r\n<p>\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Bản thân Golden Center City 3 cũng được kết nối trực tiếp với một loạt dự án khu đô thị quy mô lớn, tích hợp nhiều tiện ích cao cấp mở ra một triển vọng về một đô thị sôi động, hiện đại bậc nhất.Như vậy, giá trị bất động sản của Golden Center City 3 sẽ không ngừng gia tăng theo chiều hướng phát triển thương mại &ndash; dịch vụ của khu vực.\r\n</p>', NULL, NULL, NULL, NULL, 1, 0, 30, -1, NULL, 1, '2018-09-28 03:20:44', '2018-09-28 03:20:44', 43);
INSERT INTO `products` (`id`, `name`, `path`, `is_active`, `image`, `sub_image`, `description`, `content`, `num_bed`, `map`, `area`, `price`, `order`, `is_hot`, `location_id`, `direction_id`, `unit_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(5, 'Biên Hòa New Town 2', 'bien-hoa-new-town-2', 1, 'images/uploads/images/datnen/bienhoanewtown2/bienhoa.jpg', NULL, '<p>\r\n	Biên Hòa New Town 2\r\n</p>', '<h2 style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bencancity2/khuyen-mai-lon.jpg\" style=\"width: 80%; height: 80%;\">\r\n</h2>\r\n\r\n<p>\r\n	Khách hàng giao dịch thành công tại Bien Hoa New Town 2 sẽ được tham gia chương trình tri ân <span style=\"color:#e74c3c;\"><span style=\"font-size:18px;\">&ldquo;Mua đất vàng &ndash; Trúng xe sang&rdquo;</span></span> với <span style=\"font-size:18px;\"><span style=\"color:#e74c3c;\">tổng giá trị lên đến 35 tỉ đồng</span></span>, được tổ chức vào cuối năm 2018. Đây là chương trình lớn nhất từ trước đến nay của Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real) nhân dịp kỉ niệm 10 năm thành lập công ty. Cơ cấu giải thưởng gồm:\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Mercedes- Benz GLC 300</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Honda CR-V</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>1 xe Honda City</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>20 xe gắn máy Honda SH</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>20 xe Honda Air Blade</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>25 điện thoại iPhone X</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>30 laptop Macbook Air</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>35 smart tivi Sony 43 inch</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>40 quạt làm mát không khí Sunhouse Shd774</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<strong>50 điện thoại Oppo A71 và hàng ngàn quà tặng giá trị khác.&nbsp;</strong>\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>TỔNG QUAN</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/tong-quan-bien-hoa-2.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Vị trí:&nbsp;</strong>Mặt tiền Nguyễn Thị Tồn, phường Bửu Hòa, thành phố Biên Hòa&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Quy mô:&nbsp;</strong>&nbsp;2,7 héc ta, gồm 164 sản phẩm&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Đầu tư và phân phối:&nbsp;</strong>Kim Oanh Group&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Hạ tầng:&nbsp;</strong>Đường nội bộ rộng 12-17,5 mét, hệ thống điện âm, nước thủy cục, hệ thống chiếu sáng, cây xanh,&hellip;&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Tiện ích liên kết:</strong>&nbsp;Chợ, trường học, trung tâm thương mại, khu du lịch, công viên, bệnh viện, sân golf, ga metro&hellip;&nbsp;\r\n</p>\r\n\r\n<p>\r\n	<strong>Pháp lý:&nbsp;</strong>Minh bạch Thanh toán: Linh hoạt trong nhiều đợt\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>VỊ TRÍ</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/1so-do-vi-tri.png\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Tọa lạc ngay mặt tiền đường Nguyễn Thị Tồn, nơi giao thoa của tam giác kinh tế trọng điểm phía Nam gồm TPHCM, Đồng Nai và Bình Dương, Bien Hoa New Town 2 có vị trí thuận lợi kết nối với nhiều tuyến đường như Bùi Hữu Nghĩa, Quốc lộ 1K, Quốc lộ 1A, đường Vành đai 3, cầu An Hảo,&hellip; Đây là những tuyến đường huyết mạch giúp cho việc di chuyển của cư dân dễ dàng, nhanh chóng đến TPHCM và các tỉnh, thành lân cận như Bình Dương, Bà Rịa - Vũng Tàu,&hellip;&nbsp;\r\n</p>\r\n\r\n<p>\r\n	Trong tương lai, xung quanh khu vực Bien Hoa New Town 2 còn có thêm các công trình như đường nối cầu Bửu Hòa với Quốc lộ 1K, đường trục trung tâm hành chính Biên Hòa, đường cao tốc TPHCM &ndash; Chơn Thành, tuyến Metro Bến Thành &ndash; Suối Tiên kéo dài đến thành phố Biên Hòa,...Tất cả sẽ tạo nên một mạng lưới giao thông thông thoáng, giúp rút ngắn thời gian từ Bien Hoa New Town 2 đến các tỉnh, thành vùng kinh tế trọng điểm phía Nam. Kết hợp với tuyến giao thông đường thủy của sông Đồng Nai, hệ thống này sẽ tạo nên&ldquo;cú hích&rdquo; cho thành phố Biên Hòa phát triển đột phá, đồng thời giúp cho giá trị bất động sản có vị trí chiến lược như Bien Hoa New Town 2 tăng lên nhanh chóng.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>VƯỢNG KHÍ HỘI TỤ</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/vuon-khi-hoi-tu.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Hội tụ đầy đủ các yếu tố &ldquo;tam tài&rdquo; cho một bất động sản hàng đầu là &ldquo;cận thị, cận giang, cận lộ&rdquo;, Bien Hoa New Town 2 không chỉ nằm liền kề các đô thị đang phát triển năng động như thành phố Biên Hòa, thị xã Dĩ An (Bình Dương), quận 9 và quận Thủ Đức (TPHCM), giao thông kết nối liên hoàn mà còn được hưởng môi trường sống yên bình do được bao quanh bởi sông Đồng Nai. Theo phong thủy, địa thế &ldquo;tam tài&rdquo; này hứa hẹn sẽ mang đến cuộc sống sung túc, thịnh vượng cho các chủ nhân.&nbsp;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>TIỆN ÍCH TRONG TẦM TAY</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/tien-tich-hoan.png\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p>\r\n	Tại Bien Hoa New Town 2, mọi nhu cầu về giáo dục, y tế, vui chơi - giải trí của cư dân sẽ được đáp ứng nhanh chóng và hoàn hảo nhất. Cụ thể như chợ Bửu Hòa, bệnh viện Đa khoa Bửu Hòa, trường tiểu học Trần Văn Ơn, trường THCS Ngô Gia Tự, khu du lịch sinh thái Bửu Long, Bệnh viện Đa khoa Đồng Nai, công viên Nguyễn Văn Trị, trung tâm thương mại, trường mầm non, trung tâm hành chính tỉnh Đồng Nai,&hellip;Đó là chưa kể các tiện ích dịch vụ từ khu đô thị sinh thái ven sông Đồng Nai với quy mô 72 héc ta đang được tỉnh Đồng Nai quy hoạch phát triển.\r\n</p>\r\n\r\n<p>\r\n	Ngoài ra, từ Bien Hoa New Town 2 còn dễ dàng đến làng đại học Quốc gia TPHCM, bến xe Miền Đông mới, Bệnh viện Ung Bướu 2 hay đến các điểm du lịch nổi tiếng như khu du lịch Đền Hùng, khu du lịch Suối Tiên, sân golf Park,&hellip;phục vụ nhu cầu nghỉ ngơi, giải trí vào mỗi dịp cuối tuần. Khi tuyền metro Bến Thành - Suối Tiên đi vào hoạt động, chỉ trong vài phút cư dân Bien Hoa New Town 2 sẽ có mặt tại trung tâm sôi động của TPHCM để làm việc, vui chơi hay tham quan các lễ hội đặc sắc.\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>KHÔNG GIAN SỐNG TRỌN VẸN</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/khong-gian-song.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Một điểm cộng cho Bien Hoa New Town 2 là nằm gần sông Đồng Nai nên khí hậu trong lành, mát mẻ và có lợi cho sức khỏe. Còn gì tuyệt vời hơn, sau những giờ làm việc căng thẳng, bạn có thể tận hưởng những giây phút bình yên, thư thái cùng với những người thân yêu. Ở những thành phố đang phát triển nhanh như Biên Hòa, không gian xanh thuần khiết này còn quý giá hơn vàng.&nbsp;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>HẠ TẦNG HIỆN ĐẠI ĐỒNG BỘ</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/icon-ha-tang.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Bien Hoa New Town 2 được đầu tư hạ tầng đồng bộ và hiện đại với hệ thống điện âm, nước thủy cục, đường nội bộ rộng 12-17,5 mét, vỉa hè rộng thoáng với chất lượng tốt nhất. Mỗi căn nhà tại Bien Hoa New Town 2 không chỉ mang phong cách hiện đại mà còn được thiết kế với mặt tiền rộng thoáng, hài hòa giữa không gian sống và phần diện tích thương mại, giúp&nbsp; chủ nhân khai thác kinh doanh một cách thuận lợi nhất.&nbsp;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong>GIÁ TRỊ GIA TĂNG VƯỢT TRỘI</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"font-size:22px;\"><span style=\"color:#f58220;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/icon-gia-tang.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Nằm trong khu vực phát triển năng động, bao quanh nhiều khu công nghiệp quy mô lớn như Pouchen, Tân Đông Hiệp B, Amata, khu công nghiệp Biên Hòa 2, Linh Trung, khu công nghệ cao quận 9,&hellip; Bien Hoa New Town 2&nbsp; được phát triển với mục tiêu trở thành nơi an cư hiện đại cho các chuyên gia, doanh nhân đến sinh sống, làm việc tại Biên Hòa. Đây cũng&nbsp; chính là yếu tố để Bien Hoa New Town 2 phát huy tiềm năng khai thác kinh doanh thương mại, cũng như giúp giá trị bất động sản không ngừng gia tăng theo thời gian.&nbsp;\r\n</p>\r\n\r\n<h2 style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong>ĐẦU TƯ HÔM NAY, LỢI NHUẬN NGÀY MAI</strong></span></span>\r\n</h2>\r\n\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#f58220;\"><span style=\"font-size:22px;\"><strong><img alt=\"\" src=\"http://congtybdskimoanh.com/images/uploads/images/datnen/bienhoanewtown2/dau-tu.jpg\" style=\"width: 80%; height: 80%;\"></strong></span></span>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	Hội tụ nhiều ưu thế vượt trội, nhưng giá bán của Bien Hoa New Town 2 chỉ từ 14 triệu đồng/m2, thấp hơn rất nhiều so với giá đất tại các khu vực liền kề thuộc Biên Hòa, quận 9, Thủ Đức (TPHCM) và được thanh toán linh hoạt trong nhiều đợt. Đây là cơ hội đầu tư cực kỳ hấp dẫn cho các nhà đầu tư cũng như những ai đang tìm kiếm một nơi an cư tiện nghi hiện đại gần gũi với thiên nhiên trong bối cảnh giá đất đang tăng lên từng ngày. Trong bối cảnh TPHCM đang phát triển mạnh về phía đông thì việc đầu tư váo Bien Hoa New Town 2 càng nhiều triển vọng mang đến lợi nhận đột phá trong thời gian ngắn.&nbsp;\r\n</p>', NULL, NULL, NULL, NULL, 1, 0, 30, -1, NULL, 1, '2018-09-28 03:51:41', '2018-09-28 03:51:41', 44);

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
(41, NULL, NULL, NULL, NULL, '2018-09-27 04:09:45', '2018-09-27 04:09:45'),
(42, NULL, NULL, NULL, NULL, '2018-09-28 03:06:32', '2018-09-28 03:06:32'),
(43, NULL, NULL, NULL, NULL, '2018-09-28 03:20:44', '2018-09-28 03:20:44'),
(44, NULL, NULL, NULL, NULL, '2018-09-28 03:51:41', '2018-09-28 03:51:41'),
(45, NULL, NULL, NULL, NULL, '2018-10-02 09:40:25', '2018-10-02 09:40:25'),
(46, 'Khách hàng Golden Center City sẽ nhận sổ đỏ vào tháng 9', 'Theo thông tin từ Kim Oanh Group, hiện nay dự án Golden Center City đã hoàn thành toàn bộ hạ tầng cùng nhiều hạng mục tiện ích và các dãy nhà phố. Ngay trong tháng 9 này.', 'Khách hàng Golden Center City sẽ nhận sổ đỏ vào tháng 9', NULL, '2018-10-04 03:37:33', '2018-10-04 03:37:33'),
(47, 'Đồng Nai đề xuất xây cầu 5.700 tỷ nối Nhơn Trạch với Tp.HCM', 'UBND tỉnh Đồng Nai vừa yêu cầu Sở Giao thông - vận tải liên hệ với Sở Giao thông- vận tải TP.HCM để bàn về việc làm cầu Cát Lái, nối từ quận 2 - TP.HCM..', 'Đồng Nai đề xuất xây cầu 5,700 tỷ nối Nhơn Trạch với Tp,HCM', NULL, '2018-10-04 03:46:07', '2018-10-04 03:46:07'),
(48, 'Tập thể Kim Oanh Group “cháy” hết mình trong Teambuilding 2018', 'Sau một tháng chuẩn bị kỹ lưỡng, chương trình Teambuilding 2018 của Kim Oanh Group với chủ đề “Kim Oanh Group', 'Tập thể Kim Oanh Group “cháy” hết mình trong Teambuilding 2018', NULL, '2018-10-04 04:02:17', '2018-10-04 04:02:17'),
(49, 'Kim Oanh Group bàn giao sổ đỏ cho cư dân RichHome 2', 'Ngày 8-9-2018, Kim Oanh Group đã tổ chức lễ bàn giao giấy chứng nhận quyền sử dụng đất đợt đầu tiên cho các khách hàng mua đất tại khu đô thị RichHome 2', 'Kim Oanh Group bàn giao sổ đỏ cho cư dân RichHome 2', NULL, '2018-10-04 04:06:10', '2018-10-04 04:06:10'),
(50, 'Hỗ trợ 450 triệu đồng cho học sinh giỏi, khó khăn của ba tỉnh Thừa Thiên Huế, Tây Ninh và Bình Dương', 'Trong không khí vui tươi của ngày tựu trường 05/9/2018, Quỹ Từ thiện Kim Oanh đã gửi tặng những phần quà, những phần học bổng giúp các em có hoàn cảnh khó khăn.', 'Hỗ trợ 450 triệu đồng cho học sinh giỏi, khó khăn của ba tỉnh Thừa Thiên Huế, Tây Ninh và Bình Dương', NULL, '2018-10-04 04:13:30', '2018-10-04 04:13:30'),
(51, 'Trao tặng ô tô 16 chỗ trị giá 400 triệu đồng cho Trẻ mồ côi tại Quận 8', 'Ngày 24-9-2018, nhân dịp Công ty cổ phần Địa ốc Kim Oanh (Kim Oanh Real) khai trương và chính thức đưa vào hoạt động chi nhánh thứ 7 tại trung tâm thị xã Bến Cát, tỉnh Bình Dương.', 'Trao tặng ô tô 16 chỗ trị giá 400 triệu đồng cho Trẻ mồ côi tại Quận 8', NULL, '2018-10-04 04:22:32', '2018-10-04 04:22:32'),
(52, NULL, NULL, NULL, NULL, '2018-10-04 07:50:12', '2018-10-04 07:50:12'),
(53, NULL, NULL, NULL, NULL, '2018-10-05 07:08:14', '2018-10-05 07:08:14');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
