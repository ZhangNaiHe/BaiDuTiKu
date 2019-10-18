/*
 Navicat Premium Data Transfer

 Source Server         : yujingyao
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 127.0.0.1:3306
 Source Schema         : baidutiku

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 18/10/2019 08:41:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for big_teacher
-- ----------------------------
DROP TABLE IF EXISTS `big_teacher`;
CREATE TABLE `big_teacher`  (
  `big_teacher_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '大教材id',
  `big_teacher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大教材名称',
  PRIMARY KEY (`big_teacher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of big_teacher
-- ----------------------------
INSERT INTO `big_teacher` VALUES (1, '大学数据');
INSERT INTO `big_teacher` VALUES (2, '大学英语');
INSERT INTO `big_teacher` VALUES (3, '大学物理');
INSERT INTO `big_teacher` VALUES (4, '大学化学');
INSERT INTO `big_teacher` VALUES (5, '大学生物');
INSERT INTO `big_teacher` VALUES (6, '大学地理');
INSERT INTO `big_teacher` VALUES (7, '思想政治');
INSERT INTO `big_teacher` VALUES (8, '统计');
INSERT INTO `big_teacher` VALUES (9, '信息技术');
INSERT INTO `big_teacher` VALUES (10, '工学');
INSERT INTO `big_teacher` VALUES (11, '建筑');
INSERT INTO `big_teacher` VALUES (12, '经济学');
INSERT INTO `big_teacher` VALUES (13, '管理学');
INSERT INTO `big_teacher` VALUES (14, '法学');
INSERT INTO `big_teacher` VALUES (15, '文学');
INSERT INTO `big_teacher` VALUES (16, '其他');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `exam_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '考试id',
  `exam_num` int(35) NOT NULL COMMENT '多少门考试',
  `exam_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考试的职位',
  `cat_father_id` int(30) NOT NULL COMMENT '分类表的id',
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (1, 5, '会计从业资格,初级会计师,中级会计师,注册会计师CPA,中级经济师', 3);
INSERT INTO `exam` VALUES (2, 2, '一级建造师,二级建造师', 2);
INSERT INTO `exam` VALUES (3, 4, '教师资格证,企业法律顾问,社会工作师,助力社会工作师', 6);
INSERT INTO `exam` VALUES (4, 2, '警察招考,政法干警', 5);

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `user_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '用户的id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的名称',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的密码',
  `user_head` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像的地址',
  `reg_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户注册的时间',
  `study_num` int(60) NULL DEFAULT 0 COMMENT '知识点总数',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的电话号码',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户性别',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 'admin', '123456', 'admin.jpg', '2147483647', 0, '0', '男', '123456@qq.com');

-- ----------------------------
-- Table structure for menu_list
-- ----------------------------
DROP TABLE IF EXISTS `menu_list`;
CREATE TABLE `menu_list`  (
  `cat_father_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '分类父id',
  `cat_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`cat_father_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_list
-- ----------------------------
INSERT INTO `menu_list` VALUES (1, '高考');
INSERT INTO `menu_list` VALUES (2, '建筑类');
INSERT INTO `menu_list` VALUES (3, '财会类');
INSERT INTO `menu_list` VALUES (4, '计算机类');
INSERT INTO `menu_list` VALUES (5, '公务员');
INSERT INTO `menu_list` VALUES (6, '医药类');
INSERT INTO `menu_list` VALUES (7, '其他');

-- ----------------------------
-- Table structure for menu_list_son
-- ----------------------------
DROP TABLE IF EXISTS `menu_list_son`;
CREATE TABLE `menu_list_son`  (
  `cat_son_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '子分类名称',
  `cat_son_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '子分类id',
  PRIMARY KEY (`cat_son_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_list_son
-- ----------------------------
INSERT INTO `menu_list_son` VALUES ('高考', 1);
INSERT INTO `menu_list_son` VALUES ('一级建造师,二级建造师', 2);
INSERT INTO `menu_list_son` VALUES ('会计从业资格,中级会计师,注册会计师CPA,中级经济师,初级会计师', 3);
INSERT INTO `menu_list_son` VALUES ('计算机四级', 4);
INSERT INTO `menu_list_son` VALUES ('警察招考,政法干警,国考', 5);
INSERT INTO `menu_list_son` VALUES ('临床执业医师,临床助理医师,执业中药医师,执业西药药师,护士资格', 6);
INSERT INTO `menu_list_son` VALUES ('考研,高考', 7);

-- ----------------------------
-- Table structure for study
-- ----------------------------
DROP TABLE IF EXISTS `study`;
CREATE TABLE `study`  (
  `user_id` int(30) NOT NULL COMMENT '用户id',
  `know_points` int(30) NOT NULL COMMENT '已经完成知识点的数量',
  `konw_today` int(40) NOT NULL COMMENT '今天完成了多少知识点',
  `study_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户学习的内容',
  `test_centre` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '根据学生考点',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of study
-- ----------------------------
INSERT INTO `study` VALUES (1, 244, 6, '等差数列于等比数列的综合', '0');
INSERT INTO `study` VALUES (2, 193, 8, '客观唯心主义', '0');
INSERT INTO `study` VALUES (3, 70, 12, '实验综合', '0');
INSERT INTO `study` VALUES (4, 41, 3, '函数与对数函数的关系', '0');
INSERT INTO `study` VALUES (5, 53, 5, '职务的组织培养 ', '0');
INSERT INTO `study` VALUES (6, 66, 7, '奇偶性与单调性的综合', '0');
INSERT INTO `study` VALUES (7, 88, 2, '社会发展的实现方式', '0');
INSERT INTO `study` VALUES (8, 75, 11, '意识能动性的特点', '0');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `subject_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '科目id',
  `subject_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目的图片',
  `subject_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目标题',
  PRIMARY KEY (`subject_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (1, 'shuxue.png', '文科数学');
INSERT INTO `subject` VALUES (2, 'shuxue_2.png', '理科数学');
INSERT INTO `subject` VALUES (3, 'wuli.png', '物理');
INSERT INTO `subject` VALUES (4, 'huaxue.png', '化学');
INSERT INTO `subject` VALUES (5, 'shengwu.png', '生物');
INSERT INTO `subject` VALUES (6, 'zhengzhi.png', '政治');
INSERT INTO `subject` VALUES (7, 'lishi.png', '历史');
INSERT INTO `subject` VALUES (8, 'dili.png', '地理');

-- ----------------------------
-- Table structure for test_paper
-- ----------------------------
DROP TABLE IF EXISTS `test_paper`;
CREATE TABLE `test_paper`  (
  `paper_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '试卷id',
  `paper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试卷名称',
  `chicks` int(50) NOT NULL COMMENT '点击量',
  `paper_cat` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试卷分类',
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES (1, '2019年高考真题 文科数学(北京卷)', 10, 'history');
INSERT INTO `test_paper` VALUES (2, '2019年高考真题 文综 (北京卷)', 9, 'paper ');
INSERT INTO `test_paper` VALUES (3, '2019年高考真题 英语 (北京卷)', 12, 'paper ');
INSERT INTO `test_paper` VALUES (4, '2019年高考真题 理综 (北京卷)', 55, 'history ');
INSERT INTO `test_paper` VALUES (5, '2019年高考真题 语文 (北京卷)', 38, 'paper ');
INSERT INTO `test_paper` VALUES (6, '2019年高考真题 理科数学 (北京卷)', 46, 'history ');
INSERT INTO `test_paper` VALUES (7, '2019年高考真题 文科数学 (北京卷)', 77, 'paper ');
INSERT INTO `test_paper` VALUES (8, '2019年高考真题 语文 (北京卷)', 54, 'history ');
INSERT INTO `test_paper` VALUES (9, '2019年高考真题 英语 (北京卷)', 75, 'paper');
INSERT INTO `test_paper` VALUES (10, '2019年高考真题 文科数学 (北京卷)', 36, 'history');

-- ----------------------------
-- Table structure for user_uploads
-- ----------------------------
DROP TABLE IF EXISTS `user_uploads`;
CREATE TABLE `user_uploads`  (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `user_id_fk` int(11) NULL DEFAULT NULL,
  `created` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
