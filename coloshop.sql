-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2021 lúc 06:03 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` tinyint(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `position` bit(11) DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'0',
  `user_id` int(11) NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `summary`, `description`, `type`, `position`, `status`, `url`, `is_active`, `user_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(64, 'MUA NHIỀU GIẢM KHỦNG - RỦNG RỈNH HOÀN TIỀN', 'mua-nhieu-giam-khung-rung-rinh-hoan-tien', 'uploads/article/1617887928_mua_nhiEu_giAm_khUng_social_blog_web.jpg', NULL, '<h1>&nbsp;</h1>\r\n\r\n<p><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/7136/artCT/77010/mua_nhiEu_giAm_khUng_social_blog_web.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FREE NGAY MỘT SẢN PHẨM&nbsp;trong đơn h&agrave;ng mua sắm v&agrave; giảm gi&aacute; s&acirc;u l&ecirc;n đến&nbsp;20%&nbsp;tr&ecirc;n h&oacute;a đơn</strong></p>\r\n\r\n<p><strong>&Aacute;p dụng cho hệ thống Totoshop tr&ecirc;n to&agrave;n quốc xem chi tiết tại:&nbsp;<a href=\"https://bit.ly/3oPQJug?fbclid=IwAR0GIMiw3wpHBTJvHrhPQ5wPW5a4QC1ZRV0Vqjpl6kDLkbyewwVqOmpuwnI\" target=\"_blank\">https://bit.ly/3oPQJug</a></strong></p>\r\n\r\n<p><strong>Duy nhất từ:𝟭𝟮/𝟮𝟬𝟮𝟬 &ndash; 𝟬𝟯/𝟬𝟭/𝟮𝟬𝟮𝟬</strong></p>\r\n\r\n<p><strong>C&ograve;n chờ g&igrave; nữa m&agrave; kh&ocirc;ng đến Totoshop tự thưởng cho bản th&acirc;n v&agrave;i m&oacute;n qu&agrave;, vừa xịn s&ograve; vừa c&oacute; gi&aacute; cực y&ecirc;u thương n&egrave; c&aacute;c bạn ơi!</strong></p>', 3, b'00000110011', NULL, NULL, b'1', 15, NULL, NULL, '2021-04-08 06:18:23', '2021-04-08 06:20:58'),
