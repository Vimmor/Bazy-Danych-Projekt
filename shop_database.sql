-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop_database
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `adresy`
--

DROP TABLE IF EXISTS `adresy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresy` (
  `idAdresu` int NOT NULL AUTO_INCREMENT,
  `ulica` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numerBudynku` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `numerMieszkania` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kodPocztowy` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `miejscowosc` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idAdresu`),
  KEY `kodPocztowy_idx` (`kodPocztowy`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresy`
--

LOCK TABLES `adresy` WRITE;
/*!40000 ALTER TABLE `adresy` DISABLE KEYS */;
INSERT INTO `adresy` VALUES (1,'Nowotarska','89','11','00-791','Warszawa'),(2,'Klonowa','23','1','22-983','Radom'),(3,'Górna','120','7','04-413','Warszawa'),(4,'Gruszowa','44','4','54-530','Wrocław'),(5,'Sztabowa','456','9','53-327','Wrocław'),(6,'Lipowa','191',NULL,'55-300','Środa Śląska'),(7,'Osiedlowa','12',NULL,'56-120','Brzeg Dolny'),(8,'Łukowa','123','4','56-120','Brzeg Dolny'),(9,'Główna','56',NULL,'56-100','Wołów'),(10,'Rynkowa','78','8','55-300','Środa Śląska'),(11,'Grójecka','126','17','53-118','Wrocław'),(12,'Grójecka','74','1','53-118','Wrocław'),(13,'Ślusarska','65','7','53-207','Wrocław'),(14,'Pochyła','98','7','53-512','Wrocław'),(15,NULL,'12',NULL,'55-330','Klęka'),(16,NULL,'5',NULL,'55-330','Gąsiorów'),(17,'Kolorowa','5','6','56-122','Brzeg Dolny'),(18,'Szkolna','2',NULL,'55-330','Miękinia'),(19,'Bzowa','56','1','56-100','Wołów'),(20,'Krzycka','16A',NULL,'53-020','Wrocław'),(21,'Liliowa','97',NULL,'59-700','Bolesławiec'),(22,'Hiszpańska','76','6','54-409','Wrocław'),(23,'Pozioma','72',NULL,'55-300','Środa Śląska'),(24,'Henrykowska','345','14','50-503','Wrocław'),(25,'Świerkowa','432','5','54-020','Wrocław'),(36,'Kolejowa','2','15','82-200','Malbork');
/*!40000 ALTER TABLE `adresy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danepersonalne`
--

DROP TABLE IF EXISTS `danepersonalne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danepersonalne` (
  `idDanych` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nazwisko` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `haslo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idDanych`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `imieNazwisko_idx` (`imie`,`nazwisko`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danepersonalne`
--

LOCK TABLES `danepersonalne` WRITE;
/*!40000 ALTER TABLE `danepersonalne` DISABLE KEYS */;
INSERT INTO `danepersonalne` VALUES (1,'Jan','Nowak','Jan Nowak','jan0102','jnowak@wp.pl'),(2,'Jan','Nowacki','Jan Nowacki','jn1979','nowacji_jan@gmail.com'),(3,'Marian','Nowakowski','Marian Nowakowski','ptys01','m_nowakowski@onet.pl'),(4,'Daniel','Wiśniewski','Daniel Wiśniewski','danko1702','danwisniewski90@gmail.com'),(5,'Amelia','Żukowska','Amelia Żukowska','ami13','amelia_zuk87@o2.pl'),(6,'Łucja','Wojciechowska','Łucja Wojciechowska','lubieplacki123','wojciechowska_lucja@o2.pl'),(7,'Filip','Wilk','Filip Wilk','wilczek13','wilk1910@wp.pl'),(8,'Paulina','Pawlak','Paulina Pawlak','paulinka333','ppawlak@onet.pl'),(9,'Maria','Wróblewska','Maria Wróblewska ','lubiekotki0102','m.wroblewska@wp.pl'),(10,'Jan','Dębski','Jan Dębski','dabek15','jandebski@gmail.com'),(11,'Iga','Matuszewska','Iga Matuszewska','matuszewska12','matuszewska_iga99@wp.pl'),(12,'Karolina','Tomczak','Karolina Tomczak','lola0102','lola_tomczak@gmail.com'),(13,'Marcel','Kowalczyk','Marcel Kowalczyk','abcd1234','marcel95@gmail.com'),(14,'Daria','Stępień','Daria Stępień','darisia98','darianna_stepien@gmail.com'),(15,'Milena','Nowak','Milena Nowak','milenka09','m_nowak@o2.pl'),(16,'Ignacy','Kujawa','Ignacy Kujawa','ignas1111','ignacykujawa@wp.pl'),(17,'Alicja','Czajkowska','Alicja Czajkowska','ala0102','a_czajka@gmail.com'),(18,'Bartłomiej','Piasecki','Bartłomiej Piasecki','bartus0102','piaseckib@gmail.com'),(19,'Daria','Madej','Daria Madej','darianna0102','dariamadej@onet.pl'),(20,'Wiktoria','Walczak','Wiktoria Walczak','wika1020','wwalczak@onet.pl'),(21,'Adam','Jastrzębski','Adam Jastrzębski','adasko0102','jastrzebskiadam@gmail.com'),(22,'Ignacy','Laskowski','Ignacy Laskowski','ignacy0102','ignacy_las@gmail.com'),(23,'Małgorzata','Grabowska','Małgorzata Grabowska','grabka0102','gosiagrabowska@gmail.com'),(24,'Hanna','Sikorska','Hanna Sikorska','sikorka0102','sikorskahanna@wp.pl'),(25,'Szymon','Gajewski','Szymon Gajewski','gajo0102','gajewskiszymek@onet.pl'),(26,'Maciej','Mazurkiewicz','Maciej Mazurkiewicz','emem0102','maciej_em@wp.pl'),(27,'Marcel','Kozak','Marcel Kozak','kozakkozak01','kozak_maciej89@wp.pl'),(28,'Sylwia','Owczarek','Sylwia Owczarek','sylwus13','sylwia1212@gmail.com'),(29,'Zuzanna','Sadowska','Zuzanna Sadowska','zuzik12','zuza_sadowska@gmail.com'),(30,'Julia','Michalak','Julia Michalak','jules1020','jmichalak@gmail.com'),(31,'Damian','Wieczorek','Damian Wieczorek','dam0102','wieczorek95@gmaiul.com'),(32,'Piotr','Piotrowski','Piotr Piotrowski','piotrpiotr66','piotrowskipiotrek@wp.pl'),(33,'Klaudia','Dudek','Klaudia Dudek','dudek0102','k_dudek91@wp.pl'),(34,'Jakub','Krawczyk','Jakub Krawczyk','kubus25','kubakrawczyk@gmail.com'),(35,'Michał','Czech','Michał Czech','czechu0102','czech_michal90@gmail.com'),(36,'Grzegorz','Kowalski','gkowal','kowalski123','gk@gmail.com');
/*!40000 ALTER TABLE `danepersonalne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daneproduktu`
--

DROP TABLE IF EXISTS `daneproduktu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daneproduktu` (
  `idDanychProduktu` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idKategorii` int NOT NULL,
  `cenaKatalogowa` decimal(6,2) NOT NULL,
  `material` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDanychProduktu`),
  KEY `nazwa_idx` (`nazwa`),
  KEY `daneproduktu_idKategorii_idx` (`idKategorii`),
  CONSTRAINT `daneproduktu_idKategorii` FOREIGN KEY (`idKategorii`) REFERENCES `kategoria` (`idKategorii`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daneproduktu`
--

LOCK TABLES `daneproduktu` WRITE;
/*!40000 ALTER TABLE `daneproduktu` DISABLE KEYS */;
INSERT INTO `daneproduktu` VALUES (1,'Piłka pingpongowa',1,1.50,'Plastik'),(2,'Rakieta',2,300.00,'Aluminium'),(3,'Piłka tenisowa',2,5.00,'Kauczuk'),(5,'Step',4,99.00,'Plastik'),(6,'Stepper',4,179.00,'Stal, plastik'),(7,'Mata treningowa',4,80.00,'Polichlorek winylu'),(8,'Ergometr',4,659.00,'Inny'),(9,'Mini bike',4,150.00,'Inny'),(10,'Rower stacjonarny',4,900.00,'Inny'),(11,'Kettlebell',4,79.00,'Żeliwo'),(12,'Skakanka',4,25.00,'Inny'),(13,'Hantel',4,40.00,'Stal'),(14,'Gryf',4,90.00,'Stal'),(15,'Talerz',4,5.00,'Żeliwo'),(16,'Zacisk',4,1.50,'Stal'),(17,'Piłka',5,40.00,'Inny'),(18,'Piłka',7,39.00,'Kauczuk'),(19,'Piłka',6,35.00,'Inny'),(20,'Piłka',8,35.00,'Kauczuk, guma');
/*!40000 ALTER TABLE `daneproduktu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faktury`
--

DROP TABLE IF EXISTS `faktury`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faktury` (
  `idFaktury` int NOT NULL AUTO_INCREMENT,
  `idZamowienia` int NOT NULL,
  `idRodzajFaktury` int NOT NULL,
  `dataWystawienia` date NOT NULL,
  `terminPlatnosci` date NOT NULL,
  `czyOplacona` tinyint(1) NOT NULL,
  PRIMARY KEY (`idFaktury`),
  KEY `idZamowienia_idx` (`idZamowienia`),
  KEY `czyOplacona_idx` (`czyOplacona`),
  KEY ` faktury_idRodzajFaktury_idx` (`idRodzajFaktury`),
  CONSTRAINT ` faktury_idRodzajFaktury` FOREIGN KEY (`idRodzajFaktury`) REFERENCES `rodzajfaktury` (`idRodzajFaktury`),
  CONSTRAINT `faktury_idZamowienia` FOREIGN KEY (`idZamowienia`) REFERENCES `zamowienia` (`idZamowienia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faktury`
--

LOCK TABLES `faktury` WRITE;
/*!40000 ALTER TABLE `faktury` DISABLE KEYS */;
INSERT INTO `faktury` VALUES (1,2,1,'2020-05-15','2020-05-14',1),(2,1,1,'2020-05-18','2020-05-18',0),(3,4,1,'2020-05-11','2020-05-10',1),(4,4,2,'2020-05-14','2020-05-10',1);
/*!40000 ALTER TABLE `faktury` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fakturydlapracownika`
--

DROP TABLE IF EXISTS `fakturydlapracownika`;
/*!50001 DROP VIEW IF EXISTS `fakturydlapracownika`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fakturydlapracownika` AS SELECT 
 1 AS `idFaktury`,
 1 AS `idZamowienia`,
 1 AS `rodzaj`,
 1 AS `dataWystawienia`,
 1 AS `terminPlatnosci`,
 1 AS `czyOplacona`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `kategoria`
--

DROP TABLE IF EXISTS `kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategoria` (
  `idKategorii` int NOT NULL AUTO_INCREMENT,
  `kategoria` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idKategorii`),
  UNIQUE KEY `kategoria_UNIQUE` (`kategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoria`
--

LOCK TABLES `kategoria` WRITE;
/*!40000 ALTER TABLE `kategoria` DISABLE KEYS */;
INSERT INTO `kategoria` VALUES (4,'Fitness'),(7,'Koszykówka'),(5,'Piłka nożna'),(8,'Piłka ręczna'),(1,'Ping Pong'),(6,'Siatkówka'),(2,'Tenis');
/*!40000 ALTER TABLE `kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klienci`
--

DROP TABLE IF EXISTS `klienci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klienci` (
  `idKlienta` int NOT NULL AUTO_INCREMENT,
  `idDanych` int NOT NULL,
  `numerTelefonu` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idAdresu` int NOT NULL,
  PRIMARY KEY (`idKlienta`),
  UNIQUE KEY `idDanych_UNIQUE` (`idDanych`),
  UNIQUE KEY `numerTelefonu_UNIQUE` (`numerTelefonu`),
  UNIQUE KEY `nip_UNIQUE` (`nip`),
  KEY `klienci_idAdresu_idx` (`idAdresu`),
  CONSTRAINT `klienci_idAdresu` FOREIGN KEY (`idAdresu`) REFERENCES `adresy` (`idAdresu`),
  CONSTRAINT `klienci_idDanych` FOREIGN KEY (`idDanych`) REFERENCES `danepersonalne` (`idDanych`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klienci`
--

LOCK TABLES `klienci` WRITE;
/*!40000 ALTER TABLE `klienci` DISABLE KEYS */;
INSERT INTO `klienci` VALUES (1,6,'+48519374123',NULL,1),(2,7,'+48549234860',NULL,2),(3,8,NULL,NULL,3),(4,12,'+48544321777','6523871109',7),(5,9,'+48708155558','1234567895',4),(6,10,NULL,'9876543219',5),(7,11,'+48655984444',NULL,6),(8,13,NULL,NULL,8),(9,16,'+48123456789',NULL,9),(10,17,'+48603123456',NULL,10),(11,18,'+48505987772',NULL,11),(12,19,'+48800123224',NULL,12),(13,20,'+48605444765',NULL,13),(14,21,'+48789774424',NULL,14),(15,22,'+48799000204',NULL,15),(16,23,NULL,NULL,17),(17,27,'+48787352000','2299504016',16),(18,28,'+48505322110',NULL,18),(19,29,NULL,NULL,19),(20,30,'+48505211220',NULL,20),(21,31,'+48504100200','1234432146',21),(22,32,'+48755311004',NULL,22),(23,33,'+48604123442',NULL,23),(24,34,'+48604007002','4007457721',24),(25,35,NULL,NULL,25),(26,36,'512721952',NULL,36);
/*!40000 ALTER TABLE `klienci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `kliencidlaadministratora`
--

DROP TABLE IF EXISTS `kliencidlaadministratora`;
/*!50001 DROP VIEW IF EXISTS `kliencidlaadministratora`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kliencidlaadministratora` AS SELECT 
 1 AS `idKlienta`,
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `numerTelefonu`,
 1 AS `nip`,
 1 AS `idAdresu`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownicy` (
  `idPracownika` int NOT NULL AUTO_INCREMENT,
  `idDanych` int NOT NULL,
  `stanowisko` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idPracownika`),
  UNIQUE KEY `idDanych_UNIQUE` (`idDanych`),
  CONSTRAINT `pracownicy_idDanych` FOREIGN KEY (`idDanych`) REFERENCES `danepersonalne` (`idDanych`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,1,'Sprzedawca'),(2,2,'Sprzedawca'),(3,3,'Sprzedawca'),(4,4,'Asystent'),(5,5,'Instruktor'),(6,14,'Instruktor'),(7,15,'Sprzedawca'),(8,24,'Asystent'),(9,25,'Sprzedawca'),(10,26,'Asystent');
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pracownicydlaadministratora`
--

DROP TABLE IF EXISTS `pracownicydlaadministratora`;
/*!50001 DROP VIEW IF EXISTS `pracownicydlaadministratora`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pracownicydlaadministratora` AS SELECT 
 1 AS `idPracownika`,
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `stanowisko`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `produkty`
--

DROP TABLE IF EXISTS `produkty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produkty` (
  `idProduktu` int NOT NULL AUTO_INCREMENT,
  `idDanychProduktu` int NOT NULL,
  `cena` decimal(6,2) NOT NULL,
  `numerSeryjny` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idZamowienia` int DEFAULT NULL,
  PRIMARY KEY (`idProduktu`),
  UNIQUE KEY `numerSeryjny_UNIQUE` (`numerSeryjny`),
  KEY `produkty_idDanychProduktu_idx` (`idDanychProduktu`),
  KEY `produkty_idZamowienia_idx` (`idZamowienia`),
  CONSTRAINT `produkty_idDanychProduktu` FOREIGN KEY (`idDanychProduktu`) REFERENCES `daneproduktu` (`idDanychProduktu`),
  CONSTRAINT `produkty_idZamowienia` FOREIGN KEY (`idZamowienia`) REFERENCES `zamowienia` (`idZamowienia`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkty`
--

LOCK TABLES `produkty` WRITE;
/*!40000 ALTER TABLE `produkty` DISABLE KEYS */;
INSERT INTO `produkty` VALUES (1,1,1.50,'PP001',NULL),(2,1,1.60,'PP002',NULL),(3,1,2.00,'PP003',5),(4,2,300.00,'RT001',1),(5,2,300.00,'RT002',NULL),(6,3,6.50,'PT001',NULL),(7,3,5.00,'PT002',NULL),(9,5,129.00,'SP001',NULL),(10,5,105.00,'SP002',NULL),(11,6,189.00,'SPR001',3),(12,7,85.00,'MT001',NULL),(13,8,700.00,'E001',NULL),(14,8,689.00,'E002',NULL),(15,9,150.00,'MB001',NULL),(16,10,950.00,'RS001',NULL),(17,10,1100.00,'RS002',NULL),(18,10,1299.00,'RS003',4),(19,11,79.00,'KB_12kg',NULL),(20,11,79.00,'KB_8kg',NULL),(21,11,89.00,'KB_16kg',NULL),(22,11,109.00,'KB_20kg',NULL),(23,12,25.00,'SK001',2),(24,12,40.00,'SK002',NULL),(25,13,60.00,'H_10kg',NULL),(26,13,60.00,'H_8kg',NULL),(27,13,70.00,'H_16kg',NULL),(28,13,45.00,'H_4kg',NULL),(29,14,90.00,'G_15kg',NULL),(30,14,105.00,'G_20kg',NULL),(31,15,5.00,'T_2.5kg',NULL),(32,15,5.00,'T_5kg',NULL),(33,15,6.50,'T_10kg',NULL),(34,15,8.00,'T_15kg',NULL),(35,15,10.00,'T_20kg',NULL),(36,16,1.80,'Z001',NULL),(37,17,40.00,'PN001',NULL),(38,17,45.00,'PN002',NULL),(39,17,55.00,'PN003',NULL),(40,18,40.00,'PK001',NULL),(41,18,49.00,'PK002',NULL),(42,19,35.00,'PS001',NULL),(43,19,45.00,'PS002',NULL),(44,20,35.00,'PR001',NULL);
/*!40000 ALTER TABLE `produkty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `produktydlaklienta`
--

DROP TABLE IF EXISTS `produktydlaklienta`;
/*!50001 DROP VIEW IF EXISTS `produktydlaklienta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `produktydlaklienta` AS SELECT 
 1 AS `nazwa`,
 1 AS `kategoria`,
 1 AS `material`,
 1 AS `cenaKatalogowa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `produktydlapracownika`
--

DROP TABLE IF EXISTS `produktydlapracownika`;
/*!50001 DROP VIEW IF EXISTS `produktydlapracownika`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `produktydlapracownika` AS SELECT 
 1 AS `nazwa`,
 1 AS `kategoria`,
 1 AS `material`,
 1 AS `cenaKatalogowa`,
 1 AS `cena`,
 1 AS `numerSeryjny`,
 1 AS `idZamowienia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `produktydlazamowienia`
--

DROP TABLE IF EXISTS `produktydlazamowienia`;
/*!50001 DROP VIEW IF EXISTS `produktydlazamowienia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `produktydlazamowienia` AS SELECT 
 1 AS `nazwa`,
 1 AS `numerSeryjny`,
 1 AS `cena`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rodzajfaktury`
--

DROP TABLE IF EXISTS `rodzajfaktury`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rodzajfaktury` (
  `idRodzajFaktury` int NOT NULL AUTO_INCREMENT,
  `rodzaj` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idRodzajFaktury`),
  UNIQUE KEY `rodzaj_UNIQUE` (`rodzaj`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rodzajfaktury`
--

LOCK TABLES `rodzajfaktury` WRITE;
/*!40000 ALTER TABLE `rodzajfaktury` DISABLE KEYS */;
INSERT INTO `rodzajfaktury` VALUES (2,'Korygująca'),(1,'Zwykła');
/*!40000 ALTER TABLE `rodzajfaktury` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuszamowienia`
--

DROP TABLE IF EXISTS `statuszamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuszamowienia` (
  `idStatusZamowienia` int NOT NULL AUTO_INCREMENT,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idStatusZamowienia`),
  UNIQUE KEY `status_UNIQUE` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuszamowienia`
--

LOCK TABLES `statuszamowienia` WRITE;
/*!40000 ALTER TABLE `statuszamowienia` DISABLE KEYS */;
INSERT INTO `statuszamowienia` VALUES (2,'wysłano'),(1,'złożono'),(3,'zrealizowano');
/*!40000 ALTER TABLE `statuszamowienia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typumowy`
--

DROP TABLE IF EXISTS `typumowy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typumowy` (
  `idTypu` int NOT NULL AUTO_INCREMENT,
  `typ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idTypu`),
  UNIQUE KEY `typ_UNIQUE` (`typ`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typumowy`
--

LOCK TABLES `typumowy` WRITE;
/*!40000 ALTER TABLE `typumowy` DISABLE KEYS */;
INSERT INTO `typumowy` VALUES (3,'B2B'),(1,'O Prace'),(2,'Zlecenie');
/*!40000 ALTER TABLE `typumowy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umowy`
--

DROP TABLE IF EXISTS `umowy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `umowy` (
  `idUmowy` int NOT NULL AUTO_INCREMENT,
  `idPracownika` int NOT NULL,
  `idTypu` int NOT NULL,
  `podstawaWynagrodzenia` int NOT NULL,
  `dataRozpoczecia` date NOT NULL,
  `dataZakonczenia` date DEFAULT NULL,
  PRIMARY KEY (`idUmowy`),
  KEY `umowy_idPracownika_idx` (`idPracownika`),
  KEY `umowy_idTypu_idx` (`idTypu`),
  CONSTRAINT `umowy_idPracownika` FOREIGN KEY (`idPracownika`) REFERENCES `pracownicy` (`idPracownika`),
  CONSTRAINT `umowy_idTypu` FOREIGN KEY (`idTypu`) REFERENCES `typumowy` (`idTypu`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umowy`
--

LOCK TABLES `umowy` WRITE;
/*!40000 ALTER TABLE `umowy` DISABLE KEYS */;
INSERT INTO `umowy` VALUES (1,1,1,2500,'2020-04-06','2021-04-06'),(2,2,1,2800,'2020-05-06',NULL),(3,3,3,3500,'2020-01-26','2020-07-26'),(4,4,2,2000,'2020-04-29','2020-08-29'),(5,5,2,2200,'2020-05-18','2020-06-18'),(6,6,1,3500,'2020-05-10',NULL),(7,7,2,2000,'2020-05-16','2020-06-16'),(8,8,3,2900,'2020-04-30','2020-07-30'),(9,9,1,3200,'2020-05-04','2021-05-04'),(10,10,1,3400,'2020-04-21',NULL);
/*!40000 ALTER TABLE `umowy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `umowydlaadministratora`
--

DROP TABLE IF EXISTS `umowydlaadministratora`;
/*!50001 DROP VIEW IF EXISTS `umowydlaadministratora`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `umowydlaadministratora` AS SELECT 
 1 AS `idPracownika`,
 1 AS `typ`,
 1 AS `podstawaWynagrodzenia`,
 1 AS `dataRozpoczecia`,
 1 AS `dataZakonczenia`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zamowienia` (
  `idZamowienia` int NOT NULL AUTO_INCREMENT,
  `idKlienta` int NOT NULL,
  `idPracownika` int NOT NULL,
  `idStatusZamowienia` int NOT NULL,
  `dataTransakcji` date NOT NULL,
  `licznik` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idZamowienia`),
  KEY `zamowienia_idPracownika_idx` (`idPracownika`),
  KEY `zamowienia_idKlienta_idx` (`idKlienta`),
  KEY `zamowienia_idStatusZamowienia_idx` (`idStatusZamowienia`),
  CONSTRAINT `zamowienia_idKlienta` FOREIGN KEY (`idKlienta`) REFERENCES `klienci` (`idKlienta`),
  CONSTRAINT `zamowienia_idPracownika` FOREIGN KEY (`idPracownika`) REFERENCES `pracownicy` (`idPracownika`),
  CONSTRAINT `zamowienia_idStatusZamowienia` FOREIGN KEY (`idStatusZamowienia`) REFERENCES `statuszamowienia` (`idStatusZamowienia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienia`
--

LOCK TABLES `zamowienia` WRITE;
/*!40000 ALTER TABLE `zamowienia` DISABLE KEYS */;
INSERT INTO `zamowienia` VALUES (1,6,10,1,'2020-05-18',1),(2,20,4,2,'2020-05-14',2),(3,7,2,2,'2020-05-16',1),(4,18,9,3,'2020-05-10',1),(5,13,5,3,'2020-05-09',3);
/*!40000 ALTER TABLE `zamowienia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `zamowieniadlaklienta`
--

DROP TABLE IF EXISTS `zamowieniadlaklienta`;
/*!50001 DROP VIEW IF EXISTS `zamowieniadlaklienta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zamowieniadlaklienta` AS SELECT 
 1 AS `idZamowienia`,
 1 AS `status`,
 1 AS `dataTransakcji`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zamowieniadlapracownika`
--

DROP TABLE IF EXISTS `zamowieniadlapracownika`;
/*!50001 DROP VIEW IF EXISTS `zamowieniadlapracownika`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zamowieniadlapracownika` AS SELECT 
 1 AS `idZamowienia`,
 1 AS `status`,
 1 AS `dataTransakcji`,
 1 AS `imie`,
 1 AS `nazwisko`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `fakturydlapracownika`
--

/*!50001 DROP VIEW IF EXISTS `fakturydlapracownika`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fakturydlapracownika` AS select `f`.`idFaktury` AS `idFaktury`,`z`.`idZamowienia` AS `idZamowienia`,`r`.`rodzaj` AS `rodzaj`,`f`.`dataWystawienia` AS `dataWystawienia`,`f`.`terminPlatnosci` AS `terminPlatnosci`,`f`.`czyOplacona` AS `czyOplacona` from ((`faktury` `f` join `zamowienia` `z`) join `rodzajfaktury` `r`) where ((`f`.`idZamowienia` = `z`.`idZamowienia`) and (`r`.`idRodzajFaktury` = `f`.`idRodzajFaktury`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kliencidlaadministratora`
--

/*!50001 DROP VIEW IF EXISTS `kliencidlaadministratora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kliencidlaadministratora` AS select `k`.`idKlienta` AS `idKlienta`,`d`.`imie` AS `imie`,`d`.`nazwisko` AS `nazwisko`,`k`.`numerTelefonu` AS `numerTelefonu`,`k`.`nip` AS `nip`,`k`.`idAdresu` AS `idAdresu` from (`klienci` `k` join `danepersonalne` `d`) where (`k`.`idDanych` = `d`.`idDanych`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pracownicydlaadministratora`
--

/*!50001 DROP VIEW IF EXISTS `pracownicydlaadministratora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pracownicydlaadministratora` AS select `p`.`idPracownika` AS `idPracownika`,`d`.`imie` AS `imie`,`d`.`nazwisko` AS `nazwisko`,`p`.`stanowisko` AS `stanowisko` from (`pracownicy` `p` join `danepersonalne` `d`) where (`p`.`idDanych` = `d`.`idDanych`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `produktydlaklienta`
--

/*!50001 DROP VIEW IF EXISTS `produktydlaklienta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produktydlaklienta` AS select `d`.`nazwa` AS `nazwa`,`k`.`kategoria` AS `kategoria`,`d`.`material` AS `material`,`d`.`cenaKatalogowa` AS `cenaKatalogowa` from (`daneproduktu` `d` join `kategoria` `k`) where (`d`.`idKategorii` = `k`.`idKategorii`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `produktydlapracownika`
--

/*!50001 DROP VIEW IF EXISTS `produktydlapracownika`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produktydlapracownika` AS select `d`.`nazwa` AS `nazwa`,`k`.`kategoria` AS `kategoria`,`d`.`material` AS `material`,`d`.`cenaKatalogowa` AS `cenaKatalogowa`,`p`.`cena` AS `cena`,`p`.`numerSeryjny` AS `numerSeryjny`,`p`.`idZamowienia` AS `idZamowienia` from ((`daneproduktu` `d` join `kategoria` `k`) join `produkty` `p`) where ((`d`.`idKategorii` = `k`.`idKategorii`) and (`p`.`idDanychProduktu` = `d`.`idDanychProduktu`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `produktydlazamowienia`
--

/*!50001 DROP VIEW IF EXISTS `produktydlazamowienia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produktydlazamowienia` AS select `d`.`nazwa` AS `nazwa`,`p`.`numerSeryjny` AS `numerSeryjny`,`p`.`cena` AS `cena` from (`daneproduktu` `d` join `produkty` `p`) where (`p`.`idDanychProduktu` = `d`.`idDanychProduktu`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `umowydlaadministratora`
--

/*!50001 DROP VIEW IF EXISTS `umowydlaadministratora`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `umowydlaadministratora` AS select `p`.`idPracownika` AS `idPracownika`,`t`.`typ` AS `typ`,`u`.`podstawaWynagrodzenia` AS `podstawaWynagrodzenia`,`u`.`dataRozpoczecia` AS `dataRozpoczecia`,`u`.`dataZakonczenia` AS `dataZakonczenia` from ((`pracownicy` `p` join `typumowy` `t`) join `umowy` `u`) where ((`u`.`idPracownika` = `p`.`idPracownika`) and (`u`.`idTypu` = `t`.`idTypu`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zamowieniadlaklienta`
--

/*!50001 DROP VIEW IF EXISTS `zamowieniadlaklienta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zamowieniadlaklienta` AS select `z`.`idZamowienia` AS `idZamowienia`,`s`.`status` AS `status`,`z`.`dataTransakcji` AS `dataTransakcji` from (`zamowienia` `z` join `statuszamowienia` `s`) where (`s`.`idStatusZamowienia` = `z`.`idStatusZamowienia`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zamowieniadlapracownika`
--

/*!50001 DROP VIEW IF EXISTS `zamowieniadlapracownika`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zamowieniadlapracownika` AS select `z`.`idZamowienia` AS `idZamowienia`,`s`.`status` AS `status`,`z`.`dataTransakcji` AS `dataTransakcji`,`d`.`imie` AS `imie`,`d`.`nazwisko` AS `nazwisko` from (((`zamowienia` `z` join `danepersonalne` `d`) join `klienci`) join `statuszamowienia` `s`) where ((`z`.`idKlienta` = `klienci`.`idKlienta`) and (`klienci`.`idDanych` = `d`.`idDanych`) and (`s`.`idStatusZamowienia` = `z`.`idStatusZamowienia`)) */;
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

-- Dump completed on 2020-05-30 20:52:10
