/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sysgestasesorias
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `ID_Admin` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Admin` varchar(100) DEFAULT NULL,
  `Correo_Admin` varchar(50) DEFAULT NULL,
  `Password_Admin` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_Admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asesor`
--

DROP TABLE IF EXISTS `asesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asesor` (
  `ID_Asesor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Asesor` varchar(100) DEFAULT NULL,
  `Correo_Asesor` varchar(50) DEFAULT NULL,
  `Password_Asesor` varchar(20) NOT NULL,
  `Dias_Atencion` varchar(100) DEFAULT NULL,
  `Horas_Atencion` varchar(30) DEFAULT NULL,
  `Descripsion_Asesor` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID_Asesor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asesor`
--

LOCK TABLES `asesor` WRITE;
/*!40000 ALTER TABLE `asesor` DISABLE KEYS */;
/*!40000 ALTER TABLE `asesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asesorado`
--

DROP TABLE IF EXISTS `asesorado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asesorado` (
  `ID_Asesorado` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Asesorado` varchar(100) DEFAULT NULL,
  `NoControl` varchar(15) DEFAULT NULL,
  `Correo_Ins` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Carrera` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_Asesorado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asesorado`
--

LOCK TABLES `asesorado` WRITE;
/*!40000 ALTER TABLE `asesorado` DISABLE KEYS */;
/*!40000 ALTER TABLE `asesorado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asesoria`
--

DROP TABLE IF EXISTS `asesoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asesoria` (
  `ID_Asesoria` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Aseso` date DEFAULT NULL,
  `Hora_Aseso` time DEFAULT NULL,
  `Modalidad` varchar(30) DEFAULT NULL,
  `idAsesor` int(11) DEFAULT NULL,
  `idAsesorado` int(11) DEFAULT NULL,
  `idTemaAseso` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Asesoria`),
  KEY `idAsesor` (`idAsesor`),
  KEY `idAsesorado` (`idAsesorado`),
  KEY `idTemaAseso` (`idTemaAseso`),
  CONSTRAINT `asesoria_ibfk_1` FOREIGN KEY (`idAsesor`) REFERENCES `asesor` (`ID_Asesor`),
  CONSTRAINT `asesoria_ibfk_2` FOREIGN KEY (`idAsesorado`) REFERENCES `asesorado` (`ID_Asesorado`),
  CONSTRAINT `asesoria_ibfk_3` FOREIGN KEY (`idTemaAseso`) REFERENCES `temas_asesoria` (`ID_Tema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asesoria`
--

LOCK TABLES `asesoria` WRITE;
/*!40000 ALTER TABLE `asesoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `asesoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temas_asesoria`
--

DROP TABLE IF EXISTS `temas_asesoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temas_asesoria` (
  `ID_Tema` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Tema` varchar(100) DEFAULT NULL,
  `Materia_Tema` varchar(50) DEFAULT NULL,
  `PalClav_Temas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_Tema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temas_asesoria`
--

LOCK TABLES `temas_asesoria` WRITE;
/*!40000 ALTER TABLE `temas_asesoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `temas_asesoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-04-04 13:00:12
