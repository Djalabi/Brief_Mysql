-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: boutique
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `_client`
--

DROP TABLE IF EXISTS `_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_client` (
  `id_cl` int NOT NULL AUTO_INCREMENT,
  `nom_cl` varchar(30) NOT NULL,
  `prenom_cl` varchar(30) NOT NULL,
  `sexe_cl` char(1) DEFAULT NULL,
  `tel_cl` varchar(25) NOT NULL,
  PRIMARY KEY (`id_cl`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_client`
--

LOCK TABLES `_client` WRITE;
/*!40000 ALTER TABLE `_client` DISABLE KEYS */;
INSERT INTO `_client` VALUES (1,'Mahamat','Abakar','M','00235 66000001'),(2,'Brahim','Kabo','M','00235 66000002'),(3,'Saleh','Ali','M','00235 66000003'),(4,'Guetnan','Honoré','M','00235 66000004'),(5,'Khadidja','Ahmat','F','00235 66000005'),(6,'Zeinab','Mahamat','F','00235 66000006'),(7,'Djimtoloum','Sonia','F','00235 66000007'),(8,'Djeguedem','Hubert','M','00235 66000008'),(9,'Rj','Salomon','M','00235 66000009'),(10,'Deneramba','Alliance','F','00235 66000010');
/*!40000 ALTER TABLE `_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id_article` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(30) NOT NULL,
  `prix` float NOT NULL,
  `quantite` varchar(30) DEFAULT NULL,
  `id_client` int NOT NULL,
  `id_boutiquier` int NOT NULL,
  PRIMARY KEY (`id_article`),
  KEY `fk_cl_id` (`id_client`),
  KEY `fk_boot_id` (`id_boutiquier`),
  CONSTRAINT `fk_boot_id` FOREIGN KEY (`id_boutiquier`) REFERENCES `boutiquier` (`id_boot`),
  CONSTRAINT `fk_cl_id` FOREIGN KEY (`id_client`) REFERENCES `_client` (`id_cl`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Clé USB 128Go',5000,'100',1,3),(2,'Ordinateur MacBookPro',500000,'1',6,5),(3,'Disk Dur 500Go',40000,'3',7,4),(4,'USB 4Go',1500,'25',2,1),(5,'USB 8Go',3000,'4',8,2),(6,'Ordinateur hp corei5',150000,'2',1,10),(7,'Disc Dur 320Go',25000,'2',5,8),(8,'Souris cable',1500,'25',9,7),(9,'Souris sans cable',5000,'3',3,6),(10,'Ordiateur PB',35000,'35',2,9);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boutiquier`
--

DROP TABLE IF EXISTS `boutiquier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boutiquier` (
  `id_boot` int NOT NULL AUTO_INCREMENT,
  `nom_boot` varchar(30) NOT NULL,
  `prenom_boot` varchar(30) NOT NULL,
  `sexe_boot` char(1) DEFAULT NULL,
  `status_boot` varchar(25) NOT NULL,
  PRIMARY KEY (`id_boot`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boutiquier`
--

LOCK TABLES `boutiquier` WRITE;
/*!40000 ALTER TABLE `boutiquier` DISABLE KEYS */;
INSERT INTO `boutiquier` VALUES (1,'Mariam','Mahamat','F','proprietaire All'),(2,'Adoum','Grene','M','travailleur A3'),(3,'Yano','Dari','M','travailleur A2'),(4,'Hisseine','Hassane','M','travailleur A2'),(5,'Minguebeye','Valerie','F','travailleur A1'),(6,'Abakar','Mallah','M','travailleur A3'),(7,'Ronyliam','Sonia','F','travailleur A2'),(8,'Nassir','Ahmat','M','travailleur A2'),(9,'Elvis','Fouba','M','travailleur A3'),(10,'Danimbe','Fred','M','travailleur A0');
/*!40000 ALTER TABLE `boutiquier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-10 12:38:23
