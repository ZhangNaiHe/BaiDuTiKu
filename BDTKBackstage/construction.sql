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

 Date: 16/10/2019 11:38:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for construction
-- ----------------------------
DROP TABLE IF EXISTS `construction`;
CREATE TABLE `construction`  (
  `structure_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '结构id',
  `subject_classics` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目分类比如一级建筑师的分类开始',
  `construction_chapter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目章节',
  `construction_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目章节小标题',
  `chapter_id` int(30) NOT NULL COMMENT '科目id',
  `cat_id` int(30) NOT NULL COMMENT '分类id',
  PRIMARY KEY (`structure_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of construction
-- ----------------------------
INSERT INTO `construction` VALUES (1, '建筑工程', '第一章 建筑工程技术', '1 建筑结构与构造', 1, 1);
INSERT INTO `construction` VALUES (2, '建筑工程', '第一章 建筑工程技术', '2 建筑工程材料', 1, 1);
INSERT INTO `construction` VALUES (3, '建筑工程', '第一章 建筑工程技术', '3 建筑工程施工技术', 1, 1);
INSERT INTO `construction` VALUES (4, '建筑工程', '第二章 建筑工程项目施工管理', '1 项目施工进度控制方法的应用', 1, 2);
INSERT INTO `construction` VALUES (5, '建筑工程', '第二章 建筑工程项目施工管理', '2 项目施工进度计划的编制与控制', 1, 2);
INSERT INTO `construction` VALUES (6, '建筑工程', '第二章 建筑工程项目施工管理', '3 项目质量计划管理', 1, 2);
INSERT INTO `construction` VALUES (7, '建筑工程', '第二章 建筑工程项目施工管理', '4 项目材料质量控制', 1, 2);
INSERT INTO `construction` VALUES (8, '建筑工程', '第二章 建筑工程项目施工管理', '5 项目施工质量管理', 1, 2);
INSERT INTO `construction` VALUES (9, '建筑工程', '第二章 建筑工程项目施工管理', '6 项目施工质量验收', 1, 2);
INSERT INTO `construction` VALUES (10, '建筑工程', '第二章 建筑工程项目施工管理', '7 工程质量问题与处理', 1, 2);
INSERT INTO `construction` VALUES (11, '建筑工程', '第二章 建筑工程项目施工管理', '8 工程安全生产管理', 1, 2);
INSERT INTO `construction` VALUES (12, '建筑工程', '第二章 建筑工程项目施工管理', '9 工程安全生产检查', 1, 2);
INSERT INTO `construction` VALUES (13, '建筑工程', '第二章 建筑工程项目施工管理', '10 工程安全生产隐患防范', 1, 2);
INSERT INTO `construction` VALUES (14, '建筑工程', '第三章 建筑工程项目施工相关法律与标准', '1 建筑工程相关法律', 1, 3);
INSERT INTO `construction` VALUES (15, '建筑工程', '第三章 建筑工程项目施工相关法律与标准', '2 建设工程施工安全生产及施工现场管理相关法律', 1, 3);
INSERT INTO `construction` VALUES (16, '建筑工程', '第三章 建筑工程项目施工相关法律与标准', '3 建筑工程相关技术标准', 1, 3);
INSERT INTO `construction` VALUES (17, '建筑工程', '第三章 建筑工程项目施工相关法律与标准', '4 一级建造师（建筑工程）注册执业管理规定及相关要求', 1, 3);
INSERT INTO `construction` VALUES (18, '水利水电工程', '第一章 水利水电工程技术', '1 水利水电工程勘测与设计', 2, 1);
INSERT INTO `construction` VALUES (19, '水利水电工程', '第一章 水利水电工程技术', '2 水利水电工程施工导流', 2, 1);
INSERT INTO `construction` VALUES (20, '水利水电工程', '第一章 水利水电工程技术', '3 水利水电工程地基处理与灌浆施工', 2, 1);
INSERT INTO `construction` VALUES (21, '水利水电工程', '第一章 水利水电工程技术', '4 土石方工程', 2, 1);
INSERT INTO `construction` VALUES (22, '水利水电工程', '第一章 水利水电工程技术', '5 土石坝工程', 2, 1);
INSERT INTO `construction` VALUES (23, '水利水电工程', '第一章 水利水电工程技术', '6 混凝土坝工程', 2, 1);
INSERT INTO `construction` VALUES (24, '水利水电工程', '第一章 水利水电工程技术', '7 提防与疏浚工程', 2, 1);
INSERT INTO `construction` VALUES (25, '水利水电工程', '第一章 水利水电工程技术', '8 水闸、泵站与水电站', 2, 1);
INSERT INTO `construction` VALUES (26, '水利水电工程', '第一章 水利水电工程技术', '9 水利水电工程施工安全技术', 2, 1);
INSERT INTO `construction` VALUES (27, '水利水电工程', '第二章 水利水电工程项目施工管理', '1 水利工程建设程序', 2, 2);
INSERT INTO `construction` VALUES (28, '水利水电工程', '第二章 水利水电工程项目施工管理', '2 水利水电施工招标投标管理', 2, 2);
INSERT INTO `construction` VALUES (29, '水利水电工程', '第二章 水利水电工程项目施工管理', '3 水利水电工程施工分包管理', 2, 2);
INSERT INTO `construction` VALUES (30, '水利水电工程', '第二章 水利水电工程项目施工管理', '4 水利水电工程标准施工招标文件的容', 2, 2);
INSERT INTO `construction` VALUES (31, '水利水电工程', '第二章 水利水电工程施工管理', '5 水利工程质量管理与事故处理', 2, 2);
INSERT INTO `construction` VALUES (32, '水利水电工程', '第二章 水利水电工程施工管理', '6 水利工程建设安全生产管理', 2, 2);
INSERT INTO `construction` VALUES (33, '水利水电工程', '第二章 水利水电工程施工管理', '7 水利发电工程项目施工质量管理', 2, 2);
INSERT INTO `construction` VALUES (34, '水利水电工程', '第二章 水利水电工程施工管理', '8 水利水电工程施工质量评估', 2, 2);
INSERT INTO `construction` VALUES (35, '水利水电工程', '第二章 水利水电工程施工管理', '9 水利工程验收', 2, 2);
INSERT INTO `construction` VALUES (36, '水利水电工程', '第二章 水利水电工程施工管理', '10 水利发电工程验收', 2, 2);
INSERT INTO `construction` VALUES (37, '水利水电工程', '第三章 水利水电工程项目施工相关法规与标准', '1 水利水电工程法规', 2, 3);
INSERT INTO `construction` VALUES (38, '水利水电工程', '第三章 水利水电工程项目施工相关法规与标准', '2 水利水电工程建设强制性标准', 2, 3);
INSERT INTO `construction` VALUES (39, '水利水电工程', '第三章 水利水电工程项目施工相关法规与标准', '3 一级建造师注册执业管理规定及相关要求', 2, 3);

SET FOREIGN_KEY_CHECKS = 1;
