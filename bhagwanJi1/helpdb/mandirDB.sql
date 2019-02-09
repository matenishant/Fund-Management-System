/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.25a : Database - mandir
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`mandir` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mandir`;

/*Table structure for table `amount` */

DROP TABLE IF EXISTS `amount`;

CREATE TABLE `amount` (
  `receipt_id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `family_id` varchar(5) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `datedeposit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `amount` */

insert  into `amount`(`receipt_id`,`name`,`family_id`,`amount`,`datedeposit`) values (123,'Mr. Sunil Agarwal','2905',78,'2016-05-06'),(1,'Mr. Sunil Agarwal','2905',50,'2016-06-12'),(80,'Tanvi','0702',90,'2016-12-09'),(654,'Mr. Sunil Agarwal','2905',21,'2016-04-05'),(654,'Miss. Vrinda Agarwal','2905',20,'2016-04-05'),(4545,'Mr. Sunil Agarwal','2905',88,'2016-04-05'),(4545,'Miss. Vrinda Agarwal','2905',55,'2016-04-05'),(1111,'Mr. Sunil Agarwal','2905',100,'2016-01-02'),(1111,'Miss. Vrinda Agarwal','2905',101,'2016-01-02'),(11,'Mr. Varun Singh','3',20,'2016-12-03'),(11,'Mr. Varun Singh','3',20,'2016-12-03'),(11,'Shreya SIngh','3',20,'2016-12-03'),(13,'Mr. Mukesh Mathur','1',50,'2016-12-06'),(13,'Mr. Nishant Mathur','1',120,'2016-12-06'),(34,'Dr. Vivek Sharma','57331',21,'2016-06-17'),(34,'Riya Sharma','57331',20,'2016-06-17'),(23,'Dr. Aryan Jain','32633',20,'2016-03-18'),(23,'Vihan Jain','32633',20,'2016-03-18'),(23,'Aahana Jain','32633',20,'2016-03-18'),(144,'Mr. Rajat','2',2000,'2016-01-04');

/*Table structure for table `family` */

DROP TABLE IF EXISTS `family`;

CREATE TABLE `family` (
  `family_id` varchar(5) DEFAULT NULL,
  `hof` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `hof_contact` varchar(12) DEFAULT NULL,
  `hof_email` varchar(50) DEFAULT NULL,
  `hide_show` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `family` */

insert  into `family`(`family_id`,`hof`,`address`,`hof_contact`,`hof_email`,`hide_show`) values ('1','Mr. Mukesh Mathur','Vaishali Nagar','9351489967','mukesh@gmail.com','show'),('2','Mr. Rajat','Jagatpura','9987337899','rjrajat@gmail.com','show'),('2905','Mr. Sunil Agarwal','Malviya Nagar','9314525124','sunshila.sa@gmail.com','show'),('3','Mr. Varun Singh','Chandigarh','9876578999','varun@gmail.com','show'),('0702','Mr. Avnindra Kolbhandari','C-Scheme','456789912','tanvi@yahoo.co.in','show'),('29699','Mr. Vijay Goyal','Malviya Nagar,jaipur','76898709','vijay@gmail.com','show'),('57331','Dr. Vivek Sharma','Model Town','9876980','vivek@gmail.com','show'),('32633','Dr. Aryan Jain','Pratap Nagar','7657679087','aryan@gmail.com','show');

/*Table structure for table `family_details` */

DROP TABLE IF EXISTS `family_details`;

CREATE TABLE `family_details` (
  `family_id` varchar(5) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `hide_show` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `family_details` */

insert  into `family_details`(`family_id`,`name`,`gender`,`contact`,`email`,`hide_show`) values ('1','Mr. Mukesh Mathur','male','9351489967','mukesh@gmail.com','show'),('2','Mr. Rajat','male','9987337899','rjrajat@gmail.com','show'),('2905','Mr. Sunil Agarwal','male','9314525124','sunshila.sa@gmail.com','show'),('1','Mr. Nishant Mathur','male','9024347004','nishu@gmail.com','show'),('2905','Miss. Vrinda Agarwal','female','9887293152','agarwalvrinda95@gmail.com','show'),('2905','Mr. Neeraj Agarwal','male','7088372788','agneeraj.97@gmail.com','show'),('3','Mr. Varun Singh','male','9876578999','varun@gmail.com','show'),('3','Shreya SIngh','female','1335467','shreya_singh@gmail.com','hide'),('0702','Mr. Avnindra Kolbhandari','male','456789912','tanvi@yahoo.co.in','show'),('0702','Tanvi','female','897678901','','hide'),('0702','Tanvi Kolbhandari','female','8976546789','tanvi123@yahoo.co.in','show'),('29699','Vijay Goyal','male','76898709','vijay@gmai','show'),('57331','Dr. Vivek Sharma','male','9876980','vivek@gmail.com','show'),('57331','Riya Sharma','female','870-980','riya@gmail.com','show'),('32633','Dr. Aryan Jain','male','7657679087','aryan@gmail.com','show'),('32633','Vihan Jain','male','090809','vihan@gmail.com','show'),('32633','Aahana Jain','female','9809','aahana.jain@yahoo.co.in','show');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`) values ('admin','admin123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
