/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: 4ftp13
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-0+deb12u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ksiazki`
--

DROP TABLE IF EXISTS `ksiazki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ksiazki` (
  `id` int(11) NOT NULL,
  `tytul` varchar(100) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ksiazki`
--

LOCK TABLES `ksiazki` WRITE;
/*!40000 ALTER TABLE `ksiazki` DISABLE KEYS */;
/*!40000 ALTER TABLE `ksiazki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logi`
--

DROP TABLE IF EXISTS `logi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `logi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `akcja` varchar(100) DEFAULT NULL,
  `data_zmiany` datetime DEFAULT NULL,
  `imie_ucznia` varchar(50) DEFAULT NULL,
  `nazwisko_ucznia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logi`
--

LOCK TABLES `logi` WRITE;
/*!40000 ALTER TABLE `logi` DISABLE KEYS */;
INSERT INTO `logi` VALUES
(1,'Dodano nowego ucznia','2026-09-07 13:13:12','Piotr','Zieliński');
/*!40000 ALTER TABLE `logi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nauczyciel`
--

DROP TABLE IF EXISTS `nauczyciel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `nauczyciel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nauczyciel`
--

LOCK TABLES `nauczyciel` WRITE;
/*!40000 ALTER TABLE `nauczyciel` DISABLE KEYS */;
INSERT INTO `nauczyciel` VALUES
(1,'Witold','Gesse'),
(2,'Marek','Drożański'),
(3,'Agnieszka','Misiaczyk'),
(4,'Anna','Rybakowska'),
(5,'Aleksander','Staszkiewicz'),
(6,'Leszek','Kotkowski'),
(7,'Grzegorz','Łukasik'),
(8,'Jacek','Pałubicki'),
(9,'Krzysztof','Wójcik'),
(10,'Tomasz','Kotwica'),
(11,'Agnieszka','Graczyk'),
(12,'Ewa','Partyka-Żminko');
/*!40000 ALTER TABLE `nauczyciel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocena`
--

DROP TABLE IF EXISTS `ocena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocena` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocena` int(11) DEFAULT NULL,
  `uczen_id` int(11) DEFAULT NULL,
  `przedmiot_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uczen_id` (`uczen_id`),
  KEY `przedmiot_id` (`przedmiot_id`),
  CONSTRAINT `ocena_ibfk_1` FOREIGN KEY (`uczen_id`) REFERENCES `uczen` (`id`),
  CONSTRAINT `ocena_ibfk_2` FOREIGN KEY (`przedmiot_id`) REFERENCES `przedmiot` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocena`
--

LOCK TABLES `ocena` WRITE;
/*!40000 ALTER TABLE `ocena` DISABLE KEYS */;
INSERT INTO `ocena` VALUES
(1,2,1,1),
(2,3,1,2),
(3,4,1,3),
(4,5,1,4),
(5,2,1,5),
(6,3,1,6),
(7,4,1,7),
(8,5,1,8),
(9,2,1,9),
(10,3,1,10),
(11,4,1,11),
(12,5,1,12),
(13,3,2,1),
(14,4,2,2),
(15,5,2,3),
(16,2,2,4),
(17,3,2,5),
(18,4,2,6),
(19,5,2,7),
(20,2,2,8),
(21,3,2,9),
(22,4,2,10),
(23,5,2,11),
(24,2,2,12),
(25,3,3,1),
(26,4,3,2),
(27,5,3,3),
(28,2,3,4),
(29,3,3,5),
(30,4,3,6),
(31,5,3,7),
(32,5,3,8),
(33,4,3,9),
(34,3,3,10),
(35,2,3,11),
(36,3,3,12),
(37,2,4,1),
(38,3,4,2),
(39,4,4,3),
(40,5,4,4),
(41,2,4,5),
(42,3,4,6),
(43,4,4,7),
(44,5,4,8),
(45,2,4,9),
(46,3,4,10),
(47,4,4,11),
(48,5,4,12),
(49,5,5,1),
(50,2,5,2),
(51,3,5,3),
(52,4,5,4),
(53,5,5,5),
(54,2,5,6),
(55,3,5,7),
(56,4,5,8),
(57,5,5,9),
(58,2,5,10),
(59,3,5,11),
(60,4,5,12),
(61,5,6,1),
(62,2,6,2),
(63,3,6,3),
(64,4,6,4),
(65,5,6,5),
(66,2,6,6),
(67,3,6,7),
(68,4,6,8),
(69,5,6,9),
(70,2,6,10),
(71,3,6,11),
(72,4,6,12),
(73,4,7,1),
(74,3,7,2),
(75,5,7,3),
(76,4,7,4),
(77,5,7,5),
(78,4,7,6),
(79,3,7,7),
(80,4,7,8),
(81,5,7,9),
(82,2,7,10),
(83,3,7,11),
(84,4,7,12),
(85,2,8,1),
(86,5,8,2),
(87,4,8,3),
(88,4,8,4),
(89,3,8,5),
(90,5,8,6),
(91,5,8,7),
(92,4,8,8),
(93,3,8,9),
(94,2,8,10),
(95,5,8,11),
(96,2,8,12),
(97,2,9,1),
(98,5,9,2),
(99,4,9,3),
(100,4,9,4),
(101,3,9,5),
(102,5,9,6),
(103,5,9,7),
(104,4,9,8),
(105,3,9,9),
(106,2,9,10),
(107,5,9,11),
(108,2,9,12),
(109,2,10,1),
(110,5,10,2),
(111,4,10,3),
(112,4,10,4),
(113,3,10,5),
(114,5,10,6),
(115,5,10,7),
(116,4,10,8),
(117,3,10,9),
(118,2,10,10),
(119,5,10,11),
(120,2,10,12),
(121,2,11,1),
(122,5,11,2),
(123,4,11,3),
(124,4,11,4),
(125,3,11,5),
(126,5,11,6),
(127,5,11,7),
(128,4,11,8),
(129,3,11,9),
(130,2,11,10),
(131,5,11,11),
(132,2,11,12),
(133,2,12,1),
(134,5,12,2),
(135,4,12,3),
(136,4,12,4),
(137,3,12,5),
(138,5,12,6),
(139,5,12,7),
(140,4,12,8),
(141,3,12,9),
(142,2,12,10),
(143,5,12,11),
(144,2,12,12),
(145,2,13,1),
(146,5,13,2),
(147,4,13,3),
(148,4,13,4),
(149,3,13,5),
(150,5,13,6),
(151,5,13,7),
(152,4,13,8),
(153,3,13,9),
(154,2,13,10),
(155,5,13,11),
(156,2,13,12),
(157,5,14,1),
(158,4,14,2),
(159,4,14,3),
(160,3,14,4),
(161,3,14,5),
(162,5,14,6),
(163,4,14,7),
(164,4,14,8),
(165,3,14,9),
(166,3,14,10),
(167,5,14,11),
(168,2,14,12),
(169,5,15,1),
(170,4,15,2),
(171,4,15,3),
(172,3,15,4),
(173,3,15,5),
(174,5,15,6),
(175,4,15,7),
(176,4,15,8),
(177,3,15,9),
(178,3,15,10),
(179,5,15,11),
(180,2,15,12),
(181,6,16,1),
(182,4,16,2),
(183,3,16,3),
(184,5,16,4),
(185,4,16,5),
(186,3,16,6),
(187,2,16,7),
(188,3,16,8),
(189,4,16,9),
(190,4,16,10),
(191,6,16,11),
(192,3,16,12),
(193,6,17,1),
(194,4,17,2),
(195,3,17,3),
(196,5,17,4),
(197,4,17,5),
(198,3,17,6),
(199,2,17,7),
(200,3,17,8),
(201,4,17,9),
(202,4,17,10),
(203,6,17,11),
(204,3,17,12),
(205,6,18,1),
(206,4,18,2),
(207,3,18,3),
(208,5,18,4),
(209,4,18,5),
(210,3,18,6),
(211,2,18,7),
(212,3,18,8),
(213,4,18,9),
(214,4,18,10),
(215,6,18,11),
(216,3,18,12),
(217,5,19,1),
(218,4,19,2),
(219,3,19,3),
(220,5,19,4),
(221,4,19,5),
(222,3,19,6),
(223,2,19,7),
(224,3,19,8),
(225,4,19,9),
(226,4,19,10),
(227,4,19,11),
(228,3,19,12),
(229,5,20,1),
(230,4,20,2),
(231,3,20,3),
(232,5,20,4),
(233,4,20,5),
(234,3,20,6),
(235,2,20,7),
(236,3,20,8),
(237,4,20,9),
(238,4,20,10),
(239,4,20,11),
(240,3,20,12),
(241,6,21,1),
(242,4,21,2),
(243,2,21,3),
(244,5,21,4),
(245,4,21,5),
(246,4,21,6),
(247,2,21,7),
(248,3,21,8),
(249,4,21,9),
(250,5,21,10),
(251,4,21,11),
(252,3,21,12),
(253,6,22,1),
(254,4,22,2),
(255,2,22,3),
(256,5,22,4),
(257,4,22,5),
(258,4,22,6),
(259,2,22,7),
(260,3,22,8),
(261,4,22,9),
(262,5,22,10),
(263,4,22,11),
(264,3,22,12),
(265,6,23,1),
(266,4,23,2),
(267,2,23,3),
(268,5,23,4),
(269,4,23,5),
(270,4,23,6),
(271,2,23,7),
(272,3,23,8),
(273,4,23,9),
(274,5,23,10),
(275,4,23,11),
(276,3,23,12),
(277,6,24,1),
(278,4,24,2),
(279,2,24,3),
(280,5,24,4),
(281,4,24,5),
(282,4,24,6),
(283,2,24,7),
(284,3,24,8),
(285,4,24,9),
(286,5,24,10),
(287,4,24,11),
(288,3,24,12),
(289,6,25,1),
(290,4,25,2),
(291,2,25,3),
(292,5,25,4),
(293,4,25,5),
(294,4,25,6),
(295,2,25,7),
(296,3,25,8),
(297,4,25,9),
(298,5,25,10),
(299,4,25,11),
(300,3,25,12),
(301,6,26,1),
(302,4,26,2),
(303,2,26,3),
(304,5,26,4),
(305,4,26,5),
(306,4,26,6),
(307,2,26,7),
(308,3,26,8),
(309,4,26,9),
(310,5,26,10),
(311,4,26,11),
(312,3,26,12),
(313,6,27,1),
(314,4,27,2),
(315,2,27,3),
(316,5,27,4),
(317,4,27,5),
(318,4,27,6),
(319,2,27,7),
(320,3,27,8),
(321,4,27,9),
(322,5,27,10),
(323,4,27,11),
(324,3,27,12),
(325,6,28,1),
(326,4,28,2),
(327,2,28,3),
(328,5,28,4),
(329,4,28,5),
(330,4,28,6),
(331,2,28,7),
(332,3,28,8),
(333,4,28,9),
(334,5,28,10),
(335,4,28,11),
(336,3,28,12),
(337,6,29,1),
(338,4,29,2),
(339,2,29,3),
(340,5,29,4),
(341,4,29,5),
(342,4,29,6),
(343,2,29,7),
(344,3,29,8),
(345,4,29,9),
(346,5,29,10),
(347,4,29,11),
(348,3,29,12),
(349,6,30,1),
(350,4,30,2),
(351,2,30,3),
(352,5,30,4),
(353,4,30,5),
(354,4,30,6),
(355,2,30,7),
(356,3,30,8),
(357,4,30,9),
(358,5,30,10),
(359,4,30,11),
(360,3,30,12),
(361,6,31,1),
(362,4,31,2),
(363,2,31,3),
(364,5,31,4),
(365,4,31,5),
(366,4,31,6),
(367,2,31,7),
(368,3,31,8),
(369,4,31,9),
(370,5,31,10),
(371,4,31,11),
(372,3,31,12),
(373,6,32,1),
(374,4,32,2),
(375,2,32,3),
(376,5,32,4),
(377,4,32,5),
(378,4,32,6),
(379,2,32,7),
(380,3,32,8),
(381,4,32,9),
(382,5,32,10),
(383,4,32,11),
(384,3,32,12),
(385,6,33,1),
(386,4,33,2),
(387,2,33,3),
(388,5,33,4),
(389,4,33,5),
(390,4,33,6),
(391,2,33,7),
(392,3,33,8),
(393,4,33,9),
(394,5,33,10),
(395,4,33,11),
(396,3,33,12),
(397,6,34,1),
(398,4,34,2),
(399,2,34,3),
(400,5,34,4),
(401,4,34,5),
(402,4,34,6),
(403,2,34,7),
(404,3,34,8),
(405,4,34,9),
(406,5,34,10),
(407,4,34,11),
(408,3,34,12),
(1174,5,35,1),
(1175,4,35,3),
(1176,4,35,4),
(1177,4,35,5),
(1178,4,35,6),
(1179,5,35,7),
(1180,4,35,8),
(1181,5,35,9),
(1182,5,35,10),
(1183,5,35,11),
(1184,4,35,2),
(1185,4,35,12),
(1186,5,35,1),
(1187,4,35,3),
(1188,4,35,4),
(1189,4,35,5),
(1190,4,35,6),
(1191,5,35,7),
(1192,4,35,8),
(1193,5,35,9),
(1194,5,35,10),
(1195,5,35,11),
(1196,4,35,2),
(1197,4,35,12);
/*!40000 ALTER TABLE `ocena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `przedmiot`
--

DROP TABLE IF EXISTS `przedmiot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `przedmiot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) DEFAULT NULL,
  `skrot` varchar(5) DEFAULT NULL,
  `sala` varchar(5) DEFAULT NULL,
  `liczba_godzin` int(11) DEFAULT NULL,
  `nauczyciel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nauczyciel_id` (`nauczyciel_id`),
  CONSTRAINT `przedmiot_ibfk_1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `przedmiot`
--

LOCK TABLES `przedmiot` WRITE;
/*!40000 ALTER TABLE `przedmiot` DISABLE KEYS */;
INSERT INTO `przedmiot` VALUES
(1,'Witryny I Aplikacje Internetowe','WIAI','313A',2,1),
(2,'Język Francuski','JF','313A',3,2),
(3,'Język Angielski','JA','334',3,3),
(4,'Język Rosyjski','JR','4',1,4),
(5,'Język Niemiecki','JN','220',1,5),
(6,'Matematyka','M','231',1,6),
(7,'Fizyka','F','249',1,7),
(8,'Historia I Społeczeństwo','HIS','135',2,8),
(9,'Systemy Baz Danych','SBD','337',2,9),
(10,'Wychowanie Fizyczne','WF','SG2',2,10),
(11,'Język Polski','JP','129',1,11),
(12,'Programowanie Aplikacji Internetowych','PAI','236',2,12);
/*!40000 ALTER TABLE `przedmiot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uczen`
--

DROP TABLE IF EXISTS `uczen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `uczen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL,
  `klasa` varchar(4) DEFAULT NULL,
  `funkcja` varchar(15) DEFAULT NULL,
  `data_urodzin` date DEFAULT NULL,
  `adres` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uczen`
--

LOCK TABLES `uczen` WRITE;
/*!40000 ALTER TABLE `uczen` DISABLE KEYS */;
INSERT INTO `uczen` VALUES
(1,'Adam','Adamek','4eft','brak','2022-02-09','Wejherowo'),
(2,'Arkadiusz','Chabowski','4eft','brak','2022-02-09','Reda'),
(3,'Piotr','Dawidowski','4eft','brak','2022-02-09','Rumia'),
(4,'Kacper','Drzymalski','4eft','brak','2022-02-09','Gdynia'),
(5,'Robert','Elwart','4eft','brak','2022-02-09','Luzino'),
(6,'Michał','Głodowski','4eft','brak','2022-02-09','Wejherowo'),
(7,'Aleksandra','Hańćkowiak','4eft','zastępca','2022-02-09','Wejherowo'),
(8,'Aleksander','Jones','4eft','brak','2022-02-09','Wejherowo'),
(9,'Kacper','Kreft','4eft','brak','2022-02-09','Wejherowo'),
(10,'Karol','Kryger','4eft','skarbnik','2022-02-09','Wejherowo'),
(11,'Klaudiusz','Kuchnowski','4eft','brak','2022-02-09','Wejherowo'),
(12,'Fryderyk','Ladach','4eft','brak','2022-02-09','Wejherowo'),
(13,'Patryk','Lewandowski','4eft','brak','2022-02-09','Wejherowo'),
(14,'Artur','Mierzejewski','4eft','brak','2022-02-09','Wejherowo'),
(15,'Martyna','Paśnicka','4eft','brak','2022-02-09','Wejherowo'),
(16,'Marcin','Piecuch','4eft','brak','2022-02-09','Wejherowo'),
(17,'Bartłomiej','Pieper','4eft','gospodarz','2000-06-09','Wejherowo'),
(18,'Robert','Pilipas','4eft','brak','2022-02-09','Wejherowo'),
(19,'Jakub','Pospieszny','4eft','brak','2022-02-09','Wejherowo'),
(20,'Marcin','Potrykus','4eft','brak','2022-02-09','Wejherowo'),
(21,'Aleksander','Renusz','4eft','brak','2022-02-09','Wejherowo'),
(22,'Arkadiusz','Ryduchowski','4eft','brak','2022-02-09','Wejherowo'),
(23,'Mateusz','Ryżak','4eft','brak','2022-02-09','Wejherowo'),
(24,'Jan','Sabisz','4eft','brak','2022-02-09','Wejherowo'),
(25,'Wiktor','Sarnowski','4eft','brak','2022-02-09','Wejherowo'),
(26,'Paweł','Sawicki','4eft','brak','2022-02-09','Wejherowo'),
(27,'Zdzisław','Skowroński','4eft','brak','2022-02-09','Wejherowo'),
(28,'Dawid','Słowi','4eft','brak','2022-02-09','Wejherowo'),
(29,'Jakub','Tobias','4eft','brak','2022-02-09','Wejherowo'),
(30,'Bartosz','Wojciński','4eft','brak','2022-02-09','Wejherowo'),
(31,'Mateusz','Wróbel','4eft','brak','2022-02-09','Wejherowo'),
(32,'Jakub','Zadomski','4eft','brak','2022-02-09','Wejherowo'),
(33,'Grzegorz','Zelewski','4eft','brak','2022-02-09','Wejherowo'),
(34,'Bartosz','Zieliński','4eft','brak','2022-02-09','Wejherowo'),
(35,'Małgorzata','Płudowska','4eft','brak','2001-04-23','Gdańsk');
/*!40000 ALTER TABLE `uczen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uczniowie`
--

DROP TABLE IF EXISTS `uczniowie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `uczniowie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `klasa` varchar(10) DEFAULT NULL,
  `ocena` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uczniowie`
--

LOCK TABLES `uczniowie` WRITE;
/*!40000 ALTER TABLE `uczniowie` DISABLE KEYS */;
INSERT INTO `uczniowie` VALUES
(1,'Anna','Nowak','3A',5),
(2,'Jan','Kowalski','3B',4),
(3,'Kasia','Wiśniewska','3A',6),
(4,'Piotr','Zieliński','3B',3),
(5,'Zofia','Kamińska','3A',5),
(6,'Piotr','Zieliński','3B',5);
/*!40000 ALTER TABLE `uczniowie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `widok`
--

DROP TABLE IF EXISTS `widok`;
/*!50001 DROP VIEW IF EXISTS `widok`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `widok` AS SELECT
 1 AS `imie`,
  1 AS `nazwisko`,
  1 AS `ocena` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `widok`
--

/*!50001 DROP VIEW IF EXISTS `widok`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`4ftp13`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `widok` AS select `uczniowie`.`imie` AS `imie`,`uczniowie`.`nazwisko` AS `nazwisko`,`uczniowie`.`ocena` AS `ocena` from `uczniowie` where `uczniowie`.`klasa` = '3A' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-20  9:24:19
