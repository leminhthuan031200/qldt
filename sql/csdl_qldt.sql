-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 04, 2022 at 07:18 AM
-- Server version: 8.0.27
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cai_dat_dang_ky_mon`
--

DROP TABLE IF EXISTS `cai_dat_dang_ky_mon`;
CREATE TABLE IF NOT EXISTS `cai_dat_dang_ky_mon` (
  `id_cai_dat_dang_ky_mon` int NOT NULL AUTO_INCREMENT,
  `tin_chi_toi_da_yeu` int DEFAULT NULL,
  `tin_chi_toi_thieu_yeu` int DEFAULT NULL,
  `tin_chi_toi_da_binh_thuong` int DEFAULT NULL,
  `tin_chi_toi_thieu_binh_thuong` int DEFAULT NULL,
  `dieu_kien` float DEFAULT NULL,
  PRIMARY KEY (`id_cai_dat_dang_ky_mon`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cai_dat_dang_ky_mon`
--

INSERT INTO `cai_dat_dang_ky_mon` (`id_cai_dat_dang_ky_mon`, `tin_chi_toi_da_yeu`, `tin_chi_toi_thieu_yeu`, `tin_chi_toi_da_binh_thuong`, `tin_chi_toi_thieu_binh_thuong`, `dieu_kien`) VALUES
(1, 14, 8, 15, 14, 2.1);

-- --------------------------------------------------------

--
-- Table structure for table `cai_dat_lop_hoc_phan`
--

