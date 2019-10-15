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

 Date: 15/10/2019 18:08:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for structure
-- ----------------------------
DROP TABLE IF EXISTS `structure`;
CREATE TABLE `structure`  (
  `structure_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '结构id',
  `subject_classics` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目分类比如在高考里理科数学',
  `structure_chapter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目章节',
  `structure_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目章节小标题',
  `subject_id` int(30) NOT NULL COMMENT '科目id',
  PRIMARY KEY (`structure_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `test_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '试题id',
  `test_centre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试题考点',
  `test_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试题类型',
  `test_topic` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试题题目',
  `test_answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '答案和解析',
  `structure_id` int(30) NOT NULL COMMENT '结构id',
  PRIMARY KEY (`test_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