(65, 'Nhận Voucher Nhân Ngày Quốc Tế Phụ Nữ 8/3', 'nhan-voucher-nhan-ngay-quoc-te-phu-nu-83', 'uploads/article/1617888027_lambanner-thiet-ke-banner-thoi-trang1-1130x570.jpg', NULL, '<h1>Nhận Voucher Nh&acirc;n Ng&agrave;y Quốc Tế Phụ Nữ 8/3</h1>\r\n\r\n<p><a href=\"https://i0.wp.com/s1.uphinh.org/2021/03/05/Blog-web.jpg\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/7136/artCT/81286/81286_1614939210_blog%20web.jpg\" /></a></p>\r\n\r\n<p><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/_temp/users/2290307/Blog%20web.jpg\" /><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/_temp/users/2290307/Blog%20web.jpg\" /></p>\r\n\r\n<p><strong>Nh&acirc;n Quốc tế phụ nữ 8/3, ch&uacute; Tồ - người ga lăng nhất vịnh Nam Bộ, quyết định tặng 𝙑𝙤𝙪𝙘𝙝𝙚𝙧 𝙘𝙪̛̣𝙘 𝙠𝙝𝙪̉𝙣𝙜 cho to&agrave;n bộ anh chị em tới thăm nh&agrave; từ ng&agrave;y 𝟔/𝟑 - 𝟖/𝟑 đ&acirc;y n&egrave;!</strong></p>\r\n\r\n<p><strong>𝐓𝐚̣̆𝐧𝐠 𝐧𝐠𝐚𝐲 𝐕𝐨𝐮𝐜𝐡𝐞𝐫 𝟏𝟎𝟎𝐤-𝟏𝟓𝟎𝐤 đ𝐨̂̀𝐧𝐠 𝐭𝐡𝐨̛̀𝐢 𝐃𝐢𝐬𝐜𝐨𝐮𝐧𝐭&nbsp;th&ecirc;m cho c&aacute;c h&oacute;a đơn đủ điều kiện. Nhanh nhanh gh&eacute; Totoshop lựa qu&agrave; tặng nửa thế giới, trọn y&ecirc;u thương đi n&agrave;o&nbsp;💓</strong></p>\r\n\r\n<p><strong>Đừng qu&ecirc;n tham gia&nbsp;<a href=\"https://www.facebook.com/groups/TotofanzoneTotoshop\">Toto Fanzone | Totoshop</a>&nbsp;để cập nhập trước c&aacute;ch chương tr&igrave;nh sắp tới của ch&uacute;ng tớ nh&eacute;! Y&ecirc;u thương c&aacute;c bạn thật nhiều</strong></p>\r\n\r\n<p>&nbsp;</p>', 2, b'00000110001', NULL, NULL, b'1', 15, NULL, NULL, '2021-04-08 06:19:59', '2021-04-08 06:20:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `position` tinyint(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `description`, `type`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(27, 'slide 2', 'slide-2', 'uploads/banner/1617884715_Banner Đồ Nữ.png', NULL, '_self', NULL, 1, 1, 1, '2021-04-08 05:21:00', '2021-04-08 05:25:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `type` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `position`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(82, 'Thời trang nữ', 'thoi-trang-nu', 'uploads/category/1617883108_2906202130622_1_thumb.jpg', 0, 1, 1, 1, '2021-04-08 04:58:28', '2021-04-08 04:58:28'),
(83, 'Thời trang nam', 'thoi-trang-nam', 'uploads/category/1617883133_1_thumb.jpg', 0, 2, 1, 1, '2021-04-08 04:58:53', '2021-04-08 04:58:53'),
(84, 'Thời trang cho cặp đôi', 'thoi-trang-cho-cap-doi', 'uploads/category/1617883187_31032021040354_4.jpg', 0, 3, 1, 1, '2021-04-08 04:59:47', '2021-04-08 04:59:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` tinyint(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(10) NOT NULL,
  `value` int(10) NOT NULL,
  `percent` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent`, `created_at`, `updated_at`) VALUES
(0, 'MGG-123', 1, 0, '5', '2021-04-05 02:14:03', '2021-04-05 05:16:57'),
(1, 'SHOP-KM1', 1, 127, '', '2020-05-19 16:50:32', '2020-05-19 16:50:32'),
(2, 'SHOP-K2', 2, 0, '50', '2020-05-19 16:52:27', '2020-05-19 16:52:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `order_status_id` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `name`, `image`, `sku`, `user_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(219, 'Hộp kim khâu chỉ 30 cây', 'uploads/product/1601024448_hop-kim-khau.jpg', NULL, 15, 190, 102, 30000, 1),
(220, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 190, 99, 430000, 1),
(221, 'Bộ kim móc và dụng cụ', 'uploads/product/1601023751_bo-kim-moc-va-dung-cu-ho-tro-vi-xanh-ngoc-1.jpg', NULL, 0, 191, 94, 120000, 1),
(222, 'Hộp chuông lục lạc bằng nhôm 300 cái', 'uploads/product/1601451922_hop-chuong-luc-lac-bang-nhom-300-cai-4.jpg', NULL, 15, 192, 104, 75000, 1),
(223, 'Thú bông bằng len', 'uploads/product/1601024255_ch0-mat-nau.jpg', NULL, 15, 193, 100, 500000, 1),
(224, 'Bé dứa', 'uploads/product/1601024075_be-dua.png', NULL, 15, 194, 98, 100000, 1),
(225, 'Sợi Wave Ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'WOM', 15, 195, 81, 100000, 4),
(226, 'Sợi Wave Ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'WOM', 15, 196, 81, 25000, 1),
(227, 'Sợi Wave Ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'WOM', 15, 197, 81, 25000, 1),
(228, 'Alize Angora Gold Ombre Batik', 'uploads/product/1601023559_Alize.jpg', 'ALZ', 15, 198, 92, 38000, 2),
(229, 'Hộp kim khâu chỉ 30 cây', 'uploads/product/1601024448_hop-kim-khau.jpg', NULL, 15, 199, 102, 60000, 2),
(230, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 200, 99, 450000, 1),
(231, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 201, 99, 450000, 1),
(232, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 202, 99, 450000, 1),
(233, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 203, 99, 450000, 1),
(234, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 204, 99, 450000, 1),
(235, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 205, 99, 450000, 1),
(236, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 206, 99, 450000, 1),
(237, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 207, 99, 450000, 1),
(238, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 208, 99, 450000, 1),
(239, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 209, 99, 450000, 1),
(240, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 210, 99, 450000, 1),
(241, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 211, 99, 450000, 1),
(242, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 212, 99, 450000, 1),
(243, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 213, 99, 450000, 1),
(244, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 214, 99, 450000, 1),
(245, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 215, 99, 450000, 1),
(246, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 216, 99, 450000, 1),
(247, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 217, 99, 450000, 1),
(248, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 218, 99, 450000, 1),
(249, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 219, 99, 450000, 1),
(250, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 220, 99, 450000, 1),
(251, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 221, 99, 450000, 1),
(252, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(253, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 222, 99, 450000, 1),
(254, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 223, 99, 450000, 1),
(255, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 224, 99, 450000, 1),
(256, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(257, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 225, 99, 450000, 1),
(258, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 226, 99, 450000, 1),
(259, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 227, 99, 450000, 1),
(260, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 228, 99, 450000, 1),
(261, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 229, 99, 450000, 1),
(262, 'Cuộn Len Himalaya', 'uploads/product/1601023921_3len2.jpg', NULL, 16, 230, 96, 29988, 2),
(263, 'Sợi Wave Ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'WOM', 15, 231, 81, 25000, 1),
(264, 'Cuộn Len Himalaya', 'uploads/product/1601023921_3len2.jpg', NULL, 16, 232, 96, 14994, 1),
(265, 'Sợi Wave Ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'WOM', 15, 233, 81, 25000, 1),
(266, 'Len Bông Xù DMC Baby', 'uploads/product/1601023660_len.jpg', NULL, 16, 234, 93, 14000, 1),
(267, 'Sợi Wave Ombre', 'uploads/product/1601022142_wave-ombre.jpg', 'WOM', 15, 234, 81, 25000, 1),
(268, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 235, 99, 450000, 1),
(269, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 236, 99, 450000, 1),
(270, 'Bộ kim móc và dụng cụ', 'uploads/product/1601023751_bo-kim-moc-va-dung-cu-ho-tro-vi-xanh-ngoc-1.jpg', NULL, 15, 236, 94, 80000, 1),
(271, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 237, 99, 450000, 1),
(272, 'Bộ kim móc và dụng cụ', 'uploads/product/1601023751_bo-kim-moc-va-dung-cu-ho-tro-vi-xanh-ngoc-1.jpg', NULL, 15, 237, 94, 80000, 1),
(273, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 238, 99, 450000, 1),
(274, 'Bộ kim móc và dụng cụ', 'uploads/product/1601023751_bo-kim-moc-va-dung-cu-ho-tro-vi-xanh-ngoc-1.jpg', NULL, 15, 238, 94, 80000, 1),
(275, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 239, 99, 900000, 2),
(276, 'Cuộn Len Himalaya', 'uploads/product/1601023921_3len2.jpg', NULL, 16, 239, 96, 14994, 1),
(277, 'Thỏ khúc cây', 'uploads/product/1601024151_tho-khuc-cay.jpg', NULL, 15, 240, 99, 450000, 1),
(278, 'Len lục lạc cầm tay', 'uploads/product/1601276988_luc-lac-gau.jpg', NULL, 15, 241, 101, 119995, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đang Xử Lý'),
(3, 'Hoàn Thành'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('phuonghong190820@gmail.com', '$2y$10$Pd8FXAwkWKx5J7HtWsE2iudPmRV.37xh66Pe2VjyMMFaNtutdFeD2', '2020-09-16 01:51:42'),
('phuonghong190820@gmail.com', '$2y$10$Pd8FXAwkWKx5J7HtWsE2iudPmRV.37xh66Pe2VjyMMFaNtutdFeD2', '2020-09-16 01:51:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` tinyint(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `position` tinyint(11) NOT NULL DEFAULT 0,
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `is_hot` bit(1) NOT NULL DEFAULT b'0',
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `image2`, `image3`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `country`, `memory`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`) VALUES
(111, 'ÁO THUN W2ATN2021034', 'ao-thun-w2atn2021034', 'uploads/product/1617886377_2906202130622_1_thumb.jpg', 'uploads/product/1617886377_2907202130708_IMG_4417.jpg', 'uploads/product/1617886377_2907202130722_IMG_4420.jpg', 50, 125000, 0, 1, b'1', b'1', 0, 82, NULL, 'TTN-1', NULL, NULL, '<p><strong>&raquo;&nbsp;BẢO H&Agrave;NH SẢN PHẨM 30 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo; ĐỔI H&Agrave;NG TRONG V&Ograve;NG 7&nbsp;NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo;&nbsp;HOTLINE B&Aacute;N H&Agrave;NG 1900 633 501</strong></p>', '<p><strong>&raquo;&nbsp;BẢO H&Agrave;NH SẢN PHẨM 30 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo; ĐỔI H&Agrave;NG TRONG V&Ograve;NG 7&nbsp;NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo;&nbsp;HOTLINE B&Aacute;N H&Agrave;NG 1900 633 501</strong></p>', NULL, NULL, 15, '2021-04-08 05:52:57', '2021-04-08 05:52:57'),
(112, 'ÁO THUN W2ATN2021032', 'ao-thun-w2atn2021032', 'uploads/product/1617886518_2917202131755_1.jpg', 'uploads/product/1617886518_2918202131818_IMG_4405.jpg', 'uploads/product/1617886518_2919202131913_IMG_4401.jpg', 50, 215000, 0, 1, b'1', b'1', 0, 82, NULL, 'TTN-2', NULL, NULL, NULL, NULL, NULL, NULL, 15, '2021-04-08 05:55:18', '2021-04-08 05:55:18'),
(113, 'ÁO THUN W2ATN2021029', 'ao-thun-w2atn2021029', 'uploads/product/1617886638_2911202131144_1.jpg', 'uploads/product/1617886638_2912202131222_IMG_4415.jpg', 'uploads/product/1617886638_2912202131222_IMG_4415.jpg', 100, 185000, 0, 3, b'1', b'1', 0, 82, NULL, 'TTN-3', NULL, NULL, NULL, NULL, NULL, NULL, 15, '2021-04-08 05:57:18', '2021-04-08 05:57:18'),
(114, 'ÁO SOMI M1SMD2031002', 'ao-somi-m1smd2031002', 'uploads/product/1617886842_1.jpg', 'uploads/product/1617886842_29452021114549_IMG_4429.jpg', 'uploads/product/1617886842_29452021114532_IMG_4427.jpg', 50, 285000, 0, 1, b'1', b'1', 0, 83, NULL, 'TTN-1', NULL, NULL, '<p><strong>&raquo;&nbsp;BẢO H&Agrave;NH SẢN PHẨM&nbsp;90 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo; ĐỔI H&Agrave;NG TRONG V&Ograve;NG 30 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo;&nbsp;HOTLINE B&Aacute;N H&Agrave;NG 1900 633 501</strong></p>', '<p><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/7136/ps/20210331/1_thumb.jpg\" /></p>', NULL, NULL, 15, '2021-04-08 06:00:42', '2021-04-08 06:00:42'),
(115, 'QUẦN JOGGER M1QJT4031002', 'quan-jogger-m1qjt4031002', 'uploads/product/1617886957_31032021090327_1.jpg', 'uploads/product/1617886957_31032021090317_IMG_4475.jpg', 'uploads/product/1617886957_31032021090332_IMG_4476.jpg', 100, 95000, 0, 2, b'1', b'0', 0, 83, NULL, 'TTN-4', NULL, NULL, '<p><strong>&raquo;&nbsp;BẢO H&Agrave;NH SẢN PHẨM&nbsp;90 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo; ĐỔI H&Agrave;NG TRONG V&Ograve;NG 30 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo;&nbsp;HOTLINE B&Aacute;N H&Agrave;NG 1900 633 501</strong></p>', NULL, NULL, NULL, 15, '2021-04-08 06:02:37', '2021-04-08 06:02:37'),
(116, 'QUẦN JOGGER M1QJT2031001', 'quan-jogger-m1qjt2031001', 'uploads/product/1617887077_31032021090318_1.jpg', 'uploads/product/1617887077_31032021090331_IMG_4482.jpg', 'uploads/product/1617887077_31032021090303_IMG_4481.jpg', 50, 100000, 0, 3, b'1', b'0', 0, 83, NULL, 'TTN-5', NULL, NULL, '<p><strong>&raquo;&nbsp;BẢO H&Agrave;NH SẢN PHẨM&nbsp;90 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo; ĐỔI H&Agrave;NG TRONG V&Ograve;NG 30 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo;&nbsp;HOTLINE B&Aacute;N H&Agrave;NG 1900 633 501</strong></p>', NULL, NULL, NULL, 15, '2021-04-08 06:04:37', '2021-04-08 06:04:37'),
(117, 'ÁO SOMI M2SMN3021011', 'ao-somi-m2smn3021011', 'uploads/product/1617887156_130202123038_IMG_3729.jpg', 'uploads/product/1617887156_134202123412_IMG_3736.jpg', 'uploads/product/1617887156_136202123630_IMG_3740.jpg', 100, 285000, 275000, 5, b'1', b'1', 0, 83, NULL, 'KML', NULL, NULL, '<p><strong>&raquo;&nbsp;BẢO H&Agrave;NH SẢN PHẨM&nbsp;90 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo; ĐỔI H&Agrave;NG TRONG V&Ograve;NG 30 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo;&nbsp;HOTLINE B&Aacute;N H&Agrave;NG 1900 633 501</strong></p>', NULL, NULL, NULL, 15, '2021-04-08 06:05:56', '2021-04-08 06:08:03'),
(118, 'ÁO THUN CHO CẶP ĐÔI', 'ao-thun-cho-cap-doi', 'uploads/product/1617887466_31032021040322_2.jpg', 'uploads/product/1617887466_31032021040357_IMG_4734.jpg', 'uploads/product/1617887466_31032021040303_IMG_4736.jpg', 100, 350000, 340000, 1, b'1', b'1', 0, 84, NULL, 'TTD-1', NULL, NULL, '<p><strong>&raquo;&nbsp;BẢO H&Agrave;NH SẢN PHẨM&nbsp;90 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo; ĐỔI H&Agrave;NG TRONG V&Ograve;NG 30 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo;&nbsp;HOTLINE B&Aacute;N H&Agrave;NG 1900 633 501</strong></p>', NULL, NULL, NULL, 15, '2021-04-08 06:11:06', '2021-04-08 06:11:06'),
(119, 'ÁO KHOÁC CHO CẶP ĐÔI', 'ao-khoac-cho-cap-doi', 'uploads/product/1617887567_31032021040354_4.jpg', 'uploads/product/1617887567_31032021040311_IMG_4744_1.jpg', 'uploads/product/1617887567_31032021030330_IMG_4456_1.jpg', 100, 450000, 430000, 2, b'1', b'1', 0, 84, NULL, 'TTD-2', NULL, NULL, '<p><strong>&raquo;&nbsp;BẢO H&Agrave;NH SẢN PHẨM&nbsp;90 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo; ĐỔI H&Agrave;NG TRONG V&Ograve;NG 30 NG&Agrave;Y</strong></p>\r\n\r\n<p><strong>&raquo;&nbsp;HOTLINE B&Aacute;N H&Agrave;NG 1900 633 501</strong></p>', NULL, NULL, NULL, 15, '2021-04-08 06:12:47', '2021-04-08 06:12:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `ra_number` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `name`, `email`, `phone`, `ra_number`, `message`, `product_id`, `user_id`, `created_at`) VALUES
(28, 'Nguyễn Phương Hồng', 'phuonghong190820@gmail.com', 969422308, 5, 'da', 92, NULL, '2020-10-06 13:40:58'),
(29, 'Nguyễn Phương Hồng', 'danglam932@gmail.com', 969422308, 5, 'dâdsasdasdasd', 92, NULL, '2020-10-06 13:51:41'),
(30, 'Nguyễn Phương Hồng', 'hongphuongespeed@gmail.com', 969422308, 3, 'đẹp', 100, NULL, '2020-11-03 11:37:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`) VALUES
(1, 'Manager', ''),
(2, 'Admin', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `address2`, `image`, `phone`, `hotline`, `tax`, `facebook`, `email`, `content`, `introduce`, `created_at`, `updated_at`) VALUES
(1, 'Colo Shop', '60B Nguyễn Huy Tưởng - Thanh Xuân - Hà Nội', 'Q.Long Biên, Hà Nội', 'uploads/setting/1598260180_logo.png', '0986346008', '18001166', '000010', 'https://www.facebook.com/didongthongminh.vn/', 'Coloshop@gmail.com', 'Mỗi tháng chúng tôi đều có những đợt giảm giá dịch vụ và sản phẩm nhằm tri ân khách hàng. \r\nĐể có thể cập nhật kịp thời những đợt giảm giá này, vui lòng liên hệ với chúng tôi.', NULL, NULL, '2021-04-08 20:53:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(10) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CMND` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `image`, `email`, `phone`, `address`, `CMND`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `avatar`, `is_active`) VALUES
(15, 'Quỳnh', 0, 'uploads/product/1600329839_logo.png', 'phuonghong190820@gmail.com', '0969422308', 'Hà Nội', '1300007960', '$2y$10$nFQMAamW7i/5yNXEU51b/uMuZU0PRCu8Bf39XfxqA3k0hkHIewHBq', NULL, '2020-09-17 01:03:59', '2021-04-08 05:50:59', 2, NULL, 1),
(16, 'Quỳnh Như', 0, 'uploads/product/1617888143_lambanner-thiet-ke-banner-thoi-trang1-1130x570.jpg', 'aq025999@gmail.com', '0', '', '0', '$2y$10$3x52YFjxWGit8wP/YxzbFuvDytwBgIvze3l1s/B/ix9jgYzDMnYgm', NULL, '2020-10-30 02:50:33', '2021-04-08 06:22:23', 1, NULL, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `banners_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_slug_index` (`slug`) USING BTREE,
  ADD KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` tinyint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