DROP TABLE IF EXISTS `cai_dat_lop_hoc_phan`;
CREATE TABLE IF NOT EXISTS `cai_dat_lop_hoc_phan` (
  `id_cai_dat_lop_hoc_phan` int NOT NULL AUTO_INCREMENT,
  `loai_lop_hoc_phan` tinyint DEFAULT NULL,
  `so_luong_toi_thieu` int DEFAULT NULL,
  `so_luong_mac_dinh` int DEFAULT NULL,
  `so_luong_toi_da` int DEFAULT NULL,
  `so_luong_lop_toi_da` int DEFAULT NULL,
  `so_luong_du_phong` int DEFAULT NULL,
  PRIMARY KEY (`id_cai_dat_lop_hoc_phan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cai_dat_lop_hoc_phan`
--

INSERT INTO `cai_dat_lop_hoc_phan` (`id_cai_dat_lop_hoc_phan`, `loai_lop_hoc_phan`, `so_luong_toi_thieu`, `so_luong_mac_dinh`, `so_luong_toi_da`, `so_luong_lop_toi_da`, `so_luong_du_phong`) VALUES
(1, 0, 35, 60, 70, 3, 20),
(2, 1, 15, 25, 30, 6, 20);

-- --------------------------------------------------------

--
-- Table structure for table `ca_thi`
--

DROP TABLE IF EXISTS `ca_thi`;
CREATE TABLE IF NOT EXISTS `ca_thi` (
  `id_ca_thi` int NOT NULL AUTO_INCREMENT,
  `ten_ca_thi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thoi_gian_bat_dau` time DEFAULT NULL,
  `thoi_gian_ket_thuc` time DEFAULT NULL,
  `trang_thai` int DEFAULT '0',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ca_thi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_dang_ky_khao_sat`
--

DROP TABLE IF EXISTS `chi_tiet_dang_ky_khao_sat`;
CREATE TABLE IF NOT EXISTS `chi_tiet_dang_ky_khao_sat` (
  `id_dang_ky_khao_sat` int NOT NULL,
  `id_hoc_vien` int NOT NULL,
  `id_hoc_phan` int NOT NULL,
  PRIMARY KEY (`id_hoc_vien`,`id_dang_ky_khao_sat`,`id_hoc_phan`),
  KEY `chi_tiet_dang_ky_khao_sat_hoc_phan_id_hoc_phan_fk` (`id_hoc_phan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_dang_ky_khao_sat`
--

INSERT INTO `chi_tiet_dang_ky_khao_sat` (`id_dang_ky_khao_sat`, `id_hoc_vien`, `id_hoc_phan`) VALUES
(3, 4, 4),
(3, 15, 4),
(6, 15, 4),
(8, 15, 4),
(13, 15, 4),
(13, 15, 7),
(6, 15, 8),
(7, 15, 8),
(13, 15, 8),
(6, 15, 11),
(4, 4, 23),
(4, 15, 23),
(6, 15, 23),
(12, 15, 23),
(6, 15, 24),
(12, 15, 24),
(3, 15, 25),
(12, 15, 25),
(4, 15, 26),
(8, 15, 26),
(12, 15, 26),
(12, 15, 27),
(3, 15, 30),
(14, 15, 30),
(13, 15, 31),
(8, 15, 34),
(8, 15, 37),
(8, 15, 53),
(4, 15, 78);

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vu`
--

DROP TABLE IF EXISTS `chuc_vu`;
CREATE TABLE IF NOT EXISTS `chuc_vu` (
  `id_chuc_vu` int NOT NULL AUTO_INCREMENT,
  `ten_chuc_vu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai` int DEFAULT '0',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_chuc_vu`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chuc_vu`
--

INSERT INTO `chuc_vu` (`id_chuc_vu`, `ten_chuc_vu`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'Trưởng khoa', 0, '2021-10-25 12:35:26', '2021-10-25 12:35:26'),
(2, 'Phó trưởng khoa', 0, '2021-10-25 12:35:26', '2021-10-25 12:35:26'),
(3, 'Phụ trách bộ môn', 0, '2021-10-25 12:35:26', '2021-10-25 12:35:26'),
(4, 'Giảng viên', 0, '2021-10-30 14:07:01', '2021-10-30 14:07:01'),
(5, 'Trưởng phòng', 0, '2021-11-04 01:04:02', '2021-11-04 01:04:02'),
(6, 'Phó trưởng phòng', 0, '2021-11-04 01:04:02', '2021-11-04 01:04:02'),
(7, 'Nhân viên', 0, '2021-11-04 01:04:03', '2021-11-04 01:04:03'),
(8, 'GVQL', 0, '2021-11-04 01:26:28', '2021-11-04 01:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `chuong_trinh_dao_tao`
--

DROP TABLE IF EXISTS `chuong_trinh_dao_tao`;
CREATE TABLE IF NOT EXISTS `chuong_trinh_dao_tao` (
  `id_chuong_trinh` int NOT NULL AUTO_INCREMENT,
  `id_don_vi` int NOT NULL,
  `ma_chuong_trinh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_chuong_trinh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_ban_hanh` date DEFAULT NULL,
  `tong_tin_chi` int DEFAULT NULL,
  `trang_thai` int DEFAULT '0',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_khoa_hoc` int DEFAULT NULL,
  PRIMARY KEY (`id_chuong_trinh`),
  KEY `fk_chuong_t_chuong_tr_don_vi` (`id_don_vi`),
  KEY `fk_khoaHoc_ChuongTrinhDaoTao` (`id_khoa_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuong_trinh_dao_tao`
--

INSERT INTO `chuong_trinh_dao_tao` (`id_chuong_trinh`, `id_don_vi`, `ma_chuong_trinh`, `ten_chuong_trinh`, `ngay_ban_hanh`, `tong_tin_chi`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`, `id_khoa_hoc`) VALUES
(1, 18, 'MTT', 'Truyền thông và mạng máy tính', '2008-10-17', NULL, 0, '2021-10-12 19:30:47', '2021-10-30 05:14:36', 1),
(6, 18, 'CNPM3', 'Công nghệ phần mềm', '2021-10-01', NULL, 1, '2021-10-19 08:15:52', '2021-10-28 15:49:45', 51),
(8, 18, 'MTMD', 'Truyền thông đa phương tiện', '2021-10-22', NULL, 0, '2021-10-19 09:14:51', '2021-10-28 15:49:53', 53),
(13, 18, 'TTYY', 'Khoa học máy tính', '2021-10-27', NULL, 1, '2021-10-27 14:08:03', '2021-10-28 16:08:04', 1),
(20, 18, 'HTTT', 'Hệ thống thông tin', '2021-10-27', NULL, 0, '2021-10-28 16:10:36', '2021-10-30 05:54:44', 1),
(21, 18, 'TTMMT', 'Truyền thông mạng máy tính', '2021-10-30', NULL, 1, '2021-10-30 02:35:13', '2021-10-30 02:35:12', 1),
(22, 26, 'DL', 'Điện lạnh', NULL, NULL, 1, '2021-11-18 06:17:47', '2021-11-18 06:17:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chuyen_nganh`
--

DROP TABLE IF EXISTS `chuyen_nganh`;
CREATE TABLE IF NOT EXISTS `chuyen_nganh` (
  `id_chuyen_nganh` int NOT NULL AUTO_INCREMENT,
  `id_chuong_trinh` int NOT NULL,
  `ten_chuyen_nganh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cay_tien_trinh` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ma_chuyen_nganh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_chuyen_nganh`),
  KEY `fk_chuyen_n_chuyen_ng_chuong_t` (`id_chuong_trinh`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuyen_nganh`
--

INSERT INTO `chuyen_nganh` (`id_chuyen_nganh`, `id_chuong_trinh`, `ten_chuyen_nganh`, `cay_tien_trinh`, `ma_chuyen_nganh`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 1, 'Công nghệ phần mềm', 'Cây', 'PM1', '2021-10-12 15:23:05', '2021-10-12 15:23:05'),
(3, 1, 'Mạng máy tính', 'Cây', 'MM1', '2021-10-12 16:28:33', '2021-10-12 16:28:33'),
(4, 22, 'Điện lạnh', 'Cây', 'DL', '2021-11-18 06:18:50', '2021-11-18 06:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `dang_ky_khao_sat`
--

DROP TABLE IF EXISTS `dang_ky_khao_sat`;
CREATE TABLE IF NOT EXISTS `dang_ky_khao_sat` (
  `id_dang_ky_khao_sat` int NOT NULL AUTO_INCREMENT,
  `id_hoc_ky` int DEFAULT NULL,
  `ngay_mo` datetime DEFAULT NULL,
  `ngay_dong` datetime DEFAULT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_dang_ky_khao_sat`),
  KEY `dang_ky_khao_sat_hoc_ky_id_hoc_ky_fk` (`id_hoc_ky`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dang_ky_khao_sat`
--

INSERT INTO `dang_ky_khao_sat` (`id_dang_ky_khao_sat`, `id_hoc_ky`, `ngay_mo`, `ngay_dong`, `ngay_cap_nhat`, `ngay_tao`) VALUES
(3, 3, '2021-11-01 11:04:00', '2021-11-30 11:04:00', '2021-11-29 11:00:58', '2021-11-29 11:00:58'),
(4, 2, '2021-11-21 11:05:00', '2021-11-30 11:05:00', '2021-11-29 11:05:23', '2021-11-29 11:05:23'),
(12, 6, '2021-12-10 13:36:00', '2021-12-15 13:36:00', '2021-12-14 13:36:12', '2021-12-14 13:36:12'),
(14, 8, '2021-12-16 09:52:00', '2021-12-29 09:52:00', '2021-12-17 09:52:30', '2021-12-17 09:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `danh_sach_lop_hoc_phan`
--

DROP TABLE IF EXISTS `danh_sach_lop_hoc_phan`;
CREATE TABLE IF NOT EXISTS `danh_sach_lop_hoc_phan` (
  `id_hoc_vien` int NOT NULL,
  `id_lop_hoc_phan` int NOT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `diem_10` decimal(2,1) DEFAULT NULL,
  `diem_40` decimal(2,1) DEFAULT NULL,
  `diem_50` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`id_hoc_vien`,`id_lop_hoc_phan`),
  KEY `fk_danh_sac_danh_sach_lop_hoc_` (`id_lop_hoc_phan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danh_sach_lop_hoc_phan`
--

INSERT INTO `danh_sach_lop_hoc_phan` (`id_hoc_vien`, `id_lop_hoc_phan`, `ngay_tao`, `ngay_cap_nhat`, `diem_10`, `diem_40`, `diem_50`) VALUES
(4, 19, '2021-11-16 08:29:10', '2021-11-16 08:29:10', NULL, NULL, NULL),
(4, 21, '2021-11-16 08:37:38', '2021-11-16 08:37:38', NULL, NULL, NULL),
(4, 226, '2021-12-09 16:03:38', '2021-12-09 16:03:38', NULL, NULL, NULL),
(4, 227, '2021-12-09 16:03:39', '2021-12-09 16:03:39', NULL, NULL, NULL),
(9, 7, '2021-10-21 04:31:22', '2021-11-10 09:27:59', '7.0', '8.5', '7.0'),
(9, 19, '2021-11-16 09:40:44', '2021-11-16 09:40:44', NULL, NULL, NULL),
(9, 21, '2021-11-16 13:00:58', '2021-11-16 13:00:58', NULL, NULL, '9.9'),
(9, 226, '2021-12-09 05:16:50', '2021-12-09 05:16:50', NULL, NULL, NULL),
(9, 227, '2021-12-09 14:34:33', '2021-12-09 14:34:33', NULL, NULL, NULL),
(12, 1, '2021-11-18 09:20:50', '2022-02-13 02:18:16', '9.0', '8.0', '9.0'),
(12, 7, '2021-10-21 04:11:43', '2021-11-11 03:39:21', '8.0', '9.0', '9.5'),
(12, 10, '2021-11-18 09:20:50', '2021-11-25 05:24:23', '9.0', '9.5', '8.5'),
(12, 57, '2021-11-18 09:20:50', '2021-11-18 09:20:50', '8.0', '8.0', '8.0'),
(12, 59, '2022-03-04 02:24:14', '2022-03-04 02:24:14', '9.0', '9.0', '9.0'),
(13, 19, '2021-11-16 09:44:26', '2021-11-16 09:44:26', NULL, NULL, NULL),
(14, 7, '2021-10-21 04:12:44', '2021-11-10 09:27:48', '8.0', '8.0', '8.0'),
(15, 6, '2022-02-15 01:25:00', '2022-02-15 03:25:55', '8.0', '6.0', '8.0'),
(15, 7, '2021-11-18 09:20:50', '2021-11-18 09:20:50', '8.0', '9.0', '9.0'),
(15, 31, '2021-11-18 09:20:50', '2021-11-18 09:20:50', '8.0', '9.0', '9.5'),
(15, 33, '2021-11-18 09:20:50', '2021-11-18 09:20:50', '9.0', '8.0', '9.5'),
(15, 58, '2022-02-09 07:34:13', '2022-02-09 07:34:13', '9.0', '7.0', '8.0'),
(15, 59, '2022-03-04 02:24:15', '2022-03-04 02:24:15', '8.0', '8.0', '8.0'),
(15, 226, '2021-12-13 14:25:30', '2021-12-13 14:25:30', '4.0', '6.0', '4.0'),
(15, 372, '2022-02-09 07:19:33', '2022-02-09 07:19:33', '9.9', '8.0', '8.0'),
(15, 379, '2022-02-09 07:21:32', '2022-03-04 06:52:29', '8.0', '7.0', '7.0'),
(15, 381, '2022-02-09 07:22:44', '2022-02-09 07:22:44', '9.9', '9.0', '8.0'),
(15, 390, '2022-02-09 07:14:54', '2022-02-09 07:14:54', '9.0', '4.0', '6.0'),
(15, 391, '2022-02-09 07:28:31', '2022-02-09 07:28:31', '9.9', '7.0', '8.0'),
(15, 392, '2022-02-09 07:30:50', '2022-02-09 07:30:50', '9.9', '8.0', '8.0'),
(15, 393, '2022-02-09 07:32:03', '2022-02-09 07:32:03', '9.9', '9.0', '9.0'),
(15, 394, '2022-02-09 07:37:36', '2022-02-09 07:37:36', '8.0', '9.0', '8.0'),
(15, 395, '2022-02-09 07:41:08', '2022-02-09 07:41:08', '8.0', '8.0', '8.0'),
(15, 396, '2022-02-09 07:42:20', '2022-02-09 07:42:20', '8.0', '8.0', '9.0'),
(15, 397, '2022-02-09 07:43:19', '2022-02-09 07:43:19', '5.0', '6.0', '4.0'),
(15, 398, '2022-02-09 07:44:30', '2022-02-09 07:44:30', '2.0', '3.0', '5.0'),
(15, 400, '2022-02-09 08:03:01', '2022-02-09 08:03:01', '8.0', '9.0', '8.0'),
(15, 401, '2022-02-09 08:04:31', '2022-02-09 08:04:31', '8.0', '8.0', '9.0'),
(15, 402, '2022-02-09 08:17:54', '2022-02-09 08:17:54', '8.0', '8.0', '9.0'),
(15, 403, '2022-02-09 08:20:41', '2022-02-09 08:20:41', '8.0', '9.0', '7.0'),
(15, 404, '2022-02-09 08:26:17', '2022-02-09 08:26:17', '8.0', '7.0', '9.0'),
(15, 405, '2022-02-09 08:36:51', '2022-02-09 08:36:51', '8.0', '8.0', '7.0'),
(15, 406, '2022-02-09 08:38:08', '2022-02-09 08:38:08', '7.0', '8.0', '9.0'),
(15, 407, '2022-02-09 08:39:34', '2022-02-09 08:39:34', '8.0', '9.0', '7.0'),
(15, 408, '2022-02-09 08:41:18', '2022-02-09 08:41:18', '8.0', '9.0', '7.0'),
(15, 409, '2022-02-09 08:43:03', '2022-02-09 08:43:03', '8.0', '9.0', '6.0'),
(15, 410, '2022-02-09 08:44:33', '2022-02-09 08:44:33', '8.0', '9.0', '9.0'),
(15, 411, '2022-02-09 08:46:30', '2022-02-09 08:46:30', '7.0', '8.0', '9.0'),
(15, 412, '2022-02-09 08:47:28', '2022-02-09 08:47:28', '9.0', '8.0', '6.0'),
(15, 413, '2022-02-09 08:48:30', '2022-02-09 08:48:30', '7.0', '6.0', '8.0'),
(15, 414, '2022-02-09 08:50:14', '2022-02-09 08:50:14', '8.0', '6.0', '7.0'),
(15, 415, '2022-02-09 08:51:46', '2022-02-09 08:51:46', '8.0', '9.0', '7.0'),
(15, 416, '2022-02-09 08:52:59', '2022-02-09 08:52:59', '8.0', '9.0', '7.0'),
(15, 417, '2022-02-09 08:54:03', '2022-02-09 08:54:03', '8.0', '9.0', '6.0'),
(15, 418, '2022-02-09 08:54:51', '2022-02-09 08:54:51', '8.0', '8.0', '6.0'),
(15, 419, '2022-02-09 08:56:13', '2022-02-09 08:56:13', '8.0', '9.0', '7.0'),
(15, 420, '2022-02-09 08:57:30', '2022-02-09 08:57:30', '8.0', '9.0', '7.0'),
(15, 421, '2022-02-09 08:58:25', '2022-02-09 08:58:25', '8.0', '9.0', '7.0'),
(15, 422, '2022-02-09 08:59:40', '2022-02-09 08:59:40', '8.0', '8.0', '9.0'),
(15, 423, '2022-02-09 09:01:04', '2022-02-09 09:01:04', '8.0', '9.0', '7.0'),
(15, 424, '2022-02-09 09:02:57', '2022-02-09 09:02:57', '8.0', '7.0', '9.0'),
(15, 425, '2022-02-09 09:04:27', '2022-02-09 09:04:27', '7.0', '8.0', '7.0'),
(15, 426, '2022-02-09 09:06:16', '2022-02-09 09:06:16', '9.0', '9.0', '9.0'),
(15, 427, '2022-02-09 09:09:42', '2022-02-09 09:09:42', '6.0', '3.0', '5.0'),
(15, 428, '2022-02-09 09:11:07', '2022-02-09 09:11:07', '9.0', '7.0', '4.0'),
(15, 429, '2022-02-09 09:12:34', '2022-02-09 09:12:34', '9.0', '7.0', '8.0'),
(15, 430, '2022-02-09 09:13:43', '2022-02-09 09:13:43', '4.0', '5.0', '9.0'),
(15, 431, '2022-02-09 09:14:38', '2022-02-09 09:14:38', '9.0', '9.0', '9.9'),
(15, 432, '2022-02-09 09:15:31', '2022-02-09 09:15:31', '7.0', '7.0', '9.0'),
(15, 433, '2022-02-09 09:16:25', '2022-02-09 09:16:25', '9.0', '9.0', '9.0'),
(15, 434, '2022-02-09 09:17:06', '2022-02-09 09:17:06', '9.0', '8.0', '7.0'),
(15, 435, '2022-02-09 09:17:40', '2022-02-09 09:17:40', '7.0', '8.0', '9.9'),
(15, 436, '2022-02-09 09:21:20', '2022-02-09 09:21:20', '9.0', '9.0', '8.0'),
(15, 437, '2022-02-09 09:22:48', '2022-02-09 09:22:48', '9.0', '9.0', '9.0'),
(15, 438, '2022-02-09 09:23:29', '2022-02-09 09:23:29', '9.9', '9.9', '9.9'),
(15, 439, '2022-02-09 09:32:50', '2022-02-09 09:32:50', '9.0', '9.0', '9.0'),
(15, 440, '2022-02-09 09:39:55', '2022-02-09 09:39:55', '8.0', '7.0', '9.0'),
(15, 441, '2022-02-09 09:43:35', '2022-02-09 09:43:35', '8.0', '9.0', '8.0'),
(1038, 227, '2022-02-14 07:37:18', '2022-02-14 07:37:18', '9.0', '9.9', '6.0'),
(1039, 52, '2022-01-25 03:44:40', '2022-01-25 03:44:40', '3.0', '3.0', '0.0'),
(1040, 4, '2021-11-09 16:50:30', '2021-11-10 13:18:35', '8.0', '8.0', '9.5'),
(1040, 19, '2021-11-11 15:09:16', '2021-11-12 01:04:25', '9.0', '8.0', '9.5'),
(1047, 6, '2022-02-15 01:25:00', '2022-02-15 01:25:00', '8.0', '8.0', '8.0'),
(1048, 6, '2022-02-15 01:25:00', '2022-02-15 01:25:00', '4.0', '4.0', '4.0'),
(1094, 226, '2021-12-13 14:18:30', '2021-12-13 14:18:30', NULL, NULL, NULL),
(1094, 227, '2021-12-13 14:19:08', '2021-12-13 14:19:08', NULL, NULL, NULL),
(1207, 1, '2021-11-18 09:25:59', '2021-11-18 09:25:59', '9.0', '4.0', '4.0'),
(1207, 10, '2021-11-18 09:25:59', '2021-11-18 09:25:59', '6.0', '7.0', '5.0'),
(1207, 57, '2021-11-18 09:25:59', '2021-11-18 09:25:59', '5.0', '7.0', '5.0'),
(1207, 226, '2021-12-13 14:27:16', '2021-12-13 14:27:16', NULL, NULL, NULL),
(1207, 227, '2021-12-13 14:27:33', '2021-12-13 14:27:33', NULL, NULL, NULL),
(1256, 226, '2021-12-13 14:20:22', '2021-12-13 14:20:22', NULL, NULL, NULL),
(1256, 227, '2021-12-13 14:20:31', '2021-12-13 14:20:31', NULL, NULL, NULL),
(1286, 49, '2021-11-18 06:28:03', '2021-11-18 06:28:03', '7.0', '8.0', '6.0'),
(1286, 50, '2021-11-18 08:43:10', '2021-11-18 08:43:10', '7.0', '7.0', '7.0'),
(1286, 51, '2021-11-18 08:43:10', '2021-11-18 08:43:10', '7.0', '5.0', '8.0'),
(1286, 52, '2021-11-18 08:43:10', '2021-11-18 08:43:10', '8.0', '8.0', '6.0'),
(1286, 53, '2021-11-18 08:43:10', '2021-11-18 08:43:10', '7.0', '6.0', '8.0'),
(1286, 54, '2021-11-18 08:43:10', '2021-11-18 08:43:10', '9.0', '6.0', '7.5'),
(1286, 55, '2021-11-18 08:43:11', '2021-11-18 08:43:11', '6.0', '8.0', '7.0'),
(1286, 56, '2021-11-18 08:43:11', '2021-11-18 08:43:11', '8.0', '6.0', '7.0');

-- --------------------------------------------------------

--
-- Table structure for table `de_cuong`
--

DROP TABLE IF EXISTS `de_cuong`;
CREATE TABLE IF NOT EXISTS `de_cuong` (
  `id_chuong_trinh` int NOT NULL,
  `id_hoc_phan` int NOT NULL,
  `mon_hoc_truoc` int NOT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_chuong_trinh`,`id_hoc_phan`,`mon_hoc_truoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `de_cuong`
--

INSERT INTO `de_cuong` (`id_chuong_trinh`, `id_hoc_phan`, `mon_hoc_truoc`, `ngay_tao`) VALUES
(1, 8, 29, '2021-11-03 17:59:03'),
(1, 35, 27, '2021-11-03 17:54:23'),
(1, 35, 28, '2021-11-03 17:54:23'),
(1, 36, 29, '2021-11-03 17:59:22'),
(1, 41, 35, '2021-11-03 17:57:43'),
(1, 48, 41, '2021-11-03 17:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `de_xuat_hoc_phan`
--

DROP TABLE IF EXISTS `de_xuat_hoc_phan`;
CREATE TABLE IF NOT EXISTS `de_xuat_hoc_phan` (
  `id_de_xuat_hoc_phan` int NOT NULL AUTO_INCREMENT,
  `id_dot_dang_ky` int NOT NULL,
  `id_hoc_phan` int NOT NULL,
  `id_lop_chuyen_nganh` int NOT NULL,
  `ghichu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ngay_tao` datetime DEFAULT NULL,
  PRIMARY KEY (`id_de_xuat_hoc_phan`),
  KEY `de_xuat_hoc_phan_hoc_phan_id_hoc_phan_fk` (`id_hoc_phan`),
  KEY `de_xuat_hoc_phan_lop_hoc_id_lop_hoc_fk` (`id_lop_chuyen_nganh`),
  KEY `de_xuat_hoc_phan_dot_dang_ki_id_dot_dang_ky_fk` (`id_dot_dang_ky`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `de_xuat_hoc_phan`
--

INSERT INTO `de_xuat_hoc_phan` (`id_de_xuat_hoc_phan`, `id_dot_dang_ky`, `id_hoc_phan`, `id_lop_chuyen_nganh`, `ghichu`, `ngay_tao`) VALUES
(2, 5, 11, 7, NULL, NULL),
(3, 1, 26, 5, NULL, NULL),
(4, 1, 66, 5, NULL, NULL),
(5, 1, 85, 5, NULL, NULL),
(6, 1, 87, 5, NULL, NULL),
(7, 5, 23, 5, NULL, NULL),
(8, 5, 63, 5, NULL, NULL),
(9, 6, 31, 5, NULL, NULL),
(11, 6, 8, 28, NULL, NULL),
(12, 6, 8, 5, NULL, NULL),
(13, 6, 26, 28, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `don_vi`
--

DROP TABLE IF EXISTS `don_vi`;
CREATE TABLE IF NOT EXISTS `don_vi` (
  `id_don_vi` int NOT NULL AUTO_INCREMENT,
  `ma_don_vi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_don_vi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vi_tri` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `khoa_chuyen_mon` int DEFAULT '1',
  PRIMARY KEY (`id_don_vi`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `don_vi`
--

INSERT INTO `don_vi` (`id_don_vi`, `ma_don_vi`, `ten_don_vi`, `vi_tri`, `ngay_tao`, `ngay_cap_nhat`, `khoa_chuyen_mon`) VALUES
(18, 'CTT', 'Khoa Công nghệ thông tin', 'Khu nhà C và lầu 2 khu A', '2021-10-07 14:02:04', '2021-10-22 16:30:53', 1),
(22, 'CB', 'Khoa Khoa học cơ bản', '', '2021-10-22 16:27:53', '2021-10-22 16:27:53', 1),
(23, 'CT', 'Khoa Lý luận chính trị', '', '2021-10-22 16:28:13', '2021-10-22 16:28:13', 1),
(24, 'KHTC', 'Phòng Kế hoạch tài chính', '', '2021-10-22 16:28:33', '2021-10-22 16:28:33', 0),
(25, 'CK', 'Khoa cơ khí', '', '2021-10-22 16:30:29', '2021-10-22 16:30:29', 1),
(26, 'DDT', 'Khoa Điện điện tử', '', '2021-11-03 08:41:09', '2021-11-03 08:41:09', 1),
(27, 'CKDL', 'Khoa Cơ khí động lực', '', '2021-11-03 08:42:17', '2021-11-03 08:42:17', 1),
(28, 'SHUD', 'Khoa Khoa Sinh học ứng dụng', '', '2021-11-03 08:43:17', '2021-11-03 08:43:17', 1),
(29, 'SPKT', 'Khoa Sư phạm kỹ thuật', '', '2021-11-03 08:44:27', '2021-11-03 08:44:27', 1),
(30, 'KTL', 'Khoa Kinh tế Luật', '', '2021-11-03 08:45:39', '2021-11-03 08:45:39', 1),
(31, 'PDT', 'Phòng Đào tạo', '', '2021-11-29 03:34:21', '2021-12-06 07:02:43', 0),
(32, 'PKT', 'Phòng Khảo thí', '', '2021-11-29 03:34:55', '2021-12-06 07:30:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dot_dang_ky`
--

DROP TABLE IF EXISTS `dot_dang_ky`;
CREATE TABLE IF NOT EXISTS `dot_dang_ky` (
  `id_dot_dang_ky` int NOT NULL AUTO_INCREMENT,
  `ten_dot_dang_ky` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_hoc_ky` int DEFAULT NULL,
  `thoi_gian_mo` datetime DEFAULT NULL,
  `thoi_gian_dong` datetime DEFAULT NULL,
  `thoi_gian_tao` datetime DEFAULT NULL,
  PRIMARY KEY (`id_dot_dang_ky`),
  KEY `dot_dang_ki_hoc_ky_fk` (`id_hoc_ky`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dot_dang_ky`
--

INSERT INTO `dot_dang_ky` (`id_dot_dang_ky`, `ten_dot_dang_ky`, `id_hoc_ky`, `thoi_gian_mo`, `thoi_gian_dong`, `thoi_gian_tao`) VALUES
(1, 'Đợt 1', 5, '2021-11-11 12:13:44', '2021-11-14 12:17:17', NULL),
(5, 'Đăng ký học kỳ phụ 1', 7, '2021-11-19 00:00:00', '2021-11-25 00:00:00', '2021-11-17 15:23:29'),
(6, 'Đăng ký học kỳ phụ đợt 2', 6, '2021-12-01 00:00:00', '2021-12-21 00:00:00', '2021-11-18 12:45:50'),
(7, 'Đăng ký môn thử nghiệm', 6, '2021-12-14 00:00:00', '2021-12-18 00:00:00', '2021-12-14 08:36:55'),
(8, 'Đăng ký test', 8, '2021-12-16 00:00:00', '2021-12-25 00:00:00', '2021-12-17 08:22:36'),
(9, 'hk2', 5, '2022-02-14 00:00:00', '2022-02-28 00:00:00', '2022-02-14 08:22:51'),
(10, 'Học kỳ 2, 2021-2022', 8, '2022-02-14 00:00:00', '2022-03-31 00:00:00', '2022-02-15 14:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `dot_dang_ky_chi_tiet`
--

DROP TABLE IF EXISTS `dot_dang_ky_chi_tiet`;
CREATE TABLE IF NOT EXISTS `dot_dang_ky_chi_tiet` (
  `id_dot_dang_ky` int NOT NULL,
  `id_hoc_vien` int NOT NULL,
  `id_lop_hoc_phan` int NOT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id_hoc_vien`,`id_lop_hoc_phan`,`id_dot_dang_ky`),
  KEY `dot_dang_ky_chi_tiet_dot_dang_ki_id_dot_dang_ky_fk` (`id_dot_dang_ky`),
  KEY `dot_dang_ky_chi_tiet_lop_hoc_phan_id_lop_hoc_phan_fk` (`id_lop_hoc_phan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dot_dang_ky_chi_tiet`
--

INSERT INTO `dot_dang_ky_chi_tiet` (`id_dot_dang_ky`, `id_hoc_vien`, `id_lop_hoc_phan`, `ngay_tao`, `trang_thai`) VALUES
(6, 15, 214, '2021-12-07 22:40:20', NULL),
(7, 15, 214, '2021-12-14 09:04:49', NULL),
(6, 15, 218, '2021-12-07 22:40:20', NULL),
(7, 15, 218, '2021-12-14 09:04:49', NULL),
(6, 15, 225, '2021-12-07 22:48:40', NULL),
(7, 15, 225, '2021-12-14 08:40:13', NULL),
(7, 15, 230, '2021-12-14 08:40:13', NULL),
(7, 15, 231, '2021-12-14 08:37:33', NULL),
(10, 15, 459, '2022-02-28 07:34:25', NULL),
(10, 15, 460, '2022-02-28 07:34:25', NULL),
(10, 15, 462, '2022-03-04 09:26:31', NULL),
(10, 15, 468, '2022-03-04 14:14:46', NULL),
(6, 1207, 32, '2021-11-18 17:05:23', NULL),
(6, 1207, 37, '2021-11-18 17:05:23', NULL),
(6, 1207, 38, '2021-11-26 10:44:28', NULL),
(6, 1207, 141, '2021-11-18 17:20:01', NULL),
(6, 1207, 144, '2021-11-18 17:20:01', NULL),
(6, 1207, 157, '2021-11-18 17:05:37', NULL),
(6, 1207, 163, '2021-11-18 17:05:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `giang_vien`
--

DROP TABLE IF EXISTS `giang_vien`;
CREATE TABLE IF NOT EXISTS `giang_vien` (
  `id_giang_vien` int NOT NULL AUTO_INCREMENT,
  `id_don_vi` int NOT NULL,
  `ho` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmnd` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trang_thai` int DEFAULT '0',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_chuc_vu` int DEFAULT NULL,
  `id_hoc_vi` int DEFAULT NULL,
  PRIMARY KEY (`id_giang_vien`),
  KEY `fk_giang_vi_giao_vien_don_vi` (`id_don_vi`),
  KEY `fk_giang_vien_chuc_vu` (`id_chuc_vu`),
  KEY `fk_giang_vien_hoc_vi` (`id_hoc_vi`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giang_vien`
--

INSERT INTO `giang_vien` (`id_giang_vien`, `id_don_vi`, `ho`, `ten`, `email`, `sdt`, `dia_chi`, `cmnd`, `anh`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`, `id_chuc_vu`, `id_hoc_vi`) VALUES
(1, 18, 'Trần Hồ', 'Đạt', 'datth@vlute.edu.vn', NULL, NULL, NULL, NULL, 1, '2021-10-11 08:51:58', '2021-11-01 08:49:03', 3, 2),
(18, 18, 'Phan Anh', 'Cang', 'cangpa@vlute.edu.vn', NULL, NULL, NULL, NULL, 1, '2021-10-25 12:41:49', '2021-11-01 03:27:11', 1, 1),
(19, 18, 'Nguyễn Ngọc', 'Nga', 'ngann@vlute.edu.vn', NULL, NULL, NULL, NULL, 1, '2021-10-25 12:48:48', '2021-11-01 08:49:18', 4, 2),
(24, 18, 'Trần Thị Tố', 'Loan', 'loanttt@vlute.edu.vn', NULL, NULL, NULL, NULL, 1, '2021-10-26 12:28:12', '2021-11-01 08:49:11', 4, 2),
(26, 18, 'Nguyễn Thị Mỹ', 'Nga', 'ngantm@vlute.edu.vn', NULL, NULL, NULL, NULL, 1, '2021-10-26 12:33:18', '2021-11-01 08:48:28', 4, 2),
(29, 18, 'Nguyễn Văn', 'Hiếu', 'hieunv@vlute.edu.vn', NULL, NULL, NULL, NULL, 1, '2021-10-26 13:28:20', '2021-11-01 08:48:54', 4, 2),
(50, 18, 'Nguyễn Ngọc Phương', 'Trang', 'trangnnp@vlute.edu.vn', NULL, NULL, NULL, NULL, 1, '2021-10-28 08:28:46', '2021-11-01 08:49:26', 4, 3),
(51, 18, 'Trần Phan An', 'Trường', 'truongtpa@vlute.edu.vn', NULL, NULL, NULL, NULL, 1, '2021-10-28 12:15:42', '2021-10-28 12:15:42', 4, 3),
(116, 22, 'Hồ Minh', 'Trung', 'trunghm@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:08', '2021-11-02 09:04:08', 1, 1),
(117, 22, 'Trương Thị Thúy', 'Vân', 'vanttt@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:08', '2021-11-02 09:04:08', 2, 2),
(118, 22, 'Trần Hoài Ngọc', 'Nhân', 'nhanthn@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:08', '2021-11-02 09:04:08', 4, 1),
(119, 22, 'Trương Công', 'Nghiệp', 'nghieptc@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:08', '2021-11-02 09:04:08', 4, 2),
(120, 22, 'Phạm Văn', 'Dương', 'duongpv@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(121, 22, 'Vũ Mộng', 'Long', 'longvm@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(122, 22, 'Lê Doãn', 'Duy', 'duyld@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(123, 22, 'Võ Phước', 'Hậu', 'hauvp@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(124, 22, 'Lê Thị Thu', 'Thùy', 'thuyltt@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(125, 22, 'Lê Xuân', 'Thùy', 'thuylx@vlute.edu.vn', NULL, NULL, NULL, '', 1, '2021-11-02 09:04:09', '2021-11-02 09:21:26', 4, 4),
(126, 22, 'Thái Văn', 'Thanh', 'thanhtv@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(127, 22, 'Nguyễn Thành', 'Luân', 'luannt@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(128, 22, 'Phạm Như', 'Thuận', 'thuanpn@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(129, 22, 'Nguyễn Hoàng', 'Anh', 'anh_nh@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(130, 22, 'Phan Hữu', 'Hoàng', 'hoangph@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:09', '2021-11-02 09:04:09', 4, 2),
(131, 22, 'Trần Thế', 'Phương', 'phuongtt@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:10', '2021-11-02 09:04:10', 4, 2),
(132, 22, 'Nguyễn Thanh', 'Toàn', 'toannt@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:10', '2021-11-02 09:04:10', 4, 2),
(133, 22, 'Huỳnh Minh', 'Hiền', 'hienhm@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:10', '2021-11-02 09:04:10', 4, 2),
(134, 22, 'Lê Thị Thúy', 'My', 'myltt@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:10', '2021-11-02 09:04:10', 4, 2),
(135, 22, 'Thái Văn', 'Thành', 'thanh_tv@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:10', '2021-11-02 09:04:10', 4, 2),
(136, 22, 'Ngô Minh', 'Trung', 'trung_nm@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:10', '2021-11-02 09:04:10', 4, 2),
(137, 22, 'Phạm Minh', 'Trí', 'tripm@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:04:10', '2021-11-02 09:04:10', 4, 2),
(138, 18, 'Nguyễn Vạn', 'Năng', 'nangnv@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 2),
(139, 18, 'Lê Hoàng', 'An', 'anlh@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 3, 2),
(140, 18, 'Trần Thái', 'Bảo', 'baott@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 3, 2),
(141, 18, 'Trần Thu', 'Mai', 'maitt@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 2),
(142, 18, 'Trương Mỹ Thu', 'Thảo', 'thaotmt@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 4),
(143, 18, 'Nguyễn Thị Hồng', 'Yến', 'yennth@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 2),
(144, 18, 'Lê Thị Hoàng', 'Yến', 'yenlth@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 2),
(145, 18, 'Lê Thị Hạnh', 'Hiền', 'hienlth@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 2),
(146, 18, 'Trần Thị Cẩm', 'Tú', 'tuttc@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 2),
(147, 18, 'Mai Thiên', 'Thư', 'thumt@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 3),
(148, 18, 'Tô Nguyễn Hoàng', 'Phúc', 'phuctnh@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 3),
(149, 18, 'Trần Thị Kim', 'Ngân', 'nganttk@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:28', '2021-11-02 09:16:28', 4, 3),
(150, 18, 'Trần Quốc', 'Thịnh', 'thinhtq@vlute.edu.vn', '', '', '', '', 1, '2021-11-02 09:16:29', '2021-11-02 09:16:29', 4, 3),
(173, 25, 'Lê Hoàng', 'Anh', 'anhlh@vlute.edu.vn', NULL, NULL, NULL, '', 0, '2021-11-03 08:39:28', '2021-11-18 02:20:52', 1, 1),
(174, 25, 'Mai Đăng', 'Tuấn', 'tuanmd@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:28', '2021-11-03 08:39:28', 4, 4),
(175, 25, 'Nguyễn Tấn', 'Nó', 'nont@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:28', '2021-11-03 08:39:28', 3, 2),
(176, 25, 'Nguyễn Văn', 'Dư', 'dunv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:29', '2021-11-03 08:39:29', 4, 2),
(177, 25, 'Nguyễn Hữu', 'Long', 'longnh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:29', '2021-11-03 08:39:29', 4, 3),
(178, 25, 'Trần Hữu', 'Danh', 'danhth@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:29', '2021-11-03 08:39:29', 3, 1),
(179, 25, 'Phạm Hoàng', 'Anh', 'anhph@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:29', '2021-11-03 08:39:29', 4, 2),
(180, 25, 'Lê Hữu', 'Toàn', 'toanlh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:29', '2021-11-03 08:39:29', 4, 2),
(181, 25, 'Nguyễn Hoàng', 'Thiện', 'thiennh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:29', '2021-11-03 08:39:29', 4, 2),
(182, 25, 'Trần Vĩnh', 'Phúc', 'phuctv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:29', '2021-11-03 08:39:29', 4, 2),
(183, 25, 'Huỳnh Thanh', 'Tuấn', 'tuanht@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:29', '2021-11-03 08:39:29', 4, 2),
(184, 25, 'Lê', 'Nhân', 'lenhan@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:29', '2021-11-03 08:39:29', 4, 2),
(185, 25, 'Đặng Thanh', 'Tâm', 'tamdt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:30', '2021-11-03 08:39:30', 4, 3),
(186, 25, 'Lê Minh', 'Cường', 'cuonglm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:30', '2021-11-03 08:39:30', 4, 3),
(187, 25, 'Nguyễn Hải', 'Đăng', 'dangnh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:30', '2021-11-03 08:39:30', 4, 3),
(188, 25, 'Trịnh Công', 'Danh', 'danhtc@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:30', '2021-11-03 08:39:30', 4, 3),
(189, 25, 'Nguyễn Ngọc', 'Nhân', 'nhannn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:30', '2021-11-03 08:39:30', 4, 2),
(190, 25, 'Nguyễn Ngọc', 'Tuấn', 'tuannn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:30', '2021-11-03 08:39:30', 4, 3),
(191, 25, 'Phan Trường', 'Duy', 'duypt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:30', '2021-11-03 08:39:30', 4, 3),
(192, 25, 'Dương Tấn', 'Đạt', 'datt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:30', '2021-11-03 08:39:30', 4, 3),
(193, 25, 'Nguyễn Thuận Hải', 'Đăng', 'dangnth@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:30', '2021-11-03 08:39:30', 4, 3),
(194, 25, 'Tạ Văn', 'Rảnh', 'ranhtv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:39:31', '2021-11-03 08:39:31', 4, 3),
(195, 26, 'Nguyễn Xuân', 'Vinh', 'vinhnx@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 1, 1),
(196, 26, 'Nguyễn Đức', 'Thành', 'thanhnd@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 2, 4),
(197, 26, 'Lâm Minh', 'Dũng', 'dunglm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 3, 2),
(198, 26, 'Phạm Thanh', 'Tùng', 'tungpt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 3, 1),
(199, 26, 'Nguyễn Văn', 'Minh', 'minhnv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 4, 1),
(200, 26, 'Nguyễn Thị Anh', 'Thư', 'thunta@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 4, 2),
(201, 26, 'Phan Ngọc', 'Linh', 'linhpn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 4, 2),
(202, 26, 'Nguyễn Hữu', 'Thọ', 'thonh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 4, 6),
(203, 26, 'Nguyễn Minh', 'Hùng', 'hungnm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 4, 2),
(204, 26, 'Lê Khắc', 'Thịnh', 'thinhlk@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 4, 2),
(205, 26, 'Nguyễn Toàn', 'Tri', 'trint@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 4, 3),
(206, 26, 'Mai Nhật', 'Thiên', 'thienmn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 4, 2),
(207, 26, 'Biện Công', 'Long', 'longbc@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:24', '2021-11-03 08:41:24', 4, 2),
(208, 26, 'Đặng Thành', 'Tựu', 'tuudt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(209, 26, 'Lê Minh', 'Thành', 'thanhlm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 4),
(210, 26, 'Lê Thị Kiều', 'Mai', 'mailtk@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(211, 26, 'Lương Hoài', 'Thương', 'thuonglh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(212, 26, 'Huỳnh Thanh', 'Tường', 'tuonght@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(213, 26, 'Nguyễn Văn', 'Bền', 'bennv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(214, 26, 'Bùi Quang', 'Huy', 'huybq@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(215, 26, 'Nguyễn Phúc', 'Trường', 'truongnp@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(216, 26, 'Bùi Thanh', 'Hiếu', 'hieubt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(217, 26, 'Nguyễn Xích', 'Quân', 'quannx@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(218, 26, 'Phạm Thị Kim', 'Thê', 'theptk@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(219, 26, 'Lê Công', 'Khanh', 'khanhlc@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(220, 26, 'Trần Minh', 'Quyến', 'quyentm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:25', '2021-11-03 08:41:25', 4, 2),
(221, 26, 'Nguyễn Văn', 'Thái', 'thainv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 2),
(222, 26, 'Trần Ngọc', 'Thoa', 'thoatn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 2),
(223, 26, 'Nguyễn Trường', 'Kỳ', 'kynt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 2),
(224, 26, 'Phạm Văn', 'Lực', 'lucpv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 2),
(225, 26, 'Nguyễn Việt', 'Trung', 'trungnv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 3),
(226, 26, 'Nguyễn Phước', 'Lộc', 'locnp@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 3),
(227, 26, 'Trần Thị Thùy', 'Trang', 'trangttt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 3),
(228, 26, 'Nguyễn Thái', 'Sơn', 'sonnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 2),
(229, 26, 'Võ Hoàng', 'Tâm', 'tamvh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 2),
(230, 26, 'Nguyễn Văn', 'Tâm', 'tamnv_85@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:41:26', '2021-11-03 08:41:26', 4, 2),
(231, 27, 'Nguyễn Thái', 'Vân', 'vannt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:30', '2021-11-03 08:42:30', 1, 1),
(232, 27, 'Hồ Hữu', 'Chấn', 'chanhh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:30', '2021-11-03 08:42:30', 4, 4),
(233, 27, 'Cao Hùng', 'Phi', 'caohungphi@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:30', '2021-11-03 08:42:30', 4, 5),
(234, 27, 'Nguyễn Thanh', 'Tùng', 'tungnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:30', '2021-11-03 08:42:30', 4, 1),
(235, 27, 'Mai Hoàng', 'Long', 'longmh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:30', '2021-11-03 08:42:30', 4, 1),
(236, 27, 'Nguyễn Quang', 'Tuyến', 'tuyennq@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:30', '2021-11-03 08:42:30', 4, 2),
(237, 27, 'Lương Văn', 'Vạn', 'vanlv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:30', '2021-11-03 08:42:30', 3, 1),
(238, 27, 'Đặng Duy', 'Khiêm', 'khiemdd@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:30', '2021-11-03 08:42:30', 4, 2),
(239, 27, 'Nguyễn Công', 'Khải', 'khainc@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 2),
(240, 27, 'Lâm Đức', 'Toàn', 'toanld@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 6),
(241, 27, 'Mai Phước', 'Trải', 'traimp@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 4),
(242, 27, 'Châu Công', 'Hậu', 'haucc@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 2),
(243, 27, 'Phan Hoàng', 'Sơn', 'sonph@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 2),
(244, 27, 'Nguyễn Toàn', 'Trung', 'trungnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 3),
(245, 27, 'Nguyễn Thành', 'Danh', 'danhnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 2),
(246, 27, 'Võ Văn Cà', 'Cà', 'cavv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 2),
(247, 27, 'Nguyễn Hoàng', 'Nhân', 'nhannh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 2),
(248, 27, 'Tô Ngọc', 'Luật', 'luattn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:31', '2021-11-03 08:42:31', 4, 3),
(249, 27, 'Nguyễn Đỗ Hoài', 'Phong', 'phongndh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 2),
(250, 27, 'Khấu Tấn', 'Phát', 'phatkt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 2),
(251, 27, 'Nguyễn Văn', 'Toàn', 'toannv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 2),
(252, 27, 'Lê', 'Minh', 'minhl@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 2),
(253, 27, 'Nguyễn Nhựt', 'Tân', 'tannn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 2),
(254, 27, 'Phạm Hoàng', 'Tú', 'tu_ph@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 3),
(255, 27, 'Lê Minh', 'Phụng', 'phunglm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 3),
(256, 27, 'Võ Trọng', 'Hữu', 'huuvt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 3),
(257, 27, 'Trần Hoàng Xuân', 'Thắng', 'thangthx@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 3),
(258, 27, 'Nguyễn Thành Trường', 'Giang', 'giangntt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 3),
(259, 27, 'Phan Thảo', 'My', 'mypt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:32', '2021-11-03 08:42:32', 4, 3),
(260, 27, 'Trần Thành', 'Luân', 'luantt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:33', '2021-11-03 08:42:33', 4, 3),
(261, 27, 'Phan Chương Anh', 'Khôi', 'khoipca@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:33', '2021-11-03 08:42:33', 4, 3),
(262, 27, 'Châu Trung', 'Tín', 'tinct@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:42:33', '2021-11-03 08:42:33', 4, 3),
(263, 28, 'Đặng Thanh', 'Sơn', 'sondt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:34', '2021-11-03 08:43:34', 1, 4),
(264, 28, 'Trần Hồng', 'Quân', 'quanth@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:34', '2021-11-03 08:43:34', 2, 1),
(265, 28, 'Trương Phúc', 'Vinh', 'vinhtp@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 3, 4),
(266, 28, 'Trương Văn', 'Xạ', 'xatv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(267, 28, 'Nguyễn Nhu', 'Liễu', 'lieunn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(268, 28, 'Trịnh Ngọc', 'Hân', 'hantn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(269, 28, 'Lê Ngọc', 'Vỉnh', 'vinhln@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(270, 28, 'Huỳnh Thị Hồng', 'Nhung', 'nhunghth@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(271, 28, 'Trần Thanh', 'Thảo', 'thaott@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(272, 28, 'Huỳnh Thị Phương', 'Thảo', 'thaohtp@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(273, 28, 'Đinh Thị Kim', 'Nhung', 'nhungdtk@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(274, 28, 'Trần Bá', 'Luân', 'luantb@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 4),
(275, 28, 'Trần Minh', 'Phúc', 'phuctm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(276, 28, 'Nguyễn Trung', 'Trực', 'trungnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 4),
(277, 28, 'Võ Thị Ngọc', 'Bích', 'bichvtn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:35', '2021-11-03 08:43:35', 4, 2),
(278, 28, 'Tân Bích', 'Phượng', 'phuongtb@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 2),
(279, 28, 'Nguyễn Thị Thu', 'Hương', 'huongntt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 2),
(280, 28, 'Hồ Xuân', 'Yến', 'yenhx@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 3),
(281, 28, 'Lâm Hòa', 'Hưng', 'hunglh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 2),
(282, 28, 'Trần Kim', 'Thoa', 'thoatk@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 2),
(283, 28, 'Phan Nguyễn Thanh', 'Trang', 'trangpnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 2),
(284, 28, 'Nguyễn Anh', 'Thi', 'thita@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 2),
(285, 28, 'Huỳnh Minh', 'Luân', 'luanhm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 2),
(286, 28, 'Quách Thị Thanh', 'Tâm', 'tamqtt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 1),
(287, 28, 'Đặng Phi', 'Yến', 'yendp@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 6),
(288, 28, 'Lý Bảo', 'Trân', 'tranlb@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 6),
(289, 28, 'Nguyễn Trí Yến', 'Chi', 'chinty@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 3, 1),
(290, 28, 'Nguyễn Trường', 'Lãm', 'lamnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:36', '2021-11-03 08:43:36', 4, 6),
(291, 28, 'Nguyễn Thị Hồng', 'Gấm', 'gamnth@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 6),
(292, 28, 'Nguyễn Phụng', 'Tiên', 'tiennp@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 6),
(293, 28, 'Nguyễn Thị Thúy', 'Hằng', 'hangntt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 2),
(294, 28, 'Quách Văn Cao', 'Thi', 'thiqvc@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 1),
(295, 28, 'Đặng Mai', 'Phúc', 'phucdm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 2),
(296, 28, 'Ngô Khánh', 'Duy', 'duy_ngk@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 6),
(297, 28, 'Nguyễn Thị Ngọc', 'Ánh', 'anhntn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 1),
(298, 28, 'Nguyễn Mai', 'Vy', 'vynm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 3),
(299, 28, 'Trần Thị Anh', 'Đào', 'daotta@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 3),
(300, 28, 'Giáp Phạm Ngọc', 'Trâm', 'tramgpn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:43:37', '2021-11-03 08:43:37', 4, 3),
(301, 29, 'Nguyễn Công', 'Đắc', 'dacnc@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 2, 2),
(302, 29, 'Trần Đại', 'Phước', 'phuoctd@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 2, 3),
(303, 29, 'Trần Hữu', 'Thi', 'thith@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(304, 29, 'Nguyễn Minh', 'Trung', 'minhnm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(305, 29, 'Lê Thị Ngọc', 'Giàu', 'giaultn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(306, 29, 'Bùi Nguyễn Hoàng', 'Trương', 'truongbnh@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(307, 29, 'Lê Thị Hồng', 'Nhung', 'nhunglth@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(308, 29, 'Nguyễn Thị', 'Hồng', 'hongnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(309, 29, 'Trịnh Thị Kim', 'Thơ', 'thottk@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(310, 29, 'Trần Minh', 'Sang', 'sangtm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 6),
(311, 29, 'Trương Thị', 'Trang', 'trangtt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(312, 29, 'Nguyễn Thị Kiều', 'Nga', 'ngantk@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(313, 29, 'Đinh Trần Kim', 'Ngân', 'ngandtk@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:46', '2021-11-03 08:44:46', 4, 2),
(314, 29, 'Trương Mộng', 'Loan', 'loantm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:47', '2021-11-03 08:44:47', 4, 2),
(315, 29, 'Nguyễn Diễm', 'Phúc', 'phucnd@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:44:47', '2021-11-03 08:44:47', 4, 2),
(316, 30, 'Nguyễn Nghiêm Thái', 'Minh', 'minhnnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 1, 1),
(317, 30, 'Huỳnh Thị', 'Dư', 'duht@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 2, 2),
(318, 30, 'Trần Cẩm', 'Nhung', 'nhungttc@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 4, 2),
(319, 30, 'Nguyễn Thị Mỹ', 'Linh', 'linhntm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 4, 2),
(320, 30, 'Tô Tuấn', 'An', 'antt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 4, 2),
(321, 30, 'Nguyễn Huỳnh Trúc', 'My', 'mynht@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 4, 3),
(322, 30, 'Nguyễn Ngọc', 'Anh', 'anhnn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 4, 3),
(323, 30, 'Cao Thanh', 'Phong', 'phongct@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 4, 2),
(324, 30, 'Dương Quốc', 'Thịnh', 'thinhdq@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 4, 2),
(325, 30, 'Lê Công Bảo', 'Ngọc', 'ngoclcb@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:57', '2021-11-03 08:45:57', 4, 2),
(326, 30, 'Nguyễn Văn', 'Trường', 'truongnv@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:58', '2021-11-03 08:45:58', 4, 3),
(327, 30, 'Lê Minh', 'Triết', 'trietlm@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:58', '2021-11-03 08:45:58', 4, 2),
(328, 30, 'Nguyễn Thị Ngọc', 'Chân', 'channtn@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:58', '2021-11-03 08:45:58', 4, 2),
(329, 30, 'Nguyễn Thị Hồng', 'Khanh', 'khanhnth@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:58', '2021-11-03 08:45:58', 4, 2),
(330, 30, 'Đặng Nguyễn Thảo', 'Hiền', 'hiendnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:58', '2021-11-03 08:45:58', 4, 2),
(331, 30, 'Hứa Bình', 'Nguyên', 'nguyenhb@vlute.edu.vn', '', '', '', '', 1, '2021-11-03 08:45:58', '2021-11-03 08:45:58', 4, 2),
(339, 23, 'Nguyễn Việt', 'Thanh', 'thanhnv@vlute.edu.vn', '', '', '', '', 1, '2021-11-05 04:23:21', '2021-11-05 04:23:21', 1, 1),
(340, 23, 'Nguyễn Văn', 'Tâm', 'tamnv63@vlute.edu.vn', '', '', '', '', 1, '2021-11-05 04:23:21', '2021-11-05 04:23:21', 4, 4),
(341, 23, 'Lê Thị', 'Tâm', 'tamlt@vlute.edu.vn', '', '', '', '', 1, '2021-11-05 04:23:21', '2021-11-05 04:23:21', 4, 2),
(342, 23, 'Nguyễn Thị Thanh', 'Thanh', 'thaontt@vlute.edu.vn', '', '', '', '', 1, '2021-11-05 04:23:21', '2021-11-05 04:23:21', 4, 2),
(343, 23, 'Nguyễn Thị Mỹ', 'Linh', 'linhntm@vlute.edu.vn', '', '', '', '', 1, '2021-11-05 04:23:21', '2021-11-05 04:23:21', 4, 2),
(344, 23, 'Huỳnh Thị Tuyết', 'Ngoan', 'ngoanhtt@vlute.edu.vn', '', '', '', '', 1, '2021-11-05 04:23:22', '2021-11-05 04:23:22', 4, 2),
(345, 23, 'Tô Tuấn', 'An', 'antt@vlute.edu.vn', '', '', '', '', 1, '2021-11-05 04:23:22', '2021-11-05 04:23:22', 4, 2),
(346, 23, 'Nguyễn Thị', 'Ràng', 'rangnt@vlute.edu.vn', '', '', '', '', 1, '2021-11-05 04:23:22', '2021-11-05 04:23:22', 4, 2),
(347, 24, 'Nguyễn Minh', 'Sang', 'sangnm@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:01:50', '2021-12-06 07:01:50', 5, 2),
(348, 24, 'Nguyễn Nghiêm Thái', 'Minh', 'minhnnt@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:01:50', '2021-12-06 07:01:50', 6, 1),
(349, 24, 'Trần Thị Cẩm', 'Nhung', 'nhungttc@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:01:50', '2021-12-06 07:01:50', 7, 2),
(350, 24, 'Nguyễn Tích Thiện', 'Tâm', 'tamntt@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:01:50', '2021-12-06 07:01:50', 7, 3),
(351, 24, 'Đặng Thị Kim', 'Anh', 'anhdtk@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:01:50', '2021-12-06 07:01:50', 7, 3),
(352, 24, 'Lê Trương Bảo', 'Trang', 'trangltb@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:01:50', '2021-12-06 07:01:50', 4, 3),
(353, 24, 'Trần Thị Lệ', 'Thu', 'thuttl@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:01:50', '2021-12-06 07:01:50', 4, 3),
(354, 24, 'Huỳnh Thị', 'Dư', 'duht@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:01:51', '2021-12-06 07:01:51', 4, 3),
(355, 31, 'Mai Hoàng', 'Long', 'longmh@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:03:00', '2021-12-06 07:03:00', 5, 4),
(356, 31, 'Nguyễn Duy', 'Phúc', 'phucnd@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:03:00', '2021-12-06 07:03:00', 6, 2),
(357, 31, 'Nguyễn Đức', 'Hải', 'haind@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:03:00', '2021-12-06 07:03:00', 4, 2),
(358, 31, 'Nguyễn Thanh', 'Ngọc', 'ngocnt@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:03:00', '2021-12-06 07:03:00', 4, 2),
(359, 31, 'Thạch Thị', 'Sochet', 'sochet@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:03:00', '2021-12-06 07:03:00', 4, 2),
(360, 31, 'Mai Ngọc', 'Quí', 'quimn@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:03:00', '2021-12-06 07:03:00', 4, 2),
(361, 31, 'Nguyễn Thị Hồng', 'Khanh', 'khanhnth@vlute.edu.', '', '', '', '', 1, '2021-12-06 07:03:01', '2021-12-06 07:03:01', 4, 2),
(362, 32, 'Trần Thanh', 'Hiếu', 'hieutt@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:31:13', '2021-12-06 07:31:13', 5, 2),
(363, 32, 'Võ Hoàng', 'Tâm', 'tamvh@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:31:13', '2021-12-06 07:31:13', 6, 2),
(364, 32, 'Bùi Thị Kim', 'Huệ', 'huebtk@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:31:14', '2021-12-06 07:31:14', 6, 2),
(365, 32, 'Lê Quốc', 'Lâm', 'lamlq@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:31:14', '2021-12-06 07:31:14', 4, 2),
(366, 32, 'Đặng Nguyễn Thảo', 'Hiền', 'hiendnt@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:31:14', '2021-12-06 07:31:14', 4, 2),
(367, 32, 'Nguyễn Thị Huy', 'Diễm', 'diemnth@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:31:14', '2021-12-06 07:31:14', 4, 2),
(368, 32, 'Nguyễn Cúc Linh', 'Trân', 'tranncl@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:31:14', '2021-12-06 07:31:14', 7, 3),
(369, 32, 'Nguyễn Thị Mộng', 'Thu', 'thuntm@vlute.edu.vn', '', '', '', '', 1, '2021-12-06 07:31:14', '2021-12-06 07:31:14', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `he_dao_tao`
--

DROP TABLE IF EXISTS `he_dao_tao`;
CREATE TABLE IF NOT EXISTS `he_dao_tao` (
  `id_he_dao_tao` int NOT NULL AUTO_INCREMENT,
  `ma_he_dao_tao` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_he_dao_tao` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_he_dao_tao`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `he_dao_tao`
--

INSERT INTO `he_dao_tao` (`id_he_dao_tao`, `ma_he_dao_tao`, `ten_he_dao_tao`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(21, '111', 'Đại học', '2021-10-08 01:22:39', '2021-10-13 12:36:07'),
(22, '222', 'Cao đẳng', '2021-10-08 01:22:54', '2021-10-08 01:22:54'),
(23, '333', 'Cao học', '2021-10-08 01:23:01', '2021-10-08 01:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `hoc_ky`
--

DROP TABLE IF EXISTS `hoc_ky`;
CREATE TABLE IF NOT EXISTS `hoc_ky` (
  `id_hoc_ky` int NOT NULL AUTO_INCREMENT,
  `id_nam_hoc` int NOT NULL,
  `ma_hoc_ky` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_hoc_ky` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_bat_dau` date DEFAULT NULL,
  `tuan_bat_dau` int DEFAULT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `tuan_ket_thuc` int DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` int DEFAULT '0',
  `hoc_ky` int DEFAULT NULL,
  PRIMARY KEY (`id_hoc_ky`),
  KEY `fk_hoc_ky_associati_nam_hoc` (`id_nam_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoc_ky`
--

INSERT INTO `hoc_ky` (`id_hoc_ky`, `id_nam_hoc`, `ma_hoc_ky`, `ten_hoc_ky`, `ngay_bat_dau`, `tuan_bat_dau`, `ngay_ket_thuc`, `tuan_ket_thuc`, `ngay_tao`, `ngay_cap_nhat`, `trang_thai`, `hoc_ky`) VALUES
(1, 19, 'hk1', 'Học kỳ 1', '2022-01-01', 1, '2022-04-08', 15, '2021-10-07 00:58:43', '2021-10-07 00:58:43', 0, NULL),
(2, 19, 'hk2', 'Học kỳ 2', '2021-08-05', 20, '2021-12-09', 35, '2021-10-07 00:58:48', '2021-10-13 07:41:56', 1, NULL),
(3, 2, 'hk1', 'Học kỳ 1', '2020-03-01', 10, '2020-07-01', 25, '2021-10-07 02:18:35', '2021-10-26 13:32:42', 2, NULL),
(5, 2, 'hk2', 'học kỳ 2', '2022-01-01', 3, '2022-05-31', 18, '2021-10-07 07:47:45', '2021-10-13 13:17:02', 1, NULL),
(6, 19, 'hk1', 'Học kỳ 1', '2022-03-01', 1, '2022-05-01', 18, '2021-11-16 12:48:11', '2021-11-16 12:48:11', 1, NULL),
(7, 1, 'HKP1', 'Học kỳ phụ 1', '2021-11-23', 47, '2021-11-29', 52, '2021-11-17 15:23:05', '2021-11-17 15:23:05', 1, NULL),
(8, 19, 'HK-2', 'Học kỳ 2', '2021-12-01', 1, '2021-12-30', 10, '2021-12-16 04:04:05', '2021-12-16 04:04:05', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoc_phan`
--

DROP TABLE IF EXISTS `hoc_phan`;
CREATE TABLE IF NOT EXISTS `hoc_phan` (
  `id_hoc_phan` int NOT NULL AUTO_INCREMENT,
  `ma_hoc_phan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_hoc_phan` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_tieng_anh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tin_chi_lt` int DEFAULT '0',
  `tin_chi_th` int DEFAULT '0',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` int DEFAULT '0',
  PRIMARY KEY (`id_hoc_phan`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoc_phan`
--

INSERT INTO `hoc_phan` (`id_hoc_phan`, `ma_hoc_phan`, `ten_hoc_phan`, `ten_tieng_anh`, `tin_chi_lt`, `tin_chi_th`, `ngay_tao`, `ngay_cap_nhat`, `trang_thai`) VALUES
(1, '1BLABLA', 'Học phần test', 'Name', 2, 2, '2021-10-19 13:28:01', '2021-10-19 13:28:01', 0),
(3, 'HDC', 'Hóa đại cương', 'Hoa dai cuong', 2, 0, '2021-10-21 14:44:42', '2021-10-21 15:00:29', 1),
(4, 'vl01', 'Lý Cao Cấp', 'Superior Physic', 6, 4, '2021-10-21 14:45:32', '2021-10-28 14:18:20', 1),
(7, 'TCC', 'Toán cao cấp 1', 'Toan cao cap 1', 2, 0, '2021-10-21 14:57:27', '2021-10-21 15:00:07', 0),
(8, 'TH1219', 'Lập trình căn bản', 'Lap trinh can ban', 2, 2, '2021-10-21 14:57:36', '2021-10-30 03:28:34', 1),
(11, 'BBB', 'Kiểm thử', 'Kiem thu', 2, 1, '2021-10-21 17:18:02', '2021-10-21 17:18:02', 1),
(22, 'TH1209', 'Lập trình hướng đối tượng', 'Lap trinh huong doi tuong', 2, 1, '2021-10-28 14:21:21', '2021-10-28 14:21:42', 1),
(23, 'KKA01', 'Cơ sở dữ liêu', 'Co so du lieu', 2, 1, '2021-10-28 14:22:08', '2021-10-28 14:22:08', 1),
(24, 'NHUNG01', 'Lập trình nhúng', 'Lap trinh nhung', 3, 1, '2021-10-28 16:12:08', '2021-10-28 16:12:08', 1),
(25, 'KKA', 'Nhập môn công nghệ phần mềm', 'Nhap mon cong nghe phan mem', 3, 0, '2021-10-28 18:08:46', '2021-10-28 18:08:46', 1),
(26, 'AT03', 'An toàn thông tin', 'An toan thong tin', 3, 1, '2021-10-28 18:13:13', '2021-10-28 18:13:13', 1),
(27, 'CT2101', 'Triết học Mác-Lênin', 'Triet hoc Mac-Lenin', 3, 0, '2021-10-30 02:51:42', '2021-10-30 02:51:42', 1),
(28, 'CT2102', 'Kinh tế chính trị Mác-Lênin', 'Kinh tế chính trị Mác-Lênin', 2, 0, '2021-10-30 02:54:20', '2021-10-30 02:54:20', 1),
(29, 'TH1201', 'Tin học cơ sở', 'Tin học cơ sở', 2, 0, '2021-10-30 02:54:43', '2021-10-30 02:54:43', 1),
(30, 'CB1106', 'Toán cao cấp A1', 'Toán cao cấp A1', 3, 0, '2021-10-30 02:59:42', '2021-10-30 02:59:42', 1),
(31, 'TH1522', 'Tin học ứng dụng', 'Tin học ứng dụng', 2, 0, '2021-10-30 03:14:04', '2021-10-30 03:14:04', 1),
(32, 'CB1111', 'Vật lý đại cương A1', 'Vật lý đại cương A1', 3, 0, '2021-10-30 03:20:26', '2021-10-30 03:20:26', 1),
(33, 'TH1521', 'Lắp ráp và cài đặt máy tính', 'Lắp ráp và cài đặt máy tính', 2, 0, '2021-10-30 03:22:08', '2021-10-30 03:43:25', 1),
(34, 'CB1109', 'Xác suất thống kê', 'Xác suất thống kê', 3, 0, '2021-10-30 03:23:37', '2021-10-30 03:43:35', 1),
(35, 'CT2103', 'Chủ nghĩa xã hội khoa học', 'Chủ nghĩa xã hội khoa học', 2, 0, '2021-10-30 03:26:40', '2021-10-30 03:43:43', 1),
(36, 'TH1203', 'Toán rời rạc', 'Toan roi rac', 2, 0, '2021-10-30 03:31:12', '2021-10-30 03:43:52', 1),
(37, 'TH1205', 'Cấu trúc máy tính', 'Cau truc may tinh', 3, 0, '2021-10-30 03:32:19', '2021-10-30 03:44:04', 1),
(38, 'TH1207', 'Cơ sở dữ liệu', 'Co so du lieu', 3, 0, '2021-10-30 03:33:04', '2021-10-30 03:43:16', 1),
(39, 'TH1227', 'Biên tập và soạn thảo văn bản', 'Biên tập và soạn thảo văn bản', 2, 0, '2021-10-30 03:33:46', '2021-10-30 03:44:12', 1),
(40, 'DT1283', 'Kỹ thuật số_CNNT', 'Kỹ thuật số_CNNT', 2, 0, '2021-10-30 03:34:44', '2021-10-30 03:44:20', 1),
(41, 'CT2104', 'Lịch sử Đảng Cộng sản Việt Nam', 'Lịch sử Đảng Cộng sản Việt Nam', 2, 0, '2021-10-30 03:45:44', '2021-10-30 03:52:14', 1),
(42, 'TH1206', 'Cấu trúc dữ liệu giải thuật', 'Cấu trúc dữ liệu giải thuật', 3, 0, '2021-10-30 03:46:51', '2021-10-30 03:46:51', 1),
(43, 'TH1209', 'Lập trình hướng đối tượng', 'Lập trình hướng đối tượng', 3, 0, '2021-10-30 03:47:28', '2021-10-30 03:47:28', 1),
(44, 'TH1208', 'Hệ điều hành', 'he dieu hanh', 3, 0, '2021-10-30 03:48:37', '2021-10-30 03:48:37', 1),
(45, 'TH1305', 'Phân tích thiết kế hệ thống thông tin', 'Phân tích thiết kế hệ thống thông tin', 3, 0, '2021-10-30 03:49:32', '2021-10-30 03:49:32', 1),
(46, 'TH1217', 'An toàn và vệ sinh lao động trong lĩnh vực CNTT', 'An toàn và vệ sinh lao động trong lĩnh vực CNTT', 1, 0, '2021-10-30 03:50:38', '2021-10-30 03:50:38', 1),
(47, 'CB1107', 'Toán cao cấp A2', 'Toán cao cấp A2', 3, 0, '2021-10-30 03:51:26', '2021-10-30 03:55:25', 1),
(48, 'CT1102', 'Tư tưởng Hồ Chí Minh', 'Tư tưởng Hồ Chí Minh', 2, 0, '2021-10-30 04:33:50', '2021-10-30 04:33:50', 1),
(49, 'TH1212', 'Phân tích và thiết kế thuật toán', 'Phân tích và thiết kế thuật toán', 2, 0, '2021-10-30 04:35:03', '2021-10-30 04:35:03', 1),
(50, 'TH1309', 'Lập trình java', 'Lập trình java', 3, 0, '2021-10-30 04:35:57', '2021-10-30 04:35:57', 1),
(51, 'TH1216', 'Phần mềm mã nguồn mở', 'Phần mềm mã nguồn mở', 2, 0, '2021-10-30 04:37:32', '2021-10-30 04:37:32', 1),
(52, 'TH1337', 'Lập trình DotNet', 'Lập trình DotNet', 4, 0, '2021-10-30 04:38:11', '2021-10-30 04:38:11', 1),
(53, 'TH1214', 'Mạng máy tính', 'Mạng máy tính', 3, 0, '2021-10-30 04:38:50', '2021-10-30 04:38:50', 1),
(54, 'TH1354', 'Anh văn chuyên ngành', 'Anh văn chuyên ngành', 2, 0, '2021-10-30 04:39:30', '2021-10-30 04:39:30', 1),
(55, 'CT1104', 'Pháp luật đại cương', 'Pháp luật đại cương', 2, 0, '2021-10-30 04:44:26', '2021-10-30 04:44:26', 1),
(56, 'TH1333', 'Trí tuệ nhân tạo', 'Trí tuệ nhân tạo', 3, 0, '2021-10-30 04:44:58', '2021-10-30 04:44:58', 1),
(57, 'TH1359', 'Internet vạn vật', 'Internet vạn vật', 3, 0, '2021-10-30 04:45:49', '2021-10-30 04:45:49', 1),
(58, 'TH1335', 'Xử lý ảnh', 'Xu ly anh', 3, 0, '2021-10-30 04:46:29', '2021-10-30 04:46:29', 1),
(59, 'Th1336', 'Lập trình web', 'Lập trình web', 4, 0, '2021-10-30 04:47:07', '2021-10-30 04:47:07', 1),
(60, 'TH1338', 'Lập trình ứng dụng cho thiết bị di động', 'Lập trình ứng dụng cho thiết bị di động', 4, 0, '2021-10-30 04:47:59', '2021-10-30 04:47:59', 1),
(61, 'TH1343', 'Xử lý âm thanh', 'Xử lý âm thanh', 3, 0, '2021-10-30 04:49:32', '2021-10-30 04:49:32', 1),
(62, 'TH1319', 'Nguyên lý máy học', 'Nguyên lý máy học', 3, 0, '2021-10-30 04:50:08', '2021-10-30 04:50:08', 1),
(63, 'TH1376', 'Sensor và ứng dụng', 'Sensor và ứng dụng', 3, 0, '2021-10-30 04:51:17', '2021-10-30 04:51:17', 1),
(64, 'TH1324', 'Phân tích thiết kế hướng đối tượng', 'Phân tích thiết kế hướng đối tượng', 3, 0, '2021-10-30 04:52:26', '2021-10-30 04:52:26', 1),
(65, 'Th1371', 'Công nghệ phần mềm', 'Công nghệ phần mềm', 2, 0, '2021-10-30 04:53:17', '2021-10-30 04:53:17', 1),
(66, 'TH1358', 'Bảo mật ứng dụng web', 'Bảo mật ứng dụng web', 3, 0, '2021-10-30 04:54:06', '2021-10-30 04:54:06', 1),
(67, 'TH1307', 'Hệ quản trị cơ sở dữ liệu', 'Hệ quản trị cơ sở dữ liệu', 3, 0, '2021-10-30 04:54:50', '2021-10-30 04:54:50', 1),
(68, 'KT1001', 'Khởi nghiệp', 'Khởi nghiệp', 1, 0, '2021-10-30 04:56:37', '2021-10-30 04:56:37', 1),
(69, 'TH1345', 'Mô hình hóa hình học 3D', 'Mô hình hóa hình học 3D', 3, 0, '2021-10-30 04:57:33', '2021-10-30 04:57:33', 1),
(70, 'TH1346', 'Khai phá dữ liệu', 'Khai phá dữ liệu', 3, 0, '2021-10-30 04:58:36', '2021-10-30 04:58:36', 1),
(71, 'TH1369', 'Phát triển ứng dụng IOT', 'Phát triển ứng dụng IOT', 3, 0, '2021-10-30 04:59:11', '2021-10-30 04:59:11', 1),
(72, 'TH1347', 'Xử lý dữ liệu lớn', 'Xử lý dữ liệu lớn', 3, 0, '2021-10-30 05:00:29', '2021-10-30 05:00:29', 1),
(73, 'TH1526', 'Hệ thống thông tin quang', 'Hệ thống thông tin quang', 2, 0, '2021-10-30 05:01:20', '2021-10-30 05:01:20', 1),
(74, 'CB1116', 'Nguyên lý kế toán', 'Nguyên lý kế toán', 2, 0, '2021-10-30 05:01:58', '2021-10-30 05:01:58', 1),
(75, 'CT1106', 'Quản lý hành chánh nhà nước và QL ngành GD_ĐT', 'Quản lý hành chánh nhà nước và QL ngành GD_ĐT', 2, 0, '2021-10-30 05:03:07', '2021-10-30 05:03:07', 1),
(76, 'TH1602', 'Khóa luận tốt nghiệp', 'Khóa luận tốt nghiệp', 10, 0, '2021-10-30 05:05:43', '2021-10-30 05:05:43', 1),
(77, 'TH1606', 'Thương mại điện tử', 'Thương mại điện tử', 3, 0, '2021-10-30 05:06:13', '2021-10-30 05:06:13', 1),
(78, 'TH1607', 'CSDL phân tán', 'CSDL phân tán', 3, 0, '2021-10-30 05:06:56', '2021-10-30 05:06:56', 1),
(79, 'TH1608', 'Chuyên đề về CNNT', 'Chuyên đề về CNNT', 4, 0, '2021-10-30 05:07:34', '2021-10-30 05:07:34', 1),
(80, 'TH1342', 'Công nghệ mạng không dây', 'Công nghệ mạng không dây', 2, 0, '2021-10-30 05:40:08', '2021-10-30 05:40:08', 1),
(81, 'TH1370', 'Triển khai hệ thống mạng văn phòng', 'Triển khai hệ thống mạng văn phòng', 3, 0, '2021-10-30 05:40:51', '2021-10-30 05:40:51', 1),
(82, 'TH1339', 'Quản trị mạng máy tính', 'Quản trị mạng máy tính', 3, 0, '2021-10-30 05:42:07', '2021-10-30 05:42:07', 1),
(83, 'TH1507', 'Đồ án CNNT 1', 'Đồ án CNNT 1', 1, 0, '2021-10-30 05:43:22', '2021-10-30 05:43:22', 1),
(84, 'TH1341', 'An toàn và an ninh thông tin', 'An toàn và an ninh thông t', 3, 0, '2021-10-30 05:46:31', '2021-10-30 05:46:31', 1),
(85, 'TH1314', 'Lập trình mạng', 'Lập trình mạng', 3, 0, '2021-10-30 05:47:50', '2021-10-30 05:47:50', 1),
(86, 'TH1316', 'Thiết kế mạng máy tính', 'Thiết kế mạng máy tính', 3, 0, '2021-10-30 05:48:42', '2021-10-30 05:48:42', 1),
(87, 'TH1508', 'Đồ án CNNT2', 'Đồ án CNNT2', 1, 0, '2021-10-30 05:49:20', '2021-10-30 05:49:20', 1),
(88, 'TH1601', 'Thực tập tốt nghiệp', 'Thực tập tốt nghiệp', 2, 0, '2021-10-30 05:52:51', '2021-10-30 05:52:51', 1),
(89, 'Th1349', 'Quản lý dự án phần mềm', 'Quản lý dự án phần mềm', 3, 0, '2021-10-30 06:00:58', '2021-10-30 06:00:58', 1),
(90, 'TH1353', 'Điện toán đám mây', 'Điện toán đám mây', 2, 0, '2021-10-30 06:01:36', '2021-10-30 06:01:36', 1),
(91, 'TH1351', 'Cơ sở dữ liệu hướng đối tượng', 'Cơ sở dữ liệu hướng đối tượng', 3, 0, '2021-10-30 06:02:20', '2021-10-30 06:02:20', 1),
(92, 'TH1332', 'Hệ hỗ trợ ra quyết định', 'Hệ hỗ trợ ra quyết định', 3, 0, '2021-10-30 06:06:18', '2021-10-30 06:06:18', 1),
(93, 'TH1352', 'Phát triển hệ thống thông tin quản lý', 'Phát triển hệ thống thông tin quản lý', 3, 0, '2021-10-30 06:06:57', '2021-10-30 06:06:57', 1),
(94, 'TH1525', 'Thiết kế diễn đàn trực tuyến', 'Thiết kế diễn đàn trực tuyến', 2, 0, '2021-10-30 06:07:43', '2021-10-30 06:07:43', 1),
(95, 'DT1304', 'Lập trình PLC', 'Lập trình PLC', 3, 0, '2021-11-18 06:23:06', '2021-11-18 06:23:06', 1),
(96, 'DT1505 ', 'TN Điện tử công suất', 'TN Điện tử công suất', 0, 2, '2021-11-18 06:31:02', '2021-11-18 06:31:02', 1),
(97, 'DT1503 ', 'TT KT xung', 'TT KT xung', 0, 2, '2021-11-18 06:34:48', '2021-11-18 06:34:48', 1),
(98, 'DT1611 ', 'HT thu thập dữ liệu, ĐK và giám sát (SCADA)', 'HT thu thập dữ liệu, ĐK và giám sát (SCADA)', 3, 0, '2021-11-18 06:34:48', '2021-11-18 06:34:48', 1),
(99, 'DT1610 ', 'Điều khiển điện KNTL', 'Điều khiển điện KNTL', 2, 0, '2021-11-18 06:34:48', '2021-11-18 06:34:48', 1),
(100, 'DT1213 ', 'Kỹ thuật truyền số liệu', 'Kỹ thuật truyền số liệu', 2, 0, '2021-11-18 06:35:57', '2021-11-18 06:35:57', 1),
(101, 'DT1211 ', 'Điều khiển tự động 1', 'Điều khiển tự động 1', 3, 0, '2021-11-18 06:37:57', '2021-11-18 06:37:57', 1),
(102, 'DT1334 ', 'Đồ án điện tử công nghiệp', 'Đồ án điện tử công nghiệp', 0, 1, '2021-11-18 06:37:58', '2021-11-18 06:37:58', 1),
(103, 'TH123', 'Đồ họa máy tính', 'Do hoa may tinh', 2, 1, '2022-03-04 02:32:24', '2022-03-04 02:32:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoc_phan_theo_ctdt`
--

DROP TABLE IF EXISTS `hoc_phan_theo_ctdt`;
CREATE TABLE IF NOT EXISTS `hoc_phan_theo_ctdt` (
  `id_chuong_trinh` int NOT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hoc_ky` int DEFAULT NULL,
  `id_hoc_phan` int NOT NULL,
  PRIMARY KEY (`id_hoc_phan`,`id_chuong_trinh`),
  KEY `fk_associat_associati_chuong_t` (`id_chuong_trinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoc_phan_theo_ctdt`
--

INSERT INTO `hoc_phan_theo_ctdt` (`id_chuong_trinh`, `ngay_tao`, `ngay_cap_nhat`, `hoc_ky`, `id_hoc_phan`) VALUES
(8, '2021-10-21 17:19:56', '2021-10-21 17:19:56', 1, 1),
(6, '2021-10-21 17:27:06', '2021-10-21 17:27:06', 1, 3),
(8, '2021-10-21 17:19:56', '2021-10-21 17:19:56', 1, 3),
(8, '2021-10-21 17:19:56', '2021-10-21 17:19:56', 1, 4),
(6, '2021-10-21 17:27:06', '2021-10-21 17:27:06', 1, 7),
(8, '2021-10-21 17:19:56', '2021-10-21 17:19:56', 1, 7),
(1, '2021-11-03 17:59:03', '2021-11-03 17:59:03', 4, 8),
(13, '2021-10-30 03:36:51', '2021-10-30 03:36:51', 2, 8),
(20, '2021-10-30 05:56:37', '2021-10-30 05:56:37', 2, 8),
(6, '2021-10-21 17:27:06', '2021-10-21 17:27:06', 1, 11),
(8, '2021-11-03 05:24:50', '2021-11-03 05:24:50', NULL, 11),
(8, '2021-11-03 05:25:27', '2021-11-03 05:25:27', NULL, 22),
(1, '2021-10-30 05:16:35', '2021-10-30 05:16:35', 1, 27),
(13, '2021-10-30 03:16:07', '2021-10-30 03:16:07', 1, 27),
(20, '2021-10-30 05:55:37', '2021-10-30 05:55:37', 1, 27),
(21, '2021-10-30 02:53:31', '2021-10-30 02:53:31', 1, 27),
(1, '2021-10-30 05:16:58', '2021-10-30 05:16:58', 1, 28),
(13, '2021-10-30 03:17:08', '2021-10-30 03:17:08', 1, 28),
(20, '2021-10-30 05:55:44', '2021-10-30 05:55:44', 1, 28),
(1, '2021-10-30 05:17:07', '2021-10-30 05:17:07', 1, 29),
(13, '2021-10-30 03:17:15', '2021-10-30 03:17:15', 1, 29),
(20, '2021-10-30 05:55:49', '2021-10-30 05:55:49', 1, 29),
(1, '2021-10-30 05:17:57', '2021-10-30 05:17:57', 1, 30),
(13, '2021-10-30 03:24:29', '2021-10-30 03:24:29', 1, 30),
(20, '2021-10-30 05:56:03', '2021-10-30 05:56:03', 1, 30),
(1, '2021-10-30 05:17:19', '2021-10-30 05:17:19', 1, 31),
(13, '2021-10-30 03:18:16', '2021-10-30 03:18:16', 1, 31),
(20, '2021-10-30 05:55:55', '2021-10-30 05:55:55', 1, 31),
(1, '2021-10-30 05:17:36', '2021-10-30 05:17:36', 1, 32),
(8, '2021-11-03 05:26:53', '2021-11-03 05:26:53', NULL, 32),
(13, '2021-10-30 03:25:19', '2021-10-30 03:25:19', 1, 32),
(20, '2021-10-30 05:56:11', '2021-10-30 05:56:11', 1, 32),
(1, '2021-10-30 05:17:26', '2021-10-30 05:17:26', 1, 33),
(8, '2021-11-03 05:27:26', '2021-11-03 05:27:26', NULL, 33),
(13, '2021-10-30 03:22:27', '2021-10-30 03:22:27', 1, 33),
(1, '2021-10-30 05:17:43', '2021-10-30 05:17:43', 1, 34),
(13, '2021-10-30 03:23:44', '2021-10-30 03:23:44', 1, 34),
(20, '2021-10-30 05:56:15', '2021-10-30 05:56:15', 1, 34),
(1, '2021-11-03 17:54:23', '2021-11-03 17:54:23', 2, 35),
(13, '2021-10-30 03:27:22', '2021-10-30 03:27:22', 2, 35),
(20, '2021-10-30 05:56:27', '2021-10-30 05:56:27', 2, 35),
(1, '2021-11-03 17:59:22', '2021-11-03 17:59:22', 4, 36),
(13, '2021-10-30 03:37:05', '2021-10-30 03:37:05', 2, 36),
(20, '2021-10-30 05:56:47', '2021-10-30 05:56:47', 2, 36),
(1, '2021-10-30 05:18:45', '2021-10-30 05:18:45', 2, 37),
(13, '2021-10-30 03:37:29', '2021-10-30 03:37:29', 2, 37),
(20, '2021-10-30 05:56:54', '2021-10-30 05:56:54', 2, 37),
(1, '2021-10-30 05:19:26', '2021-10-30 05:19:26', 2, 38),
(13, '2021-10-30 03:37:43', '2021-10-30 03:37:43', 2, 38),
(20, '2021-10-30 05:57:02', '2021-10-30 05:57:02', 2, 38),
(1, '2021-10-30 05:19:40', '2021-10-30 05:19:40', 2, 39),
(13, '2021-10-30 03:37:57', '2021-10-30 03:37:57', 2, 39),
(20, '2021-10-30 05:57:09', '2021-10-30 05:57:09', 2, 39),
(1, '2021-10-30 05:20:05', '2021-10-30 05:20:05', 2, 40),
(13, '2021-10-30 03:38:10', '2021-10-30 03:38:10', 2, 40),
(20, '2021-10-30 05:57:18', '2021-10-30 05:57:18', 2, 40),
(1, '2021-11-03 17:57:43', '2021-11-03 17:57:43', 3, 41),
(13, '2021-10-30 03:52:44', '2021-10-30 03:52:44', 3, 41),
(20, '2021-10-30 05:57:28', '2021-10-30 05:57:28', 3, 41),
(1, '2021-10-30 05:35:40', '2021-10-30 05:35:40', 3, 42),
(13, '2021-10-30 03:52:55', '2021-10-30 03:52:55', 3, 42),
(20, '2021-10-30 05:57:34', '2021-10-30 05:57:34', 3, 42),
(1, '2021-10-30 05:35:47', '2021-10-30 05:35:47', 3, 43),
(13, '2021-10-30 03:53:07', '2021-10-30 03:53:07', 3, 43),
(20, '2021-10-30 05:57:38', '2021-10-30 05:57:38', 3, 43),
(1, '2021-10-30 05:35:52', '2021-10-30 05:35:52', 3, 44),
(13, '2021-10-30 03:53:20', '2021-10-30 03:53:20', 3, 44),
(20, '2021-10-30 05:57:44', '2021-10-30 05:57:44', 3, 44),
(1, '2021-10-30 05:36:01', '2021-10-30 05:36:01', 3, 45),
(13, '2021-10-30 03:53:31', '2021-10-30 03:53:31', 3, 45),
(20, '2021-10-30 05:57:49', '2021-10-30 05:57:49', 3, 45),
(1, '2021-10-30 05:36:13', '2021-10-30 05:36:13', 3, 46),
(13, '2021-10-30 03:53:43', '2021-10-30 03:53:43', 3, 46),
(20, '2021-10-30 05:57:55', '2021-10-30 05:57:55', 3, 46),
(1, '2021-10-30 05:36:23', '2021-10-30 05:36:23', 3, 47),
(8, '2021-11-03 05:27:53', '2021-11-03 05:27:53', NULL, 47),
(13, '2021-10-30 03:56:02', '2021-10-30 03:56:02', 3, 47),
(20, '2021-10-30 05:58:01', '2021-10-30 05:58:01', 3, 47),
(1, '2021-11-03 17:58:18', '2021-11-03 17:58:18', 4, 48),
(13, '2021-10-30 04:42:44', '2021-10-30 04:42:44', 4, 48),
(20, '2021-10-30 05:58:29', '2021-10-30 05:58:29', 4, 48),
(1, '2021-10-30 05:36:47', '2021-10-30 05:36:47', 4, 49),
(8, '2021-11-03 05:30:25', '2021-11-03 05:30:25', NULL, 49),
(13, '2021-10-30 04:42:54', '2021-10-30 04:42:54', 4, 49),
(20, '2021-10-30 05:58:44', '2021-10-30 05:58:44', 4, 49),
(1, '2021-10-30 05:36:53', '2021-10-30 05:36:53', 4, 50),
(8, '2021-11-03 05:31:51', '2021-11-03 05:31:51', NULL, 50),
(13, '2021-10-30 04:43:05', '2021-10-30 04:43:05', 4, 50),
(20, '2021-10-30 05:58:47', '2021-10-30 05:58:47', 4, 50),
(1, '2021-10-30 05:36:58', '2021-10-30 05:36:58', 4, 51),
(13, '2021-10-30 04:43:14', '2021-10-30 04:43:14', 4, 51),
(20, '2021-10-30 05:58:59', '2021-10-30 05:58:59', 4, 51),
(1, '2021-10-30 05:37:06', '2021-10-30 05:37:06', 4, 52),
(13, '2021-10-30 04:43:22', '2021-10-30 04:43:22', 4, 52),
(20, '2021-10-30 05:59:05', '2021-10-30 05:59:05', 4, 52),
(1, '2021-10-30 05:37:24', '2021-10-30 05:37:24', 4, 53),
(13, '2021-10-30 04:43:32', '2021-10-30 04:43:32', 4, 53),
(20, '2021-10-30 05:59:09', '2021-10-30 05:59:09', 4, 53),
(1, '2021-10-30 05:37:30', '2021-10-30 05:37:30', 4, 54),
(8, '2021-11-03 05:33:31', '2021-11-03 05:33:31', NULL, 54),
(13, '2021-10-30 04:43:36', '2021-10-30 04:43:36', 4, 54),
(20, '2021-10-30 05:59:17', '2021-10-30 05:59:17', 4, 54),
(1, '2021-10-30 05:38:08', '2021-10-30 05:38:08', 5, 55),
(13, '2021-10-30 04:48:16', '2021-10-30 04:48:16', 5, 55),
(20, '2021-10-30 05:59:27', '2021-10-30 05:59:27', 5, 55),
(1, '2021-10-30 05:38:13', '2021-10-30 05:38:13', 5, 56),
(13, '2021-10-30 04:48:24', '2021-10-30 04:48:24', 5, 56),
(20, '2021-10-30 05:59:33', '2021-10-30 05:59:33', 5, 56),
(1, '2021-10-30 05:38:34', '2021-10-30 05:38:34', 5, 57),
(8, '2021-11-03 05:34:04', '2021-11-03 05:34:04', NULL, 57),
(13, '2021-10-30 04:48:30', '2021-10-30 04:48:30', 5, 57),
(20, '2021-10-30 05:59:37', '2021-10-30 05:59:37', 5, 57),
(1, '2021-10-30 05:38:40', '2021-10-30 05:38:40', 5, 58),
(8, '2021-11-03 05:39:09', '2021-11-03 05:39:09', NULL, 58),
(13, '2021-10-30 04:48:34', '2021-10-30 04:48:34', 5, 58),
(20, '2021-10-30 05:59:43', '2021-10-30 05:59:43', 5, 58),
(1, '2021-10-30 05:38:49', '2021-10-30 05:38:49', 5, 59),
(13, '2021-10-30 04:48:37', '2021-10-30 04:48:37', 5, 59),
(20, '2021-10-30 05:59:48', '2021-10-30 05:59:48', 5, 59),
(1, '2021-10-30 05:38:59', '2021-10-30 05:38:59', 5, 60),
(13, '2021-10-30 04:48:41', '2021-10-30 04:48:41', 5, 60),
(20, '2021-10-30 05:59:53', '2021-10-30 05:59:53', 5, 60),
(13, '2021-10-30 04:55:00', '2021-10-30 04:55:00', 6, 61),
(13, '2021-10-30 04:55:11', '2021-10-30 04:55:11', 6, 62),
(1, '2021-10-30 05:44:10', '2021-10-30 05:44:10', 6, 63),
(13, '2021-10-30 04:55:15', '2021-10-30 04:55:15', 6, 63),
(20, '2021-10-30 06:02:54', '2021-10-30 06:02:54', 6, 63),
(1, '2021-10-30 05:44:21', '2021-10-30 05:44:21', 6, 64),
(13, '2021-10-30 04:55:22', '2021-10-30 04:55:22', 6, 64),
(20, '2021-10-30 06:03:18', '2021-10-30 06:03:18', 6, 64),
(13, '2021-10-30 04:55:26', '2021-10-30 04:55:26', 6, 65),
(1, '2021-10-30 05:45:00', '2021-10-30 05:45:00', 6, 66),
(13, '2021-10-30 04:55:33', '2021-10-30 04:55:33', 6, 66),
(20, '2021-10-30 06:03:41', '2021-10-30 06:03:41', 6, 66),
(1, '2021-10-30 05:45:06', '2021-10-30 05:45:06', 6, 67),
(13, '2021-10-30 04:55:37', '2021-10-30 04:55:37', 6, 67),
(20, '2021-10-30 06:03:55', '2021-10-30 06:03:55', 6, 67),
(1, '2021-10-30 05:49:34', '2021-10-30 05:49:34', 7, 68),
(13, '2021-10-30 05:03:19', '2021-10-30 05:03:19', 7, 68),
(20, '2021-10-30 06:04:24', '2021-10-30 06:04:24', 7, 68),
(8, '2021-11-03 05:46:35', '2021-11-03 05:46:35', NULL, 69),
(13, '2021-10-30 05:03:25', '2021-10-30 05:03:25', 7, 69),
(13, '2021-10-30 05:03:36', '2021-10-30 05:03:36', 7, 70),
(1, '2021-10-30 05:50:30', '2021-10-30 05:50:30', 7, 71),
(8, '2021-11-03 16:13:10', '2021-11-03 16:13:10', NULL, 71),
(13, '2021-10-30 05:03:41', '2021-10-30 05:03:41', 7, 71),
(20, '2021-10-30 06:08:18', '2021-10-30 06:08:18', 7, 71),
(13, '2021-10-30 05:03:45', '2021-10-30 05:03:45', 7, 72),
(20, '2021-10-30 06:05:28', '2021-10-30 06:05:28', 7, 72),
(1, '2021-10-30 05:50:15', '2021-10-30 05:50:15', 7, 73),
(8, '2021-11-03 16:13:42', '2021-11-03 16:13:42', NULL, 73),
(13, '2021-10-30 05:03:51', '2021-10-30 05:03:51', 7, 73),
(1, '2021-10-30 05:51:25', '2021-10-30 05:51:25', 7, 74),
(13, '2021-10-30 05:03:58', '2021-10-30 05:03:58', 7, 74),
(20, '2021-10-30 06:08:54', '2021-10-30 06:08:54', 7, 74),
(1, '2021-10-30 05:51:34', '2021-10-30 05:51:34', 7, 75),
(13, '2021-10-30 05:04:09', '2021-10-30 05:04:09', 7, 75),
(20, '2021-10-30 06:09:04', '2021-10-30 06:09:04', 7, 75),
(1, '2021-10-30 05:52:00', '2021-10-30 05:52:00', 8, 76),
(13, '2021-10-30 05:07:41', '2021-10-30 05:07:41', 8, 76),
(20, '2021-10-30 06:09:24', '2021-10-30 06:09:24', 8, 76),
(1, '2021-10-30 05:52:06', '2021-10-30 05:52:06', 8, 77),
(8, '2021-11-03 16:52:04', '2021-11-03 16:52:04', 1, 77),
(13, '2021-10-30 05:07:45', '2021-10-30 05:07:45', 8, 77),
(20, '2021-10-30 06:09:31', '2021-10-30 06:09:31', 8, 77),
(1, '2021-10-30 05:52:10', '2021-10-30 05:52:10', 8, 78),
(13, '2021-10-30 05:07:48', '2021-10-30 05:07:48', 8, 78),
(20, '2021-10-30 06:09:34', '2021-10-30 06:09:34', 8, 78),
(1, '2021-10-30 05:52:14', '2021-10-30 05:52:14', 8, 79),
(13, '2021-10-30 05:07:51', '2021-10-30 05:07:51', 8, 79),
(20, '2021-10-30 06:09:38', '2021-10-30 06:09:38', 8, 79),
(1, '2021-10-30 05:43:52', '2021-10-30 05:43:52', 6, 80),
(1, '2021-10-30 05:44:00', '2021-10-30 05:44:00', 6, 81),
(1, '2021-10-30 05:44:34', '2021-10-30 05:44:34', 6, 82),
(1, '2021-10-30 05:45:14', '2021-10-30 05:45:14', 6, 83),
(13, '2021-10-30 06:11:17', '2021-10-30 06:11:17', 6, 83),
(20, '2021-10-30 06:04:03', '2021-10-30 06:04:03', 6, 83),
(1, '2021-10-30 05:50:01', '2021-10-30 05:50:01', 7, 84),
(1, '2021-10-30 05:50:59', '2021-10-30 05:50:59', 7, 85),
(1, '2021-10-30 05:51:12', '2021-10-30 05:51:12', 7, 86),
(1, '2021-10-30 05:51:41', '2021-10-30 05:51:41', 7, 87),
(13, '2021-10-30 06:11:27', '2021-10-30 06:11:27', 7, 87),
(20, '2021-10-30 06:09:14', '2021-10-30 06:09:14', 7, 87),
(1, '2021-10-30 05:52:59', '2021-10-30 05:52:59', 8, 88),
(13, '2021-10-30 06:11:36', '2021-10-30 06:11:36', 8, 88),
(20, '2021-10-30 06:09:47', '2021-10-30 06:09:47', 8, 88),
(20, '2021-10-30 06:02:38', '2021-10-30 06:02:38', 6, 89),
(20, '2021-10-30 06:02:45', '2021-10-30 06:02:45', 6, 90),
(20, '2021-10-30 06:03:33', '2021-10-30 06:03:33', 6, 91),
(20, '2021-10-30 06:08:07', '2021-10-30 06:08:07', 7, 92),
(20, '2021-10-30 06:08:32', '2021-10-30 06:08:32', 7, 93),
(20, '2021-10-30 06:08:44', '2021-10-30 06:08:44', 7, 94);

-- --------------------------------------------------------

--
-- Table structure for table `hoc_phi`
--

DROP TABLE IF EXISTS `hoc_phi`;
CREATE TABLE IF NOT EXISTS `hoc_phi` (
  `id_hoc_phi` int NOT NULL AUTO_INCREMENT,
  `id_he_dao_tao` int NOT NULL,
  `id_hoc_ky` int NOT NULL,
  `id_chuyen_nganh` int NOT NULL,
  `ly_thuyet` decimal(7,0) DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `thuc_hanh` decimal(7,0) DEFAULT NULL,
  `trang_thai` int DEFAULT '0',
  PRIMARY KEY (`id_hoc_phi`),
  KEY `fk_hoc_phi_associati_hoc_ky` (`id_hoc_ky`),
  KEY `fk_hoc_phi_associati_he_dao_t` (`id_he_dao_tao`),
  KEY `fk_hoc_phi_associati_chuyen_n` (`id_chuyen_nganh`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoc_phi`
--

INSERT INTO `hoc_phi` (`id_hoc_phi`, `id_he_dao_tao`, `id_hoc_ky`, `id_chuyen_nganh`, `ly_thuyet`, `ngay_tao`, `ngay_cap_nhat`, `thuc_hanh`, `trang_thai`) VALUES
(2, 21, 7, 3, '350000', '2021-11-20 08:46:16', '2021-11-30 18:56:22', '350000', 1),
(5, 23, 1, 4, '200000', '2021-11-21 05:49:53', '2021-11-21 05:55:34', '250000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hoc_vi`
--

DROP TABLE IF EXISTS `hoc_vi`;
CREATE TABLE IF NOT EXISTS `hoc_vi` (
  `id_hoc_vi` int NOT NULL AUTO_INCREMENT,
  `ten_hoc_vi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai` int DEFAULT '0',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_hoc_vi`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoc_vi`
--

INSERT INTO `hoc_vi` (`id_hoc_vi`, `ten_hoc_vi`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'Tiến sĩ', 0, '2021-10-24 14:33:27', '2021-10-24 14:33:27'),
(2, 'Thạc sĩ', 0, '2021-10-24 14:33:37', '2021-10-24 14:33:37'),
(3, 'Cao học', 0, '2021-10-24 14:33:46', '2021-10-24 14:33:46'),
(4, 'Nghiên cứu sinh', 0, '2021-10-30 14:05:22', '2021-10-30 14:05:22'),
(5, 'Phó giáo sư', 0, '2021-11-03 08:17:18', '2021-11-03 08:17:18'),
(6, 'Kỹ sư', 0, '2021-11-03 08:17:18', '2021-11-03 08:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `hoc_vien`
--

DROP TABLE IF EXISTS `hoc_vien`;
CREATE TABLE IF NOT EXISTS `hoc_vien` (
  `id_hoc_vien` int NOT NULL AUTO_INCREMENT,
  `id_lop_hoc` int NOT NULL,
  `id_chuyen_nganh` int NOT NULL,
  `ho` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmnd` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt_gd` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghi_chu` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `trang_thai` int DEFAULT '0',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_hoc_vien`),
  KEY `fk_hoc_vien_associati_chuyen_n` (`id_chuyen_nganh`),
  KEY `fk_hoc_vien_sinh_vien_lop_hoc` (`id_lop_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=1287 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoc_vien`
--

INSERT INTO `hoc_vien` (`id_hoc_vien`, `id_lop_hoc`, `id_chuyen_nganh`, `ho`, `ten`, `email`, `sdt`, `dia_chi`, `cmnd`, `sdt_gd`, `ghi_chu`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(4, 5, 1, 'Nguyễn Bá Anh', 'Hào', '18004038@student.vlute.edu.vn', '000000', 'Địa chỉ đây', '331901752', '0358545849', 'Ghi chú thêm', 1, '2021-10-12 15:41:08', '2021-10-12 15:41:08'),
(9, 5, 3, 'Trần Lê Anh', 'Duy', 'lelanhduy@gmail.com', '0354289637', 'Long Thành', '336985124', '0359648756', 'test ghi chú', 1, '2021-10-12 16:37:23', '2021-10-15 02:40:39'),
(11, 5, 1, 'Trần Nhẫn', 'Tâm', 'nhantam@gmail.com', '038392842', 'Phường 3, Vĩnh Long', '321783957', '038392563', 'ghi chú', 0, '2021-10-12 17:00:25', '2021-10-12 17:00:25'),
(12, 7, 3, 'Lê Minh', 'Thuận', '18004235@student.vlute.edu.vn', '0358545849', 'Vĩnh Long', '331901752', '0358545832', 'Ghi chú 21', 1, '2021-10-13 12:38:39', '2022-01-28 13:15:49'),
(13, 5, 1, 'Nguyễn Lê Hà', 'Lâm', 'halam@gmail.com', '0358546935', 'địa chỉ', '559762398', '0358546935', 'ghi chú', 0, '2021-10-15 02:39:06', '2021-10-15 02:39:48'),
(14, 7, 3, 'Trần Thái', 'Công', 'thaicong@gmail.com', '0369656147', '52/204 Nguyễn Huệ', '553986482', '0369656221', 'học viên cũ1', 1, '2021-10-15 06:47:36', '2021-10-15 06:47:36'),
(15, 28, 1, 'Võ Ngọc Thanh', 'Hào', '19004058@st.vlute.edu.vn', '1234567890', 'Việt Nam', '331928220', 'chưa có', NULL, 1, '2021-10-20 15:17:40', '2021-10-28 12:35:14'),
(1038, 8, 1, 'Nguyễn Văn Đức', 'An', '19004002@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:26', '2021-11-02 05:38:26'),
(1039, 8, 1, 'Phạm Nguyễn Vĩnh', 'An', '19004003@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:26', '2021-11-02 05:38:26'),
(1040, 8, 1, 'Lê Hoàng', 'Ân', '19004004@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:26', '2021-11-02 05:38:26'),
(1041, 8, 1, 'Nguyễn Trần Thiên', 'Ân', '19004005@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:26', '2021-11-02 05:38:26'),
(1042, 8, 1, 'Đặng Ngọc Loan', 'Anh', '19004006@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:26', '2021-11-02 05:38:26'),
(1043, 8, 1, 'Nguyễn Hoàng Tuấn', 'Anh', '19004007@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:26', '2021-11-02 05:38:26'),
(1044, 8, 1, 'Nguyễn Thị Mỹ', 'Anh', '19004008@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:26', '2021-11-02 05:38:26'),
(1045, 8, 1, 'Nguyễn Tuấn', 'Anh', '19004009@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:26', '2021-11-02 05:38:26'),
(1046, 8, 1, 'Phan Lê Nhật', 'Anh', '19004010@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:26', '2021-11-02 05:38:26'),
(1047, 8, 1, 'Nguyễn Trần Quốc', 'Bảo', '19004011@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1048, 8, 1, 'Trần Gia', 'Bảo', '19004012@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1049, 8, 1, 'Nguyễn Thái', 'Bình', '19004013@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1050, 8, 1, 'Nguyễn Vũ', 'Bình', '19004014@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1051, 8, 1, 'Trần Thảo', 'Bình', '19004015@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1052, 8, 1, 'Đỗ Hoàng', 'Cầu', '19004016@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1053, 8, 1, 'Nguyễn Văn', 'Chánh', '19004017@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1054, 8, 1, 'Nguyễn Hoài', 'Chung', '19004018@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1055, 8, 1, 'Âu Phúc', 'Chương', '19004019@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1056, 8, 1, 'Phan Vĩ', 'Cơ', '19004020@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1057, 8, 1, 'Lê Duy', 'Cường', '19004021@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1058, 8, 1, 'Quang Phúc', 'Cường', '19004022@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:27', '2021-11-02 05:38:27'),
(1059, 8, 1, 'Cao Thành', 'Đạt', '19004023@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1060, 8, 1, 'Hồ Tiến', 'Đạt', '19004024@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1061, 8, 1, 'Lê Nguyễn Quốc', 'Đạt', '19004025@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1062, 8, 1, 'Nguyễn Chí', 'Đạt', '19004026@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1063, 8, 1, 'Nguyễn Thành', 'Đạt', '19004027@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1064, 8, 1, 'Nguyễn Thành', 'Đạt', '19004028@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1065, 8, 1, 'Phan Thành', 'Đạt', '19004029@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1066, 8, 1, 'Trần Vũ Ngọc', 'Diện', '19004030@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1067, 8, 1, 'Nguyễn Huyền', 'Diệp', '19004031@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1068, 8, 1, 'Nguyễn Hoàng', 'Đỉnh', '19004032@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1069, 8, 1, 'Đặng Thị Thùy', 'Dung', '19004033@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1070, 29, 1, 'Phan Ngọc', 'Dung', '19004034@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:28', '2021-11-02 05:38:28'),
(1071, 8, 1, 'Lê Minh', 'Dũng', '19004035@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1072, 8, 1, 'Nguyễn Quốc', 'Dũng', '19004036@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1073, 8, 1, 'Lý Vũ', 'Dương', '19004037@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1074, 8, 1, 'Nguyễn Khánh', 'Dương', '19004038@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1075, 8, 1, 'Trịnh Thị Thùy', 'Dương', '19004039@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1076, 8, 1, 'Chung Việt Anh', 'Duy', '19004040@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1077, 8, 1, 'Lê Khiết', 'Duy', '19004041@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1078, 8, 1, 'Nguyễn Anh', 'Duy', '19004042@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1079, 8, 1, 'Nguyễn Châu Bảo', 'Duy', '19004043@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1080, 8, 1, 'Nguyễn Minh', 'Duy', '19004044@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1081, 8, 1, 'Nguyễn Thị Thúy', 'Duy', '19004045@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1082, 8, 1, 'Nguyễn Trí Hoàng', 'Duy', '19004046@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1083, 8, 1, 'Trần Nguyễn Hoàng', 'Duy', '19004047@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:29', '2021-11-02 05:38:29'),
(1084, 8, 1, 'Nguyễn Thị Hồng', 'Gấm', '19004048@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1085, 8, 1, 'Lê Huỳnh Gia', 'Gia', '19004049@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1086, 8, 1, 'Trần Thị Hương', 'Giang', '19004050@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1087, 8, 1, 'Trịnh Văn Hoàng', 'Giang', '19004051@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1088, 8, 1, 'Tô Thành', 'Giàu', '19004052@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1089, 8, 1, 'Nguyễn Hồng', 'Hải', '19004053@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1090, 8, 1, 'Phan Nguyễn Gia', 'Hân', '19004054@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1091, 8, 1, 'Trần Thị Kiều', 'Hân', '19004055@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1092, 8, 1, 'Thạch Thanh', 'Hằng', '19004056@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1093, 8, 1, 'Lê Nhật', 'Hào', '19004057@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1094, 8, 1, 'Võ Ngọc Thanh', 'Hào', '19004058@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1095, 8, 1, 'Lê Quang', 'Hiếu', '19004059@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:30', '2021-11-02 05:38:30'),
(1096, 8, 1, 'Lý Trần Hoàng', 'Hiếu', '19004060@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1097, 8, 1, 'Ngô Đức', 'Hiếu', '19004061@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1098, 8, 1, 'Nguyễn Lê Anh', 'Hiếu', '19004062@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1099, 8, 1, 'Nguyễn Lê Minh', 'Hiếu', '19004063@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1100, 8, 1, 'Nguyễn Minh', 'Hiếu', '19004064@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1101, 8, 1, 'Nguyễn Trung', 'Hiếu', '19004065@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1102, 8, 1, 'Trần Minh', 'Hiếu', '19004066@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1103, 8, 1, 'Nguyễn Minh', 'Hoài', '19004067@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1104, 8, 1, 'Lê Long', 'Hưng', '19004068@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1105, 8, 1, 'Nguyễn Tấn', 'Hưng', '19004069@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1106, 8, 1, 'Hàng Thiện', 'Huy', '19004070@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1107, 8, 1, 'Lê Thanh', 'Huy', '19004071@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:31', '2021-11-02 05:38:31'),
(1108, 8, 1, 'Ngô Quốc', 'Huy', '19004072@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1109, 8, 1, 'Nguyễn Đức', 'Huy', '19004073@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1110, 8, 1, 'Trần Gia', 'Huy', '19004074@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1111, 8, 1, 'Lê Thị Mỹ', 'Huyền', '19004075@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1112, 8, 1, 'Hồ Hoàng', 'Kha', '19004076@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1113, 8, 1, 'Đào Quang', 'Khải', '19004077@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1114, 8, 1, 'Ngô Quốc', 'Khải', '19004078@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1115, 8, 1, 'Huỳnh Chí', 'Khang', '19004079@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1116, 8, 1, 'Huỳnh Phúc', 'Khang', '19004080@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1117, 8, 1, 'Lâm Vĩ', 'Khang', '19004081@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1118, 8, 1, 'Ngô Hoàng Gia', 'Khang', '19004082@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1119, 8, 1, 'Nguyễn Vĩ', 'Khang', '19004083@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:32', '2021-11-02 05:38:32'),
(1120, 8, 1, 'Trần Hoài', 'Khang', '19004084@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1121, 8, 1, 'Trần Vỹ', 'Khang', '19004085@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1122, 8, 1, 'Võ Thanh', 'Khang', '19004086@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1123, 8, 1, 'Nguyễn Quang', 'Khánh', '19004087@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1124, 8, 1, 'Nguyễn Hoàng Gia', 'Khiêm', '19004088@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1125, 8, 1, 'Nguyễn Đăng', 'Khoa', '19004090@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1126, 8, 1, 'Nguyễn Ngọc Minh', 'Khoa', '19004091@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1127, 8, 1, 'Phạm Anh', 'Khoa', '19004092@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1128, 8, 1, 'Trần Đăng', 'Khoa', '19004093@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1129, 8, 1, 'Triệu Văn Duy', 'Khương', '19004094@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1130, 8, 1, 'Ngô Trung', 'Kiên', '19004095@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1131, 8, 1, 'Nguyễn Quốc', 'Kiệt', '19004096@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:33', '2021-11-02 05:38:33'),
(1132, 8, 1, 'Phạm Thị', 'Kiều', '19004097@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1133, 8, 1, 'Trần', 'Lâm', '19004098@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1134, 8, 1, 'Trương Sơn', 'Lâm', '19004099@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1135, 8, 1, 'Dư Thị Thu', 'Lan', '19004100@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1136, 8, 1, 'Lê Duy', 'Linh', '19004101@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1137, 8, 1, 'Nguyễn Phú', 'Lộc', '19004102@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1138, 8, 1, 'Dương Hoàng', 'Lợi', '19004103@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1139, 8, 1, 'Trần Nhật', 'Long', '19004104@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1140, 8, 1, 'Lê Hoàng', 'Luân', '19004105@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1141, 8, 1, 'Nguyễn Ngọc', 'Luân', '19004106@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1142, 8, 1, 'Trần Thiện', 'Luân', '19004107@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1143, 8, 1, 'Huỳnh Thị Hồng', 'Luận', '19004108@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1144, 8, 1, 'Nguyễn Minh', 'Luận', '19004109@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:34', '2021-11-02 05:38:34'),
(1145, 8, 1, 'Nguyễn Văn', 'Luật', '19004110@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1146, 8, 1, 'Nguyễn Ngọc Khánh', 'Ly', '19004111@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1147, 8, 1, 'Lê Quang', 'Minh', '19004112@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1148, 8, 1, 'Nguyễn Ngọc Duy', 'Minh', '19004113@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1149, 8, 1, 'Từ Quốc', 'Minh', '19004114@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1150, 8, 1, 'Hà Thị Diễm', 'My', '19004115@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1151, 8, 1, 'Nguyễn Thành', 'Nam', '19004116@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1152, 8, 1, 'Phạm Duy', 'Nam', '19004117@st.vlute.edu.vn', '', '', '', '', '', 0, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1153, 8, 1, 'Võ Nhật', 'Nam', '19004118@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1154, 8, 1, 'Cao Thanh', 'Ngân', '19004119@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1155, 8, 1, 'Cao Thảo', 'Ngân', '19004120@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1156, 8, 1, 'Lê Phạm Bích', 'Ngân', '19004121@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:35', '2021-11-02 05:38:35'),
(1157, 8, 1, 'Nguyễn Thị Thanh', 'Ngân', '19004123@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:36', '2021-11-02 05:38:36'),
(1158, 8, 1, 'Phan Thị Trúc', 'Ngân', '19004124@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:36', '2021-11-02 05:38:36'),
(1159, 8, 1, 'Bùi Hữu', 'Nghĩa', '19004125@st.vlute.edu.vn', '', '', '', '', '', 1, '2021-11-02 05:38:36', '2021-11-02 05:38:36'),
(1161, 28, 1, 'Lâm Quang', 'Nghĩa', '19004126@st.vlute.edu.vn', '', '', '331910744', '', '', 0, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1162, 28, 1, 'Nguyễn Trọng', 'Nghĩa', '19004127@st.vlute.edu.vn', '', '', '331914652', '', '', 0, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1163, 28, 1, 'Nguyễn Thị Bích', 'Ngọc', '19004128@st.vlute.edu.vn', '', '', '331878443', '', '', 1, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1164, 28, 1, 'Trần Kim', 'Ngọc', '19004129@st.vlute.edu.vn', '', '', '335019127', '', '', 1, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1165, 28, 1, 'Dương Trang Thảo', 'Nguyên', '19004130@st.vlute.edu.vn', '', '', '331919522', '', '', 1, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1166, 28, 1, 'Lê Bình', 'Nguyên', '19004131@st.vlute.edu.vn', '', '', '331877786', '', '', 1, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1167, 28, 1, 'Ngô Thị Kim', 'Nguyên', '19004132@st.vlute.edu.vn', '', '', '331903582', '', '', 1, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1168, 28, 1, 'Phạm Thị Hạnh', 'Nguyên', '19004133@st.vlute.edu.vn', '', '', '331863911', '', '', 1, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1169, 28, 1, 'Nguyễn Thanh', 'Nhã', '19004134@st.vlute.edu.vn', '', '', '331878208', '', '', 1, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1170, 28, 1, 'Bùi Trọng', 'Nhân', '19004135@st.vlute.edu.vn', '', '', '331927256', '', '', 1, '2021-11-05 06:15:53', '2021-11-05 06:15:53'),
(1171, 28, 1, 'Lê Quách Việt', 'Nhân', '19004136@st.vlute.edu.vn', '', '', '372010562', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1172, 28, 1, 'Lê Võ Trọng', 'Nhân', '19004137@st.vlute.edu.vn', '', '', '331873599', '', '', 0, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1173, 28, 1, 'Long Hoàng', 'Nhân', '19004138@st.vlute.edu.vn', '', '', '331874020', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1174, 28, 1, 'Nguyễn Danh', 'Nhân', '19004139@st.vlute.edu.vn', '', '', '331847983', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1175, 28, 1, 'Trầm Hoàng', 'Nhân', '19004140@st.vlute.edu.vn', '', '', '331923377', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1176, 28, 1, 'Nguyễn Thị Tuyết', 'Nhi', '19004141@st.vlute.edu.vn', '', '', '331869097', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1177, 28, 1, 'Trương Thị Tuyết', 'Nhi', '19004142@st.vlute.edu.vn', '', '', '331927171', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1178, 28, 1, 'Nguyễn Trung', 'Nhớ', '19004143@st.vlute.edu.vn', '', '', '352576234', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1179, 28, 1, 'Huỳnh Hữu', 'Nhuận', '19004144@st.vlute.edu.vn', '', '', '364186268', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1180, 28, 1, 'Bùi Thị Cẩm', 'Nhung', '19004145@st.vlute.edu.vn', '', '', '331901081', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1181, 28, 1, 'Huỳnh Ngọc Cẩm', 'Nhung', '19004146@st.vlute.edu.vn', '', '', '331863056', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1182, 28, 1, 'Nguyễn Thanh', 'Nhựt', '19004147@st.vlute.edu.vn', '', '', '331928438', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1183, 28, 1, 'Nguyễn Nam', 'Phát', '19004148@st.vlute.edu.vn', '', '', '331881554', '', '', 1, '2021-11-05 06:15:54', '2021-11-05 06:15:54'),
(1184, 28, 1, 'Nguyễn Thành', 'Phát', '19004149@st.vlute.edu.vn', '', '', '331847594', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1185, 28, 1, 'Nguyễn Thành', 'Phát', '19004150@st.vlute.edu.vn', '', '', '331900926', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1186, 28, 1, 'Nguyễn Nhựt', 'Phi', '19004151@st.vlute.edu.vn', '', '', '331862687', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1187, 28, 1, 'Nguyễn Tuấn', 'Phong', '19004152@st.vlute.edu.vn', '', '', '331908933', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1188, 28, 1, 'Phạm Huỳnh Thanh', 'Phong', '19004153@st.vlute.edu.vn', '', '', '331909092', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1189, 28, 1, 'Trịnh Hoài', 'Phong', '19004154@st.vlute.edu.vn', '', '', '331889453', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1190, 28, 1, 'Võ Thanh', 'Phong', '19004155@st.vlute.edu.vn', '', '', '331914542', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1191, 28, 1, 'Đỗ', 'Phú', '19004156@st.vlute.edu.vn', '', '', '331917591', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1192, 28, 1, 'Nguyễn Ngọc Thành', 'Phú', '19004157@st.vlute.edu.vn', '', '', '331925625', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1193, 28, 1, 'Huỳnh Vĩnh', 'Phúc', '19004158@st.vlute.edu.vn', '', '', '331894410', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1194, 28, 1, 'Nguyễn Ngọc Thiên', 'Phúc', '19004159@st.vlute.edu.vn', '', '', '331868196', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1195, 28, 1, 'Trần Thiên', 'Phúc', '19004160@st.vlute.edu.vn', '', '', '331835454', '', '', 1, '2021-11-05 06:15:55', '2021-11-05 06:15:55'),
(1196, 28, 1, 'Lê Hoàng', 'Phục', '19004161@st.vlute.edu.vn', '', '', '352581918', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1197, 28, 1, 'Nguyễn Kim', 'Phụng', '19004162@st.vlute.edu.vn', '', '', '312465211', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1198, 28, 1, 'Nguyễn Nhựt', 'Phước', '19004163@st.vlute.edu.vn', '', '', '331908812', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1199, 28, 1, 'Phan Văn', 'Phương', '19004164@st.vlute.edu.vn', '', '', '352552925', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1200, 28, 1, 'Ngô Minh', 'Quân', '19004165@st.vlute.edu.vn', '', '', '331904974', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1201, 28, 1, 'Trần Hữu', 'Quí', '19004166@st.vlute.edu.vn', '', '', '312356880', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1202, 28, 1, 'Huỳnh Thanh', 'Quốc', '19004167@st.vlute.edu.vn', '', '', '342072356', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1203, 28, 1, 'Tống Khánh Mai', 'Quỳnh', '19004168@st.vlute.edu.vn', '', '', '331909091', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1204, 28, 1, 'Lê Thanh', 'Sơn', '19004169@st.vlute.edu.vn', '', '', '331878781', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1205, 28, 1, 'Nguyễn Hoàng', 'Sơn', '19004170@st.vlute.edu.vn', '', '', '352551597', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1206, 28, 1, 'Nguyễn Hùng', 'Sơn', '19004171@st.vlute.edu.vn', '', '', '331870915', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1207, 28, 1, 'Nguyễn Trung', 'Sơn', '19004172@st.vlute.edu.vn', '', '', '331919098', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1208, 28, 1, 'Nguyễn Đức', 'Tài', '19004173@st.vlute.edu.vn', '', '', '331718453', '', '', 1, '2021-11-05 06:15:56', '2021-11-05 06:15:56'),
(1209, 28, 1, 'Nguyễn Hữu', 'Tài', '19004174@st.vlute.edu.vn', '', '', '331900862', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1210, 28, 1, 'Nguyễn Hữu', 'Tài', '19004175@st.vlute.edu.vn', '', '', '331881552', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1211, 28, 1, 'Đặng Thái Băng', 'Tâm', '19004176@st.vlute.edu.vn', '', '', '331887527', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1212, 28, 1, 'Hồ Lê Minh', 'Tâm', '19004177@st.vlute.edu.vn', '', '', '301734463', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1213, 28, 1, 'Đào Trí Minh', 'Tân', '19004178@st.vlute.edu.vn', '', '', '331927829', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1214, 28, 1, 'Lê Minh', 'Tân', '19004179@st.vlute.edu.vn', '', '', '341973693', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1215, 28, 1, 'Nguyễn Minh', 'Tân', '19004180@st.vlute.edu.vn', '', '', '331903215', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1216, 28, 1, 'Nguyễn Ngọc', 'Tân', '19004181@st.vlute.edu.vn', '', '', '331853951', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1217, 28, 1, 'Trần Võ Minh', 'Tân', '19004182@st.vlute.edu.vn', '', '', '331865462', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1218, 28, 1, 'Nguyễn Nhựt', 'Thanh', '19004183@st.vlute.edu.vn', '', '', '331874742', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1219, 28, 1, 'Nguyễn Văn', 'Thành', '19004184@st.vlute.edu.vn', '', '', '331919832', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1220, 28, 1, 'Trần Võ Tuấn', 'Thành', '19004185@st.vlute.edu.vn', '', '', '331888330', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1221, 28, 1, 'Trịnh Tuấn', 'Thành', '19004186@st.vlute.edu.vn', '', '', '331910041', '', '', 1, '2021-11-05 06:15:57', '2021-11-05 06:15:57'),
(1222, 28, 1, 'Nguyễn Huỳnh Nhật', 'Thiên', '19004188@st.vlute.edu.vn', '', '', '331882337', '', '', 1, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1223, 28, 1, 'Nguyễn Nhựt', 'Thiên', '19004189@st.vlute.edu.vn', '', '', '331883783', '', '', 1, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1224, 28, 1, 'Trần Quốc', 'Thiện', '19004190@st.vlute.edu.vn', '', '', '312498211', '', '', 1, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1225, 28, 1, 'Võ Minh', 'Thiện', '19004191@st.vlute.edu.vn', '', '', '331878946', '', '', 1, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1226, 28, 1, 'Huỳnh Đức', 'Thịnh', '19004192@st.vlute.edu.vn', '', '', '331857233', '', '', 0, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1227, 28, 1, 'Võ Phước', 'Thịnh', '19004193@st.vlute.edu.vn', '', '', '331892193', '', '', 0, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1228, 28, 1, 'Nguyễn Thị Yến', 'Thơ', '19004194@st.vlute.edu.vn', '', '', '331929822', '', '', 1, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1229, 28, 1, 'Lương Minh', 'Thoại', '19004195@st.vlute.edu.vn', '', '', '331877690', '', '', 1, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1230, 28, 1, 'Phan Thanh', 'Thông', '19004196@st.vlute.edu.vn', '', '', '331857472', '', '', 1, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1231, 28, 1, 'Từ Bá', 'Thông', '19004197@st.vlute.edu.vn', '', '', '331884378', '', '', 1, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1232, 28, 1, 'Đỗ Thị Anh', 'Thư', '19004198@st.vlute.edu.vn', '', '', '331846656', '', '', 1, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1233, 28, 1, 'Huỳnh Thị Minh', 'Thư', '19004199@st.vlute.edu.vn', '', '', '331847383', '', '', 0, '2021-11-05 06:15:58', '2021-11-05 06:15:58'),
(1234, 28, 1, 'Huỳnh Trọng', 'Thư', '19004200@st.vlute.edu.vn', '', '', '331870369', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1235, 28, 1, 'Nguyễn Ngọc Anh', 'Thư', '19004201@st.vlute.edu.vn', '', '', '331863764', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1236, 28, 1, 'Nguyễn Ngọc Anh', 'Thư', '19004202@st.vlute.edu.vn', '', '', '331928957', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1237, 28, 1, 'Phan Huỳnh Thanh', 'Thư', '19004203@st.vlute.edu.vn', '', '', '331890396', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1238, 28, 1, 'Đỗ Đoàn Lập', 'Thuận', '19004204@st.vlute.edu.vn', '', '', '331926649', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1239, 28, 1, 'Nguyễn Thị Cẩm', 'Tiên', '19004205@st.vlute.edu.vn', '', '', '331884869', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1240, 28, 1, 'Mai Xuân', 'Tiến', '19004206@st.vlute.edu.vn', '', '', '331914497', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1241, 28, 1, 'Phạm Lê Hoàng', 'Tiến', '19004207@st.vlute.edu.vn', '', '', '331863586', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1242, 28, 1, 'Ngô Thanh', 'Tín', '19004208@st.vlute.edu.vn', '', '', '331889546', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1243, 28, 1, 'Nguyễn Hoàng', 'Tín', '19004209@st.vlute.edu.vn', '', '', '331928600', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1244, 28, 1, 'Nguyễn Hữu', 'Tín', '19004210@st.vlute.edu.vn', '', '', '331870068', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1245, 28, 1, 'Trần Trung', 'Tín', '19004211@st.vlute.edu.vn', '', '', '331864173', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1246, 28, 1, 'Nguyễn Ngọc', 'Tính', '19004212@st.vlute.edu.vn', '', '', '364162317', '', '', 1, '2021-11-05 06:15:59', '2021-11-05 06:15:59'),
(1247, 28, 1, 'Nguyễn Hữu', 'Toàn', '19004213@st.vlute.edu.vn', '', '', '331912834', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1248, 28, 1, 'Nguyễn Minh', 'Toàn', '19004214@st.vlute.edu.vn', '', '', '331914123', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1249, 28, 1, 'Nguyễn Thanh', 'Toàn', '19004215@st.vlute.edu.vn', '', '', '331901392', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1250, 28, 1, 'Nguyễn Hữu', 'Toản', '19004216@st.vlute.edu.vn', '', '', '036201006153', '', '', 0, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1251, 28, 1, 'Nguyễn Hoàng', 'Trân', '19004217@st.vlute.edu.vn', '', '', '366256426', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1252, 28, 1, 'Nguyễn Huỳnh', 'Trân', '19004218@st.vlute.edu.vn', '', '', '331888199', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1253, 28, 1, 'Lê Hữu', 'Trí', '19004219@st.vlute.edu.vn', '', '', '331904783', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1254, 28, 1, 'Nguyễn Huỳnh Minh', 'Triết', '19004220@st.vlute.edu.vn', '', '', '331925862', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1255, 28, 1, 'Đổ Minh', 'Trung', '19004221@st.vlute.edu.vn', '', '', '331908862', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1256, 28, 1, 'Nguyễn Duy', 'Trung', '19004222@st.vlute.edu.vn', '', '', '312507226', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1257, 28, 1, 'Nông Nguyễn Bảo', 'Trung', '19004223@st.vlute.edu.vn', '', '', '331870082', '', '', 1, '2021-11-05 06:16:00', '2021-11-05 06:16:00'),
(1258, 28, 1, 'Phan Thành', 'Trung', '19004224@st.vlute.edu.vn', '', '', '331878277', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1259, 28, 1, 'Nguyễn Đăng', 'Trường', '19004225@st.vlute.edu.vn', '', '', '331800495', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1260, 28, 1, 'Nguyễn Thanh', 'Truyền', '19004226@st.vlute.edu.vn', '', '', '331878461', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1261, 28, 1, 'Nguyễn Thanh', 'Truyền', '19004227@st.vlute.edu.vn', '', '', '364209771', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1262, 28, 1, 'Lê Thị Cẩm', 'Tú', '19004228@st.vlute.edu.vn', '', '', '312473377', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1263, 28, 1, 'La Hoàng', 'Tuấn', '19004229@st.vlute.edu.vn', '', '', '331866344', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1264, 28, 1, 'Võ Anh', 'Tuấn', '19004230@st.vlute.edu.vn', '', '', '331877780', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1265, 28, 1, 'Nguyễn Thành', 'Tươi', '19004231@st.vlute.edu.vn', '', '', '331924524', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1266, 28, 1, 'Chung Lân', 'Tường', '19004232@st.vlute.edu.vn', '', '', '331874159', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1267, 28, 1, 'Nguyễn Thị Cẩm', 'Tuyến', '19004233@st.vlute.edu.vn', '', '', '331870248', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1268, 28, 1, 'Phạm Kim', 'Tuyền', '19004234@st.vlute.edu.vn', '', '', '331910926', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1269, 28, 1, 'Võ Hoàng', 'Vân', '19004235@st.vlute.edu.vn', '', '', '331917521', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1270, 28, 1, 'Trần Thanh', 'Văn', '19004236@st.vlute.edu.vn', '', '', '364162172', '', '', 1, '2021-11-05 06:16:01', '2021-11-05 06:16:01'),
(1271, 28, 1, 'Bùi Quốc', 'Vinh', '19004237@st.vlute.edu.vn', '', '', '331900993', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1272, 28, 1, 'Nguyễn Thế', 'Vinh', '19004238@st.vlute.edu.vn', '', '', '335024089', '', '', 0, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1273, 28, 1, 'Phạm Hoàng', 'Vinh', '19004239@st.vlute.edu.vn', '', '', '364092365', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1274, 28, 1, 'Nguyễn Quang', 'Vũ', '19004240@st.vlute.edu.vn', '', '', '331829154', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1275, 28, 1, 'Trần Anh', 'Vũ', '19004241@st.vlute.edu.vn', '', '', '385856484', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1276, 28, 1, 'Diệp Lê Minh', 'Vương', '19004242@st.vlute.edu.vn', '', '', '331876154', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1277, 28, 1, 'Phan Quốc', 'Vượng', '19004243@st.vlute.edu.vn', '', '', '331859435', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1278, 28, 1, 'Huỳnh Thúy', 'Vy', '19004244@st.vlute.edu.vn', '', '', '366346659', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1279, 28, 1, 'Tiêu Lam', 'Vỹ', '19004245@st.vlute.edu.vn', '', '', '331898231', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1280, 28, 1, 'Trần Thị Như', 'Ý', '19004246@st.vlute.edu.vn', '', '', '331877555', '', '', 0, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1281, 28, 1, 'Lê Phan Hiểu', 'Yến', '19004247@st.vlute.edu.vn', '', '', '331866802', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1282, 28, 1, 'Phan Phương', 'Yến', '19004248@st.vlute.edu.vn', '', '', '331904899', '', '', 1, '2021-11-05 06:16:02', '2021-11-05 06:16:02'),
(1283, 28, 1, 'Trần Bùi Mỹ', 'Yến', '19004249@st.vlute.edu.vn', '', '', '331862009', '', '', 1, '2021-11-05 06:16:03', '2021-11-05 06:16:03'),
(1284, 28, 1, 'Bùi Bảo', 'Duy', '19004250@st.vlute.edu.vn', '', '', '331882019', '', '', 0, '2021-11-05 06:16:03', '2021-11-05 06:16:03'),
(1285, 28, 1, 'Phan Tấn Minh', 'Tâm', '19004251@st.vlute.edu.vn', '', '', '342077531', '', '', 1, '2021-11-05 06:16:03', '2021-11-05 06:16:03'),
(1286, 29, 4, 'Trần Minh', 'Phú', '19003075@st.vlute.edu.vn', NULL, NULL, '331001002', NULL, NULL, 1, '2021-11-18 06:19:42', '2021-11-18 06:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `khoa_hoc`
--

DROP TABLE IF EXISTS `khoa_hoc`;
CREATE TABLE IF NOT EXISTS `khoa_hoc` (
  `id_khoa_hoc` int NOT NULL AUTO_INCREMENT,
  `ma_khoa_hoc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nam_nhap_hoc` decimal(4,0) DEFAULT NULL,
  `nien_khoa` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nam_het_han` decimal(4,0) DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_khoa_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khoa_hoc`
--

INSERT INTO `khoa_hoc` (`id_khoa_hoc`, `ma_khoa_hoc`, `nam_nhap_hoc`, `nien_khoa`, `nam_het_han`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, '1', '2019', 'K44', '2026', '2021-10-12 19:32:27', '2021-10-24 13:31:54'),
(51, '333', '2018', 'K43', '2025', '2021-10-14 16:35:46', '2021-10-14 16:35:46'),
(53, '334', '2017', 'K42', '2024', '2021-10-16 14:01:34', '2021-10-16 14:01:34'),
(54, 'k45', '1999', '2021', '2028', '2021-11-18 14:02:38', '2021-11-18 15:31:56'),
(56, 'k44', '2019', '2019', '2026', '2021-11-18 15:30:45', '2021-11-18 15:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `ky_thi`
--

DROP TABLE IF EXISTS `ky_thi`;
CREATE TABLE IF NOT EXISTS `ky_thi` (
  `id_ky_thi` int NOT NULL AUTO_INCREMENT,
  `id_hoc_ky` int NOT NULL,
  `ten_ky_thi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_bat_dau` date DEFAULT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ky_thi`),
  KEY `fk_ky_thi_associati_hoc_ky` (`id_hoc_ky`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lich_thi`
--

DROP TABLE IF EXISTS `lich_thi`;
CREATE TABLE IF NOT EXISTS `lich_thi` (
  `id_phong` int NOT NULL,
  `id_ky_thi` int NOT NULL,
  `id_hoc_vien` int NOT NULL,
  `id_hoc_phan` int NOT NULL,
  `id_ca_thi` int NOT NULL,
  `ngay_thi` date DEFAULT NULL,
  `diem_thi` decimal(2,1) DEFAULT NULL,
  `ghi_chu` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_phong`,`id_ky_thi`,`id_hoc_vien`,`id_hoc_phan`,`id_ca_thi`),
  KEY `fk_associat_associati_ky_thi` (`id_ky_thi`),
  KEY `fk_associat_associati_hoc_vien` (`id_hoc_vien`),
  KEY `fk_associat_associati_ca_thi` (`id_ca_thi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lop_hoc`
--

DROP TABLE IF EXISTS `lop_hoc`;
CREATE TABLE IF NOT EXISTS `lop_hoc` (
  `id_lop_hoc` int NOT NULL AUTO_INCREMENT,
  `id_giang_vien` int NOT NULL,
  `id_khoa_hoc` int NOT NULL,
  `id_don_vi` int NOT NULL,
  `id_nganh` int NOT NULL,
  `id_he_dao_tao` int NOT NULL,
  `ma_lop_hoc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_lop_hoc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `si_so` int DEFAULT NULL,
  `ghi_chu` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_lop_hoc`),
  KEY `fk_lop_hoc_lop_hoc_t_nganh_ho` (`id_nganh`),
  KEY `fk_lop_hoc_cvht_giang_vi` (`id_giang_vien`),
  KEY `fk_lop_hoc_lop_hoc_t_he_dao_t` (`id_he_dao_tao`),
  KEY `fk_lop_hoc_lop_hoc_t_don_vi` (`id_don_vi`),
  KEY `fk_lop_hoc_lop_hoc_t_khoa_hoc` (`id_khoa_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lop_hoc`
--

INSERT INTO `lop_hoc` (`id_lop_hoc`, `id_giang_vien`, `id_khoa_hoc`, `id_don_vi`, `id_nganh`, `id_he_dao_tao`, `ma_lop_hoc`, `ten_lop_hoc`, `si_so`, `ghi_chu`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(5, 51, 1, 18, 5, 21, '1CTT19A1', 'ĐH CNTT 2019 A1', 4, '', '2021-10-12 12:32:47', '2021-10-28 08:30:51'),
(7, 1, 51, 18, 17, 21, '1CTT18A1', 'ĐH CNTT 2018 A1', 2, '', '2021-10-12 12:55:42', '2022-02-15 01:16:58'),
(8, 51, 1, 18, 5, 21, '1CTT20A1', 'ĐH CNTT 2020 A1', 121, '', '2021-10-12 15:04:22', '2021-10-28 08:32:30'),
(22, 50, 53, 18, 5, 21, '1CTT17A1', 'ĐH CNTT 2017', 0, '', '2021-10-14 14:34:27', '2021-10-28 08:31:30'),
(28, 51, 1, 18, 5, 21, '1CTT19A2', 'ĐH CNTT 2019 A2', 126, '', '2021-10-28 12:16:42', '2021-10-28 12:16:42'),
(29, 195, 1, 26, 29, 21, '1DDT19A', 'ĐH DDT 2019', NULL, NULL, '2021-11-18 06:15:33', '2021-11-18 06:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `lop_hoc_phan`
--

DROP TABLE IF EXISTS `lop_hoc_phan`;
CREATE TABLE IF NOT EXISTS `lop_hoc_phan` (
  `id_lop_hoc_phan` int NOT NULL AUTO_INCREMENT,
  `id_hoc_phan` int NOT NULL,
  `ma_lop_hoc_phan` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai_lop_hoc_phan` int DEFAULT NULL,
  `nhap_diem` int DEFAULT '0',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_hoc_ky` int DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  PRIMARY KEY (`id_lop_hoc_phan`),
  KEY `fk_lop_hoc__lop_hoc_p_hoc_phan` (`id_hoc_phan`),
  KEY `lop_hoc_phan_hoc_ky_id_hoc_ky_fk` (`id_hoc_ky`)
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lop_hoc_phan`
--

INSERT INTO `lop_hoc_phan` (`id_lop_hoc_phan`, `id_hoc_phan`, `ma_lop_hoc_phan`, `loai_lop_hoc_phan`, `nhap_diem`, `ngay_tao`, `ngay_cap_nhat`, `id_hoc_ky`, `so_luong`) VALUES
(1, 59, '2110_1TH1336_(BT)_02', 1, 0, '2021-10-19 13:37:50', '2021-11-02 13:47:37', 1, 1),
(4, 89, '2110_1TH1349_(BT)_02', 1, 1, '2021-10-19 15:17:29', '2021-11-02 13:48:17', 5, 1),
(6, 57, '2110_1TH1359_01', 0, 0, '2021-10-19 15:57:32', '2021-11-02 13:48:33', 2, 1),
(7, 58, '2110_1TH1335_01', 0, 1, '2021-10-20 14:16:40', '2021-11-02 13:48:51', 3, 1),
(10, 64, '2110_1TH1324_01', 0, 0, '2021-10-21 06:31:30', '2021-11-02 13:49:11', 2, 1),
(19, 87, '2111_ABC_XYZ', 0, 0, '2021-11-11 13:59:57', '2021-11-11 13:59:57', 5, 1),
(21, 22, '2111_1TH1111_01', 0, 0, '2021-11-11 16:50:33', '2021-11-11 16:50:33', 5, 1),
(29, 59, '2121_2121(BT)', 1, 0, '2021-11-17 03:35:14', '2021-11-17 03:36:34', 3, 30),
(30, 35, 'TTT1', 0, 0, '2021-11-17 15:28:59', '2021-11-17 15:28:59', 7, 1),
(31, 63, '2110_1TH1376_01', 0, 0, '2021-11-17 15:29:19', '2021-11-17 15:29:19', 7, 1),
(32, 23, 'TTT3', 0, 0, '2021-11-17 15:29:42', '2021-11-17 16:04:26', 7, 1),
(33, 56, '2110_1TH1333_02', 0, 0, '2021-11-17 15:30:07', '2021-11-17 15:36:14', 7, 1),
(37, 23, 'TT3(BT)_2', 1, 0, '2021-11-17 16:08:30', '2021-11-17 16:08:30', 7, 1),
(38, 30, 'TCC1', 0, 0, '2021-11-17 16:10:47', '2021-11-17 16:10:47', 7, 1),
(49, 95, '2110_1DT1304_01', 1, 1, '2021-11-18 06:26:12', '2021-11-18 06:26:12', 1, 1),
(50, 96, '2110_1DT1505_01', 0, 1, '2021-11-18 06:46:32', '2021-11-18 06:46:32', 1, 1),
(51, 97, '2110_1DT1503_01', 0, 1, '2021-11-18 06:46:32', '2021-11-18 06:46:32', 1, 1),
(52, 98, '2110_1DT1611_01', 1, 1, '2021-11-18 06:46:32', '2021-11-18 06:46:32', 1, 1),
(53, 99, '2110_1DT1610_02', 1, 1, '2021-11-18 06:46:32', '2021-11-18 06:46:32', 1, 1),
(54, 100, '2110_1DT1213_01', 1, 1, '2021-11-18 06:46:32', '2021-11-18 06:46:32', 1, 1),
(55, 101, '2110_1DT1211_02 ', 1, 1, '2021-11-18 06:46:32', '2021-11-18 06:46:32', 1, 1),
(56, 102, '2110_1DT1334_01 ', 0, 1, '2021-11-18 06:46:33', '2021-11-18 06:46:33', 1, 1),
(57, 60, '2110_1TH1338_01', 1, 1, '2021-11-18 09:09:38', '2021-11-18 09:09:38', 1, 1),
(58, 79, 'THUT_1', 0, 0, '2021-11-18 12:30:29', '2021-11-18 12:30:29', 7, 1),
(59, 31, 'THUT_2', 0, 0, '2021-11-18 12:30:29', '2021-11-18 12:30:29', 3, 1),
(141, 8, 'LTCB_1', 0, 0, '2021-11-18 13:33:54', '2021-11-18 13:33:54', 7, 1),
(144, 8, 'LTCB_BT_1', 1, 0, '2021-11-18 13:34:21', '2021-11-18 13:34:21', 7, 1),
(157, 26, 'ATTT_1', 0, 0, '2021-11-18 14:37:30', '2021-11-18 14:37:30', 7, 30),
(163, 26, 'ATTT_(BT)_5', 1, 0, '2021-11-18 14:38:14', '2021-11-18 14:38:14', 7, 15),
(201, 4, 'hk1_vl01_1', 0, 0, '2021-12-06 04:01:45', '2021-12-06 04:01:45', 6, 55),
(202, 4, 'hk1_vl01_2', 0, 0, '2021-12-06 04:01:45', '2021-12-06 04:01:45', 6, 55),
(203, 4, 'hk1_vl01_BT_1', 1, 0, '2021-12-06 04:01:45', '2021-12-06 04:01:45', 6, 25),
(204, 4, 'hk1_vl01_BT_2', 1, 0, '2021-12-06 04:01:45', '2021-12-06 04:01:45', 6, 25),
(205, 4, 'hk1_vl01_BT_3', 1, 0, '2021-12-06 04:01:45', '2021-12-06 04:01:45', 6, 25),
(206, 4, 'hk1_vl01_BT_4', 1, 0, '2021-12-06 04:01:45', '2021-12-06 04:01:45', 6, 25),
(207, 8, 'hk1_TH1219_1', 0, 0, '2021-12-06 04:01:45', '2021-12-06 04:01:45', 6, 55),
(208, 8, 'hk1_TH1219_2', 0, 0, '2021-12-06 04:01:46', '2021-12-06 04:01:46', 6, 55),
(209, 8, 'hk1_TH1219_BT_1', 1, 0, '2021-12-06 04:01:46', '2021-12-06 04:01:46', 6, 25),
(210, 8, 'hk1_TH1219_BT_2', 1, 0, '2021-12-06 04:01:46', '2021-12-06 04:01:46', 6, 25),
(211, 8, 'hk1_TH1219_BT_3', 1, 0, '2021-12-06 04:01:46', '2021-12-06 04:01:46', 6, 25),
(212, 8, 'hk1_TH1219_BT_4', 1, 0, '2021-12-06 04:01:46', '2021-12-06 04:01:46', 6, 25),
(213, 11, 'hk1_BBB_1', 0, 0, '2021-12-06 04:01:46', '2021-12-06 04:01:46', 6, 55),
(214, 11, 'hk1_BBB_2', 0, 0, '2021-12-06 04:01:47', '2021-12-06 04:01:47', 6, 55),
(215, 11, 'hk1_BBB_BT_1', 1, 0, '2021-12-06 04:01:47', '2021-12-06 04:01:47', 6, 25),
(216, 11, 'hk1_BBB_BT_2', 1, 0, '2021-12-06 04:01:47', '2021-12-06 04:01:47', 6, 25),
(217, 11, 'hk1_BBB_BT_3', 1, 0, '2021-12-06 04:01:47', '2021-12-06 04:01:47', 6, 25),
(218, 11, 'hk1_BBB_BT_4', 1, 0, '2021-12-06 04:01:47', '2021-12-06 04:01:47', 6, 25),
(219, 23, 'hk1_KKA01_1', 0, 0, '2021-12-06 04:01:47', '2021-12-06 04:01:47', 6, 55),
(220, 23, 'hk1_KKA01_2', 0, 0, '2021-12-06 04:01:47', '2021-12-06 04:01:47', 6, 55),
(221, 23, 'hk1_KKA01_BT_1', 1, 0, '2021-12-06 04:01:48', '2021-12-06 04:01:48', 6, 25),
(222, 23, 'hk1_KKA01_BT_2', 1, 0, '2021-12-06 04:01:48', '2021-12-06 04:01:48', 6, 25),
(223, 23, 'hk1_KKA01_BT_3', 1, 0, '2021-12-06 04:01:48', '2021-12-06 04:01:48', 6, 25),
(224, 23, 'hk1_KKA01_BT_4', 1, 0, '2021-12-06 04:01:48', '2021-12-06 04:01:48', 6, 25),
(225, 24, 'hk1_NHUNG01_1', 0, 0, '2021-12-06 04:01:48', '2021-12-06 04:01:48', 6, 55),
(226, 24, 'hk1_NHUNG01_2', 0, 0, '2021-12-06 04:01:48', '2021-12-06 04:01:48', 6, 55),
(227, 24, 'hk1_NHUNG01_BT_1', 1, 0, '2021-12-06 04:01:48', '2021-12-06 04:01:48', 6, 25),
(228, 24, 'hk1_NHUNG01_BT_2', 1, 0, '2021-12-06 04:01:49', '2021-12-06 04:01:49', 6, 25),
(229, 24, 'hk1_NHUNG01_BT_3', 1, 0, '2021-12-06 04:01:49', '2021-12-06 04:01:49', 6, 25),
(230, 24, 'hk1_NHUNG01_BT_4', 1, 0, '2021-12-06 04:01:49', '2021-12-06 04:01:49', 6, 25),
(231, 29, 'hk1_TH1201_1', 0, 0, '2021-12-06 04:01:49', '2021-12-06 04:01:49', 6, 55),
(232, 29, 'hk1_TH1201_2', 0, 0, '2021-12-06 04:01:49', '2021-12-06 04:01:49', 6, 55),
(233, 4, 'hk1_vl01_3', 0, 0, '2021-12-14 01:06:53', '2021-12-14 01:06:53', 6, 60),
(234, 26, 'hk1_AT03_1', 0, 0, '2021-12-14 01:06:54', '2021-12-14 01:06:54', 6, 60),
(235, 4, 'hk1_vl01_4', 0, 0, '2021-12-14 01:10:05', '2021-12-14 01:10:05', 6, 55),
(236, 4, 'hk1_vl01_5', 0, 0, '2021-12-14 01:10:05', '2021-12-14 01:10:05', 6, 55),
(237, 4, 'hk1_vl01_BT_5', 1, 0, '2021-12-14 01:10:05', '2021-12-14 01:10:05', 6, 25),
(238, 4, 'hk1_vl01_BT_6', 1, 0, '2021-12-14 01:10:05', '2021-12-14 01:10:05', 6, 25),
(239, 4, 'hk1_vl01_BT_7', 1, 0, '2021-12-14 01:10:06', '2021-12-14 01:10:06', 6, 25),
(240, 4, 'hk1_vl01_BT_8', 1, 0, '2021-12-14 01:10:06', '2021-12-14 01:10:06', 6, 25),
(241, 4, 'hk1_vl01_6', 0, 0, '2021-12-14 01:10:06', '2021-12-14 01:10:06', 6, 55),
(242, 4, 'hk1_vl01_7', 0, 0, '2021-12-14 01:10:06', '2021-12-14 01:10:06', 6, 55),
(243, 4, 'hk1_vl01_BT_9', 1, 0, '2021-12-14 01:10:06', '2021-12-14 01:10:06', 6, 25),
(244, 4, 'hk1_vl01_BT_10', 1, 0, '2021-12-14 01:10:07', '2021-12-14 01:10:07', 6, 25),
(245, 4, 'hk1_vl01_BT_11', 1, 0, '2021-12-14 01:10:07', '2021-12-14 01:10:07', 6, 25),
(246, 4, 'hk1_vl01_BT_12', 1, 0, '2021-12-14 01:10:07', '2021-12-14 01:10:07', 6, 25),
(247, 26, 'hk1_AT03_2', 0, 0, '2021-12-14 01:10:07', '2021-12-14 01:10:07', 6, 55),
(248, 26, 'hk1_AT03_3', 0, 0, '2021-12-14 01:10:07', '2021-12-14 01:10:07', 6, 55),
(249, 26, 'hk1_AT03_BT_1', 1, 0, '2021-12-14 01:10:08', '2021-12-14 01:10:08', 6, 25),
(250, 26, 'hk1_AT03_BT_2', 1, 0, '2021-12-14 01:10:08', '2021-12-14 01:10:08', 6, 25),
(251, 26, 'hk1_AT03_BT_3', 1, 0, '2021-12-14 01:10:08', '2021-12-14 01:10:08', 6, 25),
(252, 26, 'hk1_AT03_BT_4', 1, 0, '2021-12-14 01:10:08', '2021-12-14 01:10:08', 6, 25),
(253, 26, 'hk1_AT03_4', 0, 0, '2021-12-14 01:10:08', '2021-12-14 01:10:08', 6, 55),
(254, 26, 'hk1_AT03_5', 0, 0, '2021-12-14 01:10:09', '2021-12-14 01:10:09', 6, 55),
(255, 26, 'hk1_AT03_BT_5', 1, 0, '2021-12-14 01:10:09', '2021-12-14 01:10:09', 6, 25),
(256, 26, 'hk1_AT03_BT_6', 1, 0, '2021-12-14 01:10:09', '2021-12-14 01:10:09', 6, 25),
(257, 26, 'hk1_AT03_BT_7', 1, 0, '2021-12-14 01:10:09', '2021-12-14 01:10:09', 6, 25),
(258, 26, 'hk1_AT03_BT_8', 1, 0, '2021-12-14 01:10:09', '2021-12-14 01:10:09', 6, 25),
(259, 34, 'hk1_CB1109_1', 0, 0, '2021-12-14 01:10:10', '2021-12-14 01:10:10', 6, 55),
(260, 34, 'hk1_CB1109_2', 0, 0, '2021-12-14 01:10:10', '2021-12-14 01:10:10', 6, 55),
(261, 34, 'hk1_CB1109_3', 0, 0, '2021-12-14 01:10:10', '2021-12-14 01:10:10', 6, 55),
(262, 34, 'hk1_CB1109_4', 0, 0, '2021-12-14 01:10:10', '2021-12-14 01:10:10', 6, 55),
(263, 37, 'hk1_TH1205_1', 0, 0, '2021-12-14 01:10:11', '2021-12-14 01:10:11', 6, 55),
(264, 37, 'hk1_TH1205_2', 0, 0, '2021-12-14 01:10:11', '2021-12-14 01:10:11', 6, 55),
(265, 37, 'hk1_TH1205_3', 0, 0, '2021-12-14 01:10:11', '2021-12-14 01:10:11', 6, 55),
(266, 37, 'hk1_TH1205_4', 0, 0, '2021-12-14 01:10:11', '2021-12-14 01:10:11', 6, 55),
(267, 53, 'hk1_TH1214_1', 0, 0, '2021-12-14 01:10:11', '2021-12-14 01:10:11', 6, 55),
(268, 53, 'hk1_TH1214_2', 0, 0, '2021-12-14 01:10:12', '2021-12-14 01:10:12', 6, 55),
(269, 53, 'hk1_TH1214_3', 0, 0, '2021-12-14 01:10:12', '2021-12-14 01:10:12', 6, 55),
(270, 53, 'hk1_TH1214_4', 0, 0, '2021-12-14 01:10:12', '2021-12-14 01:10:12', 6, 55),
(271, 4, 'hk1_vl01_8', 0, 0, '2021-12-14 01:10:38', '2021-12-14 01:10:38', 6, 55),
(272, 4, 'hk1_vl01_9', 0, 0, '2021-12-14 01:10:38', '2021-12-14 01:10:38', 6, 55),
(273, 4, 'hk1_vl01_BT_13', 1, 0, '2021-12-14 01:10:38', '2021-12-14 01:10:38', 6, 25),
(274, 4, 'hk1_vl01_BT_14', 1, 0, '2021-12-14 01:10:39', '2021-12-14 01:10:39', 6, 25),
(275, 4, 'hk1_vl01_BT_15', 1, 0, '2021-12-14 01:10:39', '2021-12-14 01:10:39', 6, 25),
(276, 4, 'hk1_vl01_BT_16', 1, 0, '2021-12-14 01:10:39', '2021-12-14 01:10:39', 6, 25),
(277, 26, 'hk1_AT03_6', 0, 0, '2021-12-14 01:10:39', '2021-12-14 01:10:39', 6, 55),
(278, 26, 'hk1_AT03_7', 0, 0, '2021-12-14 01:10:40', '2021-12-14 01:10:40', 6, 55),
(279, 26, 'hk1_AT03_BT_9', 1, 0, '2021-12-14 01:10:40', '2021-12-14 01:10:40', 6, 25),
(280, 26, 'hk1_AT03_BT_10', 1, 0, '2021-12-14 01:10:40', '2021-12-14 01:10:40', 6, 25),
(281, 26, 'hk1_AT03_BT_11', 1, 0, '2021-12-14 01:10:40', '2021-12-14 01:10:40', 6, 25),
(282, 26, 'hk1_AT03_BT_12', 1, 0, '2021-12-14 01:10:40', '2021-12-14 01:10:40', 6, 25),
(283, 34, 'hk1_CB1109_5', 0, 0, '2021-12-14 01:10:41', '2021-12-14 01:10:41', 6, 55),
(284, 34, 'hk1_CB1109_6', 0, 0, '2021-12-14 01:10:41', '2021-12-14 01:10:41', 6, 55),
(285, 37, 'hk1_TH1205_5', 0, 0, '2021-12-14 01:10:41', '2021-12-14 01:10:41', 6, 55),
(286, 37, 'hk1_TH1205_6', 0, 0, '2021-12-14 01:10:41', '2021-12-14 01:10:41', 6, 55),
(287, 53, 'hk1_TH1214_5', 0, 0, '2021-12-14 01:10:42', '2021-12-14 01:10:42', 6, 55),
(288, 53, 'hk1_TH1214_6', 0, 0, '2021-12-14 01:10:42', '2021-12-14 01:10:42', 6, 55),
(289, 4, 'hk1_vl01_10', 0, 0, '2021-12-14 01:30:50', '2021-12-14 01:30:50', 6, 55),
(290, 4, 'hk1_vl01_11', 0, 0, '2021-12-14 01:30:51', '2021-12-14 01:30:51', 6, 55),
(291, 4, 'hk1_vl01_BT_17', 1, 0, '2021-12-14 01:30:51', '2021-12-14 01:30:51', 6, 25),
(292, 4, 'hk1_vl01_BT_18', 1, 0, '2021-12-14 01:30:51', '2021-12-14 01:30:51', 6, 25),
(293, 4, 'hk1_vl01_BT_19', 1, 0, '2021-12-14 01:30:51', '2021-12-14 01:30:51', 6, 25),
(294, 4, 'hk1_vl01_BT_20', 1, 0, '2021-12-14 01:30:51', '2021-12-14 01:30:51', 6, 25),
(295, 4, 'hk1_vl01_12', 0, 0, '2021-12-14 01:30:52', '2021-12-14 01:30:52', 6, 55),
(296, 4, 'hk1_vl01_13', 0, 0, '2021-12-14 01:30:52', '2021-12-14 01:30:52', 6, 55),
(297, 4, 'hk1_vl01_BT_21', 1, 0, '2021-12-14 01:30:52', '2021-12-14 01:30:52', 6, 25),
(298, 4, 'hk1_vl01_BT_22', 1, 0, '2021-12-14 01:30:52', '2021-12-14 01:30:52', 6, 25),
(299, 4, 'hk1_vl01_BT_23', 1, 0, '2021-12-14 01:30:52', '2021-12-14 01:30:52', 6, 25),
(300, 4, 'hk1_vl01_BT_24', 1, 0, '2021-12-14 01:30:53', '2021-12-14 01:30:53', 6, 25),
(301, 26, 'hk1_AT03_8', 0, 0, '2021-12-14 01:30:53', '2021-12-14 01:30:53', 6, 55),
(302, 26, 'hk1_AT03_9', 0, 0, '2021-12-14 01:30:53', '2021-12-14 01:30:53', 6, 55),
(303, 26, 'hk1_AT03_BT_13', 1, 0, '2021-12-14 01:30:53', '2021-12-14 01:30:53', 6, 25),
(304, 26, 'hk1_AT03_BT_14', 1, 0, '2021-12-14 01:30:53', '2021-12-14 01:30:53', 6, 25),
(305, 26, 'hk1_AT03_BT_15', 1, 0, '2021-12-14 01:30:54', '2021-12-14 01:30:54', 6, 25),
(306, 4, 'hk1_vl01_14', 0, 0, '2021-12-14 01:30:54', '2021-12-14 01:30:54', 6, 55),
(307, 26, 'hk1_AT03_BT_16', 1, 0, '2021-12-14 01:30:54', '2021-12-14 01:30:54', 6, 25),
(308, 4, 'hk1_vl01_15', 0, 0, '2021-12-14 01:30:54', '2021-12-14 01:30:54', 6, 55),
(309, 26, 'hk1_AT03_10', 0, 0, '2021-12-14 01:30:54', '2021-12-14 01:30:54', 6, 55),
(310, 4, 'hk1_vl01_BT_25', 1, 0, '2021-12-14 01:30:54', '2021-12-14 01:30:54', 6, 25),
(311, 26, 'hk1_AT03_11', 0, 0, '2021-12-14 01:30:54', '2021-12-14 01:30:54', 6, 55),
(312, 4, 'hk1_vl01_BT_26', 1, 0, '2021-12-14 01:30:54', '2021-12-14 01:30:54', 6, 25),
(313, 26, 'hk1_AT03_BT_17', 1, 0, '2021-12-14 01:30:54', '2021-12-14 01:30:54', 6, 25),
(314, 4, 'hk1_vl01_BT_27', 1, 0, '2021-12-14 01:30:55', '2021-12-14 01:30:55', 6, 25),
(315, 26, 'hk1_AT03_BT_18', 1, 0, '2021-12-14 01:30:55', '2021-12-14 01:30:55', 6, 25),
(316, 4, 'hk1_vl01_BT_28', 1, 0, '2021-12-14 01:30:55', '2021-12-14 01:30:55', 6, 25),
(317, 26, 'hk1_AT03_BT_19', 1, 0, '2021-12-14 01:30:55', '2021-12-14 01:30:55', 6, 25),
(318, 4, 'hk1_vl01_16', 0, 0, '2021-12-14 01:30:55', '2021-12-14 01:30:55', 6, 55),
(319, 26, 'hk1_AT03_BT_20', 1, 0, '2021-12-14 01:30:55', '2021-12-14 01:30:55', 6, 25),
(320, 4, 'hk1_vl01_17', 0, 0, '2021-12-14 01:30:55', '2021-12-14 01:30:55', 6, 55),
(321, 34, 'hk1_CB1109_7', 0, 0, '2021-12-14 01:30:55', '2021-12-14 01:30:55', 6, 55),
(322, 4, 'hk1_vl01_BT_29', 1, 0, '2021-12-14 01:30:55', '2021-12-14 01:30:55', 6, 25),
(323, 34, 'hk1_CB1109_8', 0, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 55),
(324, 4, 'hk1_vl01_BT_30', 1, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 25),
(325, 34, 'hk1_CB1109_9', 0, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 55),
(326, 4, 'hk1_vl01_BT_31', 1, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 25),
(327, 34, 'hk1_CB1109_10', 0, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 55),
(328, 4, 'hk1_vl01_BT_32', 1, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 25),
(329, 37, 'hk1_TH1205_7', 0, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 55),
(330, 26, 'hk1_AT03_12', 0, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 55),
(331, 37, 'hk1_TH1205_8', 0, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 55),
(332, 26, 'hk1_AT03_13', 0, 0, '2021-12-14 01:30:56', '2021-12-14 01:30:56', 6, 55),
(333, 37, 'hk1_TH1205_9', 0, 0, '2021-12-14 01:30:57', '2021-12-14 01:30:57', 6, 55),
(334, 26, 'hk1_AT03_BT_21', 1, 0, '2021-12-14 01:30:57', '2021-12-14 01:30:57', 6, 25),
(335, 37, 'hk1_TH1205_10', 0, 0, '2021-12-14 01:30:57', '2021-12-14 01:30:57', 6, 55),
(336, 26, 'hk1_AT03_BT_22', 1, 0, '2021-12-14 01:30:57', '2021-12-14 01:30:57', 6, 25),
(337, 26, 'hk1_AT03_BT_23', 1, 0, '2021-12-14 01:30:57', '2021-12-14 01:30:57', 6, 25),
(338, 53, 'hk1_TH1214_7', 0, 0, '2021-12-14 01:30:57', '2021-12-14 01:30:57', 6, 55),
(339, 26, 'hk1_AT03_BT_24', 1, 0, '2021-12-14 01:30:57', '2021-12-14 01:30:57', 6, 25),
(340, 53, 'hk1_TH1214_8', 0, 0, '2021-12-14 01:30:57', '2021-12-14 01:30:57', 6, 55),
(341, 53, 'hk1_TH1214_9', 0, 0, '2021-12-14 01:30:58', '2021-12-14 01:30:58', 6, 55),
(342, 26, 'hk1_AT03_14', 0, 0, '2021-12-14 01:30:58', '2021-12-14 01:30:58', 6, 55),
(343, 53, 'hk1_TH1214_10', 0, 0, '2021-12-14 01:30:58', '2021-12-14 01:30:58', 6, 55),
(344, 26, 'hk1_AT03_15', 0, 0, '2021-12-14 01:30:58', '2021-12-14 01:30:58', 6, 55),
(345, 26, 'hk1_AT03_BT_25', 1, 0, '2021-12-14 01:30:58', '2021-12-14 01:30:58', 6, 25),
(346, 26, 'hk1_AT03_BT_26', 1, 0, '2021-12-14 01:30:58', '2021-12-14 01:30:58', 6, 25),
(347, 26, 'hk1_AT03_BT_27', 1, 0, '2021-12-14 01:30:58', '2021-12-14 01:30:58', 6, 25),
(348, 26, 'hk1_AT03_BT_28', 1, 0, '2021-12-14 01:30:59', '2021-12-14 01:30:59', 6, 25),
(349, 23, 'hk1_KKA01_3', 0, 0, '2021-12-14 06:42:24', '2021-12-14 06:42:24', 6, 55),
(350, 23, 'hk1_KKA01_4', 0, 0, '2021-12-14 06:42:24', '2021-12-14 06:42:24', 6, 55),
(351, 23, 'hk1_KKA01_BT_5', 1, 0, '2021-12-14 06:42:25', '2021-12-14 06:42:25', 6, 25),
(352, 24, 'hk1_NHUNG01_3', 0, 0, '2021-12-14 06:42:25', '2021-12-14 06:42:25', 6, 55),
(353, 24, 'hk1_NHUNG01_BT_5', 1, 0, '2021-12-14 06:42:25', '2021-12-14 06:42:25', 6, 25),
(354, 25, 'hk1_KKA_1', 0, 0, '2021-12-14 06:42:25', '2021-12-14 06:42:25', 6, 55),
(355, 25, 'hk1_KKA_2', 0, 0, '2021-12-14 06:42:25', '2021-12-14 06:42:25', 6, 55),
(356, 26, 'hk1_AT03_16', 0, 0, '2021-12-14 06:42:26', '2021-12-14 06:42:26', 6, 55),
(357, 26, 'hk1_AT03_BT_29', 1, 0, '2021-12-14 06:42:26', '2021-12-14 06:42:26', 6, 25),
(358, 26, 'hk1_AT03_BT_30', 1, 0, '2021-12-14 06:42:26', '2021-12-14 06:42:26', 6, 25),
(359, 26, 'hk1_AT03_BT_31', 1, 0, '2021-12-14 06:42:26', '2021-12-14 06:42:26', 6, 25),
(360, 27, 'hk1_CT2101_1', 0, 0, '2021-12-14 06:42:27', '2021-12-14 06:42:27', 6, 55),
(361, 27, 'hk1_CT2101_2', 0, 0, '2021-12-14 06:42:27', '2021-12-14 06:42:27', 6, 55),
(362, 26, '2110_1TH1509_1', 0, 0, '2021-12-16 13:07:28', '2021-12-16 13:07:28', 8, 150),
(363, 26, '2110_1TH1509_2', 0, 0, '2021-12-16 13:07:28', '2021-12-16 13:07:28', 8, 150),
(364, 54, '2110_1TH1305_1', 0, 0, '2021-12-16 13:08:03', '2021-12-16 13:08:03', 8, 120),
(365, 54, '2110_1TH1305_2', 0, 0, '2021-12-16 13:08:03', '2021-12-16 13:08:03', 8, 120),
(366, 54, '2110_1TH1305_3', 0, 0, '2021-12-16 13:08:03', '2021-12-16 13:08:03', 8, 120),
(367, 42, '2110_1TH1406_1', 0, 0, '2021-12-16 13:10:22', '2021-12-16 13:10:22', 8, 100),
(368, 42, '2110_1TH1406_2', 0, 0, '2021-12-16 13:10:24', '2021-12-16 13:10:24', 8, 100),
(369, 42, '2110_1TH1406_3', 0, 0, '2021-12-16 13:10:26', '2021-12-16 13:10:26', 8, 100),
(370, 38, '2110_1TH1545_1', 0, 0, '2021-12-16 13:11:00', '2021-12-16 13:11:00', 8, 100),
(371, 38, '2110_1TH1545_2', 0, 0, '2021-12-16 13:11:02', '2021-12-16 13:11:02', 8, 100),
(372, 38, '2110_1TH1545_3', 0, 0, '2021-12-16 13:11:02', '2021-12-16 13:11:02', 5, 100),
(373, 8, 'hk1_TH1219_3', 0, 0, '2021-12-17 02:54:40', '2021-12-17 02:54:40', 6, 55),
(374, 8, 'hk1_TH1219_4', 0, 0, '2021-12-17 02:54:41', '2021-12-17 02:54:41', 6, 55),
(375, 8, 'hk1_TH1219_BT_5', 1, 0, '2021-12-17 02:54:41', '2021-12-17 02:54:41', 6, 25),
(376, 8, 'hk1_TH1219_BT_6', 1, 0, '2021-12-17 02:54:41', '2021-12-17 02:54:41', 6, 25),
(377, 8, 'hk1_TH1219_BT_7', 1, 0, '2021-12-17 02:54:42', '2021-12-17 02:54:42', 6, 25),
(378, 8, 'hk1_TH1219_BT_8', 1, 0, '2021-12-17 02:54:42', '2021-12-17 02:54:42', 6, 25),
(379, 30, 'hk1_CB1106_1', 0, 0, '2021-12-17 02:54:43', '2021-12-17 02:54:43', 3, 55),
(380, 30, 'hk1_CB1106_2', 0, 0, '2021-12-17 02:54:43', '2021-12-17 02:54:43', 6, 55),
(381, 32, 'hk1_CB1111_1', 0, 0, '2021-12-17 02:54:44', '2021-12-17 02:54:44', 3, 55),
(382, 32, 'hk1_CB1111_2', 0, 0, '2021-12-17 02:54:44', '2021-12-17 02:54:44', 6, 55),
(383, 37, 'hk1_TH1205_11', 0, 0, '2021-12-17 02:54:45', '2021-12-17 02:54:45', 6, 55),
(384, 37, 'hk1_TH1205_12', 0, 0, '2021-12-17 02:54:45', '2021-12-17 02:54:45', 6, 55),
(390, 27, '27-CT2101_02', 1, 0, '2022-02-09 07:13:06', '2022-02-09 07:13:06', 3, 30),
(391, 99, NULL, NULL, 0, '2022-02-09 07:26:42', '2022-02-09 07:26:42', NULL, NULL),
(392, 28, '28_CT2102_03', NULL, 0, '2022-02-09 07:30:20', '2022-02-09 07:30:20', 3, NULL),
(393, 29, '29_TH1201_03', 1, 0, '2022-02-09 07:31:36', '2022-02-09 07:31:36', 3, NULL),
(394, 33, '33_TH1521_01', NULL, 0, '2022-02-09 07:36:52', '2022-02-09 07:36:52', 3, 30),
(395, 34, '34_CB1109_01', NULL, 0, '2022-02-09 07:38:03', '2022-02-09 07:38:03', 3, NULL),
(396, 40, '40_DT1283_03', NULL, 0, '2022-02-09 07:41:56', '2022-02-09 07:41:56', 5, 30),
(397, 35, '35_CT2103_01', 0, 0, '2022-02-09 07:43:00', '2022-02-09 07:43:00', 5, 70),
(398, 100, NULL, NULL, 0, '2022-02-09 07:43:51', '2022-02-09 07:43:51', NULL, NULL),
(399, 39, NULL, NULL, 0, '2022-02-09 07:45:50', '2022-02-09 07:45:50', NULL, NULL),
(400, 46, NULL, NULL, 0, '2022-02-09 08:02:36', '2022-02-09 08:02:36', NULL, NULL),
(401, 47, NULL, NULL, 0, '2022-02-09 08:04:07', '2022-02-09 08:04:07', NULL, NULL),
(402, 41, '41_CT2104_02', NULL, 0, '2022-02-09 08:17:27', '2022-02-09 08:17:27', 1, 40),
(403, 42, '42_TH1206_01', NULL, 0, '2022-02-09 08:20:14', '2022-02-09 08:20:14', 1, 70),
(404, 100, NULL, NULL, 0, '2022-02-09 08:25:48', '2022-02-09 08:25:48', NULL, NULL),
(405, 44, NULL, NULL, 0, '2022-02-09 08:36:00', '2022-02-09 08:36:00', NULL, NULL),
(406, 45, NULL, NULL, 0, '2022-02-09 08:37:46', '2022-02-09 08:37:46', NULL, NULL),
(407, 36, NULL, NULL, 0, '2022-02-09 08:38:57', '2022-02-09 08:38:57', NULL, NULL),
(408, 8, NULL, NULL, 0, '2022-02-09 08:40:48', '2022-02-09 08:40:48', NULL, NULL),
(409, 48, NULL, NULL, 0, '2022-02-09 08:42:18', '2022-02-09 08:42:18', NULL, NULL),
(410, 49, NULL, NULL, 0, '2022-02-09 08:43:57', '2022-02-09 08:43:57', NULL, NULL),
(411, 50, NULL, NULL, 0, '2022-02-09 08:46:04', '2022-02-09 08:46:04', NULL, NULL),
(412, 51, NULL, NULL, 0, '2022-02-09 08:47:04', '2022-02-09 08:47:04', NULL, NULL),
(413, 52, NULL, NULL, 0, '2022-02-09 08:48:06', '2022-02-09 08:48:06', NULL, NULL),
(414, 53, NULL, NULL, 0, '2022-02-09 08:49:44', '2022-02-09 08:49:44', NULL, NULL),
(415, 54, NULL, NULL, 0, '2022-02-09 08:51:13', '2022-02-09 08:51:13', NULL, NULL),
(416, 55, NULL, NULL, 0, '2022-02-09 08:52:34', '2022-02-09 08:52:34', NULL, NULL),
(417, 59, NULL, NULL, 0, '2022-02-09 08:53:37', '2022-02-09 08:53:37', NULL, NULL),
(418, 60, NULL, NULL, 0, '2022-02-09 08:54:38', '2022-02-09 08:54:38', NULL, NULL),
(419, 64, NULL, NULL, 0, '2022-02-09 08:55:40', '2022-02-09 08:55:40', NULL, NULL),
(420, 66, NULL, NULL, 0, '2022-02-09 08:57:04', '2022-02-09 08:57:04', NULL, NULL),
(421, 67, NULL, NULL, 0, '2022-02-09 08:58:12', '2022-02-09 08:58:12', NULL, NULL),
(422, 81, NULL, NULL, 0, '2022-02-09 08:59:16', '2022-02-09 08:59:16', NULL, NULL),
(423, 80, NULL, NULL, 0, '2022-02-09 09:00:28', '2022-02-09 09:00:28', NULL, NULL),
(424, 82, NULL, NULL, 0, '2022-02-09 09:02:15', '2022-02-09 09:02:15', NULL, NULL),
(425, 83, NULL, NULL, 0, '2022-02-09 09:04:00', '2022-02-09 09:04:00', NULL, NULL),
(426, 68, NULL, NULL, 0, '2022-02-09 09:05:27', '2022-02-09 09:05:27', NULL, NULL),
(427, 71, NULL, NULL, 0, '2022-02-09 09:09:14', '2022-02-09 09:09:14', NULL, NULL),
(428, 73, NULL, NULL, 0, '2022-02-09 09:10:42', '2022-02-09 09:10:42', NULL, NULL),
(429, 75, NULL, NULL, 0, '2022-02-09 09:12:15', '2022-02-09 09:12:15', NULL, NULL),
(430, 74, NULL, NULL, 0, '2022-02-09 09:13:26', '2022-02-09 09:13:26', NULL, NULL),
(431, 84, NULL, NULL, 0, '2022-02-09 09:14:23', '2022-02-09 09:14:23', NULL, NULL),
(432, 85, NULL, NULL, 0, '2022-02-09 09:15:20', '2022-02-09 09:15:20', NULL, NULL),
(433, 86, NULL, NULL, 0, '2022-02-09 09:16:11', '2022-02-09 09:16:11', NULL, NULL),
(434, 87, NULL, NULL, 0, '2022-02-09 09:16:52', '2022-02-09 09:16:52', NULL, NULL),
(435, 76, NULL, NULL, 0, '2022-02-09 09:17:31', '2022-02-09 09:17:31', NULL, NULL),
(436, 77, NULL, NULL, 0, '2022-02-09 09:18:09', '2022-02-09 09:18:09', NULL, NULL),
(437, 78, NULL, NULL, 0, '2022-02-09 09:22:36', '2022-02-09 09:22:36', NULL, NULL),
(438, 88, NULL, NULL, 0, '2022-02-09 09:23:17', '2022-02-09 09:23:17', NULL, NULL),
(439, 37, '37_TH1205_01', NULL, 0, '2022-02-09 09:31:49', '2022-02-09 09:31:49', 5, 35),
(440, 43, NULL, NULL, 0, '2022-02-09 09:38:49', '2022-02-09 09:38:49', NULL, NULL),
(441, 39, '39_TH1227_01', NULL, 0, '2022-02-09 09:43:12', '2022-02-09 09:43:12', 5, NULL),
(442, 72, '10_1', 0, 1, '2022-02-15 07:53:37', '2022-02-15 07:53:37', 7, 50),
(443, 72, '10_2', 0, 1, '2022-02-15 07:53:37', '2022-02-15 07:53:37', 7, 50),
(444, 72, '10_3', 0, 1, '2022-02-15 07:53:37', '2022-02-15 07:53:37', 7, 50),
(445, 72, '10_4', 0, 1, '2022-02-15 07:53:37', '2022-02-15 07:53:37', 7, 50),
(446, 23, 'hk1_KKA01_5', 0, 0, '2022-02-15 07:55:26', '2022-02-15 07:55:26', 6, 55),
(447, 23, 'hk1_KKA01_6', 0, 0, '2022-02-15 07:55:26', '2022-02-15 07:55:26', 6, 55),
(448, 23, 'hk1_KKA01_BT_6', 1, 0, '2022-02-15 07:55:26', '2022-02-15 07:55:26', 6, 25),
(449, 23, 'hk1_KKA01_BT_7', 1, 0, '2022-02-15 07:55:27', '2022-02-15 07:55:27', 6, 25),
(450, 96, '2100_1', 0, 0, '2022-02-20 11:05:05', '2022-02-20 11:05:05', 1, 40),
(451, 96, '2100_2', 0, 0, '2022-02-20 11:05:05', '2022-02-20 11:05:05', 1, 40),
(452, 59, '2121_TH1002_1', 0, 0, '2022-02-20 11:06:10', '2022-02-20 11:06:10', 1, 30),
(453, 59, '2121_TH1002_2', 0, 0, '2022-02-20 11:06:10', '2022-02-20 11:06:10', 1, 30),
(454, 11, '10_TH123_1', 0, 0, '2022-02-20 11:08:38', '2022-02-20 11:08:38', 8, 40),
(455, 11, '10_TH123_2', 0, 0, '2022-02-20 11:08:38', '2022-02-20 11:08:38', 8, 40),
(456, 84, '123_THAT_1', 0, 0, '2022-02-21 08:36:38', '2022-02-21 08:36:38', 8, 40),
(457, 84, '123_THAT_2', 0, 0, '2022-02-21 08:36:38', '2022-02-21 08:36:38', 8, 40),
(458, 97, '123_TTKT_1', 0, 0, '2022-02-21 08:38:30', '2022-02-21 08:38:30', 8, 35),
(459, 97, '123_TTKT_2', 0, 0, '2022-02-21 08:38:30', '2022-02-21 08:38:30', 8, 35),
(460, 97, '123_Th1234_(BT)_1', 1, 0, '2022-02-25 00:50:43', '2022-02-25 00:50:43', 8, 30),
(461, 97, '123_Th1234_(BT)_2', 1, 0, '2022-02-25 00:50:43', '2022-02-25 00:50:43', 8, 30),
(462, 39, '123_1TH1456_1', 0, 0, '2022-02-28 00:35:27', '2022-02-28 00:35:27', 8, 30),
(463, 39, '123_1TH1456_2', 0, 0, '2022-02-28 00:35:27', '2022-02-28 00:35:27', 8, 30),
(464, 91, '123_TH147_1', 1, 0, '2022-02-28 00:36:47', '2022-02-28 00:36:47', 8, 30),
(465, 91, '123_TH147_2', 1, 0, '2022-02-28 00:36:47', '2022-02-28 00:36:47', 8, 30),
(466, 90, '123_1TH12354_1', 1, 0, '2022-02-28 00:37:52', '2022-02-28 00:37:52', 8, 25),
(467, 90, '123_1TH12354_2', 1, 0, '2022-02-28 00:37:52', '2022-02-28 00:37:52', 8, 25),
(468, 46, '123_1TH145_1', 0, 0, '2022-02-28 00:39:33', '2022-02-28 00:39:33', 8, 30),
(469, 46, '123_1TH145_2', 0, 0, '2022-02-28 00:39:33', '2022-02-28 00:39:33', 8, 30),
(470, 56, '123_TH123_1', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(471, 56, '123_TH123_2', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(472, 56, '123_TH123_3', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(473, 56, '123_TH123_4', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(474, 56, '123_TH123_5', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(475, 56, '123_TH123_6', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(476, 56, '123_TH123_7', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(477, 56, '123_TH123_8', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(478, 56, '123_TH123_9', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(479, 56, '123_TH123_10', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(480, 56, '123_TH123_11', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(481, 56, '123_TH123_12', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(482, 56, '123_TH123_13', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(483, 56, '123_TH123_14', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(484, 56, '123_TH123_15', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(485, 56, '123_TH123_16', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(486, 56, '123_TH123_17', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(487, 56, '123_TH123_18', 0, 0, '2022-02-28 00:42:41', '2022-02-28 00:42:41', 8, 32),
(488, 56, '123_TH123_19', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(489, 56, '123_TH123_20', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(490, 56, '123_TH123_21', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(491, 56, '123_TH123_22', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(492, 56, '123_TH123_23', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(493, 56, '123_TH123_24', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(494, 56, '123_TH123_25', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(495, 56, '123_TH123_26', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(496, 56, '123_TH123_27', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(497, 56, '123_TH123_28', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(498, 56, '123_TH123_29', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(499, 56, '123_TH123_30', 0, 0, '2022-02-28 00:42:42', '2022-02-28 00:42:42', 8, 32),
(500, 26, '2110_1TH1509_(BT)_1', 1, 0, '2022-03-04 02:27:45', '2022-03-04 02:27:45', 8, 30),
(501, 26, '2110_1TH1509_(BT)_2', 1, 0, '2022-03-04 02:27:45', '2022-03-04 02:27:45', 8, 30),
(502, 26, '2110_1TH1509_(BT)_3', 1, 0, '2022-03-04 02:27:45', '2022-03-04 02:27:45', 8, 30),
(503, 103, 'TH123_1', 0, 0, '2022-03-04 02:32:54', '2022-03-04 02:32:54', 8, 3),
(504, 103, 'TH123_2', 0, 0, '2022-03-04 02:32:54', '2022-03-04 02:32:54', 8, 3),
(505, 103, 'TH123_BT_1', 1, 0, '2022-03-04 02:34:10', '2022-03-04 02:34:10', 8, 30),
(506, 103, 'TH123_BT_2', 1, 0, '2022-03-04 02:34:10', '2022-03-04 02:34:10', 8, 30);

-- --------------------------------------------------------

--
-- Table structure for table `lop_hoc_phan_de_xuat`
--

DROP TABLE IF EXISTS `lop_hoc_phan_de_xuat`;
CREATE TABLE IF NOT EXISTS `lop_hoc_phan_de_xuat` (
  `id_lop_hoc_phan_de_xuat` int NOT NULL AUTO_INCREMENT,
  `ma_lop_hoc_phan_de_xuat` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loai_lop_hoc_phan_de_xuat` tinyint DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `id_hoc_ky` int DEFAULT NULL,
  `id_hoc_phan` int DEFAULT NULL,
  `id_dang_ky_khao_sat` int DEFAULT NULL,
  PRIMARY KEY (`id_lop_hoc_phan_de_xuat`),
  KEY `lop_hoc_phan_de_xuat_hoc_ky_id_hoc_ky_fk` (`id_hoc_ky`),
  KEY `lop_hoc_phan_de_xuat_hoc_phan_id_hoc_phan_fk` (`id_hoc_phan`),
  KEY `lop_hoc_phan_de_xuat_dang_ky_khao_sat_id_dang_ky_khao_sat_fk` (`id_dang_ky_khao_sat`)
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lop_hoc_phan_de_xuat`
--

INSERT INTO `lop_hoc_phan_de_xuat` (`id_lop_hoc_phan_de_xuat`, `ma_lop_hoc_phan_de_xuat`, `loai_lop_hoc_phan_de_xuat`, `so_luong`, `id_hoc_ky`, `id_hoc_phan`, `id_dang_ky_khao_sat`) VALUES
(413, 'AT03', 0, 55, 6, 26, 4),
(414, 'AT03', 0, 55, 6, 26, 4),
(415, 'AT03_BT', 1, 25, 6, 26, 4),
(416, 'AT03_BT', 1, 25, 6, 26, 4),
(417, 'AT03_BT', 1, 25, 6, 26, 4),
(418, 'AT03_BT', 1, 25, 6, 26, 4),
(419, 'TH1607', 0, 55, 6, 78, 4),
(420, 'TH1607', 0, 55, 6, 78, 4),
(459, 'KKA', 0, 55, 6, 25, 3),
(460, 'KKA', 0, 55, 6, 25, 3),
(461, 'CB1106', 0, 55, 6, 30, 3),
(462, 'CB1106', 0, 55, 6, 30, 3),
(583, 'KKA01', 0, 55, 6, 23, 12),
(584, 'KKA01', 0, 55, 6, 23, 12),
(585, 'KKA01_BT', 1, 25, 6, 23, 12),
(586, 'KKA01_BT', 1, 25, 6, 23, 12),
(587, 'KKA01_BT', 1, 25, 6, 23, 12),
(588, 'KKA01_BT', 1, 25, 6, 23, 12),
(589, 'NHUNG01', 0, 55, 6, 24, 12),
(590, 'NHUNG01', 0, 55, 6, 24, 12),
(591, 'NHUNG01_BT', 1, 25, 6, 24, 12),
(592, 'NHUNG01_BT', 1, 25, 6, 24, 12),
(593, 'NHUNG01_BT', 1, 25, 6, 24, 12),
(594, 'NHUNG01_BT', 1, 25, 6, 24, 12),
(595, 'KKA', 0, 55, 6, 25, 12),
(596, 'KKA', 0, 55, 6, 25, 12),
(597, 'AT03', 0, 55, 6, 26, 12),
(598, 'AT03', 0, 55, 6, 26, 12),
(599, 'AT03_BT', 1, 25, 6, 26, 12),
(600, 'AT03_BT', 1, 25, 6, 26, 12),
(601, 'AT03_BT', 1, 25, 6, 26, 12),
(602, 'AT03_BT', 1, 25, 6, 26, 12),
(603, 'CT2101', 0, 55, 6, 27, 12),
(604, 'CT2101', 0, 55, 6, 27, 12),
(617, 'vl01', 0, 55, 6, 4, 3),
(618, 'vl01', 0, 55, 6, 4, 3),
(619, 'vl01_BT', 1, 25, 6, 4, 3),
(620, 'vl01_BT', 1, 25, 6, 4, 3),
(621, 'vl01_BT', 1, 25, 6, 4, 3),
(622, 'vl01_BT', 1, 25, 6, 4, 3),
(623, 'KKA', 0, 55, 6, 25, 3),
(624, 'KKA', 0, 55, 6, 25, 3),
(625, 'CB1106', 0, 55, 6, 30, 3),
(626, 'CB1106', 0, 55, 6, 30, 3),
(627, 'vl01', 0, 55, 6, 4, 3),
(628, 'vl01', 0, 55, 6, 4, 3),
(629, 'vl01_BT', 1, 25, 6, 4, 3),
(630, 'vl01_BT', 1, 25, 6, 4, 3),
(631, 'vl01_BT', 1, 25, 6, 4, 3),
(632, 'vl01_BT', 1, 25, 6, 4, 3),
(633, 'KKA', 0, 55, 6, 25, 3),
(634, 'KKA', 0, 55, 6, 25, 3),
(635, 'CB1106', 0, 55, 6, 30, 3),
(636, 'CB1106', 0, 55, 6, 30, 3),
(637, 'vl01', 0, 55, 6, 4, 3),
(638, 'vl01', 0, 55, 6, 4, 3),
(639, 'vl01_BT', 1, 25, 6, 4, 3),
(640, 'vl01_BT', 1, 25, 6, 4, 3),
(641, 'vl01_BT', 1, 25, 6, 4, 3),
(642, 'vl01_BT', 1, 25, 6, 4, 3),
(643, 'KKA', 0, 55, 6, 25, 3),
(644, 'KKA', 0, 55, 6, 25, 3),
(645, 'CB1106', 0, 55, 6, 30, 3),
(646, 'CB1106', 0, 55, 6, 30, 3),
(647, 'vl01', 0, 55, 6, 4, 3),
(648, 'vl01', 0, 55, 6, 4, 3),
(649, 'vl01_BT', 1, 25, 6, 4, 3),
(650, 'vl01_BT', 1, 25, 6, 4, 3),
(651, 'vl01_BT', 1, 25, 6, 4, 3),
(652, 'vl01_BT', 1, 25, 6, 4, 3),
(653, 'KKA', 0, 55, 6, 25, 3),
(654, 'KKA', 0, 55, 6, 25, 3),
(655, 'CB1106', 0, 55, 6, 30, 3),
(656, 'CB1106', 0, 55, 6, 30, 3),
(657, 'vl01', 0, 55, 6, 4, 3),
(658, 'vl01', 0, 55, 6, 4, 3),
(659, 'vl01_BT', 1, 25, 6, 4, 3),
(660, 'vl01_BT', 1, 25, 6, 4, 3),
(661, 'vl01_BT', 1, 25, 6, 4, 3),
(662, 'vl01_BT', 1, 25, 6, 4, 3),
(663, 'KKA', 0, 55, 6, 25, 3),
(664, 'KKA', 0, 55, 6, 25, 3),
(665, 'CB1106', 0, 55, 6, 30, 3),
(666, 'CB1106', 0, 55, 6, 30, 3),
(667, 'vl01', 0, 55, 6, 4, 3),
(668, 'vl01', 0, 55, 6, 4, 3),
(669, 'vl01_BT', 1, 25, 6, 4, 3),
(670, 'vl01_BT', 1, 25, 6, 4, 3),
(671, 'vl01_BT', 1, 25, 6, 4, 3),
(672, 'vl01_BT', 1, 25, 6, 4, 3),
(673, 'KKA', 0, 55, 6, 25, 3),
(674, 'KKA', 0, 55, 6, 25, 3),
(675, 'CB1106', 0, 55, 6, 30, 3),
(676, 'CB1106', 0, 55, 6, 30, 3),
(677, 'vl01', 0, 55, 6, 4, 3),
(678, 'vl01', 0, 55, 6, 4, 3),
(679, 'vl01_BT', 1, 25, 6, 4, 3),
(680, 'vl01_BT', 1, 25, 6, 4, 3),
(681, 'vl01_BT', 1, 25, 6, 4, 3),
(682, 'vl01_BT', 1, 25, 6, 4, 3),
(683, 'KKA', 0, 55, 6, 25, 3),
(684, 'KKA', 0, 55, 6, 25, 3),
(685, 'CB1106', 0, 55, 6, 30, 3),
(686, 'CB1106', 0, 55, 6, 30, 3),
(687, 'vl01', 0, 55, 6, 4, 3),
(688, 'vl01', 0, 55, 6, 4, 3),
(689, 'vl01_BT', 1, 25, 6, 4, 3),
(690, 'vl01_BT', 1, 25, 6, 4, 3),
(691, 'vl01_BT', 1, 25, 6, 4, 3),
(692, 'vl01', 0, 55, 6, 4, 3),
(693, 'vl01_BT', 1, 25, 6, 4, 3),
(694, 'vl01', 0, 55, 6, 4, 3),
(695, 'KKA', 0, 55, 6, 25, 3),
(696, 'KKA', 0, 55, 6, 25, 3),
(697, 'vl01_BT', 1, 25, 6, 4, 3),
(698, 'CB1106', 0, 55, 6, 30, 3),
(699, 'vl01_BT', 1, 25, 6, 4, 3),
(700, 'CB1106', 0, 55, 6, 30, 3),
(701, 'vl01_BT', 1, 25, 6, 4, 3),
(702, 'vl01_BT', 1, 25, 6, 4, 3),
(703, 'KKA', 0, 55, 6, 25, 3),
(704, 'KKA', 0, 55, 6, 25, 3),
(705, 'CB1106', 0, 55, 6, 30, 3),
(706, 'CB1106', 0, 55, 6, 30, 3),
(707, 'vl01', 0, 55, 6, 4, 3),
(708, 'vl01', 0, 55, 6, 4, 3),
(709, 'vl01_BT', 1, 25, 6, 4, 3),
(710, 'vl01_BT', 1, 25, 6, 4, 3),
(711, 'vl01_BT', 1, 25, 6, 4, 3),
(712, 'vl01_BT', 1, 25, 6, 4, 3),
(713, 'KKA', 0, 55, 6, 25, 3),
(714, 'KKA', 0, 55, 6, 25, 3),
(715, 'CB1106', 0, 55, 6, 30, 3),
(716, 'CB1106', 0, 55, 6, 30, 3),
(717, 'KKA01', 0, 55, 6, 23, 4),
(718, 'KKA01', 0, 55, 6, 23, 4),
(719, 'KKA01_BT', 1, 25, 6, 23, 4),
(720, 'KKA01_BT', 1, 25, 6, 23, 4),
(721, 'KKA01_BT', 1, 25, 6, 23, 4),
(722, 'KKA01_BT', 1, 25, 6, 23, 4),
(723, 'AT03', 0, 55, 6, 26, 4),
(724, 'AT03', 0, 55, 6, 26, 4),
(725, 'AT03_BT', 1, 25, 6, 26, 4),
(726, 'AT03_BT', 1, 25, 6, 26, 4),
(727, 'AT03_BT', 1, 25, 6, 26, 4),
(728, 'AT03_BT', 1, 25, 6, 26, 4),
(729, 'TH1607', 0, 55, 6, 78, 4),
(730, 'TH1607', 0, 55, 6, 78, 4),
(731, 'KKA01', 0, 55, 6, 23, 4),
(732, 'KKA01', 0, 55, 6, 23, 4),
(733, 'KKA01_BT', 1, 25, 6, 23, 4),
(734, 'KKA01_BT', 1, 25, 6, 23, 4),
(735, 'KKA01_BT', 1, 25, 6, 23, 4),
(736, 'KKA01_BT', 1, 25, 6, 23, 4),
(737, 'AT03', 0, 55, 6, 26, 4),
(738, 'AT03', 0, 55, 6, 26, 4),
(739, 'AT03_BT', 1, 25, 6, 26, 4),
(740, 'AT03_BT', 1, 25, 6, 26, 4),
(741, 'AT03_BT', 1, 25, 6, 26, 4),
(742, 'AT03_BT', 1, 25, 6, 26, 4),
(743, 'TH1607', 0, 55, 6, 78, 4),
(744, 'TH1607', 0, 55, 6, 78, 4),
(745, 'KKA01', 0, 55, 6, 23, 4),
(746, 'KKA01', 0, 55, 6, 23, 4),
(747, 'KKA01_BT', 1, 25, 6, 23, 4),
(748, 'KKA01_BT', 1, 25, 6, 23, 4),
(749, 'KKA01_BT', 1, 25, 6, 23, 4),
(750, 'KKA01_BT', 1, 25, 6, 23, 4),
(751, 'AT03', 0, 55, 6, 26, 4),
(752, 'AT03', 0, 55, 6, 26, 4),
(753, 'AT03_BT', 1, 25, 6, 26, 4),
(754, 'AT03_BT', 1, 25, 6, 26, 4),
(755, 'AT03_BT', 1, 25, 6, 26, 4),
(756, 'AT03_BT', 1, 25, 6, 26, 4),
(757, 'TH1607', 0, 55, 6, 78, 4),
(758, 'TH1607', 0, 55, 6, 78, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nam_hoc`
--

DROP TABLE IF EXISTS `nam_hoc`;
CREATE TABLE IF NOT EXISTS `nam_hoc` (
  `id_nam_hoc` int NOT NULL AUTO_INCREMENT,
  `ma_nam_hoc` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_nam_hoc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_nam_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nam_hoc`
--

INSERT INTO `nam_hoc` (`id_nam_hoc`, `ma_nam_hoc`, `ten_nam_hoc`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, '2021 - 2022', 'Năm học 2021 - 2022', '2021-10-06 12:08:25', '2021-10-30 12:30:54'),
(2, '2020 - 2021', 'Năm học 2020 - 2021', '2021-10-06 12:51:14', '2021-10-06 12:51:14'),
(18, '2010 - 2011', 'Năm học 2010 - 2011', '2021-10-09 09:19:06', '2021-10-25 06:40:53'),
(19, '2022 - 2023', 'Năm học 2022 - 2023', '2021-11-16 12:46:13', '2021-11-16 12:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `nganh_hoc`
--

DROP TABLE IF EXISTS `nganh_hoc`;
CREATE TABLE IF NOT EXISTS `nganh_hoc` (
  `id_nganh` int NOT NULL AUTO_INCREMENT,
  `ma_nganh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_nganh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_nganh`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nganh_hoc`
--

INSERT INTO `nganh_hoc` (`id_nganh`, `ma_nganh`, `ten_nganh`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(5, 'CNTT19', 'Công nghệ thông tin 19', '2021-10-07 15:14:05', '2021-10-07 15:14:05'),
(11, 'TT19', 'Thông tin 19', '2021-10-11 12:48:33', '2021-10-11 12:48:33'),
(17, 'CNTT20', 'Công nghệ thông tin 2020', '2021-10-11 13:57:07', '2021-10-11 13:57:07'),
(18, 'KT21', 'Kinh tế số 21', '2021-10-11 14:00:19', '2021-10-15 06:45:06'),
(28, 'KTT23', 'Kinh tế 23', '2021-10-15 06:44:57', '2021-10-15 06:44:57'),
(29, 'DDT19', 'Điện điện tử 19', '2021-11-18 06:12:18', '2021-11-18 06:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

DROP TABLE IF EXISTS `phong`;
CREATE TABLE IF NOT EXISTS `phong` (
  `id_phong` int NOT NULL AUTO_INCREMENT,
  `ma_phong` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_phong` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vi_tri` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` int DEFAULT '0',
  `suc_chua` int DEFAULT NULL,
  PRIMARY KEY (`id_phong`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id_phong`, `ma_phong`, `ten_phong`, `vi_tri`, `ngay_tao`, `ngay_cap_nhat`, `trang_thai`, `suc_chua`) VALUES
(1, 'A', 'A205', 'Tầng 2', '2021-10-12 08:48:46', '2021-12-05 12:29:23', 1, 30),
(2, 'B', 'B207', 'Tầng 2', '2021-10-12 08:48:56', '2021-12-05 12:29:17', 1, 50),
(3, 'C', 'C0601', 'Tầng 6', '2021-10-12 08:49:14', '2021-12-05 12:28:57', 1, 80),
(10, 'C', 'C0602', 'Tầng 6', '2021-10-26 13:39:31', '2021-12-06 02:08:21', 1, 80),
(11, 'C', 'C0603', 'Tầng 6', '2021-10-28 13:14:15', '2021-12-06 02:08:31', 1, 80),
(12, 'A', 'A208', 'Tầng 2', '2021-12-05 12:25:01', '2021-12-05 12:29:29', 1, 30),
(13, 'B', 'B105', 'Tầng 1', '2021-12-05 12:27:35', '2021-12-05 12:28:05', 1, 50),
(14, 'B', 'B404', 'Tầng 4', '2021-12-05 12:28:43', '2021-12-05 12:30:11', 1, 50),
(15, 'A', 'A201', 'Tầng 2', '2021-12-06 02:01:55', '2021-12-06 04:01:59', 1, 30),
(16, 'A', 'A202', 'Tầng 2', '2021-12-06 02:03:40', '2021-12-06 02:03:47', 1, 30),
(17, 'A', 'A203', 'Tầng 2', '2021-12-06 02:05:46', '2021-12-06 02:05:53', 1, 30),
(18, 'C', 'C0604', 'Tầng 6', '2021-12-06 02:07:54', '2021-12-06 02:08:09', 1, 30),
(19, 'B', 'B208', 'Tầng 2', '2021-12-06 02:09:07', '2021-12-06 02:09:07', 1, 30),
(20, 'A', 'A204', 'Tầng 2', '2021-12-06 02:15:14', '2021-12-06 02:15:14', 1, 30),
(21, 'B', 'B209', 'Tầng 2', '2021-12-06 02:15:35', '2021-12-06 02:15:35', 1, 50),
(22, 'C', 'C0605', 'Tầng 6', '2021-12-06 02:16:04', '2021-12-06 02:16:04', 1, 30),
(23, 'C', 'C0606', 'Tầng 6', '2021-12-06 02:16:21', '2021-12-06 02:16:21', 1, 80),
(24, 'B', 'B309', 'Tầng 3', '2021-12-06 02:16:43', '2021-12-06 02:16:43', 1, 50),
(25, 'A', 'A207', 'Tầng 2', '2021-12-06 02:17:07', '2021-12-06 02:17:07', 1, 30),
(26, 'A', 'A209', 'Tầng 2', '2021-12-06 02:17:22', '2021-12-06 02:17:22', 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `thoi_gian`
--

DROP TABLE IF EXISTS `thoi_gian`;
CREATE TABLE IF NOT EXISTS `thoi_gian` (
  `id_thoi_gian_hoc` int NOT NULL AUTO_INCREMENT,
  `tiet_ca` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gio_bat_dau` time DEFAULT NULL,
  `gio_ket_thuc` time DEFAULT NULL,
  `trang_thai` int DEFAULT '0',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_thoi_gian_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thoi_gian`
--

INSERT INTO `thoi_gian` (`id_thoi_gian_hoc`, `tiet_ca`, `gio_bat_dau`, `gio_ket_thuc`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(4, 'Tiết 1-2', '07:00:00', '08:20:00', 1, '2021-10-13 03:46:39', '2021-10-13 03:46:39'),
(6, 'Tiết 3-4', '08:40:00', '10:10:00', 1, '2021-10-13 04:16:21', '2021-10-13 04:16:21'),
(7, 'Tiết 3-4-5', '08:40:00', '10:50:00', 0, '2021-10-13 04:18:11', '2021-10-13 04:18:11'),
(8, 'Tiết 6-7', '13:00:00', '14:20:00', 1, '2021-10-13 04:26:35', '2021-10-13 04:26:35'),
(9, 'Tiết 6-7-8', '13:00:00', '15:20:00', 1, '2021-10-13 04:31:52', '2021-10-13 04:31:52'),
(10, 'Tiết 8-9', '14:40:00', '16:10:00', 0, '2021-10-13 04:34:57', '2021-10-13 12:57:12'),
(11, 'Tiết 9-10', '15:30:00', '16:50:00', 1, '2021-10-15 06:48:22', '2021-10-15 06:48:22'),
(12, 'Tiết 11-12', '18:30:00', '19:50:00', 0, '2021-11-18 01:18:00', '2021-11-18 01:18:00'),
(13, 'Tiết 13', '20:00:00', '20:40:00', 0, '2021-11-18 01:18:00', '2021-11-18 01:18:00'),
(14, 'Ca 1', '06:30:00', '09:00:00', 0, '2021-11-18 01:18:00', '2021-11-18 01:18:00'),
(15, 'Ca 2', '09:20:00', '11:30:00', 0, '2021-11-18 01:18:00', '2021-11-18 01:18:00'),
(16, 'Ca 3', '12:30:00', '15:00:00', 0, '2021-11-18 01:18:00', '2021-11-18 01:18:00'),
(17, 'Ca 4', '15:20:00', '17:30:00', 0, '2021-11-18 01:18:00', '2021-11-18 01:18:00'),
(18, 'Ca 1-2', '06:30:00', '11:30:00', 0, '2021-11-18 01:18:01', '2021-11-18 01:18:01'),
(19, 'Ca 3-4', '12:30:00', '17:30:00', 0, '2021-11-18 01:18:01', '2021-11-18 01:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `thoi_khoa_bieu`
--

DROP TABLE IF EXISTS `thoi_khoa_bieu`;
CREATE TABLE IF NOT EXISTS `thoi_khoa_bieu` (
  `id_thoi_khoa_bieu` int NOT NULL AUTO_INCREMENT,
  `id_phong` int NOT NULL,
  `id_thoi_gian_hoc` int NOT NULL,
  `id_giang_vien` int NOT NULL,
  `id_hoc_ky` int NOT NULL,
  `id_lop_hoc_phan` int NOT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_hoc` date DEFAULT NULL,
  `phan_cong_day` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_thoi_khoa_bieu`),
  KEY `thoi_khoa_bieu_giang_vien_id_giang_vien_fk` (`id_giang_vien`),
  KEY `thoi_khoa_bieu_phong_id_phong_fk` (`id_phong`),
  KEY `thoi_khoa_bieu_hoc_ky_id_hoc_ky_fk` (`id_hoc_ky`),
  KEY `thoi_khoa_bieu_lop_hoc_phan_id_lop_hoc_phan_fk` (`id_lop_hoc_phan`),
  KEY `thoi_khoa_bieu_thoi_gian_id_thoi_gian_hoc_fk` (`id_thoi_gian_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=1663 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thoi_khoa_bieu`
--

INSERT INTO `thoi_khoa_bieu` (`id_thoi_khoa_bieu`, `id_phong`, `id_thoi_gian_hoc`, `id_giang_vien`, `id_hoc_ky`, `id_lop_hoc_phan`, `ngay_tao`, `ngay_cap_nhat`, `ngay_hoc`, `phan_cong_day`) VALUES
(233, 1, 17, 1, 7, 232, '2021-12-06 06:48:25', '2021-12-06 06:48:25', '2021-11-21', ''),
(234, 1, 17, 1, 7, 232, '2021-12-06 06:48:25', '2021-12-06 06:48:25', '2021-11-28', ''),
(235, 1, 17, 1, 7, 232, '2021-12-06 06:48:25', '2021-12-06 06:48:25', '2021-12-05', ''),
(236, 1, 17, 1, 7, 232, '2021-12-06 06:48:25', '2021-12-06 06:48:25', '2021-12-12', ''),
(237, 1, 17, 1, 7, 232, '2021-12-06 06:48:25', '2021-12-06 06:48:25', '2021-12-19', ''),
(238, 1, 17, 1, 7, 232, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-12-26', ''),
(239, 11, 16, 18, 7, 231, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-11-21', ''),
(240, 11, 16, 18, 7, 231, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-11-28', ''),
(241, 11, 16, 18, 7, 231, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-12-05', ''),
(242, 11, 16, 18, 7, 231, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-12-12', ''),
(243, 11, 16, 18, 7, 231, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-12-19', ''),
(244, 11, 16, 18, 7, 231, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-12-26', ''),
(245, 14, 17, 19, 7, 230, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-11-21', ''),
(246, 14, 17, 19, 7, 230, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-11-28', ''),
(247, 14, 17, 19, 7, 230, '2021-12-06 06:48:26', '2021-12-06 06:48:26', '2021-12-05', ''),
(248, 14, 17, 19, 7, 230, '2021-12-06 06:48:27', '2021-12-06 06:48:27', '2021-12-12', ''),
(249, 14, 17, 19, 7, 230, '2021-12-06 06:48:27', '2021-12-06 06:48:27', '2021-12-19', ''),
(250, 14, 17, 19, 7, 230, '2021-12-06 06:48:27', '2021-12-06 06:48:27', '2021-12-26', ''),
(251, 10, 12, 19, 7, 230, '2021-12-06 06:48:27', '2021-12-06 06:48:27', '2021-11-21', ''),
(252, 10, 12, 19, 7, 230, '2021-12-06 06:48:27', '2021-12-06 06:48:27', '2021-11-28', ''),
(253, 10, 12, 19, 7, 230, '2021-12-06 06:48:27', '2021-12-06 06:48:27', '2021-12-05', ''),
(254, 10, 12, 19, 7, 230, '2021-12-06 06:48:27', '2021-12-06 06:48:27', '2021-12-12', ''),
(255, 10, 12, 19, 7, 230, '2021-12-06 06:48:27', '2021-12-06 06:48:27', '2021-12-19', ''),
(256, 10, 12, 19, 7, 230, '2021-12-06 06:48:27', '2021-12-06 06:48:27', '2021-12-26', ''),
(257, 15, 16, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-11-21', ''),
(258, 15, 16, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-11-28', ''),
(259, 15, 16, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-12-05', ''),
(260, 15, 16, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-12-12', ''),
(261, 15, 16, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-12-19', ''),
(262, 15, 16, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-12-26', ''),
(263, 12, 19, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-11-21', ''),
(264, 12, 19, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-11-28', ''),
(265, 12, 19, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-12-05', ''),
(266, 12, 19, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-12-12', ''),
(267, 12, 19, 24, 7, 229, '2021-12-06 06:48:28', '2021-12-06 06:48:28', '2021-12-19', ''),
(268, 12, 19, 24, 7, 229, '2021-12-06 06:48:29', '2021-12-06 06:48:29', '2021-12-26', ''),
(269, 1, 10, 146, 7, 228, '2021-12-06 06:48:29', '2021-12-06 06:48:29', '2021-11-21', ''),
(270, 1, 10, 146, 7, 228, '2021-12-06 06:48:29', '2021-12-06 06:48:29', '2021-11-28', ''),
(271, 1, 10, 146, 7, 228, '2021-12-06 06:48:29', '2021-12-06 06:48:29', '2021-12-05', ''),
(272, 1, 10, 146, 7, 228, '2021-12-06 06:48:29', '2021-12-06 06:48:29', '2021-12-12', ''),
(273, 1, 10, 146, 7, 228, '2021-12-06 06:48:29', '2021-12-06 06:48:29', '2021-12-19', ''),
(274, 1, 10, 146, 7, 228, '2021-12-06 06:48:29', '2021-12-06 06:48:29', '2021-12-26', ''),
(275, 16, 12, 146, 7, 228, '2021-12-06 06:48:29', '2021-12-06 06:48:29', '2021-11-21', ''),
(276, 16, 12, 146, 7, 228, '2021-12-06 06:48:29', '2021-12-06 06:48:29', '2021-11-28', ''),
(277, 16, 12, 146, 7, 228, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-12-05', ''),
(278, 16, 12, 146, 7, 228, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-12-12', ''),
(279, 16, 12, 146, 7, 228, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-12-19', ''),
(280, 16, 12, 146, 7, 228, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-12-26', ''),
(281, 1, 19, 144, 7, 227, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-11-21', ''),
(282, 1, 19, 144, 7, 227, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-11-28', ''),
(283, 1, 19, 144, 7, 227, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-12-05', ''),
(284, 1, 19, 144, 7, 227, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-12-12', ''),
(285, 1, 19, 144, 7, 227, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-12-19', ''),
(286, 1, 19, 144, 7, 227, '2021-12-06 06:48:30', '2021-12-06 06:48:30', '2021-12-26', ''),
(293, 10, 10, 1, 7, 226, '2021-12-06 06:48:31', '2021-12-06 06:48:31', '2021-11-21', ''),
(294, 10, 10, 1, 7, 226, '2021-12-06 06:48:31', '2021-12-06 06:48:31', '2021-11-28', ''),
(295, 10, 10, 1, 7, 226, '2021-12-06 06:48:31', '2021-12-06 06:48:31', '2021-12-05', ''),
(296, 10, 10, 1, 7, 226, '2021-12-06 06:48:31', '2021-12-06 06:48:31', '2021-12-12', ''),
(297, 10, 10, 1, 7, 226, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-12-19', ''),
(298, 10, 10, 1, 7, 226, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-12-26', ''),
(299, 11, 10, 24, 7, 225, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-11-21', ''),
(300, 11, 10, 24, 7, 225, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-11-28', ''),
(301, 11, 10, 24, 7, 225, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-12-05', ''),
(302, 11, 10, 24, 7, 225, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-12-12', ''),
(303, 11, 10, 24, 7, 225, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-12-19', ''),
(304, 11, 10, 24, 7, 225, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-12-26', ''),
(305, 2, 19, 144, 7, 224, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-11-21', ''),
(306, 2, 19, 144, 7, 224, '2021-12-06 06:48:32', '2021-12-06 06:48:32', '2021-11-28', ''),
(307, 2, 19, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-12-05', ''),
(308, 2, 19, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-12-12', ''),
(309, 2, 19, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-12-19', ''),
(310, 2, 19, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-12-26', ''),
(311, 12, 11, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-11-21', ''),
(312, 12, 11, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-11-28', ''),
(313, 12, 11, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-12-05', ''),
(314, 12, 11, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-12-12', ''),
(315, 12, 11, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-12-19', ''),
(316, 12, 11, 144, 7, 224, '2021-12-06 06:48:33', '2021-12-06 06:48:33', '2021-12-26', ''),
(317, 14, 12, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-11-21', ''),
(318, 14, 12, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-11-28', ''),
(319, 14, 12, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-12-05', ''),
(320, 14, 12, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-12-12', ''),
(321, 14, 12, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-12-19', ''),
(322, 14, 12, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-12-26', ''),
(323, 11, 9, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-11-21', ''),
(324, 11, 9, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-11-28', ''),
(325, 11, 9, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-12-05', ''),
(326, 11, 9, 24, 7, 223, '2021-12-06 06:48:34', '2021-12-06 06:48:34', '2021-12-12', ''),
(327, 11, 9, 24, 7, 223, '2021-12-06 06:48:35', '2021-12-06 06:48:35', '2021-12-19', ''),
(328, 11, 9, 24, 7, 223, '2021-12-06 06:48:35', '2021-12-06 06:48:35', '2021-12-26', ''),
(329, 2, 11, 19, 7, 222, '2021-12-06 06:48:35', '2021-12-06 06:48:35', '2021-11-21', ''),
(330, 2, 11, 19, 7, 222, '2021-12-06 06:48:35', '2021-12-06 06:48:35', '2021-11-28', ''),
(331, 2, 11, 19, 7, 222, '2021-12-06 06:48:35', '2021-12-06 06:48:35', '2021-12-05', ''),
(332, 2, 11, 19, 7, 222, '2021-12-06 06:48:35', '2021-12-06 06:48:35', '2021-12-12', ''),
(333, 2, 11, 19, 7, 222, '2021-12-06 06:48:35', '2021-12-06 06:48:35', '2021-12-19', ''),
(334, 2, 11, 19, 7, 222, '2021-12-06 06:48:35', '2021-12-06 06:48:35', '2021-12-26', ''),
(335, 1, 13, 19, 7, 222, '2021-12-06 06:48:35', '2021-12-06 06:48:35', '2021-11-21', ''),
(336, 1, 13, 19, 7, 222, '2021-12-06 06:48:36', '2021-12-06 06:48:36', '2021-11-28', ''),
(337, 1, 13, 19, 7, 222, '2021-12-06 06:48:36', '2021-12-06 06:48:36', '2021-12-05', ''),
(338, 1, 13, 19, 7, 222, '2021-12-06 06:48:36', '2021-12-06 06:48:36', '2021-12-12', ''),
(339, 1, 13, 19, 7, 222, '2021-12-06 06:48:36', '2021-12-06 06:48:36', '2021-12-19', ''),
(340, 1, 13, 19, 7, 222, '2021-12-06 06:48:36', '2021-12-06 06:48:36', '2021-12-26', ''),
(347, 3, 19, 19, 7, 221, '2021-12-06 06:48:37', '2021-12-06 06:48:37', '2021-11-21', ''),
(348, 3, 19, 19, 7, 221, '2021-12-06 06:48:37', '2021-12-06 06:48:37', '2021-11-28', ''),
(349, 3, 19, 19, 7, 221, '2021-12-06 06:48:37', '2021-12-06 06:48:37', '2021-12-05', ''),
(350, 3, 19, 19, 7, 221, '2021-12-06 06:48:37', '2021-12-06 06:48:37', '2021-12-12', ''),
(351, 3, 19, 19, 7, 221, '2021-12-06 06:48:37', '2021-12-06 06:48:37', '2021-12-19', ''),
(352, 3, 19, 19, 7, 221, '2021-12-06 06:48:37', '2021-12-06 06:48:37', '2021-12-26', ''),
(353, 16, 13, 18, 7, 218, '2021-12-06 06:48:37', '2021-12-06 06:48:37', '2021-11-21', ''),
(354, 16, 13, 18, 7, 218, '2021-12-06 06:48:37', '2021-12-06 06:48:37', '2021-11-28', ''),
(355, 16, 13, 18, 7, 218, '2021-12-06 06:48:37', '2021-12-06 06:48:37', '2021-12-05', ''),
(356, 16, 13, 18, 7, 218, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-12-12', ''),
(357, 16, 13, 18, 7, 218, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-12-19', ''),
(358, 16, 13, 18, 7, 218, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-12-26', ''),
(359, 13, 14, 18, 7, 218, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-11-21', ''),
(360, 13, 14, 18, 7, 218, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-11-28', ''),
(361, 13, 14, 18, 7, 218, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-12-05', ''),
(362, 13, 14, 18, 7, 218, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-12-12', ''),
(363, 13, 14, 18, 7, 218, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-12-19', ''),
(364, 13, 14, 18, 7, 218, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-12-26', ''),
(365, 10, 16, 1, 7, 214, '2021-12-06 06:48:38', '2021-12-06 06:48:38', '2021-11-21', ''),
(366, 10, 16, 1, 7, 214, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-11-28', ''),
(367, 10, 16, 1, 7, 214, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-12-05', ''),
(368, 10, 16, 1, 7, 214, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-12-12', ''),
(369, 10, 16, 1, 7, 214, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-12-19', ''),
(370, 10, 16, 1, 7, 214, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-12-26', ''),
(371, 1, 13, 146, 7, 215, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-11-21', ''),
(372, 1, 13, 146, 7, 215, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-11-28', ''),
(373, 1, 13, 146, 7, 215, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-12-05', ''),
(374, 1, 13, 146, 7, 215, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-12-12', ''),
(375, 1, 13, 146, 7, 215, '2021-12-06 06:48:39', '2021-12-06 06:48:39', '2021-12-19', ''),
(376, 1, 13, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-12-26', ''),
(377, 14, 18, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-11-21', ''),
(378, 14, 18, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-11-28', ''),
(379, 14, 18, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-12-05', ''),
(380, 14, 18, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-12-12', ''),
(381, 14, 18, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-12-19', ''),
(382, 14, 18, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-12-26', ''),
(383, 14, 8, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-11-21', ''),
(384, 14, 8, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-11-28', ''),
(385, 14, 8, 146, 7, 215, '2021-12-06 06:48:40', '2021-12-06 06:48:40', '2021-12-05', ''),
(386, 14, 8, 146, 7, 215, '2021-12-06 06:48:41', '2021-12-06 06:48:41', '2021-12-12', ''),
(387, 14, 8, 146, 7, 215, '2021-12-06 06:48:41', '2021-12-06 06:48:41', '2021-12-19', ''),
(388, 14, 8, 146, 7, 215, '2021-12-06 06:48:41', '2021-12-06 06:48:41', '2021-12-26', ''),
(389, 11, 8, 146, 7, 215, '2021-12-06 06:48:41', '2021-12-06 06:48:41', '2021-11-21', ''),
(390, 11, 8, 146, 7, 215, '2021-12-06 06:48:41', '2021-12-06 06:48:41', '2021-11-28', ''),
(391, 11, 8, 146, 7, 215, '2021-12-06 06:48:41', '2021-12-06 06:48:41', '2021-12-05', ''),
(392, 11, 8, 146, 7, 215, '2021-12-06 06:48:41', '2021-12-06 06:48:41', '2021-12-12', ''),
(393, 11, 8, 146, 7, 215, '2021-12-06 06:48:41', '2021-12-06 06:48:41', '2021-12-19', ''),
(394, 11, 8, 146, 7, 215, '2021-12-06 06:48:41', '2021-12-06 06:48:41', '2021-12-26', ''),
(395, 2, 10, 1, 6, 232, '2021-12-14 02:03:13', '2021-12-14 02:03:13', '2022-01-02', ''),
(396, 2, 10, 1, 6, 232, '2021-12-14 02:03:13', '2021-12-14 02:03:13', '2022-01-09', ''),
(397, 2, 10, 1, 6, 232, '2021-12-14 02:03:13', '2021-12-14 02:03:13', '2022-01-16', ''),
(398, 2, 10, 1, 6, 232, '2021-12-14 02:03:13', '2021-12-14 02:03:13', '2022-01-23', ''),
(399, 2, 10, 1, 6, 232, '2021-12-14 02:03:13', '2021-12-14 02:03:13', '2022-01-30', ''),
(400, 2, 10, 1, 6, 232, '2021-12-14 02:03:13', '2021-12-14 02:03:13', '2022-02-06', ''),
(401, 2, 10, 1, 6, 232, '2021-12-14 02:03:13', '2021-12-14 02:03:13', '2022-02-13', ''),
(402, 2, 10, 1, 6, 232, '2021-12-14 02:03:13', '2021-12-14 02:03:13', '2022-02-20', ''),
(403, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-02-27', ''),
(404, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-03-06', ''),
(405, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-03-13', ''),
(406, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-03-20', ''),
(407, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-03-27', ''),
(408, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-04-03', ''),
(409, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-04-10', ''),
(410, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-04-17', ''),
(411, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-04-24', ''),
(412, 2, 10, 1, 6, 232, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-05-01', ''),
(413, 16, 17, 18, 6, 231, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-01-02', ''),
(414, 16, 17, 18, 6, 231, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-01-09', ''),
(415, 16, 17, 18, 6, 231, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-01-16', ''),
(416, 16, 17, 18, 6, 231, '2021-12-14 02:03:14', '2021-12-14 02:03:14', '2022-01-23', ''),
(417, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-01-30', ''),
(418, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-02-06', ''),
(419, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-02-13', ''),
(420, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-02-20', ''),
(421, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-02-27', ''),
(422, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-03-06', ''),
(423, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-03-13', ''),
(424, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-03-20', ''),
(425, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-03-27', ''),
(426, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-04-03', ''),
(427, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-04-10', ''),
(428, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-04-17', ''),
(429, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-04-24', ''),
(430, 16, 17, 18, 6, 231, '2021-12-14 02:03:15', '2021-12-14 02:03:15', '2022-05-01', ''),
(431, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-01-02', ''),
(432, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-01-09', ''),
(433, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-01-16', ''),
(434, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-01-23', ''),
(435, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-01-30', ''),
(436, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-02-06', ''),
(437, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-02-13', ''),
(438, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-02-20', ''),
(439, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-02-27', ''),
(440, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-03-06', ''),
(441, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-03-13', ''),
(442, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-03-20', ''),
(443, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-03-27', ''),
(444, 1, 9, 19, 6, 230, '2021-12-14 02:03:16', '2021-12-14 02:03:16', '2022-04-03', ''),
(445, 1, 9, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-04-10', ''),
(446, 1, 9, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-04-17', ''),
(447, 1, 9, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-04-24', ''),
(448, 1, 9, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-05-01', ''),
(449, 15, 19, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-01-02', ''),
(450, 15, 19, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-01-09', ''),
(451, 15, 19, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-01-16', ''),
(452, 15, 19, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-01-23', ''),
(453, 15, 19, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-01-30', ''),
(454, 15, 19, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-02-06', ''),
(455, 15, 19, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-02-13', ''),
(456, 15, 19, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-02-20', ''),
(457, 15, 19, 19, 6, 230, '2021-12-14 02:03:17', '2021-12-14 02:03:17', '2022-02-27', ''),
(458, 15, 19, 19, 6, 230, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-03-06', ''),
(459, 15, 19, 19, 6, 230, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-03-13', ''),
(460, 15, 19, 19, 6, 230, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-03-20', ''),
(461, 15, 19, 19, 6, 230, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-03-27', ''),
(462, 15, 19, 19, 6, 230, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-04-03', ''),
(463, 15, 19, 19, 6, 230, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-04-10', ''),
(464, 15, 19, 19, 6, 230, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-04-17', ''),
(465, 15, 19, 19, 6, 230, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-04-24', ''),
(466, 15, 19, 19, 6, 230, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-05-01', ''),
(467, 12, 8, 24, 6, 229, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-01-02', ''),
(468, 12, 8, 24, 6, 229, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-01-09', ''),
(469, 12, 8, 24, 6, 229, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-01-16', ''),
(470, 12, 8, 24, 6, 229, '2021-12-14 02:03:18', '2021-12-14 02:03:18', '2022-01-23', ''),
(471, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-01-30', ''),
(472, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-02-06', ''),
(473, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-02-13', ''),
(474, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-02-20', ''),
(475, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-02-27', ''),
(476, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-03-06', ''),
(477, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-03-13', ''),
(478, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-03-20', ''),
(479, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-03-27', ''),
(480, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-04-03', ''),
(481, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-04-10', ''),
(482, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-04-17', ''),
(483, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-04-24', ''),
(484, 12, 8, 24, 6, 229, '2021-12-14 02:03:19', '2021-12-14 02:03:19', '2022-05-01', ''),
(485, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-01-02', ''),
(486, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-01-09', ''),
(487, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-01-16', ''),
(488, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-01-23', ''),
(489, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-01-30', ''),
(490, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-02-06', ''),
(491, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-02-13', ''),
(492, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-02-20', ''),
(493, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-02-27', ''),
(494, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-03-06', ''),
(495, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-03-13', ''),
(496, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-03-20', ''),
(497, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-03-27', ''),
(498, 16, 18, 24, 6, 229, '2021-12-14 02:03:20', '2021-12-14 02:03:20', '2022-04-03', ''),
(499, 16, 18, 24, 6, 229, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-04-10', ''),
(500, 16, 18, 24, 6, 229, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-04-17', ''),
(501, 16, 18, 24, 6, 229, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-04-24', ''),
(502, 16, 18, 24, 6, 229, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-05-01', ''),
(503, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-01-02', ''),
(504, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-01-09', ''),
(505, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-01-16', ''),
(506, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-01-23', ''),
(507, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-01-30', ''),
(508, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-02-06', ''),
(509, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-02-13', ''),
(510, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-02-20', ''),
(511, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-02-27', ''),
(512, 12, 9, 146, 6, 228, '2021-12-14 02:03:21', '2021-12-14 02:03:21', '2022-03-06', ''),
(513, 12, 9, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-03-13', ''),
(514, 12, 9, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-03-20', ''),
(515, 12, 9, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-03-27', ''),
(516, 12, 9, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-04-03', ''),
(517, 12, 9, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-04-10', ''),
(518, 12, 9, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-04-17', ''),
(519, 12, 9, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-04-24', ''),
(520, 12, 9, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-05-01', ''),
(521, 15, 14, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-01-02', ''),
(522, 15, 14, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-01-09', ''),
(523, 15, 14, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-01-16', ''),
(524, 15, 14, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-01-23', ''),
(525, 15, 14, 146, 6, 228, '2021-12-14 02:03:22', '2021-12-14 02:03:22', '2022-01-30', ''),
(526, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-02-06', ''),
(527, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-02-13', ''),
(528, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-02-20', ''),
(529, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-02-27', ''),
(530, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-03-06', ''),
(531, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-03-13', ''),
(532, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-03-20', ''),
(533, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-03-27', ''),
(534, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-04-03', ''),
(535, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-04-10', ''),
(536, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-04-17', ''),
(537, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-04-24', ''),
(538, 15, 14, 146, 6, 228, '2021-12-14 02:03:23', '2021-12-14 02:03:23', '2022-05-01', ''),
(539, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-01-02', ''),
(540, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-01-09', ''),
(541, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-01-16', ''),
(542, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-01-23', ''),
(543, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-01-30', ''),
(544, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-02-06', ''),
(545, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-02-13', ''),
(546, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-02-20', ''),
(547, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-02-27', ''),
(548, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-03-06', ''),
(549, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-03-13', ''),
(550, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-03-20', ''),
(551, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-03-27', ''),
(552, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-04-03', ''),
(553, 15, 16, 144, 6, 227, '2021-12-14 02:03:24', '2021-12-14 02:03:24', '2022-04-10', ''),
(554, 15, 16, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-04-17', ''),
(555, 15, 16, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-04-24', ''),
(556, 15, 16, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-05-01', ''),
(557, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-01-02', ''),
(558, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-01-09', ''),
(559, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-01-16', ''),
(560, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-01-23', ''),
(561, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-01-30', ''),
(562, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-02-06', ''),
(563, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-02-13', ''),
(564, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-02-20', ''),
(565, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-02-27', ''),
(566, 14, 9, 144, 6, 227, '2021-12-14 02:03:25', '2021-12-14 02:03:25', '2022-03-06', ''),
(567, 14, 9, 144, 6, 227, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-03-13', ''),
(568, 14, 9, 144, 6, 227, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-03-20', ''),
(569, 14, 9, 144, 6, 227, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-03-27', ''),
(570, 14, 9, 144, 6, 227, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-04-03', ''),
(571, 14, 9, 144, 6, 227, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-04-10', ''),
(572, 14, 9, 144, 6, 227, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-04-17', ''),
(573, 14, 9, 144, 6, 227, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-04-24', ''),
(574, 14, 9, 144, 6, 227, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-05-01', ''),
(575, 14, 17, 1, 6, 226, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-01-02', ''),
(576, 14, 17, 1, 6, 226, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-01-09', ''),
(577, 14, 17, 1, 6, 226, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-01-16', ''),
(578, 14, 17, 1, 6, 226, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-01-23', ''),
(579, 14, 17, 1, 6, 226, '2021-12-14 02:03:26', '2021-12-14 02:03:26', '2022-01-30', ''),
(580, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-02-06', ''),
(581, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-02-13', ''),
(582, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-02-20', ''),
(583, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-02-27', ''),
(584, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2022-03-04 03:08:02', '2022-03-04', ''),
(585, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-03-13', ''),
(586, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-03-20', ''),
(587, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-03-27', ''),
(588, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-04-03', ''),
(589, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-04-10', ''),
(590, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-04-17', ''),
(591, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-04-24', ''),
(592, 14, 17, 1, 6, 226, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-05-01', ''),
(593, 2, 8, 24, 6, 225, '2021-12-14 02:03:27', '2021-12-14 02:03:27', '2022-01-02', ''),
(594, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-01-09', ''),
(595, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-01-16', ''),
(596, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-01-23', ''),
(597, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-01-30', ''),
(598, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-02-06', ''),
(599, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-02-13', ''),
(600, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-02-20', ''),
(601, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-02-27', ''),
(602, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-03-06', ''),
(603, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-03-13', ''),
(604, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-03-20', ''),
(605, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-03-27', ''),
(606, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-04-03', ''),
(607, 2, 8, 24, 6, 225, '2021-12-14 02:03:28', '2021-12-14 02:03:28', '2022-04-10', ''),
(608, 2, 8, 24, 6, 225, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-04-17', ''),
(609, 2, 8, 24, 6, 225, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-04-24', ''),
(610, 2, 8, 24, 6, 225, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-05-01', ''),
(611, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-01-02', ''),
(612, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-01-09', ''),
(613, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-01-16', ''),
(614, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-01-23', ''),
(615, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-01-30', ''),
(616, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-02-06', ''),
(617, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-02-13', ''),
(618, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-02-20', ''),
(619, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-02-27', ''),
(620, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-03-06', ''),
(621, 13, 8, 144, 6, 224, '2021-12-14 02:03:29', '2021-12-14 02:03:29', '2022-03-13', ''),
(622, 13, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-03-20', ''),
(623, 13, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-03-27', ''),
(624, 13, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-04-03', ''),
(625, 13, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-04-10', ''),
(626, 13, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-04-17', ''),
(627, 13, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-04-24', ''),
(628, 13, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-05-01', ''),
(629, 2, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-01-02', ''),
(630, 2, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-01-09', ''),
(631, 2, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-01-16', ''),
(632, 2, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-01-23', ''),
(633, 2, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-01-30', ''),
(634, 2, 8, 144, 6, 224, '2021-12-14 02:03:30', '2021-12-14 02:03:30', '2022-02-06', ''),
(635, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-02-13', ''),
(636, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-02-20', ''),
(637, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-02-27', ''),
(638, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-03-06', ''),
(639, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-03-13', ''),
(640, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-03-20', ''),
(641, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-03-27', ''),
(642, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-04-03', ''),
(643, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-04-10', ''),
(644, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-04-17', ''),
(645, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-04-24', ''),
(646, 2, 8, 144, 6, 224, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-05-01', ''),
(647, 3, 12, 24, 6, 223, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-01-02', ''),
(648, 3, 12, 24, 6, 223, '2021-12-14 02:03:31', '2021-12-14 02:03:31', '2022-01-09', ''),
(649, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-01-16', ''),
(650, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-01-23', ''),
(651, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-01-30', ''),
(652, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-02-06', ''),
(653, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-02-13', ''),
(654, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-02-20', ''),
(655, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-02-27', ''),
(656, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-03-06', ''),
(657, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-03-13', ''),
(658, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-03-20', ''),
(659, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-03-27', ''),
(660, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-04-03', ''),
(661, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-04-10', ''),
(662, 3, 12, 24, 6, 223, '2021-12-14 02:03:32', '2021-12-14 02:03:32', '2022-04-17', ''),
(663, 3, 12, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-04-24', ''),
(664, 3, 12, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-05-01', ''),
(665, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-01-02', ''),
(666, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-01-09', ''),
(667, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-01-16', ''),
(668, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-01-23', ''),
(669, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-01-30', ''),
(670, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-02-06', ''),
(671, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-02-13', ''),
(672, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-02-20', ''),
(673, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-02-27', ''),
(674, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-03-06', ''),
(675, 14, 19, 24, 6, 223, '2021-12-14 02:03:33', '2021-12-14 02:03:33', '2022-03-13', ''),
(676, 14, 19, 24, 6, 223, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-03-20', ''),
(677, 14, 19, 24, 6, 223, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-03-27', ''),
(678, 14, 19, 24, 6, 223, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-04-03', ''),
(679, 14, 19, 24, 6, 223, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-04-10', ''),
(680, 14, 19, 24, 6, 223, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-04-17', ''),
(681, 14, 19, 24, 6, 223, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-04-24', ''),
(682, 14, 19, 24, 6, 223, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-05-01', ''),
(683, 15, 13, 19, 6, 222, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-01-02', ''),
(684, 15, 13, 19, 6, 222, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-01-09', ''),
(685, 15, 13, 19, 6, 222, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-01-16', ''),
(686, 15, 13, 19, 6, 222, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-01-23', ''),
(687, 15, 13, 19, 6, 222, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-01-30', ''),
(688, 15, 13, 19, 6, 222, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-02-06', ''),
(689, 15, 13, 19, 6, 222, '2021-12-14 02:03:34', '2021-12-14 02:03:34', '2022-02-13', ''),
(690, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-02-20', ''),
(691, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-02-27', ''),
(692, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-03-06', ''),
(693, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-03-13', ''),
(694, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-03-20', ''),
(695, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-03-27', ''),
(696, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-04-03', ''),
(697, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-04-10', ''),
(698, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-04-17', ''),
(699, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-04-24', ''),
(700, 15, 13, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-05-01', ''),
(701, 12, 8, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-01-02', ''),
(702, 12, 8, 19, 6, 222, '2021-12-14 02:03:35', '2021-12-14 02:03:35', '2022-01-09', ''),
(703, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-01-16', ''),
(704, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-01-23', ''),
(705, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-01-30', ''),
(706, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-02-06', ''),
(707, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-02-13', ''),
(708, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-02-20', ''),
(709, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-02-27', ''),
(710, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-03-06', ''),
(711, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-03-13', ''),
(712, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-03-20', ''),
(713, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-03-27', ''),
(714, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-04-03', ''),
(715, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-04-10', ''),
(716, 12, 8, 19, 6, 222, '2021-12-14 02:03:36', '2021-12-14 02:03:36', '2022-04-17', ''),
(717, 12, 8, 19, 6, 222, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-04-24', ''),
(718, 12, 8, 19, 6, 222, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-05-01', ''),
(719, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-01-02', ''),
(720, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-01-09', ''),
(721, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-01-16', ''),
(722, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-01-23', ''),
(723, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-01-30', ''),
(724, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-02-06', ''),
(725, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-02-13', ''),
(726, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-02-20', ''),
(727, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-02-27', ''),
(728, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-03-06', ''),
(729, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-03-13', ''),
(730, 1, 15, 19, 6, 221, '2021-12-14 02:03:37', '2021-12-14 02:03:37', '2022-03-20', ''),
(731, 1, 15, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-03-27', ''),
(732, 1, 15, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-04-03', ''),
(733, 1, 15, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-04-10', ''),
(734, 1, 15, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-04-17', ''),
(735, 1, 15, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-04-24', ''),
(736, 1, 15, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-05-01', ''),
(737, 13, 11, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-01-02', ''),
(738, 13, 11, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-01-09', ''),
(739, 13, 11, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-01-16', ''),
(740, 13, 11, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-01-23', ''),
(741, 13, 11, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-01-30', ''),
(742, 13, 11, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-02-06', ''),
(743, 13, 11, 19, 6, 221, '2021-12-14 02:03:38', '2021-12-14 02:03:38', '2022-02-13', ''),
(744, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-02-20', ''),
(745, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-02-27', ''),
(746, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-03-06', ''),
(747, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-03-13', ''),
(748, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-03-20', ''),
(749, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-03-27', ''),
(750, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-04-03', ''),
(751, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-04-10', ''),
(752, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-04-17', ''),
(753, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-04-24', ''),
(754, 13, 11, 19, 6, 221, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-05-01', ''),
(755, 14, 16, 18, 6, 218, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-01-02', ''),
(756, 14, 16, 18, 6, 218, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-01-09', ''),
(757, 14, 16, 18, 6, 218, '2021-12-14 02:03:39', '2021-12-14 02:03:39', '2022-01-16', ''),
(758, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-01-23', ''),
(759, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-01-30', ''),
(760, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-02-06', ''),
(761, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-02-13', ''),
(762, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-02-20', ''),
(763, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-02-27', ''),
(764, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-03-06', ''),
(765, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-03-13', ''),
(766, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-03-20', ''),
(767, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-03-27', ''),
(768, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-04-03', ''),
(769, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-04-10', ''),
(770, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-04-17', ''),
(771, 14, 16, 18, 6, 218, '2021-12-14 02:03:40', '2021-12-14 02:03:40', '2022-04-24', ''),
(772, 14, 16, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-05-01', ''),
(773, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-01-02', ''),
(774, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-01-09', ''),
(775, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-01-16', ''),
(776, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-01-23', ''),
(777, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-01-30', ''),
(778, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-02-06', ''),
(779, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-02-13', ''),
(780, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-02-20', ''),
(781, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-02-27', ''),
(782, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-03-06', ''),
(783, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-03-13', ''),
(784, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-03-20', ''),
(785, 2, 15, 18, 6, 218, '2021-12-14 02:03:41', '2021-12-14 02:03:41', '2022-03-27', ''),
(786, 2, 15, 18, 6, 218, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-04-03', ''),
(787, 2, 15, 18, 6, 218, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-04-10', ''),
(788, 2, 15, 18, 6, 218, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-04-17', ''),
(789, 2, 15, 18, 6, 218, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-04-24', ''),
(790, 2, 15, 18, 6, 218, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-05-01', ''),
(791, 13, 12, 1, 6, 214, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-01-02', ''),
(792, 13, 12, 1, 6, 214, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-01-09', ''),
(793, 13, 12, 1, 6, 214, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-01-16', ''),
(794, 13, 12, 1, 6, 214, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-01-23', ''),
(795, 13, 12, 1, 6, 214, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-01-30', ''),
(796, 13, 12, 1, 6, 214, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-02-06', ''),
(797, 13, 12, 1, 6, 214, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-02-13', ''),
(798, 13, 12, 1, 6, 214, '2021-12-14 02:03:42', '2021-12-14 02:03:42', '2022-02-20', ''),
(799, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-02-27', ''),
(800, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-03-06', ''),
(801, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-03-13', ''),
(802, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-03-20', ''),
(803, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-03-27', ''),
(804, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-04-03', ''),
(805, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-04-10', ''),
(806, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-04-17', '');
INSERT INTO `thoi_khoa_bieu` (`id_thoi_khoa_bieu`, `id_phong`, `id_thoi_gian_hoc`, `id_giang_vien`, `id_hoc_ky`, `id_lop_hoc_phan`, `ngay_tao`, `ngay_cap_nhat`, `ngay_hoc`, `phan_cong_day`) VALUES
(807, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-04-24', ''),
(808, 13, 12, 1, 6, 214, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-05-01', ''),
(809, 14, 14, 146, 6, 215, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-01-02', ''),
(810, 14, 14, 146, 6, 215, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-01-09', ''),
(811, 14, 14, 146, 6, 215, '2021-12-14 02:03:43', '2021-12-14 02:03:43', '2022-01-16', ''),
(812, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-01-23', ''),
(813, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-01-30', ''),
(814, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-02-06', ''),
(815, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-02-13', ''),
(816, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-02-20', ''),
(817, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-02-27', ''),
(818, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-03-06', ''),
(819, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-03-13', ''),
(820, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-03-20', ''),
(821, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-03-27', ''),
(822, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-04-03', ''),
(823, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-04-10', ''),
(824, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-04-17', ''),
(825, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-04-24', ''),
(826, 14, 14, 146, 6, 215, '2021-12-14 02:03:44', '2021-12-14 02:03:44', '2022-05-01', ''),
(827, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-01-02', ''),
(828, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-01-09', ''),
(829, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-01-16', ''),
(830, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-01-23', ''),
(831, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-01-30', ''),
(832, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-02-06', ''),
(833, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-02-13', ''),
(834, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-02-20', ''),
(835, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-02-27', ''),
(836, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-03-06', ''),
(837, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-03-13', ''),
(838, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-03-20', ''),
(839, 16, 11, 146, 6, 215, '2021-12-14 02:03:45', '2021-12-14 02:03:45', '2022-03-27', ''),
(840, 16, 11, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-04-03', ''),
(841, 16, 11, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-04-10', ''),
(842, 16, 11, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-04-17', ''),
(843, 16, 11, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-04-24', ''),
(844, 16, 11, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-05-01', ''),
(845, 3, 18, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-01-02', ''),
(846, 3, 18, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-01-09', ''),
(847, 3, 18, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-01-16', ''),
(848, 3, 18, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-01-23', ''),
(849, 3, 18, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-01-30', ''),
(850, 3, 18, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-02-06', ''),
(851, 3, 18, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-02-13', ''),
(852, 3, 18, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-02-20', ''),
(853, 3, 18, 146, 6, 215, '2021-12-14 02:03:46', '2021-12-14 02:03:46', '2022-02-27', ''),
(854, 3, 18, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-03-06', ''),
(855, 3, 18, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-03-13', ''),
(856, 3, 18, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-03-20', ''),
(857, 3, 18, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-03-27', ''),
(858, 3, 18, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-04-03', ''),
(859, 3, 18, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-04-10', ''),
(860, 3, 18, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-04-17', ''),
(861, 3, 18, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-04-24', ''),
(862, 3, 18, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-05-01', ''),
(863, 1, 11, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-01-02', ''),
(864, 1, 11, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-01-09', ''),
(865, 1, 11, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-01-16', ''),
(866, 1, 11, 146, 6, 215, '2021-12-14 02:03:47', '2021-12-14 02:03:47', '2022-01-23', ''),
(867, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-01-30', ''),
(868, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-02-06', ''),
(869, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-02-13', ''),
(870, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-02-20', ''),
(871, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-02-27', ''),
(872, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-03-06', ''),
(873, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-03-13', ''),
(874, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-03-20', ''),
(875, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-03-27', ''),
(876, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-04-03', ''),
(877, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-04-10', ''),
(878, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-04-17', ''),
(879, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-04-24', ''),
(880, 1, 11, 146, 6, 215, '2021-12-14 02:03:48', '2021-12-14 02:03:48', '2022-05-01', ''),
(881, 10, 8, 18, 8, 1, '2021-12-16 04:08:18', '2021-12-16 04:08:18', '2021-01-03', ''),
(882, 10, 8, 18, 8, 1, '2021-12-16 04:08:18', '2021-12-16 04:08:18', '2021-01-10', ''),
(883, 10, 8, 18, 8, 1, '2021-12-16 04:08:18', '2021-12-16 04:08:18', '2021-01-17', ''),
(884, 10, 8, 18, 8, 1, '2021-12-16 04:08:18', '2021-12-16 04:08:18', '2021-01-24', ''),
(885, 10, 8, 18, 8, 1, '2021-12-16 04:08:18', '2021-12-16 04:08:18', '2021-01-31', ''),
(886, 10, 8, 18, 8, 1, '2021-12-16 04:08:18', '2021-12-16 04:08:18', '2021-02-07', ''),
(887, 10, 8, 18, 8, 1, '2021-12-16 04:08:18', '2021-12-16 04:08:18', '2021-02-14', ''),
(888, 10, 8, 18, 8, 1, '2021-12-16 04:08:18', '2021-12-16 04:08:18', '2021-02-21', ''),
(889, 10, 8, 18, 8, 1, '2021-12-16 04:08:18', '2021-12-16 04:08:18', '2021-02-28', ''),
(890, 10, 8, 18, 8, 1, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-03-07', ''),
(891, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-01-03', ''),
(892, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-01-10', ''),
(893, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-01-17', ''),
(894, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-01-24', ''),
(895, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-01-31', ''),
(896, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-02-07', ''),
(897, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-02-14', ''),
(898, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-02-21', ''),
(899, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-02-28', ''),
(900, 11, 17, 139, 8, 49, '2021-12-16 04:08:19', '2021-12-16 04:08:19', '2021-03-07', ''),
(901, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-01-03', ''),
(902, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-01-10', ''),
(903, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-01-17', ''),
(904, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-01-24', ''),
(905, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-01-31', ''),
(906, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-02-07', ''),
(907, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-02-14', ''),
(908, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-02-21', ''),
(909, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-02-28', ''),
(910, 11, 14, 140, 8, 50, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-03-07', ''),
(911, 10, 8, 141, 8, 51, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-01-03', ''),
(912, 10, 8, 141, 8, 51, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-01-10', ''),
(913, 10, 8, 141, 8, 51, '2021-12-16 04:08:20', '2021-12-16 04:08:20', '2021-01-17', ''),
(914, 10, 8, 141, 8, 51, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-01-24', ''),
(915, 10, 8, 141, 8, 51, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-01-31', ''),
(916, 10, 8, 141, 8, 51, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-02-07', ''),
(917, 10, 8, 141, 8, 51, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-02-14', ''),
(918, 10, 8, 141, 8, 51, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-02-21', ''),
(919, 10, 8, 141, 8, 51, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-02-28', ''),
(920, 10, 8, 141, 8, 51, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-03-07', ''),
(921, 24, 18, 146, 8, 53, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-01-03', ''),
(922, 24, 18, 146, 8, 53, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-01-10', ''),
(923, 24, 18, 146, 8, 53, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-01-17', ''),
(924, 24, 18, 146, 8, 53, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-01-24', ''),
(925, 24, 18, 146, 8, 53, '2021-12-16 04:08:21', '2021-12-16 04:08:21', '2021-01-31', ''),
(926, 24, 18, 146, 8, 53, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-02-07', ''),
(927, 24, 18, 146, 8, 53, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-02-14', ''),
(928, 24, 18, 146, 8, 53, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-02-21', ''),
(929, 24, 18, 146, 8, 53, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-02-28', ''),
(930, 24, 18, 146, 8, 53, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-03-07', ''),
(931, 2, 19, 138, 8, 54, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-01-03', ''),
(932, 2, 19, 138, 8, 54, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-01-10', ''),
(933, 2, 19, 138, 8, 54, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-01-17', ''),
(934, 2, 19, 138, 8, 54, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-01-24', ''),
(935, 2, 19, 138, 8, 54, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-01-31', ''),
(936, 2, 19, 138, 8, 54, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-02-07', ''),
(937, 2, 19, 138, 8, 54, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-02-14', ''),
(938, 2, 19, 138, 8, 54, '2021-12-16 04:08:22', '2021-12-16 04:08:22', '2021-02-21', ''),
(939, 2, 19, 138, 8, 54, '2021-12-16 04:08:23', '2021-12-16 04:08:23', '2021-02-28', ''),
(940, 2, 19, 138, 8, 54, '2021-12-16 04:08:23', '2021-12-16 04:08:23', '2021-03-07', ''),
(941, 10, 8, 18, 8, 1, '2021-12-16 06:42:21', '2021-12-16 06:42:21', '2021-01-03', ''),
(942, 10, 8, 18, 8, 1, '2021-12-16 06:42:21', '2021-12-16 06:42:21', '2021-01-10', ''),
(943, 10, 8, 18, 8, 1, '2021-12-16 06:42:21', '2021-12-16 06:42:21', '2021-01-17', ''),
(944, 10, 8, 18, 8, 1, '2021-12-16 06:42:22', '2021-12-16 06:42:22', '2021-01-24', ''),
(945, 10, 8, 18, 8, 1, '2021-12-16 06:42:22', '2021-12-16 06:42:22', '2021-01-31', ''),
(946, 10, 8, 18, 8, 1, '2021-12-16 06:42:22', '2021-12-16 06:42:22', '2021-02-07', ''),
(947, 10, 8, 18, 8, 1, '2021-12-16 06:42:22', '2021-12-16 06:42:22', '2021-02-14', ''),
(948, 10, 8, 18, 8, 1, '2021-12-16 06:42:22', '2021-12-16 06:42:22', '2021-02-21', ''),
(949, 10, 8, 18, 8, 1, '2021-12-16 06:42:22', '2021-12-16 06:42:22', '2021-02-28', ''),
(950, 10, 8, 18, 8, 1, '2021-12-16 06:42:22', '2021-12-16 06:42:22', '2021-03-07', ''),
(951, 11, 17, 139, 8, 49, '2021-12-16 06:42:22', '2021-12-16 06:42:22', '2021-01-03', ''),
(952, 11, 17, 139, 8, 49, '2021-12-16 06:42:22', '2021-12-16 06:42:22', '2021-01-10', ''),
(953, 11, 17, 139, 8, 49, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-01-17', ''),
(954, 11, 17, 139, 8, 49, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-01-24', ''),
(955, 11, 17, 139, 8, 49, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-01-31', ''),
(956, 11, 17, 139, 8, 49, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-02-07', ''),
(957, 11, 17, 139, 8, 49, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-02-14', ''),
(958, 11, 17, 139, 8, 49, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-02-21', ''),
(959, 11, 17, 139, 8, 49, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-02-28', ''),
(960, 11, 17, 139, 8, 49, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-03-07', ''),
(961, 11, 14, 140, 8, 50, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-01-03', ''),
(962, 11, 14, 140, 8, 50, '2021-12-16 06:42:23', '2021-12-16 06:42:23', '2021-01-10', ''),
(963, 11, 14, 140, 8, 50, '2021-12-16 06:42:24', '2021-12-16 06:42:24', '2021-01-17', ''),
(964, 11, 14, 140, 8, 50, '2021-12-16 06:42:24', '2021-12-16 06:42:24', '2021-01-24', ''),
(965, 11, 14, 140, 8, 50, '2021-12-16 06:42:24', '2021-12-16 06:42:24', '2021-01-31', ''),
(966, 11, 14, 140, 8, 50, '2021-12-16 06:42:24', '2021-12-16 06:42:24', '2021-02-07', ''),
(967, 11, 14, 140, 8, 50, '2021-12-16 06:42:24', '2021-12-16 06:42:24', '2021-02-14', ''),
(968, 11, 14, 140, 8, 50, '2021-12-16 06:42:24', '2021-12-16 06:42:24', '2021-02-21', ''),
(969, 11, 14, 140, 8, 50, '2021-12-16 06:42:24', '2021-12-16 06:42:24', '2021-02-28', ''),
(970, 11, 14, 140, 8, 50, '2021-12-16 06:42:24', '2021-12-16 06:42:24', '2021-03-07', ''),
(971, 10, 8, 141, 8, 51, '2021-12-16 06:42:24', '2021-12-16 06:42:24', '2021-01-03', ''),
(972, 10, 8, 141, 8, 51, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-01-10', ''),
(973, 10, 8, 141, 8, 51, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-01-17', ''),
(974, 10, 8, 141, 8, 51, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-01-24', ''),
(975, 10, 8, 141, 8, 51, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-01-31', ''),
(976, 10, 8, 141, 8, 51, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-02-07', ''),
(977, 10, 8, 141, 8, 51, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-02-14', ''),
(978, 10, 8, 141, 8, 51, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-02-21', ''),
(979, 10, 8, 141, 8, 51, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-02-28', ''),
(980, 10, 8, 141, 8, 51, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-03-07', ''),
(981, 24, 18, 146, 8, 53, '2021-12-16 06:42:25', '2021-12-16 06:42:25', '2021-01-03', ''),
(982, 24, 18, 146, 8, 53, '2021-12-16 06:42:26', '2021-12-16 06:42:26', '2021-01-10', ''),
(983, 24, 18, 146, 8, 53, '2021-12-16 06:42:26', '2021-12-16 06:42:26', '2021-01-17', ''),
(984, 24, 18, 146, 8, 53, '2021-12-16 06:42:26', '2021-12-16 06:42:26', '2021-01-24', ''),
(985, 24, 18, 146, 8, 53, '2021-12-16 06:42:26', '2021-12-16 06:42:26', '2021-01-31', ''),
(986, 24, 18, 146, 8, 53, '2021-12-16 06:42:26', '2021-12-16 06:42:26', '2021-02-07', ''),
(987, 24, 18, 146, 8, 53, '2021-12-16 06:42:26', '2021-12-16 06:42:26', '2021-02-14', ''),
(988, 24, 18, 146, 8, 53, '2021-12-16 06:42:26', '2021-12-16 06:42:26', '2021-02-21', ''),
(989, 24, 18, 146, 8, 53, '2021-12-16 06:42:26', '2021-12-16 06:42:26', '2021-02-28', ''),
(990, 24, 18, 146, 8, 53, '2021-12-16 06:42:26', '2021-12-16 06:42:26', '2021-03-07', ''),
(991, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-01-03', ''),
(992, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-01-10', ''),
(993, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-01-17', ''),
(994, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-01-24', ''),
(995, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-01-31', ''),
(996, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-02-07', ''),
(997, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-02-14', ''),
(998, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-02-21', ''),
(999, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-02-28', ''),
(1000, 2, 19, 138, 8, 54, '2021-12-16 06:42:27', '2021-12-16 06:42:27', '2021-03-07', ''),
(1401, 2, 8, 18, 8, 362, '2021-12-17 03:01:55', '2021-12-17 03:01:55', '2021-01-03', ''),
(1402, 2, 8, 18, 8, 362, '2021-12-17 03:01:55', '2021-12-17 03:01:55', '2021-01-10', ''),
(1403, 2, 8, 18, 8, 362, '2021-12-17 03:01:55', '2021-12-17 03:01:55', '2021-01-17', ''),
(1404, 2, 8, 18, 8, 362, '2021-12-17 03:01:55', '2021-12-17 03:01:55', '2021-01-24', ''),
(1405, 2, 8, 18, 8, 362, '2021-12-17 03:01:55', '2021-12-17 03:01:55', '2021-01-31', ''),
(1406, 2, 8, 18, 8, 362, '2021-12-17 03:01:55', '2021-12-17 03:01:55', '2021-02-07', ''),
(1407, 2, 8, 18, 8, 362, '2021-12-17 03:01:55', '2021-12-17 03:01:55', '2021-02-14', ''),
(1408, 2, 8, 18, 8, 362, '2021-12-17 03:01:56', '2021-12-17 03:01:56', '2021-02-21', ''),
(1409, 2, 8, 18, 8, 362, '2021-12-17 03:01:56', '2021-12-17 03:01:56', '2021-02-28', ''),
(1410, 2, 8, 18, 8, 362, '2021-12-17 03:01:56', '2021-12-17 03:01:56', '2021-03-07', ''),
(1411, 2, 10, 139, 8, 363, '2021-12-17 03:01:56', '2021-12-17 03:01:56', '2021-01-03', ''),
(1412, 2, 10, 139, 8, 363, '2021-12-17 03:01:56', '2021-12-17 03:01:56', '2021-01-10', ''),
(1413, 2, 10, 139, 8, 363, '2021-12-17 03:01:56', '2021-12-17 03:01:56', '2021-01-17', ''),
(1414, 2, 10, 139, 8, 363, '2021-12-17 03:01:57', '2021-12-17 03:01:57', '2021-01-24', ''),
(1415, 2, 10, 139, 8, 363, '2021-12-17 03:01:57', '2021-12-17 03:01:57', '2021-01-31', ''),
(1416, 2, 10, 139, 8, 363, '2021-12-17 03:01:57', '2021-12-17 03:01:57', '2021-02-07', ''),
(1417, 2, 10, 139, 8, 363, '2021-12-17 03:01:57', '2021-12-17 03:01:57', '2021-02-14', ''),
(1418, 2, 10, 139, 8, 363, '2021-12-17 03:01:57', '2021-12-17 03:01:57', '2021-02-21', ''),
(1419, 2, 10, 139, 8, 363, '2021-12-17 03:01:57', '2021-12-17 03:01:57', '2021-02-28', ''),
(1420, 2, 10, 139, 8, 363, '2021-12-17 03:01:57', '2021-12-17 03:01:57', '2021-03-07', ''),
(1421, 2, 14, 140, 8, 364, '2021-12-17 03:01:58', '2021-12-17 03:01:58', '2021-01-03', ''),
(1422, 2, 14, 140, 8, 364, '2021-12-17 03:01:58', '2021-12-17 03:01:58', '2021-01-10', ''),
(1423, 2, 14, 140, 8, 364, '2021-12-17 03:01:58', '2021-12-17 03:01:58', '2021-01-17', ''),
(1424, 2, 14, 140, 8, 364, '2021-12-17 03:01:58', '2021-12-17 03:01:58', '2021-01-24', ''),
(1425, 2, 14, 140, 8, 364, '2021-12-17 03:01:58', '2021-12-17 03:01:58', '2021-01-31', ''),
(1426, 2, 14, 140, 8, 364, '2021-12-17 03:01:58', '2021-12-17 03:01:58', '2021-02-07', ''),
(1427, 2, 14, 140, 8, 364, '2021-12-17 03:01:58', '2021-12-17 03:01:58', '2021-02-14', ''),
(1428, 2, 14, 140, 8, 364, '2021-12-17 03:01:59', '2021-12-17 03:01:59', '2021-02-21', ''),
(1429, 2, 14, 140, 8, 364, '2021-12-17 03:01:59', '2021-12-17 03:01:59', '2021-02-28', ''),
(1430, 2, 14, 140, 8, 364, '2021-12-17 03:01:59', '2021-12-17 03:01:59', '2021-03-07', ''),
(1431, 2, 12, 141, 8, 365, '2021-12-17 03:01:59', '2021-12-17 03:01:59', '2021-01-03', ''),
(1432, 2, 12, 141, 8, 365, '2021-12-17 03:01:59', '2021-12-17 03:01:59', '2021-01-10', ''),
(1433, 2, 12, 141, 8, 365, '2021-12-17 03:01:59', '2021-12-17 03:01:59', '2021-01-17', ''),
(1434, 2, 12, 141, 8, 365, '2021-12-17 03:02:00', '2021-12-17 03:02:00', '2021-01-24', ''),
(1435, 2, 12, 141, 8, 365, '2021-12-17 03:02:00', '2021-12-17 03:02:00', '2021-01-31', ''),
(1436, 2, 12, 141, 8, 365, '2021-12-17 03:02:00', '2021-12-17 03:02:00', '2021-02-07', ''),
(1437, 2, 12, 141, 8, 365, '2021-12-17 03:02:00', '2021-12-17 03:02:00', '2021-02-14', ''),
(1438, 2, 12, 141, 8, 365, '2021-12-17 03:02:00', '2021-12-17 03:02:00', '2021-02-21', ''),
(1439, 2, 12, 141, 8, 365, '2021-12-17 03:02:01', '2021-12-17 03:02:01', '2021-02-28', ''),
(1440, 2, 12, 141, 8, 365, '2021-12-17 03:02:01', '2021-12-17 03:02:01', '2021-03-07', ''),
(1441, 13, 17, 29, 8, 366, '2021-12-17 03:02:01', '2021-12-17 03:02:01', '2021-01-03', ''),
(1442, 13, 17, 29, 8, 366, '2021-12-17 03:02:01', '2021-12-17 03:02:01', '2021-01-10', ''),
(1443, 13, 17, 29, 8, 366, '2021-12-17 03:02:01', '2021-12-17 03:02:01', '2021-01-17', ''),
(1444, 13, 17, 29, 8, 366, '2021-12-17 03:02:01', '2021-12-17 03:02:01', '2021-01-24', ''),
(1445, 13, 17, 29, 8, 366, '2021-12-17 03:02:01', '2021-12-17 03:02:01', '2021-01-31', ''),
(1446, 13, 17, 29, 8, 366, '2021-12-17 03:02:02', '2021-12-17 03:02:02', '2021-02-07', ''),
(1447, 13, 17, 29, 8, 366, '2021-12-17 03:02:02', '2021-12-17 03:02:02', '2021-02-14', ''),
(1448, 13, 17, 29, 8, 366, '2021-12-17 03:02:02', '2021-12-17 03:02:02', '2021-02-21', ''),
(1449, 13, 17, 29, 8, 366, '2021-12-17 03:02:02', '2021-12-17 03:02:02', '2021-02-28', ''),
(1450, 13, 17, 29, 8, 366, '2021-12-17 03:02:02', '2021-12-17 03:02:02', '2021-03-07', ''),
(1451, 13, 18, 24, 8, 367, '2021-12-17 03:02:02', '2021-12-17 03:02:02', '2021-01-03', ''),
(1452, 13, 18, 24, 8, 367, '2021-12-17 03:02:03', '2021-12-17 03:02:03', '2021-01-10', ''),
(1453, 13, 18, 24, 8, 367, '2021-12-17 03:02:03', '2021-12-17 03:02:03', '2021-01-17', ''),
(1454, 13, 18, 24, 8, 367, '2021-12-17 03:02:03', '2021-12-17 03:02:03', '2021-01-24', ''),
(1455, 13, 18, 24, 8, 367, '2021-12-17 03:02:03', '2021-12-17 03:02:03', '2021-01-31', ''),
(1456, 13, 18, 24, 8, 367, '2021-12-17 03:02:03', '2021-12-17 03:02:03', '2021-02-07', ''),
(1457, 13, 18, 24, 8, 367, '2021-12-17 03:02:03', '2021-12-17 03:02:03', '2021-02-14', ''),
(1458, 13, 18, 24, 8, 367, '2021-12-17 03:02:03', '2021-12-17 03:02:03', '2021-02-21', ''),
(1459, 13, 18, 24, 8, 367, '2021-12-17 03:02:03', '2021-12-17 03:02:03', '2021-02-28', ''),
(1460, 13, 18, 24, 8, 367, '2021-12-17 03:02:04', '2021-12-17 03:02:04', '2021-03-07', ''),
(1461, 2, 10, 146, 8, 368, '2021-12-17 03:02:04', '2021-12-17 03:02:04', '2021-01-03', ''),
(1462, 2, 10, 146, 8, 368, '2021-12-17 03:02:04', '2021-12-17 03:02:04', '2021-01-10', ''),
(1463, 2, 10, 146, 8, 368, '2021-12-17 03:02:04', '2021-12-17 03:02:04', '2021-01-17', ''),
(1464, 2, 10, 146, 8, 368, '2021-12-17 03:02:04', '2021-12-17 03:02:04', '2021-01-24', ''),
(1465, 2, 10, 146, 8, 368, '2021-12-17 03:02:05', '2021-12-17 03:02:05', '2021-01-31', ''),
(1466, 2, 10, 146, 8, 368, '2021-12-17 03:02:05', '2021-12-17 03:02:05', '2021-02-07', ''),
(1467, 2, 10, 146, 8, 368, '2021-12-17 03:02:05', '2021-12-17 03:02:05', '2021-02-14', ''),
(1468, 2, 10, 146, 8, 368, '2021-12-17 03:02:05', '2021-12-17 03:02:05', '2021-02-21', ''),
(1469, 2, 10, 146, 8, 368, '2021-12-17 03:02:05', '2021-12-17 03:02:05', '2021-02-28', ''),
(1470, 2, 10, 146, 8, 368, '2021-12-17 03:02:05', '2021-12-17 03:02:05', '2021-03-07', ''),
(1471, 13, 11, 144, 8, 369, '2021-12-17 03:02:05', '2021-12-17 03:02:05', '2021-01-03', ''),
(1472, 13, 11, 144, 8, 369, '2021-12-17 03:02:06', '2021-12-17 03:02:06', '2021-01-10', ''),
(1473, 13, 11, 144, 8, 369, '2021-12-17 03:02:06', '2021-12-17 03:02:06', '2021-01-17', ''),
(1474, 13, 11, 144, 8, 369, '2021-12-17 03:02:06', '2021-12-17 03:02:06', '2021-01-24', ''),
(1475, 13, 11, 144, 8, 369, '2021-12-17 03:02:06', '2021-12-17 03:02:06', '2021-01-31', ''),
(1476, 13, 11, 144, 8, 369, '2021-12-17 03:02:06', '2021-12-17 03:02:06', '2021-02-07', ''),
(1477, 13, 11, 144, 8, 369, '2021-12-17 03:02:06', '2021-12-17 03:02:06', '2021-02-14', ''),
(1478, 13, 11, 144, 8, 369, '2021-12-17 03:02:06', '2021-12-17 03:02:06', '2021-02-21', ''),
(1479, 13, 11, 144, 8, 369, '2021-12-17 03:02:07', '2021-12-17 03:02:07', '2021-02-28', ''),
(1480, 13, 11, 144, 8, 369, '2021-12-17 03:02:07', '2021-12-17 03:02:07', '2021-03-07', ''),
(1481, 13, 12, 138, 8, 370, '2021-12-17 03:02:07', '2021-12-17 03:02:07', '2021-01-03', ''),
(1482, 13, 12, 138, 8, 370, '2021-12-17 03:02:07', '2021-12-17 03:02:07', '2021-01-10', ''),
(1483, 13, 12, 138, 8, 370, '2021-12-17 03:02:07', '2021-12-17 03:02:07', '2021-01-17', ''),
(1484, 13, 12, 138, 8, 370, '2021-12-17 03:02:07', '2021-12-17 03:02:07', '2021-01-24', ''),
(1485, 13, 12, 138, 8, 370, '2021-12-17 03:02:07', '2021-12-17 03:02:07', '2021-01-31', ''),
(1486, 13, 12, 138, 8, 370, '2021-12-17 03:02:08', '2021-12-17 03:02:08', '2021-02-07', ''),
(1487, 13, 12, 138, 8, 370, '2021-12-17 03:02:08', '2021-12-17 03:02:08', '2021-02-14', ''),
(1488, 13, 12, 138, 8, 370, '2021-12-17 03:02:08', '2021-12-17 03:02:08', '2021-02-21', ''),
(1489, 13, 12, 138, 8, 370, '2021-12-17 03:02:08', '2021-12-17 03:02:08', '2021-02-28', ''),
(1490, 13, 12, 138, 8, 370, '2021-12-17 03:02:08', '2021-12-17 03:02:08', '2021-03-07', ''),
(1491, 13, 16, 26, 8, 371, '2021-12-17 03:02:08', '2021-12-17 03:02:08', '2021-01-03', ''),
(1492, 13, 16, 26, 8, 371, '2021-12-17 03:02:09', '2021-12-17 03:02:09', '2021-01-10', ''),
(1493, 13, 16, 26, 8, 371, '2021-12-17 03:02:09', '2021-12-17 03:02:09', '2021-01-17', ''),
(1494, 13, 16, 26, 8, 371, '2021-12-17 03:02:09', '2021-12-17 03:02:09', '2021-01-24', ''),
(1495, 13, 16, 26, 8, 371, '2021-12-17 03:02:09', '2021-12-17 03:02:09', '2021-01-31', ''),
(1496, 13, 16, 26, 8, 371, '2021-12-17 03:02:09', '2021-12-17 03:02:09', '2021-02-07', ''),
(1497, 13, 16, 26, 8, 371, '2021-12-17 03:02:09', '2021-12-17 03:02:09', '2021-02-14', ''),
(1498, 13, 16, 26, 8, 371, '2021-12-17 03:02:09', '2021-12-17 03:02:09', '2021-02-21', ''),
(1499, 13, 16, 26, 8, 371, '2021-12-17 03:02:10', '2021-12-17 03:02:10', '2021-02-28', ''),
(1500, 13, 16, 26, 8, 371, '2021-12-17 03:02:10', '2021-12-17 03:02:10', '2021-03-07', ''),
(1501, 23, 12, 147, 8, 362, '2021-12-17 03:02:10', '2021-12-17 03:02:10', '2021-01-03', ''),
(1502, 23, 12, 147, 8, 362, '2021-12-17 03:02:10', '2021-12-17 03:02:10', '2021-01-10', ''),
(1503, 23, 12, 147, 8, 362, '2021-12-17 03:02:10', '2021-12-17 03:02:10', '2021-01-17', ''),
(1504, 23, 12, 147, 8, 362, '2021-12-17 03:02:10', '2021-12-17 03:02:10', '2021-01-24', ''),
(1505, 23, 12, 147, 8, 362, '2021-12-17 03:02:10', '2021-12-17 03:02:10', '2021-01-31', ''),
(1506, 23, 12, 147, 8, 362, '2021-12-17 03:02:11', '2021-12-17 03:02:11', '2021-02-07', ''),
(1507, 23, 12, 147, 8, 362, '2021-12-17 03:02:11', '2021-12-17 03:02:11', '2021-02-14', ''),
(1508, 23, 12, 147, 8, 362, '2021-12-17 03:02:11', '2021-12-17 03:02:11', '2021-02-21', ''),
(1509, 23, 12, 147, 8, 362, '2021-12-17 03:02:11', '2021-12-17 03:02:11', '2021-02-28', ''),
(1510, 23, 12, 147, 8, 362, '2021-12-17 03:02:11', '2021-12-17 03:02:11', '2021-03-07', ''),
(1511, 10, 15, 149, 8, 363, '2021-12-17 03:02:11', '2021-12-17 03:02:11', '2021-01-03', ''),
(1512, 10, 15, 149, 8, 363, '2021-12-17 03:02:12', '2021-12-17 03:02:12', '2021-01-10', ''),
(1513, 10, 15, 149, 8, 363, '2021-12-17 03:02:12', '2021-12-17 03:02:12', '2021-01-17', ''),
(1514, 10, 15, 149, 8, 363, '2021-12-17 03:02:12', '2021-12-17 03:02:12', '2021-01-24', ''),
(1515, 10, 15, 149, 8, 363, '2021-12-17 03:02:12', '2021-12-17 03:02:12', '2021-01-31', ''),
(1516, 10, 15, 149, 8, 363, '2021-12-17 03:02:12', '2021-12-17 03:02:12', '2021-02-07', ''),
(1517, 10, 15, 149, 8, 363, '2021-12-17 03:02:12', '2021-12-17 03:02:12', '2021-02-14', ''),
(1518, 10, 15, 149, 8, 363, '2021-12-17 03:02:12', '2021-12-17 03:02:12', '2021-02-21', ''),
(1519, 10, 15, 149, 8, 363, '2021-12-17 03:02:13', '2021-12-17 03:02:13', '2021-02-28', ''),
(1520, 10, 15, 149, 8, 363, '2021-12-17 03:02:13', '2021-12-17 03:02:13', '2021-03-07', ''),
(1521, 11, 9, 50, 8, 364, '2021-12-17 03:02:13', '2021-12-17 03:02:13', '2021-01-03', ''),
(1522, 11, 9, 50, 8, 364, '2021-12-17 03:02:13', '2021-12-17 03:02:13', '2021-01-10', ''),
(1523, 11, 9, 50, 8, 364, '2021-12-17 03:02:13', '2021-12-17 03:02:13', '2021-01-17', ''),
(1524, 11, 9, 50, 8, 364, '2021-12-17 03:02:13', '2021-12-17 03:02:13', '2021-01-24', ''),
(1525, 11, 9, 50, 8, 364, '2021-12-17 03:02:14', '2021-12-17 03:02:14', '2021-01-31', ''),
(1526, 11, 9, 50, 8, 364, '2021-12-17 03:02:14', '2021-12-17 03:02:14', '2021-02-07', ''),
(1527, 11, 9, 50, 8, 364, '2021-12-17 03:02:14', '2021-12-17 03:02:14', '2021-02-14', ''),
(1528, 11, 9, 50, 8, 364, '2021-12-17 03:02:14', '2021-12-17 03:02:14', '2021-02-21', ''),
(1529, 11, 9, 50, 8, 364, '2021-12-17 03:02:14', '2021-12-17 03:02:14', '2021-02-28', ''),
(1530, 11, 9, 50, 8, 364, '2021-12-17 03:02:14', '2021-12-17 03:02:14', '2021-03-07', ''),
(1531, 10, 8, 148, 8, 365, '2021-12-17 03:02:15', '2021-12-17 03:02:15', '2021-01-03', ''),
(1532, 10, 8, 148, 8, 365, '2021-12-17 03:02:15', '2021-12-17 03:02:15', '2021-01-10', ''),
(1533, 10, 8, 148, 8, 365, '2021-12-17 03:02:15', '2021-12-17 03:02:15', '2021-01-17', ''),
(1534, 10, 8, 148, 8, 365, '2021-12-17 03:02:15', '2021-12-17 03:02:15', '2021-01-24', ''),
(1535, 10, 8, 148, 8, 365, '2021-12-17 03:02:15', '2021-12-17 03:02:15', '2021-01-31', ''),
(1536, 10, 8, 148, 8, 365, '2021-12-17 03:02:15', '2021-12-17 03:02:15', '2021-02-07', ''),
(1537, 10, 8, 148, 8, 365, '2021-12-17 03:02:15', '2021-12-17 03:02:15', '2021-02-14', ''),
(1538, 10, 8, 148, 8, 365, '2021-12-17 03:02:16', '2021-12-17 03:02:16', '2021-02-21', ''),
(1539, 10, 8, 148, 8, 365, '2021-12-17 03:02:16', '2021-12-17 03:02:16', '2021-02-28', ''),
(1540, 10, 8, 148, 8, 365, '2021-12-17 03:02:16', '2021-12-17 03:02:16', '2021-03-07', ''),
(1541, 11, 15, 150, 8, 366, '2021-12-17 03:02:16', '2021-12-17 03:02:16', '2021-01-03', ''),
(1542, 11, 15, 150, 8, 366, '2021-12-17 03:02:16', '2021-12-17 03:02:16', '2021-01-10', ''),
(1543, 11, 15, 150, 8, 366, '2021-12-17 03:02:16', '2021-12-17 03:02:16', '2021-01-17', ''),
(1544, 11, 15, 150, 8, 366, '2021-12-17 03:02:17', '2021-12-17 03:02:17', '2021-01-24', ''),
(1545, 11, 15, 150, 8, 366, '2021-12-17 03:02:17', '2021-12-17 03:02:17', '2021-01-31', ''),
(1546, 11, 15, 150, 8, 366, '2021-12-17 03:02:17', '2021-12-17 03:02:17', '2021-02-07', ''),
(1547, 11, 15, 150, 8, 366, '2021-12-17 03:02:17', '2021-12-17 03:02:17', '2021-02-14', ''),
(1548, 11, 15, 150, 8, 366, '2021-12-17 03:02:17', '2021-12-17 03:02:17', '2021-02-21', ''),
(1549, 11, 15, 150, 8, 366, '2021-12-17 03:02:17', '2021-12-17 03:02:17', '2021-02-28', ''),
(1550, 11, 15, 150, 8, 366, '2021-12-17 03:02:18', '2021-12-17 03:02:18', '2021-03-07', ''),
(1561, 11, 18, 142, 8, 368, '2021-12-17 03:02:20', '2021-12-17 03:02:20', '2021-01-03', ''),
(1562, 11, 18, 142, 8, 368, '2021-12-17 03:02:20', '2021-12-17 03:02:20', '2021-01-10', ''),
(1563, 11, 18, 142, 8, 368, '2021-12-17 03:02:20', '2021-12-17 03:02:20', '2021-01-17', ''),
(1564, 11, 18, 142, 8, 368, '2021-12-17 03:02:20', '2021-12-17 03:02:20', '2021-01-24', ''),
(1565, 11, 18, 142, 8, 368, '2021-12-17 03:02:20', '2021-12-17 03:02:20', '2021-01-31', ''),
(1566, 11, 18, 142, 8, 368, '2021-12-17 03:02:20', '2021-12-17 03:02:20', '2021-02-07', ''),
(1567, 11, 18, 142, 8, 368, '2021-12-17 03:02:20', '2021-12-17 03:02:20', '2021-02-14', ''),
(1568, 11, 18, 142, 8, 368, '2021-12-17 03:02:21', '2021-12-17 03:02:21', '2021-02-21', ''),
(1569, 11, 18, 142, 8, 368, '2021-12-17 03:02:21', '2021-12-17 03:02:21', '2021-02-28', ''),
(1570, 11, 18, 142, 8, 368, '2021-12-17 03:02:21', '2021-12-17 03:02:21', '2021-03-07', ''),
(1571, 10, 12, 143, 8, 369, '2021-12-17 03:02:21', '2021-12-17 03:02:21', '2021-01-03', ''),
(1572, 10, 12, 143, 8, 369, '2021-12-17 03:02:21', '2021-12-17 03:02:21', '2021-01-10', ''),
(1573, 10, 12, 143, 8, 369, '2021-12-17 03:02:21', '2021-12-17 03:02:21', '2021-01-17', ''),
(1574, 10, 12, 143, 8, 369, '2021-12-17 03:02:22', '2021-12-17 03:02:22', '2021-01-24', ''),
(1575, 10, 12, 143, 8, 369, '2021-12-17 03:02:22', '2021-12-17 03:02:22', '2021-01-31', ''),
(1576, 10, 12, 143, 8, 369, '2021-12-17 03:02:22', '2021-12-17 03:02:22', '2021-02-07', ''),
(1577, 10, 12, 143, 8, 369, '2021-12-17 03:02:22', '2021-12-17 03:02:22', '2021-02-14', ''),
(1578, 10, 12, 143, 8, 369, '2021-12-17 03:02:22', '2021-12-17 03:02:22', '2021-02-21', ''),
(1579, 10, 12, 143, 8, 369, '2021-12-17 03:02:22', '2021-12-17 03:02:22', '2021-02-28', ''),
(1580, 10, 12, 143, 8, 369, '2021-12-17 03:02:23', '2021-12-17 03:02:23', '2021-03-07', ''),
(1581, 23, 12, 145, 8, 370, '2021-12-17 03:02:23', '2021-12-17 03:02:23', '2021-01-03', ''),
(1582, 23, 12, 145, 8, 370, '2021-12-17 03:02:23', '2021-12-17 03:02:23', '2021-01-10', ''),
(1583, 23, 12, 145, 8, 370, '2021-12-17 03:02:23', '2021-12-17 03:02:23', '2021-01-17', ''),
(1584, 23, 12, 145, 8, 370, '2021-12-17 03:02:23', '2021-12-17 03:02:23', '2021-01-24', ''),
(1585, 23, 12, 145, 8, 370, '2021-12-17 03:02:23', '2021-12-17 03:02:23', '2021-01-31', ''),
(1586, 23, 12, 145, 8, 370, '2021-12-17 03:02:24', '2021-12-17 03:02:24', '2021-02-07', ''),
(1587, 23, 12, 145, 8, 370, '2021-12-17 03:02:24', '2021-12-17 03:02:24', '2021-02-14', ''),
(1588, 23, 12, 145, 8, 370, '2021-12-17 03:02:24', '2021-12-17 03:02:24', '2021-02-21', ''),
(1589, 23, 12, 145, 8, 370, '2021-12-17 03:02:24', '2021-12-17 03:02:24', '2021-02-28', ''),
(1590, 23, 12, 145, 8, 370, '2021-12-17 03:02:24', '2021-12-17 03:02:24', '2021-03-07', ''),
(1591, 23, 9, 19, 8, 371, '2021-12-17 03:02:24', '2021-12-17 03:02:24', '2021-01-03', ''),
(1592, 23, 9, 19, 8, 371, '2021-12-17 03:02:25', '2021-12-17 03:02:25', '2021-01-10', ''),
(1593, 23, 9, 19, 8, 371, '2021-12-17 03:02:25', '2021-12-17 03:02:25', '2021-01-17', ''),
(1594, 23, 9, 19, 8, 371, '2021-12-17 03:02:25', '2021-12-17 03:02:25', '2021-01-24', ''),
(1595, 23, 9, 19, 8, 371, '2021-12-17 03:02:25', '2021-12-17 03:02:25', '2021-01-31', ''),
(1596, 23, 9, 19, 8, 371, '2021-12-17 03:02:25', '2021-12-17 03:02:25', '2021-02-07', ''),
(1597, 23, 9, 19, 8, 371, '2021-12-17 03:02:25', '2021-12-17 03:02:25', '2021-02-14', ''),
(1598, 23, 9, 19, 8, 371, '2021-12-17 03:02:26', '2021-12-17 03:02:26', '2021-02-21', ''),
(1599, 23, 9, 19, 8, 371, '2021-12-17 03:02:26', '2021-12-17 03:02:26', '2021-02-28', ''),
(1600, 23, 9, 19, 8, 371, '2021-12-17 03:02:26', '2021-12-17 03:02:26', '2021-03-07', ''),
(1608, 16, 4, 51, 3, 390, '2022-02-15 03:38:49', '2022-02-15 03:38:49', '2021-12-15', NULL),
(1609, 16, 6, 51, 3, 394, '2022-02-15 03:46:17', '2022-02-15 03:46:17', '2021-12-08', NULL),
(1610, 16, 9, 51, 3, 393, '2022-02-15 03:46:18', '2022-02-15 03:46:18', '2021-12-08', NULL),
(1611, 12, 8, 51, 3, 379, '2022-02-15 03:46:18', '2022-02-15 03:46:18', '2021-12-08', NULL),
(1612, 16, 6, 51, 3, 59, '2022-02-15 03:50:34', '2022-02-15 03:50:34', '2021-12-09', NULL),
(1613, 3, 19, 51, 3, 395, '2022-02-15 03:50:35', '2022-02-15 03:50:35', '2021-12-08', NULL),
(1614, 22, 6, 51, 3, 392, '2022-02-15 03:53:02', '2022-02-15 03:53:02', '2022-02-08', NULL),
(1615, 24, 11, 51, 3, 381, '2022-02-15 03:53:02', '2022-02-15 03:53:02', '2022-02-15', NULL),
(1616, 20, 6, 51, 5, 397, '2022-02-15 06:30:54', '2022-02-15 06:30:54', '2022-02-08', NULL),
(1618, 19, 4, 51, 5, 439, '2022-02-15 06:39:05', '2022-02-15 06:39:05', '2022-02-01', NULL),
(1631, 25, 9, 51, 5, 372, '2022-02-15 07:18:03', '2022-02-15 07:18:03', '2022-02-08', NULL),
(1632, 17, 6, 51, 5, 441, '2022-02-15 07:19:19', '2022-02-15 07:19:19', '2022-02-22', NULL),
(1633, 10, 4, 51, 5, 396, '2022-02-15 07:20:26', '2022-02-15 07:20:26', '2022-02-23', NULL),
(1635, 10, 4, 51, 5, 402, '2022-02-15 07:23:16', '2022-02-15 07:23:16', '2022-02-08', NULL),
(1636, 10, 4, 51, 1, 403, '2022-02-15 07:25:13', '2022-02-15 07:25:13', '2021-12-08', NULL),
(1639, 10, 4, 51, 5, 396, '2022-02-16 07:05:34', '2022-02-16 07:05:34', '2022-02-16', NULL),
(1641, 10, 4, 51, 5, 396, '2022-02-16 09:29:04', '2022-02-16 09:29:04', '2022-03-02', NULL),
(1642, 3, 12, 29, 8, 456, '2022-02-21 08:36:54', '2022-02-21 08:36:54', '2022-02-01', ''),
(1643, 13, 10, 141, 8, 457, '2022-02-21 08:37:11', '2022-02-21 08:37:11', '2022-02-02', ''),
(1644, 13, 11, 26, 8, 458, '2022-02-21 08:38:43', '2022-02-21 08:38:43', '2022-02-02', ''),
(1645, 16, 12, 29, 8, 459, '2022-02-21 08:38:56', '2022-02-21 08:38:56', '2022-02-09', ''),
(1646, 11, 6, 19, 8, 460, '2022-02-25 00:51:02', '2022-02-25 00:51:02', '2022-02-02', ''),
(1647, 11, 8, 29, 8, 461, '2022-02-25 00:51:22', '2022-02-25 00:51:22', '2022-02-01', ''),
(1648, 11, 9, 140, 8, 462, '2022-02-28 00:36:05', '2022-02-28 00:36:05', '2022-02-16', ''),
(1649, 11, 8, 141, 8, 463, '2022-02-28 00:36:18', '2022-02-28 00:36:18', '2022-02-03', ''),
(1650, 13, 9, 29, 8, 466, '2022-02-28 00:38:24', '2022-02-28 00:38:24', '2022-02-03', ''),
(1651, 15, 9, 50, 8, 466, '2022-02-28 00:38:36', '2022-02-28 00:38:36', '2022-02-01', ''),
(1652, 16, 9, 143, 8, 467, '2022-02-28 00:38:48', '2022-02-28 00:38:48', '2022-02-02', ''),
(1653, 15, 11, 145, 8, 468, '2022-02-28 00:39:48', '2022-02-28 00:39:48', '2022-02-02', ''),
(1654, 14, 12, 50, 8, 469, '2022-02-28 00:40:02', '2022-02-28 00:40:02', '2022-02-02', ''),
(1655, 10, 6, 51, 5, 439, '2022-03-04 01:39:34', '2022-03-04 02:15:56', '2022-03-04', ''),
(1656, 11, 8, 51, 5, 372, '2022-03-04 02:04:51', '2022-03-04 02:14:56', '2022-03-04', ''),
(1657, 12, 8, 143, 8, 500, '2022-03-04 02:28:12', '2022-03-04 02:28:12', '2022-03-01', ''),
(1658, 11, 12, 145, 8, 500, '2022-03-04 02:28:25', '2022-03-04 02:28:25', '2022-03-02', ''),
(1659, 11, 7, 143, 8, 501, '2022-03-04 02:28:44', '2022-03-04 02:28:44', '2022-03-03', ''),
(1660, 12, 4, 139, 8, 502, '2022-03-04 02:29:03', '2022-03-04 02:29:03', '2022-03-05', ''),
(1661, 11, 6, 141, 8, 503, '2022-03-04 02:33:28', '2022-03-04 02:33:28', '2022-03-02', ''),
(1662, 14, 7, 141, 8, 504, '2022-03-04 02:33:42', '2022-03-04 02:33:42', '2022-03-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `van_bang`
--

DROP TABLE IF EXISTS `van_bang`;
CREATE TABLE IF NOT EXISTS `van_bang` (
  `id_van_bang` int NOT NULL AUTO_INCREMENT,
  `ngoai_ngu` int NOT NULL,
  `quoc_phong` int NOT NULL,
  `tin_hoc` int NOT NULL,
  `su_pham` int NOT NULL,
  `ky_nang_nghe` int NOT NULL,
  `ngay_cap` date NOT NULL,
  `trang_thai` int NOT NULL,
  `id_hoc_vien` int NOT NULL,
  `ghi_chu` varchar(255) NOT NULL,
  PRIMARY KEY (`id_van_bang`),
  KEY `fk_van_bang` (`id_hoc_vien`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `van_bang`
--

INSERT INTO `van_bang` (`id_van_bang`, `ngoai_ngu`, `quoc_phong`, `tin_hoc`, `su_pham`, `ky_nang_nghe`, `ngay_cap`, `trang_thai`, `id_hoc_vien`, `ghi_chu`) VALUES
(1, 1, 1, 0, 0, 0, '2021-12-01', 2, 12, ''),
(2, 1, 0, 1, 0, 0, '2021-12-13', 0, 13, ''),
(4, 2, 2, 2, 0, 2, '2021-12-03', 1, 9, ''),
(8, 2, 2, 2, 0, 0, '2022-01-05', 1, 1040, ''),
(9, 2, 2, 2, 0, 0, '2022-01-29', 1, 13, 'có'),
(10, 1, 1, 1, 0, 1, '2022-01-29', 1, 15, ''),
(123, 1, 1, 1, 0, 0, '2022-02-09', 1, 1248, 'Không'),
(147, 2, 2, 2, 0, 2, '2021-12-30', 1, 9, ''),
(151, 1, 1, 1, 0, 1, '2022-01-29', 1, 1039, ''),
(157, 1, 1, 1, 0, 0, '2021-12-01', 1, 1070, 'không');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_dang_ky_khao_sat`
--
ALTER TABLE `chi_tiet_dang_ky_khao_sat`
  ADD CONSTRAINT `chi_tiet_dang_ky_khao_sat_hoc_phan_id_hoc_phan_fk` FOREIGN KEY (`id_hoc_phan`) REFERENCES `hoc_phan` (`id_hoc_phan`),
  ADD CONSTRAINT `chi_tiet_dang_ky_khao_sat_hoc_vien_id_hoc_vien_fk` FOREIGN KEY (`id_hoc_vien`) REFERENCES `hoc_vien` (`id_hoc_vien`);

--
-- Constraints for table `chuong_trinh_dao_tao`
--
ALTER TABLE `chuong_trinh_dao_tao`
  ADD CONSTRAINT `fk_chuong_t_chuong_tr_don_vi` FOREIGN KEY (`id_don_vi`) REFERENCES `don_vi` (`id_don_vi`),
  ADD CONSTRAINT `fk_khoaHoc_ChuongTrinhDaoTao` FOREIGN KEY (`id_khoa_hoc`) REFERENCES `khoa_hoc` (`id_khoa_hoc`);

--
-- Constraints for table `chuyen_nganh`
--
ALTER TABLE `chuyen_nganh`
  ADD CONSTRAINT `fk_chuyen_n_chuyen_ng_chuong_t` FOREIGN KEY (`id_chuong_trinh`) REFERENCES `chuong_trinh_dao_tao` (`id_chuong_trinh`);

--
-- Constraints for table `dang_ky_khao_sat`
--
ALTER TABLE `dang_ky_khao_sat`
  ADD CONSTRAINT `dang_ky_khao_sat_hoc_ky_id_hoc_ky_fk` FOREIGN KEY (`id_hoc_ky`) REFERENCES `hoc_ky` (`id_hoc_ky`);

--
-- Constraints for table `danh_sach_lop_hoc_phan`
--
ALTER TABLE `danh_sach_lop_hoc_phan`
  ADD CONSTRAINT `fk_danh_sac_danh_sach_hoc_vien` FOREIGN KEY (`id_hoc_vien`) REFERENCES `hoc_vien` (`id_hoc_vien`),
  ADD CONSTRAINT `fk_danh_sac_danh_sach_lop_hoc_` FOREIGN KEY (`id_lop_hoc_phan`) REFERENCES `lop_hoc_phan` (`id_lop_hoc_phan`);

--
-- Constraints for table `de_xuat_hoc_phan`
--
ALTER TABLE `de_xuat_hoc_phan`
  ADD CONSTRAINT `de_xuat_hoc_phan_dot_dang_ki_id_dot_dang_ky_fk` FOREIGN KEY (`id_dot_dang_ky`) REFERENCES `dot_dang_ky` (`id_dot_dang_ky`),
  ADD CONSTRAINT `de_xuat_hoc_phan_hoc_phan_id_hoc_phan_fk` FOREIGN KEY (`id_hoc_phan`) REFERENCES `hoc_phan` (`id_hoc_phan`),
  ADD CONSTRAINT `de_xuat_hoc_phan_lop_hoc_id_lop_hoc_fk` FOREIGN KEY (`id_lop_chuyen_nganh`) REFERENCES `lop_hoc` (`id_lop_hoc`);

--
-- Constraints for table `dot_dang_ky`
--
ALTER TABLE `dot_dang_ky`
  ADD CONSTRAINT `dot_dang_ki_hoc_ky_fk` FOREIGN KEY (`id_hoc_ky`) REFERENCES `hoc_ky` (`id_hoc_ky`);

--
-- Constraints for table `dot_dang_ky_chi_tiet`
--
ALTER TABLE `dot_dang_ky_chi_tiet`
  ADD CONSTRAINT `dot_dang_ky_chi_tiet_dot_dang_ki_id_dot_dang_ky_fk` FOREIGN KEY (`id_dot_dang_ky`) REFERENCES `dot_dang_ky` (`id_dot_dang_ky`),
  ADD CONSTRAINT `dot_dang_ky_chi_tiet_hoc_vien_id_hoc_vien_fk` FOREIGN KEY (`id_hoc_vien`) REFERENCES `hoc_vien` (`id_hoc_vien`),
  ADD CONSTRAINT `dot_dang_ky_chi_tiet_lop_hoc_phan_id_lop_hoc_phan_fk` FOREIGN KEY (`id_lop_hoc_phan`) REFERENCES `lop_hoc_phan` (`id_lop_hoc_phan`);

--
-- Constraints for table `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD CONSTRAINT `fk_giang_vi_giao_vien_don_vi` FOREIGN KEY (`id_don_vi`) REFERENCES `don_vi` (`id_don_vi`),
  ADD CONSTRAINT `fk_giang_vien_chuc_vu` FOREIGN KEY (`id_chuc_vu`) REFERENCES `chuc_vu` (`id_chuc_vu`),
  ADD CONSTRAINT `fk_giang_vien_hoc_vi` FOREIGN KEY (`id_hoc_vi`) REFERENCES `hoc_vi` (`id_hoc_vi`);

--
-- Constraints for table `hoc_ky`
--
ALTER TABLE `hoc_ky`
  ADD CONSTRAINT `fk_hoc_ky_associati_nam_hoc` FOREIGN KEY (`id_nam_hoc`) REFERENCES `nam_hoc` (`id_nam_hoc`);

--
-- Constraints for table `hoc_phan_theo_ctdt`
--
ALTER TABLE `hoc_phan_theo_ctdt`
  ADD CONSTRAINT `fk_associat_associati_chuong_t` FOREIGN KEY (`id_chuong_trinh`) REFERENCES `chuong_trinh_dao_tao` (`id_chuong_trinh`),
  ADD CONSTRAINT `fk_associat_associati_hoc_phan` FOREIGN KEY (`id_hoc_phan`) REFERENCES `hoc_phan` (`id_hoc_phan`);

--
-- Constraints for table `hoc_phi`
--
ALTER TABLE `hoc_phi`
  ADD CONSTRAINT `fk_hoc_phi_associati_chuyen_n` FOREIGN KEY (`id_chuyen_nganh`) REFERENCES `chuyen_nganh` (`id_chuyen_nganh`),
  ADD CONSTRAINT `fk_hoc_phi_associati_he_dao_t` FOREIGN KEY (`id_he_dao_tao`) REFERENCES `he_dao_tao` (`id_he_dao_tao`),
  ADD CONSTRAINT `fk_hoc_phi_associati_hoc_ky` FOREIGN KEY (`id_hoc_ky`) REFERENCES `hoc_ky` (`id_hoc_ky`);

--
-- Constraints for table `hoc_vien`
--
ALTER TABLE `hoc_vien`
  ADD CONSTRAINT `fk_hoc_vien_associati_chuyen_n` FOREIGN KEY (`id_chuyen_nganh`) REFERENCES `chuyen_nganh` (`id_chuyen_nganh`),
  ADD CONSTRAINT `fk_hoc_vien_sinh_vien_lop_hoc` FOREIGN KEY (`id_lop_hoc`) REFERENCES `lop_hoc` (`id_lop_hoc`);

--
-- Constraints for table `ky_thi`
--
ALTER TABLE `ky_thi`
  ADD CONSTRAINT `fk_ky_thi_associati_hoc_ky` FOREIGN KEY (`id_hoc_ky`) REFERENCES `hoc_ky` (`id_hoc_ky`);

--
-- Constraints for table `lich_thi`
--
ALTER TABLE `lich_thi`
  ADD CONSTRAINT `fk_associat_associati_ca_thi` FOREIGN KEY (`id_ca_thi`) REFERENCES `ca_thi` (`id_ca_thi`),
  ADD CONSTRAINT `fk_associat_associati_hoc_vien` FOREIGN KEY (`id_hoc_vien`) REFERENCES `hoc_vien` (`id_hoc_vien`),
  ADD CONSTRAINT `fk_associat_associati_ky_thi` FOREIGN KEY (`id_ky_thi`) REFERENCES `ky_thi` (`id_ky_thi`),
  ADD CONSTRAINT `fk_associat_associati_phong` FOREIGN KEY (`id_phong`) REFERENCES `phong` (`id_phong`);

--
-- Constraints for table `lop_hoc`
--
ALTER TABLE `lop_hoc`
  ADD CONSTRAINT `fk_lop_hoc_cvht_giang_vi` FOREIGN KEY (`id_giang_vien`) REFERENCES `giang_vien` (`id_giang_vien`),
  ADD CONSTRAINT `fk_lop_hoc_lop_hoc_t_don_vi` FOREIGN KEY (`id_don_vi`) REFERENCES `don_vi` (`id_don_vi`),
  ADD CONSTRAINT `fk_lop_hoc_lop_hoc_t_he_dao_t` FOREIGN KEY (`id_he_dao_tao`) REFERENCES `he_dao_tao` (`id_he_dao_tao`),
  ADD CONSTRAINT `fk_lop_hoc_lop_hoc_t_khoa_hoc` FOREIGN KEY (`id_khoa_hoc`) REFERENCES `khoa_hoc` (`id_khoa_hoc`),
  ADD CONSTRAINT `fk_lop_hoc_lop_hoc_t_nganh_ho` FOREIGN KEY (`id_nganh`) REFERENCES `nganh_hoc` (`id_nganh`);

--
-- Constraints for table `lop_hoc_phan`
--
ALTER TABLE `lop_hoc_phan`
  ADD CONSTRAINT `fk_lop_hoc__lop_hoc_p_hoc_phan` FOREIGN KEY (`id_hoc_phan`) REFERENCES `hoc_phan` (`id_hoc_phan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lop_hoc_phan_hoc_ky_id_hoc_ky_fk` FOREIGN KEY (`id_hoc_ky`) REFERENCES `hoc_ky` (`id_hoc_ky`);

--
-- Constraints for table `lop_hoc_phan_de_xuat`
--
ALTER TABLE `lop_hoc_phan_de_xuat`
  ADD CONSTRAINT `lop_hoc_phan_de_xuat_dang_ky_khao_sat_id_dang_ky_khao_sat_fk` FOREIGN KEY (`id_dang_ky_khao_sat`) REFERENCES `dang_ky_khao_sat` (`id_dang_ky_khao_sat`),
  ADD CONSTRAINT `lop_hoc_phan_de_xuat_hoc_ky_id_hoc_ky_fk` FOREIGN KEY (`id_hoc_ky`) REFERENCES `hoc_ky` (`id_hoc_ky`),
  ADD CONSTRAINT `lop_hoc_phan_de_xuat_hoc_phan_id_hoc_phan_fk` FOREIGN KEY (`id_hoc_phan`) REFERENCES `hoc_phan` (`id_hoc_phan`);

--
-- Constraints for table `thoi_khoa_bieu`
--
ALTER TABLE `thoi_khoa_bieu`
  ADD CONSTRAINT `thoi_khoa_bieu_giang_vien_id_giang_vien_fk` FOREIGN KEY (`id_giang_vien`) REFERENCES `giang_vien` (`id_giang_vien`),
  ADD CONSTRAINT `thoi_khoa_bieu_hoc_ky_id_hoc_ky_fk` FOREIGN KEY (`id_hoc_ky`) REFERENCES `hoc_ky` (`id_hoc_ky`),
  ADD CONSTRAINT `thoi_khoa_bieu_lop_hoc_phan_id_lop_hoc_phan_fk` FOREIGN KEY (`id_lop_hoc_phan`) REFERENCES `lop_hoc_phan` (`id_lop_hoc_phan`),
  ADD CONSTRAINT `thoi_khoa_bieu_phong_id_phong_fk` FOREIGN KEY (`id_phong`) REFERENCES `phong` (`id_phong`),
  ADD CONSTRAINT `thoi_khoa_bieu_thoi_gian_id_thoi_gian_hoc_fk` FOREIGN KEY (`id_thoi_gian_hoc`) REFERENCES `thoi_gian` (`id_thoi_gian_hoc`);

--
-- Constraints for table `van_bang`
--
ALTER TABLE `van_bang`
  ADD CONSTRAINT `fk_van_bang` FOREIGN KEY (`id_hoc_vien`) REFERENCES `hoc_vien` (`id_hoc_vien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
