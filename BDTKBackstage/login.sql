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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
