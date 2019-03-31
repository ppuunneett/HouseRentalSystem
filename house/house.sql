/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - house
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`house` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `house`;

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `client` */

insert  into `client`(`username`,`password`) values ('client','client');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`id`,`username`,`password`,`email`,`mobile`,`dob`,`gender`,`address`,`image`,`status`) values (1,'shiva','shiva','shiva.1000projects@gmail.com','9632587410','1991-05-11','MALE','hyd \r\n                              ','5.png','Authorized');

/*Table structure for table `house` */

DROP TABLE IF EXISTS `house`;

CREATE TABLE `house` (
  `uploadby` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `bedroom` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `house` */

insert  into `house`(`uploadby`,`location`,`category`,`bedroom`,`name`,`address`,`mobile`,`image`) values ('krish','Ameerpet','Individual','2','shiva','shiva@gmail.com','9632587410','h1.jpeg'),('krish','','','','','','','');

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

insert  into `owner`(`id`,`username`,`password`,`email`,`mobile`,`dob`,`gender`,`address`,`image`,`status`) values (1,'krish','krish','krish@gmail.com','9632587410','1911-05-11','MALE','hyd \r\n                              ','3.jpg','Authorized');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
