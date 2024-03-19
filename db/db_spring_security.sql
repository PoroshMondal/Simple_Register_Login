-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spring_security
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `role` enum('USER','ADMIN') DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Porosh','Mondal',NULL,'$2a$10$pRL5LMWLN.qeBRJaSQwpnuG3uoaIyQASgyScibbUMbCwNa9sflvpK','helloPorosh'),(2,'Porosh','Mondal','USER','$2a$10$8zxMgrONrE4WNb9tw4IRnekZmOm2Kd6hjb2CiHs1WhTNLBxuIwg/.','helloPorosh'),(3,NULL,NULL,NULL,'$2a$10$NyHEDFBu5Xfi9STX8EhC4uI0dd826.YLGBxTfT6RZsnPibZiYVlGe','helloPorosh'),(4,'Porosh','Mondal','USER','$2a$10$g2Di6Xug39oKuEAJ2HVxa.FJAVyKOI54JmW6VWXqmaKtIhLssw8Je','helloPorosh'),(5,NULL,NULL,NULL,'$2a$10$QLZ7.dWedXgLzQoTYsAm7eRLWt78wk6n8xJHKtWsKFia4oSmx3t2G','helloPorosh'),(6,'Porosh','Mondal','USER','$2a$10$ttVgJHrdyy4r98Db8OfNdOGpJPCa9gMIrEyg.XVyiPO2PoLvFryRS','helloPorosh2'),(7,'Porosh','Mondal','ADMIN','$2a$10$HcZ1y.4RBV8oda42gAdJieT6df4/7aDoeZAf6QWDlHQ8wJErAU.N6','helloPorosh00'),(8,NULL,NULL,NULL,'$2a$10$9sfuUuaEYAw9igEODZBTW.QYEhjvIwNEHq./Sj7tzcih/bx2.3xfK','helloPorosh'),(9,'Porosh','Mondal','ADMIN','$2a$10$SFQuP8h883O2hVguMRMEtOTaDz4r8oGfjpK5IvXFLMJ2sVpNv1zbS','helloPorosh001'),(10,'Porosh','Mondal','ADMIN','$2a$10$jEvIqQCKDyhBGtPepRePVeYvCfhVA3KzvgIT8QMeFNaTZL4O/sUp6','helloPorosh001'),(11,'Porosh','Mondal','ADMIN','$2a$10$iD9ns1I2rUHWPJ1jGFDftuWTeazdxRxIehVT6q/3lPqavj1/IA7VW','helloPorosh001'),(12,'Porosh','Mondal','USER','$2a$10$tlSLuhqxDRGFli0mc0JO/ucPbPdJ7QId0aMyCo4ZekGLuZ0IZ0Ldi','helloPorosh0013'),(13,'Porosh','Mondal','USER','$2a$10$XCZVtH59C0aoP.4JY6eY8u8Vv0pq2ZtmipD90m.eqpA2Ty3yvmEHm','Porosh0013'),(14,'Jhon','wILL','USER','$2a$10$Qmn9rrqFfP6hYc7v.cuuleKNprNtwaeUkopvPq2ldjnAZtiziPd4i','Jhon'),(15,'Jhonson','Will','ADMIN','$2a$10$Fv/4dixBNQiYfvHaSwyfK.Hojk5oVFkUuJBiYA8I7qIYBFGITSZIG','Jhonson'),(16,'Jhonson','Will','ADMIN','$2a$10$YQMGxSw2CPcciVCuwgWgz.PfVaRX6SdX.SiLjTfVTjIIeO1DmJL9W','JhonsonWill');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-01  9:52:09
