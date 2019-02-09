/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - feemanagement
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`feemanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `feemanagement`;

/*Table structure for table `addaccountant` */

DROP TABLE IF EXISTS `addaccountant`;

CREATE TABLE `addaccountant` (
  `FirstName` varchar(30) default NULL,
  `LastName` varchar(30) default NULL,
  `Date` varchar(20) default NULL,
  `email` varchar(30) default NULL,
  `mobile` varchar(10) default NULL,
  `gender` varchar(6) default NULL,
  `address` varchar(100) default NULL,
  `city` varchar(20) default NULL,
  `pincode` varchar(6) default NULL,
  `state` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addaccountant` */

insert  into `addaccountant`(`FirstName`,`LastName`,`Date`,`email`,`mobile`,`gender`,`address`,`city`,`pincode`,`state`) values ('nimesh','sharma','3-June-2010','nimesharma1995@gmail.com','8955902725','Male','qweghskdgbusdgkfbzsdbfbsbf','asdfjasdf','302015','rajasthan');

/*Table structure for table `addstudent` */

DROP TABLE IF EXISTS `addstudent`;

CREATE TABLE `addstudent` (
  `FirstName` varchar(30) default NULL,
  `LastName` varchar(30) default NULL,
  `Date` varchar(20) default NULL,
  `email` varchar(30) default NULL,
  `mobile` varchar(10) default NULL,
  `gender` varchar(6) default NULL,
  `address` varchar(100) default NULL,
  `city` varchar(20) default NULL,
  `pincode` varchar(6) default NULL,
  `state` varchar(20) default NULL,
  `fee` decimal(5,0) default NULL,
  `paid` decimal(5,0) default NULL,
  `due` decimal(5,0) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addstudent` */

insert  into `addstudent`(`FirstName`,`LastName`,`Date`,`email`,`mobile`,`gender`,`address`,`city`,`pincode`,`state`,`fee`,`paid`,`due`) values ('ram','sharma','6-March-2009','ram@gmail.com','1231232130','Male','qweqwewerawtew','asdfsas','302015','rajasthan','20000','15000','5000');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` text,
  `password` text,
  `utype` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`utype`) values ('admin123','admin123@#','admin'),('nimeshsharma1995@gmail.com','ns-20-December-1995','accountant');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
