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

 Date: 16/10/2019 11:40:45
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
  `cat_id` int(30) NOT NULL COMMENT '分类id',
  PRIMARY KEY (`structure_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 247 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of structure
-- ----------------------------
INSERT INTO `structure` VALUES (1, '理科数学', '第一章 集合与常用逻辑用语', '1 集合的概念及运算', 1, 1);
INSERT INTO `structure` VALUES (2, '理科数学', '第一章 集合与常用逻辑用语', '2 命名及其关系、充分条件与必要条件', 1, 1);
INSERT INTO `structure` VALUES (3, '理科数学', '第一章 集合与常用逻辑用语', '3 简单的逻辑连接词、全称量词与存在量词', 1, 1);
INSERT INTO `structure` VALUES (4, '理科数学', '第二章 函数的概念与基本初等函数', '1 函数概念与表示', 1, 2);
INSERT INTO `structure` VALUES (5, '理科数学', '第二章 函数的概念与基本初等函数', '2 函数的基本性质', 1, 2);
INSERT INTO `structure` VALUES (6, '理科数学', '第二章 函数的概念与基本初等函数', '3 二次函数与幂函数', 1, 2);
INSERT INTO `structure` VALUES (7, '理科数学', '第二章 函数的概念与基本初等函数', '4 指数与指数函数', 1, 2);
INSERT INTO `structure` VALUES (8, '理科数学', '第二章 函数的概念与基本初等函数', '5 对数与对数函数', 1, 2);
INSERT INTO `structure` VALUES (9, '理科数学', '第二章 函数的概念与基本初等函数', '6 函数的图像', 1, 2);
INSERT INTO `structure` VALUES (10, '理科数学', '第二章 函数的概念与基本初等函数', '7 函数与方程', 1, 2);
INSERT INTO `structure` VALUES (11, '理科数学', '第二章 函数的概念与基本初等函数', '8 函数模型及其综合应用', 1, 2);
INSERT INTO `structure` VALUES (12, '理科数学', '第二章 函数的概念与基本初等函数', '6 函数的图像', 1, 2);
INSERT INTO `structure` VALUES (13, '理科数学', '第二章 函数的概念与基本初等函数', '7 函数与方程', 1, 2);
INSERT INTO `structure` VALUES (14, '理科数学', '第二章 函数的概念与基本初等函数', '8 函数模型及其综合应用', 1, 2);
INSERT INTO `structure` VALUES (15, '理科数学', '第三章 导数及其应用', '1 导数与积分', 1, 3);
INSERT INTO `structure` VALUES (16, '理科数学', '第四章 三角函数与三角恒等变换', '1 三角函数的概念、同角三角函数的关系式和诱导公式', 1, 4);
INSERT INTO `structure` VALUES (17, '理科数学', '第四章 三角函数与三角恒等变换', '2 三角函数的图像与性质', 1, 4);
INSERT INTO `structure` VALUES (18, '理科数学', '第四章 三角函数与三角恒等变换', '3 三角恒等变换', 1, 4);
INSERT INTO `structure` VALUES (19, '理科数学', '第四章 三角函数与三角恒等变换', '4 三角函数的综合应用', 1, 4);
INSERT INTO `structure` VALUES (20, '理科数学', '第四章 三角函数与三角恒等变换', '5 解三角形', 1, 4);
INSERT INTO `structure` VALUES (21, '理科数学', '第五章 平面向量', '1 平面向量的概念及线性运算、平面向量基本定理', 1, 5);
INSERT INTO `structure` VALUES (22, '理科数学', '第五章 平面向量', '2 平面向量的数量积及其应用', 1, 5);
INSERT INTO `structure` VALUES (23, '理科数学', '第六章 数列', '1 数列的概念与简单表示法', 1, 6);
INSERT INTO `structure` VALUES (24, '理科数学', '第六章 数列', '2 等差数列', 1, 6);
INSERT INTO `structure` VALUES (25, '理科数学', '第六章 数列', '3 等比数列', 1, 6);
INSERT INTO `structure` VALUES (26, '理科数学', '第六章 数列', '4 数列求和、数列的综合应用', 1, 6);
INSERT INTO `structure` VALUES (27, '理科数学', '第七章 不等式', '1 不等关系与不等式', 1, 7);
INSERT INTO `structure` VALUES (28, '理科数学', '第七章 不等式', '2 不等式的解法', 1, 7);
INSERT INTO `structure` VALUES (29, '理科数学', '第七章 不等式', '3 简单的线性规则', 1, 7);
INSERT INTO `structure` VALUES (30, '理科数学', '第七章 不等式', '4 基本不等式及不等式的应用', 1, 7);
INSERT INTO `structure` VALUES (31, '理科数学', '第八章 立体几何与空间向量', '1 空间几何体的三视图、表面积和体积', 1, 8);
INSERT INTO `structure` VALUES (32, '理科数学', '第八章 立体几何与空间向量', '2 空间点、线、面的位置关系', 1, 8);
INSERT INTO `structure` VALUES (33, '理科数学', '第八章 立体几何与空间向量', '3 直线、平面平行的判定与性质', 1, 8);
INSERT INTO `structure` VALUES (34, '理科数学', '第八章 立体几何与空间向量', '4 直线、平面垂直的判定与性质', 1, 8);
INSERT INTO `structure` VALUES (35, '理科数学', '第八章 立体几何与空间向量', '5 空间向量及其应用、空间角', 1, 8);
INSERT INTO `structure` VALUES (36, '理科数学', '第九章 直线的圆的方程', '1 直线方程和两条直线的位置关系', 1, 9);
INSERT INTO `structure` VALUES (37, '理科数学', '第九章 直线和圆的方程', '2 圆的方程', 1, 9);
INSERT INTO `structure` VALUES (38, '理科数学', '第九章 直线和圆的方程', '3 直线与圆、圆与圆的位置关系', 1, 9);
INSERT INTO `structure` VALUES (39, '理科数学', '第十章 圆锥曲线与方程', '1 椭圆及其性质', 1, 10);
INSERT INTO `structure` VALUES (40, '理科数学', '第十章 圆锥曲线与方程', '2 双曲线及其性质', 1, 10);
INSERT INTO `structure` VALUES (41, '理科数学', '第十章 圆锥曲线与方程', '3 抛物线及其性质', 1, 10);
INSERT INTO `structure` VALUES (42, '理科数学', '第十章 圆锥曲线与方程', '4 直线与圆锥曲线的位置关系', 1, 10);
INSERT INTO `structure` VALUES (43, '理科数学', '第十章 圆锥曲线与方程', '5 曲线与方程', 1, 10);
INSERT INTO `structure` VALUES (44, '理科数学', '第十章 圆锥曲线与方程', '6 圆锥曲线的综合问题', 1, 10);
INSERT INTO `structure` VALUES (45, '理科数学', '第十一章 计数原理', '1 排列、组合', 1, 11);
INSERT INTO `structure` VALUES (46, '理科数学', '第十一章 计数原理', '2 二项式定理', 1, 11);
INSERT INTO `structure` VALUES (47, '理科数学', '第十二章 概率与统计', '1 随机事件及其概率', 1, 12);
INSERT INTO `structure` VALUES (48, '理科数学', '第十二章 概率与统计', '2 古典概型与几何概型', 1, 12);
INSERT INTO `structure` VALUES (49, '理科数学', '第十二章 概率与统计', '3 二项分布与正态分布', 1, 12);
INSERT INTO `structure` VALUES (50, '理科数学', '第十二章 概率与统计', '4 离散型随机变量及其分布列、均值与方差', 1, 12);
INSERT INTO `structure` VALUES (51, '理科数学', '第十二章 概率与统计', '5 统计与统计案例', 1, 12);
INSERT INTO `structure` VALUES (52, '理科数学', '第十三章 算法初步', '1 算法', 1, 13);
INSERT INTO `structure` VALUES (53, '理科数学', '第十四章 数系的扩充和复数的引入', '1 复数', 1, 14);
INSERT INTO `structure` VALUES (54, '理科数学', '第十五章 推理与证明', '1 合情推理与演绎推理', 1, 15);
INSERT INTO `structure` VALUES (55, '理科数学', '第十五章 推理与证明', '2 直接证明、间接证明、数学归纳法', 1, 15);
INSERT INTO `structure` VALUES (56, '理科数学', '第十六章 选修部分', '1 几何证明选讲', 1, 16);
INSERT INTO `structure` VALUES (57, '理科数学', '第十六章 选修部分', '2 坐标系与参数方程', 1, 16);
INSERT INTO `structure` VALUES (58, '理科数学', '第十六章 选修部分', '3 不等式选讲', 1, 16);
INSERT INTO `structure` VALUES (59, '文科数学', '第一章 集合与常用逻辑用语', '1 集合的概念及运算', 2, 1);
INSERT INTO `structure` VALUES (60, '文科数学', '第一章 集合与常用逻辑用语', '2 命名及其关系、充分条件与必要条件', 2, 1);
INSERT INTO `structure` VALUES (61, '文科数学', '第一章 集合与常用逻辑用语', '3 简单的逻辑连接词、全称量词与存在量词', 2, 1);
INSERT INTO `structure` VALUES (62, '文科数学', '第二章 函数的概念与基本初等函数', '1 函数概念与表示', 2, 2);
INSERT INTO `structure` VALUES (63, '文科数学', '第二章 函数的概念与基本初等函数', '2 函数的基本性质', 2, 2);
INSERT INTO `structure` VALUES (64, '文科数学', '第二章 函数的概念与基本初等函数', '3 二次函数与幂函数', 2, 2);
INSERT INTO `structure` VALUES (65, '文科数学', '第二章 函数的概念与基本初等函数', '4 指数与指数函数', 2, 2);
INSERT INTO `structure` VALUES (66, '文科数学', '第二章 函数的概念与基本初等函数', '5 对数与对数函数', 2, 2);
INSERT INTO `structure` VALUES (67, '文科数学', '第二章 函数的概念与基本初等函数', '6 函数的图像', 2, 2);
INSERT INTO `structure` VALUES (68, '文科数学', '第二章 函数的概念与基本初等函数', '7 函数与方程', 2, 2);
INSERT INTO `structure` VALUES (69, '文科数学', '第二章 函数的概念与基本初等函数', '8 函数模型及其综合应用', 2, 2);
INSERT INTO `structure` VALUES (70, '文科数学', '第三章 导数及其应用', '1 导数与积分', 2, 3);
INSERT INTO `structure` VALUES (71, '文科数学', '第三章 导数及其应用', '2 导数的应用', 2, 3);
INSERT INTO `structure` VALUES (72, '文科数学', '第四章 三角函数与三角恒等变换', '1 三角函数的概念、同角三角函数的关系式和诱导公式', 2, 4);
INSERT INTO `structure` VALUES (73, '文科数学', '第四章 三角函数与三角恒等变换', '2 三角函数的图像与性质', 2, 4);
INSERT INTO `structure` VALUES (74, '文科数学', '第四章 三角函数与三角恒等变换', '3 三角恒等变换', 2, 4);
INSERT INTO `structure` VALUES (75, '文科数学', '第四章 三角函数与三角恒等变换', '4 三角函数的综合应用', 2, 4);
INSERT INTO `structure` VALUES (76, '文科数学', '第四章 三角函数与三角恒等变换', '5 解三角形', 2, 4);
INSERT INTO `structure` VALUES (77, '文科数学', '第五章 平面向量', '1 平面向量的概念及线性运算、平面向量基本定理', 2, 5);
INSERT INTO `structure` VALUES (78, '文科数学', '第五章 平面向量', '2 平面向量的数量积及其应用', 2, 5);
INSERT INTO `structure` VALUES (79, '文科数学', '第六章 数列', '1 数列的概念与简单表示法', 2, 6);
INSERT INTO `structure` VALUES (80, '文科数学', '第六章 数列', '2 等差数列', 2, 6);
INSERT INTO `structure` VALUES (81, '文科数学', '第六章 数列', '3 等比数列', 2, 6);
INSERT INTO `structure` VALUES (82, '文科数学', '第六章 数列', '4 数列求和、数列的综合应用', 2, 6);
INSERT INTO `structure` VALUES (83, '文科数学', '第七章 不等式', '1 不等关系与不等式', 2, 7);
INSERT INTO `structure` VALUES (84, '文科数学', '第七章 不等式', '2 不等式的解法', 2, 7);
INSERT INTO `structure` VALUES (85, '文科数学', '第七章 不等式', '3 简单的线性规则', 2, 7);
INSERT INTO `structure` VALUES (86, '文科数学', '第七章 不等式', '4 基本不等式及不等式的应用', 2, 7);
INSERT INTO `structure` VALUES (87, '文科数学', '第八章 立体几何与空间向量', '1 空间几何体的三视图、表面积和体积', 2, 8);
INSERT INTO `structure` VALUES (88, '文科数学', '第八章 立体几何与空间向量', '2 空间点、线、面的位置关系', 2, 8);
INSERT INTO `structure` VALUES (89, '文科数学', '第八章 立体几何与空间向量', '3 直线、平面平行的判定与性质', 2, 8);
INSERT INTO `structure` VALUES (90, '文科数学', '第八章 立体几何与空间向量', '4 直线、平面垂直的判定与性质', 2, 8);
INSERT INTO `structure` VALUES (91, '文科数学', '第八章 立体几何与空间向量', '5 空间直角坐标系', 2, 8);
INSERT INTO `structure` VALUES (92, '文科数学', '第九章 直线的圆的方程', '1 直线方程和两条直线的位置关系', 2, 9);
INSERT INTO `structure` VALUES (93, '文科数学', '第九章 直线和圆的方程', '2 圆的方程', 2, 9);
INSERT INTO `structure` VALUES (94, '文科数学', '第九章 直线和圆的方程', '3 直线与圆、圆与圆的位置关系', 2, 9);
INSERT INTO `structure` VALUES (95, '文科数学', '第十章 圆锥曲线与方程', '1 椭圆及其性质', 2, 10);
INSERT INTO `structure` VALUES (96, '文科数学', '第十章 圆锥曲线与方程', '2 双曲线及其性质', 2, 10);
INSERT INTO `structure` VALUES (97, '文科数学', '第十章 圆锥曲线与方程', '3 抛物线及其性质', 2, 10);
INSERT INTO `structure` VALUES (98, '文科数学', '第十章 圆锥曲线与方程', '4 直线与圆锥曲线的位置关系', 2, 10);
INSERT INTO `structure` VALUES (99, '文科数学', '第十章 圆锥曲线与方程', '5 曲线与方程', 2, 10);
INSERT INTO `structure` VALUES (100, '文科数学', '第十章 圆锥曲线与方程', '6 圆锥曲线的综合问题', 2, 10);
INSERT INTO `structure` VALUES (101, '文科数学', '第十一章 概率与统计', '1 随机事件及其概率', 2, 11);
INSERT INTO `structure` VALUES (102, '文科数学', '第十一章 概率与统计', '2 古典概型与几何概型', 2, 11);
INSERT INTO `structure` VALUES (103, '文科数学', '第十一章 概率与统计', '3 统计与统计案例', 2, 11);
INSERT INTO `structure` VALUES (104, '文科数学', '第十二章 算法初步', '1 算法', 2, 12);
INSERT INTO `structure` VALUES (105, '文科数学', '第十三章 数系的扩充和复数的引入', '1 复数', 2, 13);
INSERT INTO `structure` VALUES (106, '文科数学', '第十四章 推理与证明', '1 合情推理与演绎推理', 2, 14);
INSERT INTO `structure` VALUES (107, '文科数学', '第十四章 推理与证明', '2 直接证明、间接证明、数学归纳法', 2, 14);
INSERT INTO `structure` VALUES (108, '文科数学', '第十五章 选修部分', '1 几何证明选讲', 2, 15);
INSERT INTO `structure` VALUES (109, '文科数学', '第十五章 选修部分', '2 坐标系与参数方程', 2, 15);
INSERT INTO `structure` VALUES (110, '文科数学', '第十五章 选修部分', '3 不等式选讲', 2, 15);
INSERT INTO `structure` VALUES (111, '物理', '第一章 力学', '1 运动的描述', 3, 1);
INSERT INTO `structure` VALUES (112, '物理', '第一章 力学', '2 相互作用、力与机械', 3, 1);
INSERT INTO `structure` VALUES (113, '物理', '第一章 力学', '3 牛顿运动定律', 3, 1);
INSERT INTO `structure` VALUES (114, '物理', '第一章 力学', '4 曲线引动、万有引力', 3, 1);
INSERT INTO `structure` VALUES (115, '物理', '第一章 力学', '5 动量', 3, 1);
INSERT INTO `structure` VALUES (116, '物理', '第一章 力学', '6 机械能', 3, 1);
INSERT INTO `structure` VALUES (117, '物理', '第一章 力学', '7 机械振动', 3, 1);
INSERT INTO `structure` VALUES (118, '物理', '第一章 力学', '8 机械波', 3, 1);
INSERT INTO `structure` VALUES (119, '物理', '第二章 热学', '1 分子热运动和热机', 3, 2);
INSERT INTO `structure` VALUES (120, '物理', '第二章 热学', '2 固体、液体和气体', 3, 2);
INSERT INTO `structure` VALUES (121, '物理', '第三章 电磁学', '1 电场', 3, 3);
INSERT INTO `structure` VALUES (122, '物理', '第三章 电磁学', '2 电路与恒定电流', 3, 3);
INSERT INTO `structure` VALUES (123, '物理', '第三章 电磁学', '3 磁场', 3, 3);
INSERT INTO `structure` VALUES (124, '物理', '第三章 电磁学', '4 电磁感应', 3, 3);
INSERT INTO `structure` VALUES (125, '物理', '第三章 电磁学', '5 交变电流', 3, 3);
INSERT INTO `structure` VALUES (126, '物理', '第三章 电磁学', '6 电磁场、电磁波及电磁技术', 3, 3);
INSERT INTO `structure` VALUES (127, '物理', '第四章 光学', '1 光', 3, 4);
INSERT INTO `structure` VALUES (128, '物理', '第四章 光学', '2 光的波粒二象性', 3, 4);
INSERT INTO `structure` VALUES (129, '物理', '第五章 原子物理学与相对论', '1 原子、原子核与核技术', 3, 5);
INSERT INTO `structure` VALUES (130, '物理', '第五章 原子物理学与相对论', '2 相对论', 3, 5);
INSERT INTO `structure` VALUES (131, '物理', '第六章 实验', '1 物理实验基础', 3, 6);
INSERT INTO `structure` VALUES (132, '物理', '第六章 实验', '2 力学实验', 3, 6);
INSERT INTO `structure` VALUES (133, '物理', '第六章 实验', '3 电学实验', 3, 6);
INSERT INTO `structure` VALUES (134, '物理', '第六章 实验', '4 热学实验', 3, 6);
INSERT INTO `structure` VALUES (135, '物理', '第六章 实验', '5 光学实验及其他', 3, 6);
INSERT INTO `structure` VALUES (136, '化学', '第一章 化学科学与探究', '1 化学科学特点', 4, 1);
INSERT INTO `structure` VALUES (137, '化学', '第一章 化学科学与探究', '2 化学研究方法与工业化学', 4, 1);
INSERT INTO `structure` VALUES (138, '化学', '第二章 化学基本概念和基本理论', '1 物质的组成、性质和分类', 4, 2);
INSERT INTO `structure` VALUES (139, '化学', '第二章 化学基本概念和基本理论', '2 化学用语', 4, 2);
INSERT INTO `structure` VALUES (140, '化学', '第二章 化学基本概念和基本理论', '3 化学常用计量', 4, 2);
INSERT INTO `structure` VALUES (141, '化学', '第二章 化学基本概念和基本理论', '4 溶液和胶体', 4, 2);
INSERT INTO `structure` VALUES (142, '化学', '第二章 化学基本概念和基本理论', '5 元素周期律', 4, 2);
INSERT INTO `structure` VALUES (143, '化学', '第三章 物质结构与性质', '1 物质结构', 4, 3);
INSERT INTO `structure` VALUES (144, '化学', '第三章 物质结构与性质', '2 化学键与物质的性质', 4, 3);
INSERT INTO `structure` VALUES (145, '化学', '第三章 物质结构与性质', '3 分子间作用与物质的性质', 4, 3);
INSERT INTO `structure` VALUES (146, '化学', '第四章 化学反应原理', '1 化学反应与能量', 4, 4);
INSERT INTO `structure` VALUES (147, '化学', '第四章 化学反应原理', '2 化学反应速率和化学平衡', 4, 4);
INSERT INTO `structure` VALUES (148, '化学', '第四章 化学反应原理', '3 电解质溶液', 4, 4);
INSERT INTO `structure` VALUES (149, '化学', '第五章 常见无机物及其反应', '1 卤族与氮族及其应用', 4, 5);
INSERT INTO `structure` VALUES (150, '化学', '第五章 常见无机物及其反应', '2 氧族与碳族及其应用', 4, 5);
INSERT INTO `structure` VALUES (151, '化学', '第五章 常见无机物及其反应', '3 金属及其化合物', 4, 5);
INSERT INTO `structure` VALUES (152, '化学', '第六章 常见有机物及其应用', '1 有机化合物的组成与结构', 4, 6);
INSERT INTO `structure` VALUES (153, '化学', '第六章 常见有机物及其应用', '2 烃', 4, 6);
INSERT INTO `structure` VALUES (154, '化学', '第六章 常见有机物及其应用', '3 烃的衍生物', 4, 6);
INSERT INTO `structure` VALUES (155, '化学', '第六章 常见有机物及其应用', '4 糖类、蛋白质', 4, 6);
INSERT INTO `structure` VALUES (156, '化学', '第六章 常见有机物及其应用', '5 合成材料', 4, 6);
INSERT INTO `structure` VALUES (157, '化学', '第七章 化学综合计算', '1 化学综合计算', 4, 7);
INSERT INTO `structure` VALUES (158, '化学', '第八章 化学实验', '1 常用仪器及其使用', 4, 8);
INSERT INTO `structure` VALUES (159, '化学', '第八章 化学实验', '2 化学实验基本操作', 4, 8);
INSERT INTO `structure` VALUES (160, '化学', '第八章 化学实验', '3 物质的分离、提纯和检验', 4, 8);
INSERT INTO `structure` VALUES (161, '化学', '第八章 化学实验', '4 常见气体的制备与收集', 4, 8);
INSERT INTO `structure` VALUES (162, '化学', '第八章 化学实验', '5 定量实验与探究实验', 4, 8);
INSERT INTO `structure` VALUES (163, '化学', '第八章 化学实验', '6 无机物的性质实验', 4, 8);
INSERT INTO `structure` VALUES (164, '化学', '第八章 化学实验', '7 有机物的性质实验', 4, 8);
INSERT INTO `structure` VALUES (165, '化学', '第八章 化学实验', '8 化学实验方案的设计与评价', 4, 8);
INSERT INTO `structure` VALUES (166, '生物', '第一章 分子与细胞', '1 细胞的分子组成', 5, 1);
INSERT INTO `structure` VALUES (167, '生物', '第一章 分子与细胞', '2 细胞的结构', 5, 1);
INSERT INTO `structure` VALUES (168, '生物', '第一章 分子与细胞', '3 细胞的代谢', 5, 1);
INSERT INTO `structure` VALUES (169, '生物', '第一章 分子与细胞', '4 细胞的增殖', 5, 1);
INSERT INTO `structure` VALUES (170, '生物', '第一章 分子与细胞', '5 细胞的分化、衰老与凋亡', 5, 1);
INSERT INTO `structure` VALUES (171, '生物', '第二章 遗传与进化', '1 遗传的细胞基础', 5, 2);
INSERT INTO `structure` VALUES (172, '生物', '第二章 遗传与进化', '2 遗传的分子基础', 5, 2);
INSERT INTO `structure` VALUES (173, '生物', '第二章 遗传与进化', '3 遗传的基本规律', 5, 2);
INSERT INTO `structure` VALUES (174, '生物', '第二章 遗传与进化', '4 生物的变异', 5, 2);
INSERT INTO `structure` VALUES (175, '生物', '第二章 遗传与进化', '5 人类遗传病', 5, 2);
INSERT INTO `structure` VALUES (176, '生物', '第二章 遗传与进化', '6 生物的进化', 5, 2);
INSERT INTO `structure` VALUES (177, '生物', '第三章 稳态与环境', '1 植物的激素调节', 5, 3);
INSERT INTO `structure` VALUES (178, '生物', '第三章 稳态与环境', '2 动物生命活动的调节', 5, 3);
INSERT INTO `structure` VALUES (179, '生物', '第三章 稳态与环境', '3 人体的内环境与稳态', 5, 3);
INSERT INTO `structure` VALUES (180, '生物', '第三章 稳态与环境', '4 种群和群落', 5, 3);
INSERT INTO `structure` VALUES (181, '生物', '第三章 稳态与环境', '5 生态系统', 5, 3);
INSERT INTO `structure` VALUES (182, '生物', '第三章 稳态与环境', '6 生态环境的保护', 5, 3);
INSERT INTO `structure` VALUES (183, '生物', '第四章 生物技术实践', '1 微生物的利用', 5, 4);
INSERT INTO `structure` VALUES (184, '生物', '第四章 生物技术实践', '2 酶的反应', 5, 4);
INSERT INTO `structure` VALUES (185, '生物', '第四章 生物技术实践', '3 生物技术在食品加工的应用', 5, 4);
INSERT INTO `structure` VALUES (186, '生物', '第四章 生物技术实践', '4 生物技术在其他方面的应用', 5, 4);
INSERT INTO `structure` VALUES (187, '政治', '第一章 神奇的货币', '1 揭开货币的神秘面纱', 6, 1);
INSERT INTO `structure` VALUES (188, '政治', '第一章 神奇的货币', '2 揭开货币的神秘的面纱', 6, 1);
INSERT INTO `structure` VALUES (189, '政治', '第一章 神奇的货币', '3 信用工具和外汇', 6, 1);
INSERT INTO `structure` VALUES (190, '政治', '第二章 多变的价格', '1 影响价格的因素', 6, 2);
INSERT INTO `structure` VALUES (191, '政治', '第二章 多变得价格', '2 价格变动的影响', 6, 2);
INSERT INTO `structure` VALUES (192, '政治', '第二章 多变的价格', '3 价格变动的影响', 6, 2);
INSERT INTO `structure` VALUES (193, '政治', '第三章 多彩的消费', '1 消费及其类型', 6, 3);
INSERT INTO `structure` VALUES (194, '政治', '第三章 多彩的消费', '2 树立正确的消费观', 6, 3);
INSERT INTO `structure` VALUES (195, '政治', '第四章 综合探究：正确对待金钱', '1 正确对待金钱', 6, 4);
INSERT INTO `structure` VALUES (196, '政治', '第五章 生产与经济制度', '1 发展生产、满足消费', 6, 5);
INSERT INTO `structure` VALUES (197, '政治', '第五章 生产与经济制度', '2 我国的基本经济制度', 6, 5);
INSERT INTO `structure` VALUES (198, '政治', '第六章 企业与劳动者', '1 公司的经营', 6, 6);
INSERT INTO `structure` VALUES (199, '政治', '第六章 企业与劳动者', '2 新时代的劳动者', 6, 6);
INSERT INTO `structure` VALUES (200, '政治', '第七章 投资理财的选择', '1 储蓄存款和商业银行', 6, 7);
INSERT INTO `structure` VALUES (201, '政治', '第七章 投资理财的选择', '2 股票、债券和保险', 6, 7);
INSERT INTO `structure` VALUES (202, '历史', '第一章 古代中国的政治制度', '1 先秦时期的政治制度', 7, 1);
INSERT INTO `structure` VALUES (203, '历史', '第一章 古代中国的政治制度', '2 秦朝中央集权制度的形成', 7, 1);
INSERT INTO `structure` VALUES (204, '历史', '第一章 古代中国的政治制度', '3 从汉至元政治制度的演变', 7, 1);
INSERT INTO `structure` VALUES (205, '历史', '第一章 古代中国的政治制度', '4 明清君主专制制度的强化', 7, 1);
INSERT INTO `structure` VALUES (206, '历史', '第二章 古代中国的经济', '1 农业的主要耕作方式和土地制度', 7, 2);
INSERT INTO `structure` VALUES (207, '历史', '第二章 古代中国的经济', '2 手工业的发展', 7, 2);
INSERT INTO `structure` VALUES (208, '历史', '第二章 古代中国的经济', '3 商业的发展', 7, 2);
INSERT INTO `structure` VALUES (209, '历史', '第二章 古代中国的经济', '4 古代中国的经济政策', 7, 2);
INSERT INTO `structure` VALUES (210, '历史', '第三章 中国传统文化主流思想的演变', '1 百家争鸣', 7, 3);
INSERT INTO `structure` VALUES (211, '历史', '第三章 中国传统文化主流思想的演变', '2 汉代儒学', 7, 3);
INSERT INTO `structure` VALUES (212, '历史', '第三章 中国传统文化主流思想的演变', '3 宋明理学', 7, 3);
INSERT INTO `structure` VALUES (213, '历史', '第三章 中国传统文化主流思想的演变', '4 明清之际的儒学', 7, 3);
INSERT INTO `structure` VALUES (214, '历史', '第四章 古代中国科技与文艺', '1 古代科技', 7, 4);
INSERT INTO `structure` VALUES (215, '历史', '第四章 古代中国科技与文艺', '2 汉字的演变及书画艺术', 7, 4);
INSERT INTO `structure` VALUES (216, '历史', '第四章 古代中国科技与文艺', '3 文学', 7, 4);
INSERT INTO `structure` VALUES (217, '历史', '第五章 古代希腊罗马', '1 雅典民主政治', 7, 5);
INSERT INTO `structure` VALUES (218, '历史', '第五章 古代希腊罗马', '2 罗马法', 7, 5);
INSERT INTO `structure` VALUES (219, '历史', '第五章 古代希腊罗马', '3 西方人文精神的起源', 7, 5);
INSERT INTO `structure` VALUES (220, '历史', '第六章 西方人文精神的发展', '1 文艺复兴和宗教改革', 7, 6);
INSERT INTO `structure` VALUES (221, '历史', '第六章 西方人文精神的发展', '2 启蒙运动', 7, 6);
INSERT INTO `structure` VALUES (222, '历史', '第七章 资本主义世界市场的形成与发展', '1 新航线的开辟', 7, 7);
INSERT INTO `structure` VALUES (223, '历史', '第七章 资本主义世界市场的形成与发展', '2 殖民扩张', 7, 7);
INSERT INTO `structure` VALUES (224, '历史', '第七章 资本主义世界市场的形成与发展', '3 工业革命', 7, 7);
INSERT INTO `structure` VALUES (225, '历史', '第八章 代议制的确立与发展', '1 英国君主立宪制的确立', 7, 8);
INSERT INTO `structure` VALUES (226, '历史', '第八章 代议制的确立与发展', '2 美国共和制的建立', 7, 8);
INSERT INTO `structure` VALUES (227, '历史', '第八章 代议制的确立与发展', '3 民主政治的扩展', 7, 8);
INSERT INTO `structure` VALUES (228, '地理', '第一章 自然地理', '1 地球与地图', 8, 1);
INSERT INTO `structure` VALUES (229, '地理', '第一章 自然地理', '2 宇宙中的地球', 8, 1);
INSERT INTO `structure` VALUES (230, '地理', '第一章 自然地理', '3 地球上的大气', 8, 1);
INSERT INTO `structure` VALUES (231, '地理', '第一章 自然地理', '4 地球上的水', 8, 1);
INSERT INTO `structure` VALUES (232, '地理', '第一章 自然地理', '5 地表形态的塑造', 8, 1);
INSERT INTO `structure` VALUES (233, '地理', '第一章 自然地理', '6 自然环境的整体性和差异性', 8, 1);
INSERT INTO `structure` VALUES (234, '地理', '第一章 自然地理', '7 自然环境对人类活动的影响', 8, 1);
INSERT INTO `structure` VALUES (235, '地理', '第二章 人文地理', '1 人口', 8, 2);
INSERT INTO `structure` VALUES (236, '地理', '第二章 人文地理', '2 城市', 8, 2);
INSERT INTO `structure` VALUES (237, '地理', '第二章 人文地理', '3 农业地域的形成与发展', 8, 2);
INSERT INTO `structure` VALUES (238, '地理', '第二章 人文地理', '4 工业地域的形成与发展', 8, 2);
INSERT INTO `structure` VALUES (239, '地理', '第二章 人文地理', '5 交通运输方式和布局', 8, 2);
INSERT INTO `structure` VALUES (240, '地理', '第二章 人文地理', '6 人类与地理环境的协调发展', 8, 2);
INSERT INTO `structure` VALUES (241, '地理', '第三章 区域可持续发展', '1 区域地理环境与人类活动', 8, 3);
INSERT INTO `structure` VALUES (242, '地理', '第三章 区域可持续发展', '2 区域生态环境建设', 8, 3);
INSERT INTO `structure` VALUES (243, '地理', '第三章 区域可持续发展', '3 资源综合开发', 8, 3);
INSERT INTO `structure` VALUES (244, '地理', '第三章 区域可持续发展', '4 区域经济发展', 8, 3);
INSERT INTO `structure` VALUES (245, '地理', '第三章 区域可持续发展', '5 区际联系', 8, 3);
INSERT INTO `structure` VALUES (246, '地理', '第三章 区域可持续发展', '6 地理信息技术的应用', 8, 3);

SET FOREIGN_KEY_CHECKS = 1;
