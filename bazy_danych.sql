-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: bazy_danych
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
  `ulica` varchar(30) DEFAULT NULL,
  `numerBudynku` varchar(6) NOT NULL,
  `numerMieszkania` varchar(4) DEFAULT NULL,
  `kodPocztowy` varchar(6) NOT NULL,
  `miejscowosc` varchar(40) NOT NULL,
  PRIMARY KEY (`idAdresu`),
  KEY `kodPocztowy_idx` (`kodPocztowy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresy`
--

LOCK TABLES `adresy` WRITE;
/*!40000 ALTER TABLE `adresy` DISABLE KEYS */;
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
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `hasło` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`idDanych`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `imieNazwisko_idx` (`imie`,`nazwisko`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danepersonalne`
--

LOCK TABLES `danepersonalne` WRITE;
/*!40000 ALTER TABLE `danepersonalne` DISABLE KEYS */;
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
  `nazwa` varchar(40) NOT NULL,
  `idKategorii` int NOT NULL,
  `cenaKatalogowa` decimal(6,2) NOT NULL,
  `material` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idDanychProduktu`),
  KEY `nazwa_idx` (`nazwa`),
  KEY `daneproduktu_idKategorii_idx` (`idKategorii`),
  CONSTRAINT `daneproduktu_idKategorii` FOREIGN KEY (`idKategorii`) REFERENCES `kategoria` (`idKategorii`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daneproduktu`
--

LOCK TABLES `daneproduktu` WRITE;
/*!40000 ALTER TABLE `daneproduktu` DISABLE KEYS */;
INSERT INTO `daneproduktu` VALUES (1,'Piłka pingpongowa',1,2.50,'plastik'),(2,'Rakieta',2,150.00,'aluminium'),(3,'Piłka tenisowa',2,20.00,'');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faktury`
--

LOCK TABLES `faktury` WRITE;
/*!40000 ALTER TABLE `faktury` DISABLE KEYS */;
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
  `kategoria` varchar(20) NOT NULL,
  PRIMARY KEY (`idKategorii`),
  UNIQUE KEY `kategoria_UNIQUE` (`kategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoria`
--

LOCK TABLES `kategoria` WRITE;
/*!40000 ALTER TABLE `kategoria` DISABLE KEYS */;
INSERT INTO `kategoria` VALUES (1,'Ping Pong'),(2,'Tenis');
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
  `numerTelefonu` varchar(12) DEFAULT NULL,
  `nip` varchar(10) DEFAULT NULL,
  `idAdresu` int NOT NULL,
  PRIMARY KEY (`idKlienta`),
  UNIQUE KEY `idDanych_UNIQUE` (`idDanych`),
  UNIQUE KEY `numerTelefonu_UNIQUE` (`numerTelefonu`),
  UNIQUE KEY `nip_UNIQUE` (`nip`),
  KEY `klienci_idAdresu_idx` (`idAdresu`),
  CONSTRAINT `klienci_idAdresu` FOREIGN KEY (`idAdresu`) REFERENCES `adresy` (`idAdresu`),
  CONSTRAINT `klienci_idDanych` FOREIGN KEY (`idDanych`) REFERENCES `danepersonalne` (`idDanych`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klienci`
--

LOCK TABLES `klienci` WRITE;
/*!40000 ALTER TABLE `klienci` DISABLE KEYS */;
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
  `stanowisko` varchar(20) NOT NULL,
  PRIMARY KEY (`idPracownika`),
  UNIQUE KEY `idDanych_UNIQUE` (`idDanych`),
  CONSTRAINT `pracownicy_idDanych` FOREIGN KEY (`idDanych`) REFERENCES `danepersonalne` (`idDanych`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
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
  `numerSeryjny` varchar(15) DEFAULT NULL,
  `idZamowienia` int DEFAULT NULL,
  PRIMARY KEY (`idProduktu`),
  UNIQUE KEY `numerSeryjny_UNIQUE` (`numerSeryjny`),
  KEY `produkty_idDanychProduktu_idx` (`idDanychProduktu`),
  KEY `produkty_idZamowienia_idx` (`idZamowienia`),
  CONSTRAINT `produkty_idDanychProduktu` FOREIGN KEY (`idDanychProduktu`) REFERENCES `daneproduktu` (`idDanychProduktu`),
  CONSTRAINT `produkty_idZamowienia` FOREIGN KEY (`idZamowienia`) REFERENCES `zamowienia` (`idZamowienia`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkty`
--

LOCK TABLES `produkty` WRITE;
/*!40000 ALTER TABLE `produkty` DISABLE KEYS */;
INSERT INTO `produkty` VALUES (1,1,0.50,'',NULL),(2,1,0.50,NULL,NULL),(3,1,2.00,NULL,NULL),(4,2,150.00,'A',NULL),(5,2,150.00,'B',NULL),(6,3,15.00,NULL,NULL),(7,3,15.00,NULL,NULL);
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
  `rodzaj` varchar(15) NOT NULL,
  PRIMARY KEY (`idRodzajFaktury`),
  UNIQUE KEY `rodzaj_UNIQUE` (`rodzaj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rodzajfaktury`
--

LOCK TABLES `rodzajfaktury` WRITE;
/*!40000 ALTER TABLE `rodzajfaktury` DISABLE KEYS */;
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
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`idStatusZamowienia`),
  UNIQUE KEY `status_UNIQUE` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
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
  `typ` varchar(20) NOT NULL,
  PRIMARY KEY (`idTypu`),
  UNIQUE KEY `typ_UNIQUE` (`typ`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umowy`
--

LOCK TABLES `umowy` WRITE;
/*!40000 ALTER TABLE `umowy` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienia`
--

LOCK TABLES `zamowienia` WRITE;
/*!40000 ALTER TABLE `zamowienia` DISABLE KEYS */;
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

-- Dump completed on 2020-05-17  1:10:09
