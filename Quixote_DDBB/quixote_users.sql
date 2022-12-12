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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `name_user` varchar(45) NOT NULL,
  `surname_user` varchar(45) NOT NULL,
  `mail_user` varchar(45) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `role` enum('master','admin','user') NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pedro','Aguilar','pedroaguilar@fincaquixote.es','$2a$11$uvns0Ld7cimmp1Zx9E.dLOn4q.CUsoCboS3D7Sm4hS/JSOCJb9use','master',1),(2,'Andres','Gomez','andresgomez@fincaquixote.es','$2a$11$SmSPT4VS3UM2dZrmqL2V/OIzBy/kmIUDcS7uel9q3NlgbrmefzmE6','admin',0),(3,'Jose','Perez','joseperez@fincaquixote.es','$2a$11$EMsTj4w4ZoMnrlPjVpFZ4eKWoa.xZ.kGnRLe.O6mHqog7u7J1y1ne','user',1),(6,'Jose','Pizarroso','ivanpizarroso@gmail.com','$2a$11$143boMXVLwYmn6WPPrHyY.We0H86hCrhkkRbd3y5J1Us2h5DQ067a','user',1),(10,'Paco','Pizarroso','martinpizarroso@gmail.com','$2a$11$mqgfZEhhue7GvPjjvtNIYuhHeRMKDgvnchSHB2BF6CJAddMYs98jO','user',1),(11,'Germán','Ruiz Pastor','germanruizpastor@gmail.com','$2a$11$ePda9KCdcUO8EdcTc/GL2e4l5l.qgpQgH2OsJrGeaFOfw2Wa4sI4.','admin',1),(29,'Paco','Pizarroso','martinpizarroso@gmail.com','$2a$11$XGWNB8B5l2OjJ/OQK9cgxeiVs1OSB24OTGkqhD6Vtd1EyfH6ke8IC','user',1),(30,'Jose','Pastor','germanruizpastor@gmail.com','$2a$11$GfjBoEzYHzr4.SYU80TLV.NzND.HQ/Lra0lArjHoCnfUDrnjxR79e','user',0),(32,'Antonio','Ruiz ','antonio@hotmail.com','$2a$11$WLO7pSoVODJ/x/pS.TKqc.yTkYY/edCYQl3OCMPAQAj554/9IGG.S','user',0),(35,'Antonio','Velasco','verlasco@hotmail.com','$2a$11$ghz/sopE32me7kEDMVcXR.kjl3qxkISevjt6LYNw8PSQLfa12Jj.e','user',0),(36,'Juan','Ruiz Pastor','juan@hotmail.com','$2a$11$5TawAi5yaLjDQuNvlEksoeY7khDCow/zpPEwawlOUyWxH8NY//.8m','user',1),(38,'Jose','Serrano','jose@hotmail.com','$2a$11$JZF7LLfO71YlbRCgcb2UWOIUDY31/hzIEQAJg4yvju/hK/pUqdbhu','user',1),(39,'Francisco','Gomez','paco@hotmail.com','$2a$11$caGCFEbnXN4pV3S6QQgi7.qBmS/XVPRzckY/fFndvMsAWAlyS845i','user',1),(40,'luis','Gutierrez','luis@hotmail.com','$2a$11$1Qluy8SmB68.sQh14RmOQ.SL/2PojSCTDTjrMTt.a50Hx871J1Ek2','user',1),(68,'Juan','Martinez','jumarlinares@gmail.com','$2a$11$EOrTZIVjga9NPqI4uzrbL.i0wulI2JrsKaXLGutYF6ayfbiUKrZ5W','admin',1),(71,'Ivan','Pizarroso','ivnp31@gmail.com','$2a$11$KeTErT/iCDZHj8eQiAEA1eREoN9p80FgPkRhwDUeTS60aE65Xrzgu','admin',1),(72,'Alfonso','Hidaldo','ajhidaldo@gmail.com','$2a$11$21V7gW7vbiRl3Q/0B/1sW.E9EH7FBdHXBUoB5osp4cOhliuankqF6','admin',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
