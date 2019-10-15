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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
