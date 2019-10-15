/*
 Navicat Premium Data Transfer

 Source Server         : yujingyao
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 127.0.0.1:3306
 Source Schema         : tiku

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 15/10/2019 11:07:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biology
-- ----------------------------
DROP TABLE IF EXISTS `biology`;
CREATE TABLE `biology`  (
  `biology_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '生物项目id',
  `bio_chapter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节',
  `bio_chapter_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节小标题',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`biology_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chemistry
-- ----------------------------
DROP TABLE IF EXISTS `chemistry`;
CREATE TABLE `chemistry`  (
  `chemistry_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '化学项目id',
  `che_chapter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节',
  `che_chapter_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节小标题',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`chemistry_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for china_math
-- ----------------------------
DROP TABLE IF EXISTS `china_math`;
CREATE TABLE `china_math`  (
  `ch_math_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '文科数学项目id',
  `ch_math_chapter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节',
  `ch_chapter_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节小标题',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`ch_math_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for geography
-- ----------------------------
DROP TABLE IF EXISTS `geography`;
CREATE TABLE `geography`  (
  `geography_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '地理项目id',
  `geo_chapter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节',
  `geo_chapter_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节小标题',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`geography_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `history_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '历史项目id',
  `hi_chapter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节',
  `hi_chapter_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节小标题',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for math
-- ----------------------------
DROP TABLE IF EXISTS `math`;
CREATE TABLE `math`  (
  `math_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '数学项目id',
  `math_chapter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节',
  `math_chapter_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节小标题',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`math_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for physics
-- ----------------------------
DROP TABLE IF EXISTS `physics`;
CREATE TABLE `physics`  (
  `physics_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '物理项目id',
  `ph_chapter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节',
  `ph_chapter_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节小标题',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`physics_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for politics
-- ----------------------------
DROP TABLE IF EXISTS `politics`;
CREATE TABLE `politics`  (
  `politics_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '政治项目id',
  `po_chapter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节',
  `po_chapter_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节小标题',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`politics_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for science_math
-- ----------------------------
DROP TABLE IF EXISTS `science_math`;
CREATE TABLE `science_math`  (
  `sc_math_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '理科数学项目id',
  `sc_math_chapter` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节',
  `sc_chapter_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '章节小标题',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`sc_math_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `topic_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '试题id',
  `topic_classics` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试题分类',
  `topic_title` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试题题目',
  `topic_answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试题解析',
  `subject_id` int(20) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`topic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
