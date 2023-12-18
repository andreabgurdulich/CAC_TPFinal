-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: integrador_cac
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `orador`
--

DROP TABLE IF EXISTS `orador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orador` (
  `id_orador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_orador`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orador`
--

LOCK TABLES `orador` WRITE;
/*!40000 ALTER TABLE `orador` DISABLE KEYS */;
INSERT INTO `orador` VALUES (1,'Harry','Potter','harrypotter@hotmail.com','Prueba','2023-11-07 23:31:01',0),(2,'Ron','Weasley','ronweasley@gmail.com','Javascript','2023-11-07 23:32:53',1),(3,'Hermione','Granger','hermione@gmail.com','PHP','2023-11-07 23:33:32',1),(4,'Neville','Longbottom','neville@gmail.com','CSS','2023-11-07 23:34:14',1),(5,'Lavender','Brown','lbrown@gmail.com','Bootstrap','2023-11-07 23:34:39',1),(6,'Dean','Thomas','thomasd@gmail.com','React','2023-11-07 23:35:38',1),(7,'Seamus','Finningan','seamusfinnigan@gmail.com','Ruby','2023-11-07 23:36:31',1),(8,'Pansy','Parkinson','pansyparkinson@gmail.com','PHP','2023-11-07 23:37:05',1),(9,'Draco','Malfoy','dracomalfoy@gmail.com','Python','2023-11-07 23:38:12',1),(29,'Andrea','Gurdulich','andreabgurdulich@gmail.com','Test','2023-12-18 23:39:34',1);
/*!40000 ALTER TABLE `orador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 20:43:32
