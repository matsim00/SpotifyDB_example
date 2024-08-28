-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: SpotifyDB
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `SpotifyDB`
--

USE `SpotifyDB`;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `id_album` int NOT NULL,
  `nome_album` varchar(255) NOT NULL,
  `id_artista` int NOT NULL,
  `data_uscita` varchar(255) NOT NULL,
  PRIMARY KEY (`id_album`),
  KEY `album_index_2` (`id_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (0,'la divina commedia',1,'2023'),(1,'mowgli',1,'2018'),(2,'vita vera mixtape',1,'2020'),(3,'don\'t panic',1,'2021'),(4,'re mida',0,'2019'),(5,'sirio',0,'2022'),(6,'persona',4,'2019'),(7,'noi, loro, gli altri',4,'2021'),(8,'santeria',3,'2016'),(9,'mr fini',3,'2015'),(10,'23 6451',5,'2019'),(11,'c@ra++ere s?ec!@le',5,'2022'),(12,'la divina commedia deluxe',1,'2024');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisti`
--

DROP TABLE IF EXISTS `artisti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artisti` (
  `id_artista` int NOT NULL,
  `nome_artista` varchar(255) NOT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisti`
--

LOCK TABLES `artisti` WRITE;
/*!40000 ALTER TABLE `artisti` DISABLE KEYS */;
INSERT INTO `artisti` VALUES (0,'lazza'),(1,'tedua'),(2,'rose villain'),(3,'gue pequeno'),(4,'marracash'),(5,'tha supreme ft tedua'),(6,'kid yugi'),(7,'izi');
/*!40000 ALTER TABLE `artisti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canzoni`
--

DROP TABLE IF EXISTS `canzoni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canzoni` (
  `id_canzone` int NOT NULL,
  `titolo_canzone` varchar(255) NOT NULL,
  `id_album` int NOT NULL,
  `id_playlist` int NOT NULL,
  PRIMARY KEY (`id_canzone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canzoni`
--

LOCK TABLES `canzoni` WRITE;
/*!40000 ALTER TABLE `canzoni` DISABLE KEYS */;
INSERT INTO `canzoni` VALUES (0,'malamente',0,0),(1,'paradiso artificiale',0,0),(2,'bagagli ',0,0),(3,'diluvio a luglio',0,0),(4,'red light ',0,0),(5,'soffierà',0,0),(6,'intro la divina commedia',0,0),(7,'sangue misto',1,0),(8,'vertigini',1,0),(9,'acqua',1,0),(10,'polvere',2,0),(11,'lo sai',2,0),(12,'morto mai',4,2),(15,'dimmi che c\'è',11,1),(16,'kill bill',12,0),(17,'jolly roger',12,0),(18,'mare calmo',12,0),(19,'angelo custode',12,0),(20,'paradiso II',12,0);
/*!40000 ALTER TABLE `canzoni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id_playlist` int NOT NULL,
  `titolo_playlist` varchar(255) NOT NULL,
  PRIMARY KEY (`id_playlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (0,'tedua'),(1,'tha supreme ft tedua'),(2,'lazza');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-28 10:19:39
