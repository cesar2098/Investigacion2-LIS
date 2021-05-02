/*
MySQL Backup
Database: escuela
Backup Time: 2021-05-02 11:34:44
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `escuela`.`alumnos`;
DROP TABLE IF EXISTS `escuela`.`notas`;
CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curso` varchar(45) DEFAULT NULL,
  `nota` int(11) DEFAULT NULL,
  `alumno_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notas_alumnos_idx` (`alumno_id`),
  CONSTRAINT `fk_notas_alumnos` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
BEGIN;
LOCK TABLES `escuela`.`alumnos` WRITE;
DELETE FROM `escuela`.`alumnos`;
INSERT INTO `escuela`.`alumnos` (`id`,`nombre`,`email`,`created_at`,`updated_at`) VALUES (1, 'andre', 'andre_rivera@hotmail.com', '2021-05-02 11:25:41', '2021-05-02 11:25:41'),(2, 'Jose', 'jose@hotmail.com', '2021-05-02 11:25:41', '2021-05-02 11:25:41'),(3, 'eduardo', 'eduardo@hotmail.com', '2021-05-02 11:25:41', '2021-05-02 11:25:41'),(4, 'karina', 'karina@hotmail.com', '2021-05-02 11:25:41', '2021-05-02 11:25:41'),(30, 'CESAR MARTINEZ', 'cesar@gmail.com', '2021-05-02 17:31:13', '2021-05-02 17:31:13');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `escuela`.`notas` WRITE;
DELETE FROM `escuela`.`notas`;
INSERT INTO `escuela`.`notas` (`id`,`curso`,`nota`,`alumno_id`,`created_at`,`updated_at`) VALUES (1, 'Html', 10, 1, '2021-05-02 11:30:01', '2021-05-02 11:30:01'),(2, 'Ingles', 8, 1, '2021-05-02 11:30:01', '2021-05-02 11:30:01'),(3, 'Programacion', 9, 2, '2021-05-02 11:30:01', '2021-05-02 11:30:01'),(4, 'Lenguaje Interpretado en el Servidor', 10, 30, '2021-05-02 17:34:14', '2021-05-02 17:34:14');
UNLOCK TABLES;
COMMIT;
