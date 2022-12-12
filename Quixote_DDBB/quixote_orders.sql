-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: quixote
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `id_product` int NOT NULL,
  `vol_sale` int NOT NULL,
  `shipping` enum('paquete','palets completo','palets incompleto') NOT NULL,
  `meth_payment` enum('tarjeta','otros') NOT NULL DEFAULT 'tarjeta',
  `price_sale` float NOT NULL,
  `id_user` int NOT NULL,
  `date_order` date NOT NULL,
  `status` enum('aceptado','denegado','pendiente') NOT NULL,
  `comment` varchar(245) DEFAULT 'sin comentario',
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,5,50,'paquete','tarjeta',0.95,1,'2022-11-30','pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(2,1,6,300,'paquete','tarjeta',0.6,1,'2022-12-01','aceptado','aceptado el precio'),(3,2,6,1000,'palets completo','tarjeta',0.7,2,'2022-11-30','pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(5,2,11,2000,'palets completo','tarjeta',1,2,'2022-06-20','aceptado','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor'),(9,3,6,15,'paquete','tarjeta',1.2,3,'2022-06-30','aceptado','sin comentario'),(11,4,1,70,'palets incompleto','otros',1.3,6,'2022-05-18','aceptado','sin comentario'),(12,4,2,100,'palets incompleto','tarjeta',0.4,10,'2022-05-20','aceptado','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(13,4,3,120,'palets incompleto','tarjeta',0.9,11,'2022-06-20','aceptado','sin comentario'),(14,5,7,30,'palets incompleto','tarjeta',1.1,29,'2022-05-18','aceptado','sin comentario'),(15,5,8,40,'paquete','otros',1.23,30,'2022-07-05','denegado','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(16,5,9,20,'palets completo','tarjeta',0.95,32,'2022-07-10','aceptado','sin comentario'),(17,5,15,10,'paquete','tarjeta',0.24,35,'2022-12-01','aceptado','sin comentario'),(18,5,10,10000,'palets completo','tarjeta',0.95,36,'2022-11-10','aceptado','sin comentario'),(39,2,12,1000,'palets completo','tarjeta',0.23,38,'2022-12-20','denegado','sin comentarios'),(40,1,10,5000,'palets completo','tarjeta',0.2,40,'2022-12-20','aceptado','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(63,6,7,100,'palets incompleto','otros',0.18,68,'2022-05-18','pendiente','revisar precio'),(301,2,1,100,'palets incompleto','tarjeta',0.24,71,'2022-06-20','aceptado','acepts'),(302,5,5,10,'paquete','tarjeta',0.24,2,'2022-06-20','aceptado','sin comentarios'),(303,2,4,10,'paquete','otros',0.95,1,'2022-11-30','denegado','sin comentario'),(304,3,7,140,'palets incompleto','tarjeta',1,3,'2022-11-30','aceptado','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(305,12,3,1000,'palets completo','tarjeta',1,6,'2022-12-01','denegado','mira el precio'),(306,5,5,12,'paquete','tarjeta',0.95,11,'2022-11-30','pendiente',''),(307,7,8,3,'paquete','tarjeta',0.24,10,'2022-11-30','pendiente','sin comentario'),(308,11,11,213,'palets incompleto','tarjeta',3,40,'2022-06-20','pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(309,8,9,213,'palets incompleto','otros',0.95,39,'2022-12-01','pendiente','sin comentario'),(310,12,3,213,'palets incompleto','tarjeta',0.18,68,'2022-11-30','pendiente',''),(311,9,6,213,'palets incompleto','tarjeta',3,71,'2022-11-30','pendiente','sin comentario'),(312,15,5,100,'palets incompleto','tarjeta',0.24,35,'2022-06-20','pendiente',''),(313,14,7,3,'paquete','tarjeta',0.95,36,'2022-11-30','aceptado','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(314,14,6,54,'paquete','otros',0.18,29,'2022-11-30','aceptado','sin comentario'),(315,13,8,56,'paquete','tarjeta',0.18,1,'2022-12-01','pendiente',''),(316,16,9,100,'palets incompleto','tarjeta',0.24,3,'2022-06-20','aceptado','aceptado el precio'),(317,3,11,56,'paquete','tarjeta',0.18,2,'2022-11-30','pendiente','sin comentario'),(318,4,4,343,'palets incompleto','tarjeta',3,10,'2022-12-01','pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(319,7,2,345,'palets incompleto','otros',0.24,6,'2022-11-30','pendiente','sin comentario'),(320,8,6,456,'palets incompleto','tarjeta',0.18,30,'2022-06-20','pendiente',''),(321,10,8,345,'palets incompleto','tarjeta',3,32,'2022-12-01','aceptado','aceptado el precio'),(322,10,5,456,'palets incompleto','tarjeta',0.24,36,'2022-11-30','pendiente',''),(323,11,6,56,'paquete','tarjeta',0.18,39,'2022-11-30','pendiente',''),(324,16,2,56,'paquete','otros',0.24,71,'2022-06-20','pendiente',''),(325,15,8,567,'palets incompleto','tarjeta',0.18,30,'2022-11-30','pendiente','sin comentario'),(326,4,2,1000,'palets completo','tarjeta',0.18,35,'2022-11-30','pendiente','sin comentario'),(327,2,9,567,'palets incompleto','tarjeta',0.24,1,'2022-12-01','pendiente',''),(328,1,11,1400,'palets completo','otros',0.18,3,'2022-11-30','pendiente','sin comentario'),(329,1,11,567,'palets incompleto','tarjeta',0.18,10,'2022-06-20','pendiente',''),(330,5,4,567,'palets incompleto','tarjeta',0.24,11,'2022-12-01','pendiente','sin comentario'),(331,7,6,567,'palets incompleto','tarjeta',0.18,10,'2022-11-30','pendiente',''),(332,8,7,567,'palets incompleto','tarjeta',0.18,29,'2022-11-30','pendiente',''),(333,2,4,2390,'paquete','otros',0.24,68,'2022-12-01','aceptado','sin comentario'),(334,2,7,345,'palets incompleto','tarjeta',0.18,71,'2022-06-20','pendiente',''),(335,8,9,432,'palets incompleto','tarjeta',0.18,6,'2022-11-30','aceptado','sin comentario'),(336,12,2,345,'palets incompleto','tarjeta',0.18,39,'2022-05-18','denegado','sin comentario'),(337,9,5,800,'palets incompleto','tarjeta',1,68,'2022-12-01','denegado','denegado'),(338,8,3,546,'palets incompleto','tarjeta',6,71,'2022-12-01','aceptado','aceptado'),(339,12,6,1290,'palets completo','tarjeta',0.18,29,'2022-05-18','aceptado','revisar pedido'),(340,16,7,546,'palets incompleto','tarjeta',0.95,30,'2022-06-20','aceptado',''),(341,13,11,234,'palets incompleto','otros',0.18,32,'2022-12-01','aceptado','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(342,3,4,1000,'palets completo','tarjeta',0.24,35,'2022-05-18','aceptado','aceptado el precio'),(343,5,6,23,'paquete','tarjeta',0.95,36,'2022-12-01','aceptado','aceptado el precio'),(344,6,7,45,'paquete','tarjeta',0.18,1,'2022-12-01','aceptado','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(345,12,2,456,'palets incompleto','tarjeta',0.18,2,'2022-06-20','aceptado','aceptado el precio'),(346,7,8,456,'palets incompleto','tarjeta',0.95,3,'2022-12-01','aceptado',''),(347,6,4,500,'palets incompleto','tarjeta',0.24,11,'2022-05-18','aceptado','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commo'),(348,4,7,435,'palets incompleto','otros',0.18,1,'2022-12-01','aceptado','revisa precio'),(349,5,5,34,'paquete','tarjeta',0.18,3,'2022-12-01','denegado','denegado');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-01 14:27:57
