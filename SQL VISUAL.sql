-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: klinik
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `biodata_pasien`
--

DROP TABLE IF EXISTS `biodata_pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biodata_pasien` (
  `id_pasien` char(4) NOT NULL,
  `nama_pasien` varchar(30) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat_pasien` varchar(30) DEFAULT NULL,
  `nomor_telepon` varchar(12) DEFAULT NULL,
  `riwayat_alergi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata_pasien`
--

LOCK TABLES `biodata_pasien` WRITE;
/*!40000 ALTER TABLE `biodata_pasien` DISABLE KEYS */;
/*!40000 ALTER TABLE `biodata_pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daftar_antrian`
--

DROP TABLE IF EXISTS `daftar_antrian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daftar_antrian` (
  `tanggal` date DEFAULT NULL,
  `id_pasien` char(4) NOT NULL,
  `nama_pasien` varchar(30) DEFAULT NULL,
  `keluhan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pasien`),
  CONSTRAINT `daftar_antrian_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `biodata_pasien` (`id_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_antrian`
--

LOCK TABLES `daftar_antrian` WRITE;
/*!40000 ALTER TABLE `daftar_antrian` DISABLE KEYS */;
/*!40000 ALTER TABLE `daftar_antrian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_antrian`
--

DROP TABLE IF EXISTS `list_antrian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_antrian` (
  `nomor_antrian` int DEFAULT NULL,
  `id_pasien` char(4) NOT NULL,
  PRIMARY KEY (`id_pasien`),
  CONSTRAINT `list_antrian_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `daftar_antrian` (`id_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_antrian`
--

LOCK TABLES `list_antrian` WRITE;
/*!40000 ALTER TABLE `list_antrian` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_antrian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwayat_kunjungan`
--

DROP TABLE IF EXISTS `riwayat_kunjungan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwayat_kunjungan` (
  `tanggal` date DEFAULT NULL,
  `tindakan` varchar(50) DEFAULT NULL,
  `diagnosa` varchar(50) DEFAULT NULL,
  `resep_obat` varchar(50) DEFAULT NULL,
  `id_pasien` char(4) NOT NULL,
  PRIMARY KEY (`id_pasien`),
  CONSTRAINT `riwayat_kunjungan_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `biodata_pasien` (`id_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayat_kunjungan`
--

LOCK TABLES `riwayat_kunjungan` WRITE;
/*!40000 ALTER TABLE `riwayat_kunjungan` DISABLE KEYS */;
/*!40000 ALTER TABLE `riwayat_kunjungan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 12:28:59
