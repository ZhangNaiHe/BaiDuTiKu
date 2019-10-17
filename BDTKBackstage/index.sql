/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.7.25 : Database - baidutiku
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`baidutiku` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `baidutiku`;

/*Table structure for table `big_teacher` */

DROP TABLE IF EXISTS `big_teacher`;

CREATE TABLE `big_teacher` (
  `big_teacher_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '大教材id',
  `big_teacher_name` varchar(255) NOT NULL COMMENT '大教材名称',
  PRIMARY KEY (`big_teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `big_teacher` */

insert  into `big_teacher`(`big_teacher_id`,`big_teacher_name`) values (1,'大学数据'),(2,'大学英语'),(3,'大学物理'),(4,'大学化学'),(5,'大学生物'),(6,'大学地理'),(7,'思想政治'),(8,'统计'),(9,'信息技术'),(10,'工学'),(11,'建筑'),(12,'经济学'),(13,'管理学'),(14,'法学'),(15,'文学'),(16,'其他');

/*Table structure for table `exam` */

DROP TABLE IF EXISTS `exam`;

CREATE TABLE `exam` (
  `exam_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '考试id',
  `exam_num` int(35) NOT NULL COMMENT '多少门考试',
  `exam_position` varchar(255) NOT NULL COMMENT '考试的职位',
  `cat_father_id` int(30) NOT NULL COMMENT '分类表的id',
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `exam` */

insert  into `exam`(`exam_id`,`exam_num`,`exam_position`,`cat_father_id`) values (1,5,'会计从业资格,初级会计师,中级会计师,注册会计师CPA,中级经济师',3),(2,2,'一级建造师,二级建造师',2),(3,4,'教师资格证,企业法律顾问,社会工作师,助力社会工作师',6),(4,2,'警察招考,政法干警',5);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '用户的id',
  `username` varchar(50) NOT NULL COMMENT '用户的名称',
  `password` varchar(50) NOT NULL COMMENT '用户的密码',
  `user_head` varchar(80) DEFAULT NULL COMMENT '用户头像的地址',
  `reg_time` int(11) DEFAULT NULL COMMENT '用户注册的时间',
  `study_num` int(60) DEFAULT '0' COMMENT '知识点总数',
  `phone` int(11) NOT NULL COMMENT '用户的电话号码',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `login` */

insert  into `login`(`user_id`,`username`,`password`,`user_head`,`reg_time`,`study_num`,`phone`) values (1,'admin','123456','admin.jpg',2147483647,0,0),(2,'lijiapeng','123456','admin.jpg',2147483647,0,0),(3,'jiajionghui','123456','admin.jpg',2147483647,0,0),(4,'zhaoheng','123456','admin.jpg',2147483647,0,0);

/*Table structure for table `menu_list` */

DROP TABLE IF EXISTS `menu_list`;

CREATE TABLE `menu_list` (
  `cat_father_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '分类父id',
  `cat_name` varchar(20) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`cat_father_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `menu_list` */

insert  into `menu_list`(`cat_father_id`,`cat_name`) values (1,'高考'),(2,'建筑类'),(3,'财会类'),(4,'计算机类'),(5,'公务员'),(6,'医药类'),(7,'其他');

/*Table structure for table `menu_list_son` */

DROP TABLE IF EXISTS `menu_list_son`;

CREATE TABLE `menu_list_son` (
  `cat_son_name` varchar(255) NOT NULL COMMENT '子分类名称',
  `cat_son_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '子分类id',
  PRIMARY KEY (`cat_son_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `menu_list_son` */

insert  into `menu_list_son`(`cat_son_name`,`cat_son_id`) values ('高考',1),('一级建造师,二级建造师',2),('会计从业资格,中级会计师,注册会计师CPA,中级经济师,初级会计师',3),('计算机四级',4),('警察招考,政法干警,国考',5),('临床执业医师,临床助理医师,执业中药医师,执业西药药师,护士资格',6),('考研,高考',7);

/*Table structure for table `study` */

DROP TABLE IF EXISTS `study`;

CREATE TABLE `study` (
  `user_id` int(30) NOT NULL COMMENT '用户id',
  `know_points` int(30) NOT NULL COMMENT '已经完成知识点的数量',
  `konw_today` int(40) NOT NULL COMMENT '今天完成了多少知识点',
  `study_text` text NOT NULL COMMENT '用户学习的内容',
  `test_centre` varchar(20) NOT NULL COMMENT '根据学生考点',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `study` */

insert  into `study`(`user_id`,`know_points`,`konw_today`,`study_text`,`test_centre`) values (1,244,6,'等差数列于等比数列的综合','0'),(2,193,8,'客观唯心主义','0'),(3,70,12,'实验综合','0'),(4,41,3,'函数与对数函数的关系','0'),(5,53,5,'职务的组织培养 ','0'),(6,66,7,'奇偶性与单调性的综合','0'),(7,88,2,'社会发展的实现方式','0'),(8,75,11,'意识能动性的特点','0');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '科目id',
  `subject_pic` varchar(255) NOT NULL COMMENT '科目的图片',
  `subject_title` varchar(30) NOT NULL COMMENT '科目标题',
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`subject_id`,`subject_pic`,`subject_title`) values (1,'shuxue.png','文科数学'),(2,'shuxue_2.png','理科数学'),(3,'wuli.png','物理'),(4,'huaxue.png','化学'),(5,'shengwu.png','生物'),(6,'zhengzhi.png','政治'),(7,'lishi.png','历史'),(8,'dili.png','地理');

/*Table structure for table `test_paper` */

DROP TABLE IF EXISTS `test_paper`;

CREATE TABLE `test_paper` (
  `paper_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '试卷id',
  `paper_name` varchar(50) NOT NULL COMMENT '试卷名称',
  `chicks` int(50) NOT NULL COMMENT '点击量',
  `paper_cat` varchar(30) NOT NULL COMMENT '试卷分类',
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `test_paper` */

insert  into `test_paper`(`paper_id`,`paper_name`,`chicks`,`paper_cat`) values (1,'2019年高考真题 文科数学(北京卷)',10,'history'),(2,'2019年高考真题 文综 (北京卷)',9,'paper '),(3,'2019年高考真题 英语 (北京卷)',12,'paper '),(4,'2019年高考真题 理综 (北京卷)',55,'history '),(5,'2019年高考真题 语文 (北京卷)',38,'paper '),(6,'2019年高考真题 理科数学 (北京卷)',46,'history '),(7,'2019年高考真题 文科数学 (北京卷)',77,'paper '),(8,'2019年高考真题 语文 (北京卷)',54,'history '),(9,'2019年高考真题 英语 (北京卷)',75,'paper'),(10,'2019年高考真题 文科数学 (北京卷)',36,'history');

/*Table structure for table `user_uploads` */

DROP TABLE IF EXISTS `user_uploads`;

CREATE TABLE `user_uploads` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_name` text COLLATE utf8_unicode_ci,
  `user_id_fk` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user_uploads` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
