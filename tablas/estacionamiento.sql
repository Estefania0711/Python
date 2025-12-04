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

/*Table structure for table `parqueadero_estacionamiento` */

DROP TABLE IF EXISTS `parqueadero_estacionamiento`;

CREATE TABLE `parqueadero_estacionamiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_entrada` datetime(6) NOT NULL,
  `fecha_salida` datetime(6) DEFAULT NULL,
  `horas_total` decimal(10,2) DEFAULT NULL,
  `monto_total` decimal(10,2) DEFAULT NULL,
  `id_puesto_id` int(11) DEFAULT NULL,
  `id_usuario_id` int(11) DEFAULT NULL,
  `id_vehiculo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parqueadero_estacion_id_puesto_id_2c3e66eb_fk_parqueade` (`id_puesto_id`),
  KEY `parqueadero_estacion_id_usuario_id_ede4e3b5_fk_parqueade` (`id_usuario_id`),
  KEY `parqueadero_estacion_id_vehiculo_id_a3bc77ba_fk_parqueade` (`id_vehiculo_id`),
  CONSTRAINT `parqueadero_estacion_id_puesto_id_2c3e66eb_fk_parqueade` FOREIGN KEY (`id_puesto_id`) REFERENCES `parqueadero_puestoparqueadero` (`id`),
  CONSTRAINT `parqueadero_estacion_id_usuario_id_ede4e3b5_fk_parqueade` FOREIGN KEY (`id_usuario_id`) REFERENCES `parqueadero_usuario` (`id`),
  CONSTRAINT `parqueadero_estacion_id_vehiculo_id_a3bc77ba_fk_parqueade` FOREIGN KEY (`id_vehiculo_id`) REFERENCES `parqueadero_vehiculo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `parqueadero_estacionamiento` */

insert  into `parqueadero_estacionamiento`(`id`,`fecha_entrada`,`fecha_salida`,`horas_total`,`monto_total`,`id_puesto_id`,`id_usuario_id`,`id_vehiculo_id`) values (3,'2025-12-04 19:23:21.282551','2025-12-04 19:27:02.423929',0.06,614.28,45,1,6),(4,'2025-12-04 19:23:32.236371','2025-12-04 19:24:25.548451',0.01,296.18,42,2,5),(5,'2025-12-04 19:51:23.490311','2025-12-04 19:54:56.896517',0.06,592.80,36,1,6),(6,'2025-12-04 19:51:29.858760','2025-12-04 19:54:34.615069',0.05,513.21,37,1,6),(7,'2025-12-04 19:55:15.468939','2025-12-04 19:58:26.272392',0.05,530.01,36,1,6),(8,'2025-12-04 20:03:07.556497','2025-12-04 20:05:03.249906',0.03,321.37,36,1,6),(9,'2025-12-04 20:03:14.186634',NULL,NULL,NULL,37,1,7),(10,'2025-12-04 20:03:24.548616',NULL,NULL,NULL,38,2,8),(11,'2025-12-04 20:03:38.253418',NULL,NULL,NULL,39,3,9),(12,'2025-12-04 20:03:46.352137',NULL,NULL,NULL,40,5,10);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
