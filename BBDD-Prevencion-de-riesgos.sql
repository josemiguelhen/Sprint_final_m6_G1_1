CREATE DATABASE  IF NOT EXISTS `prevencion_de_riesgos` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `prevencion_de_riesgos`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prevencion_de_riesgos
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accidentes`
--

DROP TABLE IF EXISTS `accidentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accidentes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `fecha_accidente` date DEFAULT NULL,
  `detalle` text,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `accidentes_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accidentes`
--

LOCK TABLES `accidentes` WRITE;
/*!40000 ALTER TABLE `accidentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `accidentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrativo`
--

DROP TABLE IF EXISTS `administrativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrativo` (
  `id` int NOT NULL,
  `nombre_a` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `experiencia_previa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `administrativo_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrativo`
--

LOCK TABLES `administrativo` WRITE;
/*!40000 ALTER TABLE `administrativo` DISABLE KEYS */;
INSERT INTO `administrativo` VALUES (4,'Pedro','Recursos Humanos','3 años'),(5,'Marta','Contabilidad','2 años'),(6,'Pablo','Administración','4 años'),(11,'María Fernández','Desarrollo','20 años'),(12,'María Fernández','Desarrollo','20 años');
/*!40000 ALTER TABLE `administrativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asesorias`
--

DROP TABLE IF EXISTS `asesorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asesorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `detalle` text,
  `profesional_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profesional_id` (`profesional_id`),
  CONSTRAINT `asesorias_ibfk_1` FOREIGN KEY (`profesional_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asesorias`
--

LOCK TABLES `asesorias` WRITE;
/*!40000 ALTER TABLE `asesorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `asesorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistentes`
--

DROP TABLE IF EXISTS `asistentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistentes` (
  `capacitacion_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`capacitacion_id`,`usuario_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `asistentes_ibfk_1` FOREIGN KEY (`capacitacion_id`) REFERENCES `capacitaciones` (`id`),
  CONSTRAINT `asistentes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistentes`
--

LOCK TABLES `asistentes` WRITE;
/*!40000 ALTER TABLE `asistentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capacitaciones`
--

DROP TABLE IF EXISTS `capacitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capacitaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `detalle` varchar(120) DEFAULT NULL,
  `rut_cliente` int DEFAULT NULL,
  `dia` varchar(11) DEFAULT NULL,
  `hora` varchar(6) DEFAULT NULL,
  `lugar` varchar(50) DEFAULT NULL,
  `duracion` varchar(70) DEFAULT NULL,
  `cantidad_asistentes` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacitaciones`
--

LOCK TABLES `capacitaciones` WRITE;
/*!40000 ALTER TABLE `capacitaciones` DISABLE KEYS */;
INSERT INTO `capacitaciones` VALUES (1,'Uso adecuado de extintores','Aprende a identificar los tipos de incendios y cómo utilizar extintores de manera segura.',12345678,'Lunes','09:00','Sala de conferencias A','2 horas',30),(2,'Elementos de seguridad en el trabajo','Conoce elementos de protección personal y cómo utilizarlos correctamente.',11223344,'Martes','14:30','Salón de capacitaciones B','1.5 horas',25),(3,'Charla informativa sobre normativas','Descubre normativas y regulaciones vigentes en seguridad laboral y cómo cumplirlas.',55667788,'Miércoles','11:00','Auditorio principal','1 hora',50),(4,'Prevención de riesgos en manejo químico','Identifica riesgos y medidas preventivas para manejo de sustancias químicas.',87654321,'Jueves','15:30','Sala de conferencias C','2 horas',40),(5,'Seguridad en altura y manejo de herramientas','Riesgos en trabajo en altura y uso seguro de herramientas, medidas de prevención.',15975346,'Sábado','10:00','Salón de capacitaciones A','1.5 horas',20),(6,'Primeros auxilios en el trabajo','Aprende primeros auxilios y cómo actuar en caso de accidentes o emergencias laborales.',14736925,'Domingo','13:30','Auditorio principal','1 hora',60),(7,'Ergonomía y prevención de lesiones','Mejora la ergonomía en tu lugar de trabajo para prevenir lesiones y promover entorno saludable.',14367496,'Viernes','09:00','Sala de conferencias B','2 horas',35),(8,'Seguridad eléctrica en el trabajo','Conoce peligros asociados a la electricidad y medidas de seguridad para evitar accidentes.',12789832,'Miércoles','14:30','Salón de capacitaciones C','1.5 horas',30),(9,'Manejo seguro de maquinaria','Aprende procedimientos seguros para manejo de maquinaria industrial y prevén riesgos.',14796385,'Lunes','11:00','Auditorio principal','1 hora',45),(10,'Prevención de caídas y protección','Prevención de caídas en el trabajo y uso adecuado de equipos de protección.',98741236,'Martes','15:30','Sala de conferencias A','2 horas',25);
/*!40000 ALTER TABLE `capacitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chequeos`
--

DROP TABLE IF EXISTS `chequeos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chequeos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visita_id` int DEFAULT NULL,
  `detalle` text,
  `estado` enum('Pendiente','Completado') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visita_id` (`visita_id`),
  CONSTRAINT `chequeos_ibfk_1` FOREIGN KEY (`visita_id`) REFERENCES `visitas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chequeos`
--

LOCK TABLES `chequeos` WRITE;
/*!40000 ALTER TABLE `chequeos` DISABLE KEYS */;
/*!40000 ALTER TABLE `chequeos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `comuna` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `rut` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut_UNIQUE` (`rut`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan','Pérez',123456789,'Calle 123','Santiago',30,123456789),(2,'María','González',987654321,'Avenida 456','Valparaíso',25,987654321),(3,'Carlos','López',555555555,'Ruta 789','Concepción',40,345678901);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha_pago` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,1,245000.00,'2023-08-01 15:05:00');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesional`
--

DROP TABLE IF EXISTS `profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesional` (
  `id` int NOT NULL,
  `nombre_p` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `profesional_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesional`
--

LOCK TABLES `profesional` WRITE;
/*!40000 ALTER TABLE `profesional` DISABLE KEYS */;
INSERT INTO `profesional` VALUES (7,'Gabriel','Ingeniero','2021-05-10'),(8,'Natalia','Arquitecta','2020-02-15'),(9,'Martín','Contador','2019-08-20');
/*!40000 ALTER TABLE `profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `rol` enum('Cliente','Administrativo','Profesional') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Juan','$2a$10$7lgm/idmFqa7zDdxKICTyeqyEvWb/7gqyRoDFfPgyh9OHDaw4K89K','Cliente'),(2,'María','$2a$10$7lgm/idmFqa7zDdxKICTyeqyEvWb/7gqyRoDFfPgyh9OHDaw4K89K','Cliente'),(3,'Carlos','$2a$10$7lgm/idmFqa7zDdxKICTyeqyEvWb/7gqyRoDFfPgyh9OHDaw4K89K','Cliente'),(4,'Pedro','$2a$10$7lgm/idmFqa7zDdxKICTyeqyEvWb/7gqyRoDFfPgyh9OHDaw4K89K','Administrativo'),(5,'Marta','$2a$10$7lgm/idmFqa7zDdxKICTyeqyEvWb/7gqyRoDFfPgyh9OHDaw4K89K','Administrativo'),(6,'Pablo','$2a$10$7lgm/idmFqa7zDdxKICTyeqyEvWb/7gqyRoDFfPgyh9OHDaw4K89K','Administrativo'),(7,'Gabriel','$2a$10$7lgm/idmFqa7zDdxKICTyeqyEvWb/7gqyRoDFfPgyh9OHDaw4K89K','Profesional'),(8,'Natalia','$2a$10$7lgm/idmFqa7zDdxKICTyeqyEvWb/7gqyRoDFfPgyh9OHDaw4K89K','Profesional'),(9,'Martín','$2a$10$7lgm/idmFqa7zDdxKICTyeqyEvWb/7gqyRoDFfPgyh9OHDaw4K89K','Profesional'),(10,'Jesu','1234','Administrativo'),(11,'Jesu','$2a$10$Rd6qaIuxItkcDNWIeO0a8OKk2.5N8RW6Wt7Wo1HuJq/WWxU4bEyT2','Administrativo'),(12,'Jesu','$2a$10$BN83IoGbj54zfcQlM0xqbefki2.C3BDpmEUfcOHFLjYdi98zzNyR.','Administrativo'),(13,'Jose','$2a$10$zh9X5XIAJIDcm3z.V8TWK.v1iNfnFLhHJoSMof4jHnKco1VvKOnpO','Cliente'),(14,'Monserrat','$2a$10$XaZP31ZEuixlmZBgKgmUZeNVeL0hXzP51ohdOwhW40zg.AgCh32h2','Profesional'),(15,'admin','$2a$10$MnmPAMZps3ZxAyoclqSt4O6xz9xdhWg6nHPSiybuJLBh.jLVnTbru','Administrativo');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitas`
--

DROP TABLE IF EXISTS `visitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rut_cliente` int DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `lugar` text,
  `comentarios` text,
  `profesional_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visitas_ibfk_2_idx` (`profesional_id`),
  KEY `visitas_ibfk_1_idx` (`rut_cliente`,`profesional_id`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`rut_cliente`) REFERENCES `cliente` (`rut`),
  CONSTRAINT `fk_prof` FOREIGN KEY (`profesional_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitas`
--

LOCK TABLES `visitas` WRITE;
/*!40000 ALTER TABLE `visitas` DISABLE KEYS */;
INSERT INTO `visitas` VALUES (1,123456789,'2022-05-10 00:00:00','Oficinas Presidente Riesco','Se acuerda visita en terreno proyecto en curso',7),(2,987654321,'2021-02-15 00:00:00','Visita en terreno proyecto en curso','Preparar presentación con las observaciones para implementación',8),(3,345678901,'2020-08-20 00:00:00','Oficina arquitecto Presidente Riesco','Revisión contratos puntos 7a, 8b y 11b',9),(13,123456789,'2023-08-02 14:00:00','jsank','janxjklas',7);
/*!40000 ALTER TABLE `visitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'prevencion_de_riesgos'
--

--
-- Dumping routines for database 'prevencion_de_riesgos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-09  2:44:53
