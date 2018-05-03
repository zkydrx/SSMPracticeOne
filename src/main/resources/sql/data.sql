/*
SQLyog v10.2
MySQL - 5.1.72-community : Database - mybatis
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Data for the table `items` */

insert  into `items`(`id`,`name`,`price`,`detail`,`pic`,`createtime`) values (1,'apple',9000.0,'Very good',NULL,
'2018-05-03 10:24:23'),(2,'MAC',16000.0,'Beautiful',NULL,'2018-05-02 11:26:27'),(3,'ThinkInJava',200.0,'very good',
NULL,'2018-05-03 16:23:52');

/*Data for the table `orderdetail` */

insert  into `orderdetail`(`id`,`orders_id`,`items_id`,`items_num`) values (1,3,1,1),(2,3,2,3),(3,4,3,4),(4,4,2,3);

/*Data for the table `orders` */

insert  into `orders`(`id`,`user_id`,`number`,`createtime`,`note`) values (3,1,'1000010','2018-05-03 10:24:23',NULL),
(4,1,'1000011','2018-05-03 16:23:52',NULL),(5,10,'1000012','2018-05-03 10:24:23',NULL);

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`birthday`,`sex`,`address`) values (2,'王五',NULL,'2',NULL),(10,'张三','2014-07-10',
'1','杭州市'),(26,'张小明',NULL,'1','江苏'),(12,'李明',NULL,'1','海南'),(35,'张磊',NULL,'1','广东'),(22,'Abbot',NULL,'1',
'American'),(16,'Tom',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;