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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `name_product` varchar(45) NOT NULL,
  `origin` enum('campo','refrigeracion') NOT NULL,
  `caliber` enum('pequeño','mediano','grande') NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `stock_initial` int NOT NULL,
  `stock_now` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `image` varchar(245) DEFAULT '../../../assets/images/noimagen.jpg',
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Tomate Otelo','campo','mediano',0.34,50000,47927,1,'aeef5915b11d704516b326e8edb0cd18.jpeg'),(2,'Tomate Irati','campo','grande',0.35,55000,55000,1,'0f602bdff2f6646e5a77aec462697cb3.jpeg'),(3,'Tomate Pera','campo','pequeño',0.47,32000,30157,1,'28dd9ff79a8b7982398494ec62cb1179.jpeg'),(4,'Melón Galia','campo','mediano',0.40,15000,15000,1,'b81f8652c81f3ca56a9d1db7d3b5c500.jpeg'),(5,'Melón Piel de Sapo','campo','mediano',0.20,18000,14000,1,'9cfc0dc5db008ca3107dba44fd32321e.jpeg'),(6,'Sandia Rayada','campo','grande',0.25,20000,19166,1,'ec5657f7adb771bc64cd9f27b5bd2349.jpeg'),(7,'Cebolla Reca','campo','mediano',0.12,40000,39679,1,'f55048a4278bcd923b867bfe33d0f597.jpeg'),(8,'Cebolla Roja','campo','pequeño',0.15,34000,34000,1,'fd9948eaf2f98c0a63a73107639a3058.jpeg'),(9,'Ajo Blanco','refrigeracion','grande',0.20,13000,13000,1,'fc7cc6bd42f97934e1f9f608e6bd0991.jpeg'),(10,'Ajo Morado','refrigeracion','mediano',0.18,15000,0,0,'692044629bcc59a0bc3192f6a4f13934.jpeg'),(11,'Calabaza Butternut','campo','grande',0.60,35000,35000,1,'c861fbb1887a4c964447ac9442f2427e.jpeg'),(12,'Patata','campo','mediano',0.30,0,0,0,'43f5a7ef15b7bafee3f1acd8d02ac1ff.jpeg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
