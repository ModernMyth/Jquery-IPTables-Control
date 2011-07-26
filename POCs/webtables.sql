-- MySQL dump 10.13  Distrib 5.1.56, for pc-linux-gnu (x86_64)
--
-- Host: localhost    Database: webtables
-- ------------------------------------------------------
-- Server version	5.1.56

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `webtables`
--

/*!40000 DROP DATABASE IF EXISTS `webtables`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `webtables` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `webtables`;

--
-- Table structure for table `chains`
--

DROP TABLE IF EXISTS `chains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chainid` int(11) DEFAULT NULL,
  `chainname` varchar(255) COLLATE latin1_general_ci DEFAULT 'No Group Name',
  `position` int(11) DEFAULT NULL COMMENT 'Position in the table',
  `command` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chainname` (`chainname`),
  KEY `chainid` (`chainid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chains`
--

LOCK TABLES `chains` WRITE;
/*!40000 ALTER TABLE `chains` DISABLE KEYS */;
/*!40000 ALTER TABLE `chains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipcron`
--

DROP TABLE IF EXISTS `ipcron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipcron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cronid` int(11) DEFAULT NULL,
  `cronname` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `croncmd` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `minute` int(11) DEFAULT NULL,
  `hour` int(11) DEFAULT NULL,
  `dow` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cronid` (`cronid`),
  KEY `cronname` (`cronname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipcron`
--

LOCK TABLES `ipcron` WRITE;
/*!40000 ALTER TABLE `ipcron` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipcron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iptables`
--

DROP TABLE IF EXISTS `iptables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iptables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tableid` int(11) DEFAULT NULL,
  `tablename` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `chainid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tableid` (`tableid`,`tablename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iptables`
--

LOCK TABLES `iptables` WRITE;
/*!40000 ALTER TABLE `iptables` DISABLE KEYS */;
/*!40000 ALTER TABLE `iptables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-07-25 22:11:56
