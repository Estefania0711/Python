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

/*Table structure for table `parqueadero_vehiculo` */

DROP TABLE IF EXISTS `parqueadero_vehiculo`;

CREATE TABLE `parqueadero_vehiculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(10) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `id_usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `placa` (`placa`),
  KEY `parqueadero_vehiculo_id_usuario_id_95cf7880_fk_parqueade` (`id_usuario_id`),
  CONSTRAINT `parqueadero_vehiculo_id_usuario_id_95cf7880_fk_parqueade` FOREIGN KEY (`id_usuario_id`) REFERENCES `parqueadero_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `parqueadero_vehiculo` */

insert  into `parqueadero_vehiculo`(`id`,`placa`,`tipo`,`id_usuario_id`) values (5,'JAH256','carro',2),(6,'HAG156','moto',1),(7,'OIE548','bicicleta',1),(8,'KAJS254','carro',2),(9,'KJH156','carro',3),(10,'KJAJ156','bicicleta',5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
