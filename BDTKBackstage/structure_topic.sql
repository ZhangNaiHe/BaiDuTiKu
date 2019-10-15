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

 Date: 15/10/2019 21:48:50
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
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of structure
-- ----------------------------
INSERT INTO `structure` VALUES (1, '理科数学', '第一章 集合与常用逻辑用语', '1 集合的概念及运算', 1);
INSERT INTO `structure` VALUES (2, '理科数学', '第一章 集合与常用逻辑用语', '2 命名及其关系、充分条件与必要条件', 1);
INSERT INTO `structure` VALUES (3, '理科数学', '第一章 集合与常用逻辑用语', '3 简单的逻辑连接词、全称量词与存在量词', 1);
INSERT INTO `structure` VALUES (4, '理科数学', '第二章 函数的概念与基本初等函数', '1 函数概念与表示', 1);
INSERT INTO `structure` VALUES (5, '理科数学', '第二章 函数的概念与基本初等函数', '2 函数的基本性质', 1);
INSERT INTO `structure` VALUES (6, '理科数学', '第二章 函数的概念与基本初等函数', '3 二次函数与幂函数', 1);
INSERT INTO `structure` VALUES (7, '理科数学', '第二章 函数的概念与基本初等函数', '4 指数与指数函数', 1);
INSERT INTO `structure` VALUES (8, '理科数学', '第二章 函数的概念与基本初等函数', '5 对数与对数函数', 1);
INSERT INTO `structure` VALUES (9, '理科数学', '第二章 函数的概念与基本初等函数', '6 函数的图像', 1);
INSERT INTO `structure` VALUES (10, '理科数学', '第二章 函数的概念与基本初等函数', '7 函数与方程', 1);
INSERT INTO `structure` VALUES (11, '理科数学', '第二章 函数的概念与基本初等函数', '8 函数模型及其综合应用', 1);
INSERT INTO `structure` VALUES (12, '理科数学', '第二章 函数的概念与基本初等函数', '6 函数的图像', 1);
INSERT INTO `structure` VALUES (13, '理科数学', '第二章 函数的概念与基本初等函数', '7 函数与方程', 1);
INSERT INTO `structure` VALUES (14, '理科数学', '第二章 函数的概念与基本初等函数', '8 函数模型及其综合应用', 1);
INSERT INTO `structure` VALUES (15, '理科数学', '第三章 导数及其应用', '1 导数与积分', 1);
INSERT INTO `structure` VALUES (16, '理科数学', '第四章 三角函数与三角恒等变换', '1 三角函数的概念、同角三角函数的关系式和诱导公式', 1);
INSERT INTO `structure` VALUES (17, '理科数学', '第四章 三角函数与三角恒等变换', '2 三角函数的图像与性质', 1);
INSERT INTO `structure` VALUES (18, '理科数学', '第四章 三角函数与三角恒等变换', '3 三角恒等变换', 1);
INSERT INTO `structure` VALUES (19, '理科数学', '第四章 三角函数与三角恒等变换', '4 三角函数的综合应用', 1);
INSERT INTO `structure` VALUES (20, '理科数学', '第四章 三角函数与三角恒等变换', '5 解三角形', 1);
INSERT INTO `structure` VALUES (21, '理科数学', '第五章 平面向量', '1 平面向量的概念及线性运算、平面向量基本定理', 1);
INSERT INTO `structure` VALUES (22, '理科数学', '第五章 平面向量', '2 平面向量的数量积及其应用', 1);
INSERT INTO `structure` VALUES (23, '理科数学', '第六章 数列', '1 数列的概念与简单表示法', 1);
INSERT INTO `structure` VALUES (24, '理科数学', '第六章 数列', '2 等差数列', 1);
INSERT INTO `structure` VALUES (25, '理科数学', '第六章 数列', '3 等比数列', 1);
INSERT INTO `structure` VALUES (26, '理科数学', '第六章 数列', '4 数列求和、数列的综合应用', 1);
INSERT INTO `structure` VALUES (27, '理科数学', '第七章 不等式', '1 不等关系与不等式', 1);
INSERT INTO `structure` VALUES (28, '理科数学', '第七章 不等式', '2 不等式的解法', 1);
INSERT INTO `structure` VALUES (29, '理科数学', '第七章 不等式', '3 简单的线性规则', 1);
INSERT INTO `structure` VALUES (30, '理科数学', '第七章 不等式', '4 基本不等式及不等式的应用', 1);
INSERT INTO `structure` VALUES (31, '理科数学', '第八章 立体几何与空间向量', '1 空间几何体的三视图、表面积和体积', 1);
INSERT INTO `structure` VALUES (32, '理科数学', '第八章 立体几何与空间向量', '2 空间点、线、面的位置关系', 1);
INSERT INTO `structure` VALUES (33, '理科数学', '第八章 立体几何与空间向量', '3 直线、平面平行的判定与性质', 1);
INSERT INTO `structure` VALUES (34, '理科数学', '第八章 立体几何与空间向量', '4 直线、平面垂直的判定与性质', 1);
INSERT INTO `structure` VALUES (35, '理科数学', '第八章 立体几何与空间向量', '5 空间向量及其应用、空间角', 1);
INSERT INTO `structure` VALUES (36, '理科数学', '第九章 直线的圆的方程', '1 直线方程和两条直线的位置关系', 1);
INSERT INTO `structure` VALUES (37, '理科数学', '第九章 直线和圆的方程', '2 圆的方程', 1);
INSERT INTO `structure` VALUES (38, '理科数学', '第九章 直线和圆的方程', '3 直线与圆、圆与圆的位置关系', 1);
INSERT INTO `structure` VALUES (39, '理科数学', '第十章 圆锥曲线与方程', '1 椭圆及其性质', 1);
INSERT INTO `structure` VALUES (40, '理科数学', '第十章 圆锥曲线与方程', '2 双曲线及其性质', 1);
INSERT INTO `structure` VALUES (41, '理科数学', '第十章 圆锥曲线与方程', '3 抛物线及其性质', 1);
INSERT INTO `structure` VALUES (42, '理科数学', '第十章 圆锥曲线与方程', '4 直线与圆锥曲线的位置关系', 1);
INSERT INTO `structure` VALUES (43, '理科数学', '第十章 圆锥曲线与方程', '5 曲线与方程', 1);
INSERT INTO `structure` VALUES (44, '理科数学', '第十章 圆锥曲线与方程', '6 圆锥曲线的综合问题', 1);
INSERT INTO `structure` VALUES (45, '理科数学', '第十一章 计数原理', '1 排列、组合', 1);
INSERT INTO `structure` VALUES (46, '理科数学', '第十一章 计数原理', '2 二项式定理', 1);
INSERT INTO `structure` VALUES (47, '理科数学', '第十二章 概率与统计', '1 随机事件及其概率', 1);
INSERT INTO `structure` VALUES (48, '理科数学', '第十二章 概率与统计', '2 古典概型与几何概型', 1);
INSERT INTO `structure` VALUES (49, '理科数学', '第十二章 概率与统计', '3 二项分布与正态分布', 1);
INSERT INTO `structure` VALUES (50, '理科数学', '第十二章 概率与统计', '4 离散型随机变量及其分布列、均值与方差', 1);
INSERT INTO `structure` VALUES (51, '理科数学', '第十二章 概率与统计', '5 统计与统计案例', 1);
INSERT INTO `structure` VALUES (52, '理科数学', '第十三章 算法初步', '1 算法', 1);
INSERT INTO `structure` VALUES (53, '理科数学', '第十四章 数系的扩充和复数的引入', '1 复数', 1);
INSERT INTO `structure` VALUES (54, '理科数学', '第十五章 推理与证明', '1 合情推理与演绎推理', 1);
INSERT INTO `structure` VALUES (55, '理科数学', '第十五章 推理与证明', '2 直接证明、间接证明、数学归纳法', 1);
INSERT INTO `structure` VALUES (56, '理科数学', '第十六章 选修部分', '1 几何证明选讲', 1);
INSERT INTO `structure` VALUES (57, '理科数学', '第十六章 选修部分', '2 坐标系与参数方程', 1);
INSERT INTO `structure` VALUES (58, '理科数学', '第十六章 选修部分', '3 不等式选讲', 1);
INSERT INTO `structure` VALUES (59, '文科数学', '第一章 集合与常用逻辑用语', '1 集合的概念及运算', 2);
INSERT INTO `structure` VALUES (60, '文科数学', '第一章 集合与常用逻辑用语', '2 命名及其关系、充分条件与必要条件', 2);
INSERT INTO `structure` VALUES (61, '文科数学', '第一章 集合与常用逻辑用语', '3 简单的逻辑连接词、全称量词与存在量词', 2);
INSERT INTO `structure` VALUES (62, '文科数学', '第二章 函数的概念与基本初等函数', '1 函数概念与表示', 2);
INSERT INTO `structure` VALUES (63, '文科数学', '第二章 函数的概念与基本初等函数', '2 函数的基本性质', 2);
INSERT INTO `structure` VALUES (64, '文科数学', '第二章 函数的概念与基本初等函数', '3 二次函数与幂函数', 2);
INSERT INTO `structure` VALUES (65, '文科数学', '第二章 函数的概念与基本初等函数', '4 指数与指数函数', 2);
INSERT INTO `structure` VALUES (66, '文科数学', '第二章 函数的概念与基本初等函数', '5 对数与对数函数', 2);
INSERT INTO `structure` VALUES (67, '文科数学', '第二章 函数的概念与基本初等函数', '6 函数的图像', 2);
INSERT INTO `structure` VALUES (68, '文科数学', '第二章 函数的概念与基本初等函数', '7 函数与方程', 2);
INSERT INTO `structure` VALUES (69, '文科数学', '第二章 函数的概念与基本初等函数', '8 函数模型及其综合应用', 2);
INSERT INTO `structure` VALUES (70, '文科数学', '第三章 导数及其应用', '1 导数与积分', 2);
INSERT INTO `structure` VALUES (71, '文科数学', '第三章 导数及其应用', '2 导数的应用', 2);
INSERT INTO `structure` VALUES (72, '文科数学', '第四章 三角函数与三角恒等变换', '1 三角函数的概念、同角三角函数的关系式和诱导公式', 2);
INSERT INTO `structure` VALUES (73, '文科数学', '第四章 三角函数与三角恒等变换', '2 三角函数的图像与性质', 2);
INSERT INTO `structure` VALUES (74, '文科数学', '第四章 三角函数与三角恒等变换', '3 三角恒等变换', 2);
INSERT INTO `structure` VALUES (75, '文科数学', '第四章 三角函数与三角恒等变换', '4 三角函数的综合应用', 2);
INSERT INTO `structure` VALUES (76, '文科数学', '第四章 三角函数与三角恒等变换', '5 解三角形', 2);
INSERT INTO `structure` VALUES (77, '文科数学', '第五章 平面向量', '1 平面向量的概念及线性运算、平面向量基本定理', 2);
INSERT INTO `structure` VALUES (78, '文科数学', '第五章 平面向量', '2 平面向量的数量积及其应用', 2);
INSERT INTO `structure` VALUES (79, '文科数学', '第六章 数列', '1 数列的概念与简单表示法', 2);
INSERT INTO `structure` VALUES (80, '文科数学', '第六章 数列', '2 等差数列', 2);
INSERT INTO `structure` VALUES (81, '文科数学', '第六章 数列', '3 等比数列', 2);
INSERT INTO `structure` VALUES (82, '文科数学', '第六章 数列', '4 数列求和、数列的综合应用', 2);
INSERT INTO `structure` VALUES (83, '文科数学', '第七章 不等式', '1 不等关系与不等式', 2);
INSERT INTO `structure` VALUES (84, '文科数学', '第七章 不等式', '2 不等式的解法', 2);
INSERT INTO `structure` VALUES (85, '文科数学', '第七章 不等式', '3 简单的线性规则', 2);
INSERT INTO `structure` VALUES (86, '文科数学', '第七章 不等式', '4 基本不等式及不等式的应用', 2);
INSERT INTO `structure` VALUES (87, '文科数学', '第八章 立体几何与空间向量', '1 空间几何体的三视图、表面积和体积', 2);
INSERT INTO `structure` VALUES (88, '文科数学', '第八章 立体几何与空间向量', '2 空间点、线、面的位置关系', 2);
INSERT INTO `structure` VALUES (89, '文科数学', '第八章 立体几何与空间向量', '3 直线、平面平行的判定与性质', 2);
INSERT INTO `structure` VALUES (90, '文科数学', '第八章 立体几何与空间向量', '4 直线、平面垂直的判定与性质', 2);
INSERT INTO `structure` VALUES (91, '文科数学', '第八章 立体几何与空间向量', '5 空间直角坐标系', 2);
INSERT INTO `structure` VALUES (92, '文科数学', '第九章 直线的圆的方程', '1 直线方程和两条直线的位置关系', 2);
INSERT INTO `structure` VALUES (93, '文科数学', '第九章 直线和圆的方程', '2 圆的方程', 2);
INSERT INTO `structure` VALUES (94, '文科数学', '第九章 直线和圆的方程', '3 直线与圆、圆与圆的位置关系', 2);
INSERT INTO `structure` VALUES (95, '文科数学', '第十章 圆锥曲线与方程', '1 椭圆及其性质', 2);
INSERT INTO `structure` VALUES (96, '文科数学', '第十章 圆锥曲线与方程', '2 双曲线及其性质', 2);
INSERT INTO `structure` VALUES (97, '文科数学', '第十章 圆锥曲线与方程', '3 抛物线及其性质', 2);
INSERT INTO `structure` VALUES (98, '文科数学', '第十章 圆锥曲线与方程', '4 直线与圆锥曲线的位置关系', 2);
INSERT INTO `structure` VALUES (99, '文科数学', '第十章 圆锥曲线与方程', '5 曲线与方程', 2);
INSERT INTO `structure` VALUES (100, '文科数学', '第十章 圆锥曲线与方程', '6 圆锥曲线的综合问题', 2);
INSERT INTO `structure` VALUES (101, '文科数学', '第十一章 概率与统计', '1 随机事件及其概率', 2);
INSERT INTO `structure` VALUES (102, '文科数学', '第十一章 概率与统计', '2 古典概型与几何概型', 2);
INSERT INTO `structure` VALUES (103, '文科数学', '第十一章 概率与统计', '3 统计与统计案例', 2);
INSERT INTO `structure` VALUES (104, '文科数学', '第十二章 算法初步', '1 算法', 2);
INSERT INTO `structure` VALUES (105, '文科数学', '第十三章 数系的扩充和复数的引入', '1 复数', 2);
INSERT INTO `structure` VALUES (106, '文科数学', '第十四章 推理与证明', '1 合情推理与演绎推理', 2);
INSERT INTO `structure` VALUES (107, '文科数学', '第十四章 推理与证明', '2 直接证明、间接证明、数学归纳法', 2);
INSERT INTO `structure` VALUES (108, '文科数学', '第十五章 选修部分', '1 几何证明选讲', 2);
INSERT INTO `structure` VALUES (109, '文科数学', '第十五章 选修部分', '2 坐标系与参数方程', 2);
INSERT INTO `structure` VALUES (110, '文科数学', '第十五章 选修部分', '3 不等式选讲', 2);
INSERT INTO `structure` VALUES (111, '物理', '第一章 力学', '1 运动的描述', 3);
INSERT INTO `structure` VALUES (112, '物理', '第一章 力学', '2 相互作用、力与机械', 3);
INSERT INTO `structure` VALUES (113, '物理', '第一章 力学', '3 牛顿运动定律', 3);
INSERT INTO `structure` VALUES (114, '物理', '第一章 力学', '4 曲线引动、万有引力', 3);
INSERT INTO `structure` VALUES (115, '物理', '第一章 力学', '5 动量', 3);
INSERT INTO `structure` VALUES (116, '物理', '第一章 力学', '6 机械能', 3);
INSERT INTO `structure` VALUES (117, '物理', '第一章 力学', '7 机械振动', 3);
INSERT INTO `structure` VALUES (118, '物理', '第一章 力学', '8 机械波', 3);

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
