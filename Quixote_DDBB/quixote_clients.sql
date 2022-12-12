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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `name_client` varchar(45) NOT NULL,
  `mail_client` varchar(45) NOT NULL,
  `direction` varchar(245) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Frutas Antonio s.l','frutasantonio@gmail.com','C/ Argamasilla 2, Albacete','658785412',1),(2,'Hortalizas España ','hortalizasespaña@gmail.com','Pol. Las Huertas 123, Ciudad Real','632856987',0),(3,'Alimentacion Puri s.l','alimentacionpuri@hotmail.com','C/ Siloe 23, Valladolid','648875632',1),(4,'Comestibles Ecologicos s.a','administracion@comestiblesecologicos.es','Pol. El Florio 54, Sevilla','615784683',1),(5,'Super Frut s.a','compras@superfrut.es','Pol. El Valle s/n , Cordoba','638749586',1),(6,'antonio Meyer','hugoñeyér_209@yahoo.com','HovenStrasse 31, 1. Switzerland','4178899274',1),(8,'Comercial Arenas S A','arenas@gmail.com','c/ esperanza 1','789487758',1),(9,'Fruteros SL','fruteros@gmail.com','c/ lorite ,4','458458885',1),(10,'El Rincon Sl','rincon@gmail.com','c/ tetuan','658785458',1),(11,'Frutas Frescas SA','frutasfrescas@gmail.com','c/ glorieta ,2 ','658458785',1),(12,'Hortalizas Hnos. Fernandez','hnosfernandez@gmail.com','C/ galicia ,1','456123789',0),(13,'Conservera del Campo','delcampo@gmail.com','c/ gloria vendita ,1','456789123',0),(14,'Alcampo SA','Alcampo@gmail.com','c/ vendito sea ,1','789456123',1),(15,'Frutas Hnos. Braojos SL','frutasbraojos@gmail.com','c/ fruteria,3','789456123',1),(16,'Carrefour','carrefour@gamil.es','Pol. El Señorio,5','1234567890',1);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
