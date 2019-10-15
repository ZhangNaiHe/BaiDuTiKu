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

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户的id',
  `username` varchar(30) NOT NULL COMMENT '用户名称',
  `password` varchar(22) NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `login` */

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
  `subject_num` int(60) NOT NULL COMMENT '考点数量',
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`subject_id`,`subject_pic`,`subject_title`,`subject_num`) values (1,'http://127.0.0.1','文科数学',495),(2,'http://127.0.0.1','理科数学',534),(3,'http://127.0.0.1','物理',277),(4,'http://127.0.0.1','化学',446),(5,'http://127.0.0.1','生物',136),(6,'http://127.0.0.1','政治',372),(7,'http://127.0.0.1','历史',230),(8,'http://127.0.0.1','地理',89);

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
