/*
 Navicat Premium Data Transfer

 Source Server         : server local
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3307
 Source Schema         : ujb_db_hr

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 04/03/2023 14:33:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_img
-- ----------------------------
DROP TABLE IF EXISTS `tbl_img`;
CREATE TABLE `tbl_img`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_img
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_map_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_map_lokasi`;
CREATE TABLE `tbl_map_lokasi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_lokasi` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_map_lokasi
-- ----------------------------
INSERT INTO `tbl_map_lokasi` VALUES (1, '327', 1);

-- ----------------------------
-- Table structure for tbl_mst_cuti_tahunan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mst_cuti_tahunan`;
CREATE TABLE `tbl_mst_cuti_tahunan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `periode` year NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jenis_cuti` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_mst_cuti_tahunan
-- ----------------------------
INSERT INTO `tbl_mst_cuti_tahunan` VALUES (1, 2022, '17 Agustus', '2022-08-17', 'nasional');

-- ----------------------------
-- Table structure for tbl_mst_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mst_lokasi`;
CREATE TABLE `tbl_mst_lokasi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `comp` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `long` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_mst_lokasi
-- ----------------------------
INSERT INTO `tbl_mst_lokasi` VALUES (1, 'UJB', '-6.1333', '106.8750');

-- ----------------------------
-- Table structure for tbl_uang_makan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_uang_makan`;
CREATE TABLE `tbl_uang_makan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `lokasi` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uang_makan` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_uang_makan
-- ----------------------------
INSERT INTO `tbl_uang_makan` VALUES (1, 'HO', 60000);
INSERT INTO `tbl_uang_makan` VALUES (2, 'PROYEK', 120000);

-- ----------------------------
-- Table structure for tr_absensi
-- ----------------------------
DROP TABLE IF EXISTS `tr_absensi`;
CREATE TABLE `tr_absensi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lat` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `long` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_lokasi` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `lokasi_absen` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_foto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `waktu` datetime NOT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tr_absensi
-- ----------------------------
INSERT INTO `tr_absensi` VALUES (1, '184', '-6.1333', '106.8750', 'UJB', 'HO', 'base64', '2022-07-24 08:30:23', '2022-07-26 12:01:37');
INSERT INTO `tr_absensi` VALUES (2, '184', '-6.1333', '106.8750', 'UJB', 'HO', 'base64', '2022-07-24 16:01:23', '2022-07-26 12:03:00');
INSERT INTO `tr_absensi` VALUES (6, '184', '-6.1333', '106.8750', 'UJB', 'HO', 'base64', '2022-07-25 08:11:23', '2022-07-26 15:16:29');
INSERT INTO `tr_absensi` VALUES (7, '184', '-6.1333', '106.8750', 'UJB', 'HO', 'base64', '2022-07-25 18:01:23', '2022-07-26 17:26:19');
INSERT INTO `tr_absensi` VALUES (8, '184', '-6.1333', '106.8750', 'UJB', 'HO', 'base64', '2022-07-26 08:31:23', '2022-07-26 17:26:19');
INSERT INTO `tr_absensi` VALUES (9, '184', '-6.1333', '106.8750', 'UJB', 'HO', 'base64', '2022-07-26 17:30:23', '2022-07-26 17:26:19');
INSERT INTO `tr_absensi` VALUES (10, '184', '-6.1333', '106.8750', 'UJB', 'HO', 'base64', '2022-07-27 09:01:23', '2022-07-26 17:26:19');
INSERT INTO `tr_absensi` VALUES (12, '184', '123', '3123', 'asdasdasd', 'HO', 'base64', '2022-08-02 16:59:28', '2022-08-02 16:59:28');
INSERT INTO `tr_absensi` VALUES (13, '184', '123', '3123', 'asdasdasd', 'HO', 'base64', '2022-08-03 13:58:14', '2022-08-03 13:58:14');
INSERT INTO `tr_absensi` VALUES (14, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-03 16:15:31', '2022-08-03 16:15:31');
INSERT INTO `tr_absensi` VALUES (15, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-03 17:25:06', '2022-08-03 17:25:06');
INSERT INTO `tr_absensi` VALUES (16, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-03 17:25:57', '2022-08-03 17:25:57');
INSERT INTO `tr_absensi` VALUES (17, '184', '-6.1332743', '106.8749713', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-03 17:28:39', '2022-08-03 17:28:39');
INSERT INTO `tr_absensi` VALUES (18, '184', '-6.1332743', '106.8749713', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-03 17:28:59', '2022-08-03 17:28:59');
INSERT INTO `tr_absensi` VALUES (19, '184', '-6.1332774', '106.8749775', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-04 15:16:04', '2022-08-04 15:16:04');
INSERT INTO `tr_absensi` VALUES (20, '184', '-6.1332774', '106.8749775', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-04 15:21:28', '2022-08-04 15:21:28');
INSERT INTO `tr_absensi` VALUES (21, '184', '-6.133279', '106.8749825', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-04 15:24:17', '2022-08-04 15:24:17');
INSERT INTO `tr_absensi` VALUES (22, '184', '-6.1332814', '106.8749834', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-04 16:02:35', '2022-08-04 16:02:35');
INSERT INTO `tr_absensi` VALUES (23, '184', '-6.1332824', '106.8749886', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-04 17:13:40', '2022-08-04 17:13:40');
INSERT INTO `tr_absensi` VALUES (24, '184', '-6.1332893', '106.8749876', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-04 17:26:14', '2022-08-04 17:26:14');
INSERT INTO `tr_absensi` VALUES (25, '184', '-6.1332893', '106.8749876', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-04 17:27:24', '2022-08-04 17:27:24');
INSERT INTO `tr_absensi` VALUES (26, '184', '-6.1332849', '106.8749998', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-05 09:28:47', '2022-08-05 09:28:47');
INSERT INTO `tr_absensi` VALUES (27, '184', '-6.1333114', '106.8750057', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-05 17:14:29', '2022-08-05 17:14:29');
INSERT INTO `tr_absensi` VALUES (28, '184', '-6.1333114', '106.8750057', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-05 17:14:36', '2022-08-05 17:14:36');
INSERT INTO `tr_absensi` VALUES (29, '184', '-6.1332878', '106.8749821', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-08 15:03:23', '2022-08-08 15:03:23');
INSERT INTO `tr_absensi` VALUES (30, '184', '-6.1332864', '106.8749858', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-09 17:25:25', '2022-08-09 17:25:25');
INSERT INTO `tr_absensi` VALUES (31, '184', '-6.1333707', '106.8748444', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-15 08:31:23', '2022-08-15 08:31:23');
INSERT INTO `tr_absensi` VALUES (32, '184', '-6.1333142', '106.8749272', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-15 16:05:03', '2022-08-15 16:05:03');
INSERT INTO `tr_absensi` VALUES (33, '184', '123', '3123', 'asdasdasd', 'HO', 'base64', '2022-08-15 16:05:52', '2022-08-15 16:05:52');
INSERT INTO `tr_absensi` VALUES (39, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-16 10:27:47', '2022-08-16 10:27:47');
INSERT INTO `tr_absensi` VALUES (40, '184', '-6.1333224', '106.8749176', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-16 13:11:58', '2022-08-16 13:11:58');
INSERT INTO `tr_absensi` VALUES (46, '184', '-6.1333201', '106.8749177', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-18 11:16:45', '2022-08-18 11:16:45');
INSERT INTO `tr_absensi` VALUES (49, '184', '-6.1333512', '106.8748751', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-18 16:05:19', '2022-08-18 16:05:19');
INSERT INTO `tr_absensi` VALUES (51, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-25 14:24:56', '2022-08-25 14:24:56');
INSERT INTO `tr_absensi` VALUES (52, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-26 08:19:19', '2022-08-26 08:19:19');
INSERT INTO `tr_absensi` VALUES (53, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-26 17:36:45', '2022-08-26 17:36:45');
INSERT INTO `tr_absensi` VALUES (54, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-26 17:36:58', '2022-08-26 17:36:58');
INSERT INTO `tr_absensi` VALUES (55, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-26 17:37:14', '2022-08-26 17:37:14');
INSERT INTO `tr_absensi` VALUES (56, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-26 17:38:12', '2022-08-26 17:38:12');
INSERT INTO `tr_absensi` VALUES (57, '184', '-6.1332815', '106.8749622', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-30 09:18:23', '2022-08-30 09:18:23');
INSERT INTO `tr_absensi` VALUES (58, '184', '-6.1332773', '106.8749566', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-30 09:19:08', '2022-08-30 09:19:08');
INSERT INTO `tr_absensi` VALUES (59, '184', '-6.1332767', '106.8749706', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-30 11:40:02', '2022-08-30 11:40:02');
INSERT INTO `tr_absensi` VALUES (60, '184', '-6.1333417', '106.874965', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-30 16:34:25', '2022-08-30 16:34:25');
INSERT INTO `tr_absensi` VALUES (128, '184', '-6.1333086', '106.8749348', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-08-31 17:20:47', '2022-08-31 17:20:47');
INSERT INTO `tr_absensi` VALUES (129, '184', '-6.1333195', '106.8749335', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 10:33:00', '2022-09-01 10:33:00');
INSERT INTO `tr_absensi` VALUES (130, '184', '-6.1333426', '106.8748862', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 10:37:55', '2022-09-01 10:37:55');
INSERT INTO `tr_absensi` VALUES (131, '184', '-6.1332954', '106.8749397', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 10:48:36', '2022-09-01 10:48:36');
INSERT INTO `tr_absensi` VALUES (132, '184', '-6.1333272', '106.8749025', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 10:49:31', '2022-09-01 10:49:31');
INSERT INTO `tr_absensi` VALUES (133, '184', '-6.1333407', '106.8748795', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 10:53:25', '2022-09-01 10:53:25');
INSERT INTO `tr_absensi` VALUES (134, '184', '-6.1333407', '106.8748795', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 10:53:33', '2022-09-01 10:53:33');
INSERT INTO `tr_absensi` VALUES (135, '184', '-6.133338', '106.8748848', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 10:54:59', '2022-09-01 10:54:59');
INSERT INTO `tr_absensi` VALUES (136, '184', '-6.133338', '106.8748848', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 13:44:51', '2022-09-01 13:44:51');
INSERT INTO `tr_absensi` VALUES (137, '184', '-6.1333399', '106.874884', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 13:51:07', '2022-09-01 13:51:07');
INSERT INTO `tr_absensi` VALUES (138, '184', '-6.1333278', '106.8748913', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 13:51:41', '2022-09-01 13:51:41');
INSERT INTO `tr_absensi` VALUES (139, '184', '-6.1333319', '106.8748919', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 13:52:55', '2022-09-01 13:52:55');
INSERT INTO `tr_absensi` VALUES (140, '184', '-6.1333271', '106.8748925', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 13:53:56', '2022-09-01 13:53:56');
INSERT INTO `tr_absensi` VALUES (141, '184', '-6.1333377', '106.874893', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 13:55:37', '2022-09-01 13:55:37');
INSERT INTO `tr_absensi` VALUES (142, '184', '-6.1333409', '106.8748968', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 13:56:43', '2022-09-01 13:56:43');
INSERT INTO `tr_absensi` VALUES (143, '184', '-6.133338', '106.8748958', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 13:57:51', '2022-09-01 13:57:51');
INSERT INTO `tr_absensi` VALUES (144, '184', '-6.1333356', '106.8748909', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 13:59:20', '2022-09-01 13:59:20');
INSERT INTO `tr_absensi` VALUES (145, '184', '-6.1333605', '106.8748784', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:00:07', '2022-09-01 14:00:07');
INSERT INTO `tr_absensi` VALUES (146, '184', '-6.1333306', '106.8748941', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:01:14', '2022-09-01 14:01:14');
INSERT INTO `tr_absensi` VALUES (147, '184', '-6.1333306', '106.8748922', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:03:07', '2022-09-01 14:03:07');
INSERT INTO `tr_absensi` VALUES (148, '184', '-6.1333135', '106.8749403', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:08:25', '2022-09-01 14:08:25');
INSERT INTO `tr_absensi` VALUES (149, '184', '-6.1333594', '106.8748776', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:15:43', '2022-09-01 14:15:43');
INSERT INTO `tr_absensi` VALUES (150, '184', '-6.1333458', '106.8748815', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:16:31', '2022-09-01 14:16:31');
INSERT INTO `tr_absensi` VALUES (151, '184', '-6.1333142', '106.8749053', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:26:55', '2022-09-01 14:26:55');
INSERT INTO `tr_absensi` VALUES (152, '184', '-6.1333089', '106.8748995', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:37:52', '2022-09-01 14:37:52');
INSERT INTO `tr_absensi` VALUES (153, '184', '-6.1333376', '106.8748985', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:44:23', '2022-09-01 14:44:23');
INSERT INTO `tr_absensi` VALUES (154, '184', '-6.1333359', '106.8748933', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:45:54', '2022-09-01 14:45:54');
INSERT INTO `tr_absensi` VALUES (155, '184', '-6.1333114', '106.8748995', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:47:24', '2022-09-01 14:47:24');
INSERT INTO `tr_absensi` VALUES (156, '184', '-6.1333319', '106.8748976', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:47:37', '2022-09-01 14:47:37');
INSERT INTO `tr_absensi` VALUES (157, '184', '-6.1333386', '106.8748989', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:50:08', '2022-09-01 14:50:08');
INSERT INTO `tr_absensi` VALUES (158, '184', '-6.1333434', '106.8748944', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:51:11', '2022-09-01 14:51:11');
INSERT INTO `tr_absensi` VALUES (159, '184', '-6.1333434', '106.8748944', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 14:51:56', '2022-09-01 14:51:56');
INSERT INTO `tr_absensi` VALUES (160, '184', '-6.133328', '106.8748888', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 15:12:37', '2022-09-01 15:12:37');
INSERT INTO `tr_absensi` VALUES (161, '184', '-6.1333426', '106.8748866', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 15:15:01', '2022-09-01 15:15:01');
INSERT INTO `tr_absensi` VALUES (162, '184', '-6.1332882', '106.8749651', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 15:17:29', '2022-09-01 15:17:29');
INSERT INTO `tr_absensi` VALUES (163, '184', '-6.1332978', '106.8749613', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 15:30:05', '2022-09-01 15:30:05');
INSERT INTO `tr_absensi` VALUES (164, '184', '-6.1332978', '106.8749613', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 15:30:40', '2022-09-01 15:30:40');
INSERT INTO `tr_absensi` VALUES (165, '184', '-6.1333342', '106.8748803', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 15:56:46', '2022-09-01 15:56:46');
INSERT INTO `tr_absensi` VALUES (166, '184', '-6.1333342', '106.8748803', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-01 15:57:04', '2022-09-01 15:57:04');
INSERT INTO `tr_absensi` VALUES (167, '184', '-3.6363161', '102.5681974', '   Dusun Kepahiang , Kepahiang Sub-District , Kepahiang Regency , Bengkulu , 39372 , Indonesia', 'HO', 'test', '2022-09-01 18:41:24', '2022-09-01 18:41:24');
INSERT INTO `tr_absensi` VALUES (168, '184', '-3.6363161', '102.5681974', '   Dusun Kepahiang , Kepahiang Sub-District , Kepahiang Regency , Bengkulu , 39372 , Indonesia', 'HO', 'test', '2022-09-01 18:42:45', '2022-09-01 18:42:45');
INSERT INTO `tr_absensi` VALUES (169, '184', '-3.6363161', '102.5681974', '   Dusun Kepahiang , Kepahiang Sub-District , Kepahiang Regency , Bengkulu , 39372 , Indonesia', 'HO', 'test', '2022-09-01 18:43:15', '2022-09-01 18:43:15');
INSERT INTO `tr_absensi` VALUES (182, '184', '-6.1333014', '106.8749617', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-02 09:54:24', '2022-09-02 09:54:24');
INSERT INTO `tr_absensi` VALUES (183, '184', '-6.133286', '106.8749457', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-02 14:46:41', '2022-09-02 14:46:41');
INSERT INTO `tr_absensi` VALUES (184, '184', '-6.1333176', '106.8749522', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-02 15:07:49', '2022-09-02 15:07:49');
INSERT INTO `tr_absensi` VALUES (185, '184', '-6.1333014', '106.8749658', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-05 14:08:30', '2022-09-05 14:08:30');
INSERT INTO `tr_absensi` VALUES (186, '184', '-6.1332809', '106.8749331', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-05 14:29:27', '2022-09-05 14:29:27');
INSERT INTO `tr_absensi` VALUES (187, '184', '-6.1332809', '106.8749331', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-05 14:32:28', '2022-09-05 14:32:28');
INSERT INTO `tr_absensi` VALUES (188, '184', '-6.1332924', '106.874967', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-05 14:55:24', '2022-09-05 14:55:24');
INSERT INTO `tr_absensi` VALUES (189, '184', '-6.1333201', '106.8749296', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 08:23:17', '2022-09-06 08:23:17');
INSERT INTO `tr_absensi` VALUES (190, '184', '-6.1332889', '106.8749672', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 09:55:29', '2022-09-06 09:55:29');
INSERT INTO `tr_absensi` VALUES (191, '184', '-6.1333198', '106.8749367', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 14:57:17', '2022-09-06 14:57:17');
INSERT INTO `tr_absensi` VALUES (192, '184', '-6.1333443', '106.8749037', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 15:00:20', '2022-09-06 15:00:20');
INSERT INTO `tr_absensi` VALUES (193, '184', '-6.1333349', '106.8748974', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 15:10:44', '2022-09-06 15:10:44');
INSERT INTO `tr_absensi` VALUES (194, '184', '-6.133269', '106.8749067', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 15:11:36', '2022-09-06 15:11:36');
INSERT INTO `tr_absensi` VALUES (195, '184', '-6.133269', '106.8749067', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 15:11:47', '2022-09-06 15:11:47');
INSERT INTO `tr_absensi` VALUES (196, '184', '-6.1333148', '106.8749035', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 15:13:36', '2022-09-06 15:13:36');
INSERT INTO `tr_absensi` VALUES (197, '184', '-6.1333148', '106.8749035', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 15:13:47', '2022-09-06 15:13:47');
INSERT INTO `tr_absensi` VALUES (198, '184', '-6.1333148', '106.8749035', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 15:14:02', '2022-09-06 15:14:02');
INSERT INTO `tr_absensi` VALUES (199, '184', '-6.1333148', '106.8749035', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 15:14:20', '2022-09-06 15:14:20');
INSERT INTO `tr_absensi` VALUES (200, '184', '-6.1333404', '106.8748802', ' Jalan Indokarya 2 No.1 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-06 15:17:11', '2022-09-06 15:17:11');
INSERT INTO `tr_absensi` VALUES (201, '184', '-6.1333013', '106.8749458', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-09 17:53:28', '2022-09-09 17:53:28');
INSERT INTO `tr_absensi` VALUES (202, '184', '-6.1332845', '106.8749482', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-13 09:18:49', '2022-09-13 09:18:49');
INSERT INTO `tr_absensi` VALUES (203, '184', '-6.133277', '106.8749573', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-13 09:27:57', '2022-09-13 09:27:57');
INSERT INTO `tr_absensi` VALUES (204, '184', '-6.133277', '106.8749573', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-13 13:23:46', '2022-09-13 13:23:46');
INSERT INTO `tr_absensi` VALUES (205, '184', '-6.1332832', '106.8749542', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-14 14:36:15', '2022-09-14 14:36:15');
INSERT INTO `tr_absensi` VALUES (206, '184', '-6.1333047', '106.8749397', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-15 14:45:55', '2022-09-15 14:45:55');
INSERT INTO `tr_absensi` VALUES (207, '184', '-6.1332825', '106.8749651', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-16 10:59:39', '2022-09-16 10:59:39');
INSERT INTO `tr_absensi` VALUES (208, '184', '-6.1332961', '106.8749497', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-16 14:31:08', '2022-09-16 14:31:08');
INSERT INTO `tr_absensi` VALUES (209, '184', '-6.1332643', '106.8749627', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-16 14:39:11', '2022-09-16 14:39:11');
INSERT INTO `tr_absensi` VALUES (210, '184', '-6.1332643', '106.8749627', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-16 14:40:01', '2022-09-16 14:40:01');
INSERT INTO `tr_absensi` VALUES (211, '184', '-6.1332951', '106.8749607', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-16 14:44:16', '2022-09-16 14:44:16');
INSERT INTO `tr_absensi` VALUES (212, '184', '-6.1332819', '106.8749865', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-16 14:46:17', '2022-09-16 14:46:17');
INSERT INTO `tr_absensi` VALUES (213, '184', '-6.1333023', '106.8749716', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-16 14:48:15', '2022-09-16 14:48:15');
INSERT INTO `tr_absensi` VALUES (214, '184', '-6.1333023', '106.8749716', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-09-16 14:48:55', '2022-09-16 14:48:55');
INSERT INTO `tr_absensi` VALUES (220, '184', '-6.1332688', '106.8750182', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-10-17 16:19:19', '2022-10-17 16:19:19');
INSERT INTO `tr_absensi` VALUES (221, '184', '-6.1332784', '106.8750107', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-10-17 16:21:52', '2022-10-17 16:21:52');
INSERT INTO `tr_absensi` VALUES (222, '184', '-6.1332948', '106.8750063', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-10-17 16:40:31', '2022-10-17 16:40:31');
INSERT INTO `tr_absensi` VALUES (223, '184', '-6.133285', '106.874995', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-10-17 16:43:03', '2022-10-17 16:43:03');
INSERT INTO `tr_absensi` VALUES (224, '184', '-6.1332899', '106.8750017', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-10-17 17:01:24', '2022-10-17 17:01:24');
INSERT INTO `tr_absensi` VALUES (225, '184', '-6.1332899', '106.8750017', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-10-17 17:01:42', '2022-10-17 17:01:42');
INSERT INTO `tr_absensi` VALUES (226, '184', '-6.1332899', '106.8750017', ' Jalan Indokarya 2 7 Papanggo , Kecamatan Tanjung Priok , Kota Jakarta Utara , Daerah Khusus Ibukota Jakarta , 14340 , Indonesia', 'HO', 'test', '2022-10-17 17:02:14', '2022-10-17 17:02:14');
INSERT INTO `tr_absensi` VALUES (227, '184', '123', '3123', 'asdasdasd', 'HO', 'base64', '2023-03-01 16:40:04', '2023-03-01 16:40:04');
INSERT INTO `tr_absensi` VALUES (228, '184', '123', '3123', 'asdasdasd', 'HO', 'base64', '2023-03-01 16:42:47', '2023-03-01 16:42:47');
INSERT INTO `tr_absensi` VALUES (229, '184', '123', '3123', 'asdasdasd', 'HO', 'base64', '2023-03-01 17:06:33', '2023-03-01 17:06:33');
INSERT INTO `tr_absensi` VALUES (230, '184', '123', '3123', 'asdasdasd', 'HO', 'base64', '2023-03-01 17:26:51', '2023-03-01 17:26:51');
INSERT INTO `tr_absensi` VALUES (231, '184', '123', '3123', 'asdasdasd', 'HO', 'base64', '2023-03-01 17:27:51', '2023-03-01 17:27:51');
INSERT INTO `tr_absensi` VALUES (232, '184', '123', '3123', 'asdasdasd', 'HO', 'base64', '2023-03-02 08:14:02', '2023-03-02 08:14:02');

-- ----------------------------
-- View structure for v_absensi
-- ----------------------------
DROP VIEW IF EXISTS `v_absensi`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_absensi` AS SELECT
tr_absensi.lokasi_absen,
	tr_absensi.nik,
	f_hari(tr_absensi.waktu) AS hari,
	DATE(tr_absensi.waktu) AS tanggal,
		
	CASE 
		WHEN DATE_FORMAT(MIN(tr_absensi.waktu),'%H:%i') <= '12:00' THEN DATE_FORMAT(MIN(tr_absensi.waktu),'%H:%i')
	END AS absen_in,
	CASE 
		WHEN DATE_FORMAT(MAX(tr_absensi.waktu),'%H:%i') >= '12:00' THEN DATE_FORMAT(MAX(tr_absensi.waktu),'%H:%i')
	END AS absen_out
		FROM 
		tr_absensi
		
		GROUP BY
		f_hari(tr_absensi.waktu),
		DATE(tr_absensi.waktu),
		tr_absensi.nik
		ORDER BY
		DATE(tr_absensi.waktu) desc ;

-- ----------------------------
-- View structure for v_login
-- ----------------------------
DROP VIEW IF EXISTS `v_login`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_login` AS SELECT
	db_surat.v_login.*
FROM
	db_surat.v_login ;

-- ----------------------------
-- View structure for v_login_map_lokasi
-- ----------------------------
DROP VIEW IF EXISTS `v_login_map_lokasi`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_login_map_lokasi` AS SELECT
	v_login.id, 
	v_login.username, 
	v_login.`password`,
	v_login.nik, 
	v_login.nama_karyawan, 
	v_login.desc_perusahaan, 
	v_login.desc_jabatan, 
	v_login.desc_dept, 
	v_login.desc_divisi, 
	v_login.desc_section, 
	v_login.desc_subsection, 
	v_login.jenkel, 
	tbl_map_lokasi.id_lokasi, 
	tbl_mst_lokasi.comp, 
	tbl_mst_lokasi.lat, 
	tbl_mst_lokasi.`long`, 
	v_login.is_active
FROM
	v_login
	LEFT JOIN
	tbl_map_lokasi
	ON 
		v_login.id = tbl_map_lokasi.id_user
	LEFT JOIN
	tbl_mst_lokasi
	ON 
		tbl_map_lokasi.id_lokasi = tbl_mst_lokasi.id
WHERE
	tbl_map_lokasi.id_lokasi IS NOT NULL AND
	v_login.is_active = 1 ;

-- ----------------------------
-- View structure for z_absensi
-- ----------------------------
DROP VIEW IF EXISTS `z_absensi`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `z_absensi` AS SELECT
v_absensi.lokasi_absen,
	v_absensi.nik, 
	v_absensi.hari, 
	v_absensi.tanggal,
	v_absensi.absen_in,
	CASE
		WHEN v_absensi.absen_in <= "08:30:59" THEN "Ontime"
		WHEN ISNULL(v_absensi.absen_in) THEN NULL
		ELSE "Terlambat"
	END as status_in,
	
	v_absensi.absen_out,
	
	IF(v_absensi.hari = "Jumat",
		CASE
			WHEN v_absensi.absen_out < "18:00:00" THEN "Pulang Cepat"
			WHEN ISNULL(v_absensi.absen_out) THEN NULL
			ELSE "Ontime"
		END
	,
		CASE
			WHEN v_absensi.absen_out < "17:30:00" THEN "Pulang Cepat"
			WHEN ISNULL(v_absensi.absen_out) THEN NULL
			ELSE "Ontime"
		END
	) as status_out,
	CASE
		WHEN ISNULL(v_absensi.absen_in) THEN FORMAT(tbl_uang_makan.uang_makan - ((100/100)*tbl_uang_makan.uang_makan),0)* 1000
		WHEN ISNULL(v_absensi.absen_out) THEN FORMAT(tbl_uang_makan.uang_makan - ((100/100)*tbl_uang_makan.uang_makan),0)* 1000
		WHEN v_absensi.absen_in >= "09:16:00" THEN FORMAT(tbl_uang_makan.uang_makan - ((100/100)*tbl_uang_makan.uang_makan),0)* 1000
		WHEN v_absensi.absen_in >= "09:01:00" THEN FORMAT(tbl_uang_makan.uang_makan - ((75/100)*tbl_uang_makan.uang_makan),0)* 1000
		WHEN v_absensi.absen_in >= "08:46:00" THEN FORMAT(tbl_uang_makan.uang_makan - ((50/100)*tbl_uang_makan.uang_makan),0)* 1000
		WHEN v_absensi.absen_in >= "08:30:59" THEN FORMAT(tbl_uang_makan.uang_makan - ((25/100)*tbl_uang_makan.uang_makan),0)* 1000
		WHEN v_absensi.absen_in >= "06:01:00" THEN FORMAT(tbl_uang_makan.uang_makan,0)* 1000
		
	END AS total_um
	
FROM
	v_absensi 
LEFT JOIN tbl_uang_makan ON v_absensi.lokasi_absen = tbl_uang_makan.lokasi ;

-- ----------------------------
-- Function structure for f_hari
-- ----------------------------
DROP FUNCTION IF EXISTS `f_hari`;
delimiter ;;
CREATE FUNCTION `f_hari`(tanggal DATE)
 RETURNS varchar(255) CHARSET utf8
  DETERMINISTIC
BEGIN
  DECLARE varhasil varchar(255);

  SELECT CONCAT(
    CASE DAYOFWEEK(tanggal)
      WHEN 1 THEN 'Minggu'
      WHEN 2 THEN 'Senin'
      WHEN 3 THEN 'Selasa'
      WHEN 4 THEN 'Rabu'
      WHEN 5 THEN 'Kamis'
      WHEN 6 THEN 'Jumat'
      WHEN 7 THEN 'Sabtu'
    END
  ) INTO varhasil;

  RETURN varhasil;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
