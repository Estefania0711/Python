/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 12.1.2-MariaDB : Database - parqueadero
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`parqueadero` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `parqueadero`;

/*Table structure for table `parqueadero_puestoparqueadero` */

DROP TABLE IF EXISTS `parqueadero_puestoparqueadero`;

CREATE TABLE `parqueadero_puestoparqueadero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_puesto` varchar(10) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `parqueadero_puestoparqueadero` */

insert  into `parqueadero_puestoparqueadero`(`id`,`numero_puesto`,`estado`) values (36,'PU001','disponible'),(37,'PU002','ocupado'),(38,'PU003','ocupado'),(39,'PU004','ocupado'),(40,'PU005','ocupado'),(41,'PU006','Disponible'),(42,'PU007','disponible'),(43,'PU008','Disponible'),(44,'PU009','Disponible'),(45,'PU010','disponible'),(46,'PU011','Disponible'),(47,'PU012','Disponible'),(48,'PU013','Disponible'),(49,'PU014','Disponible'),(50,'PU015','Disponible'),(51,'PU016','Disponible'),(52,'PU017','Disponible'),(53,'PU018','Disponible'),(54,'PU019','Disponible');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
