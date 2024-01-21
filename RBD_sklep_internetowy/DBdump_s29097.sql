-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: s29097
-- ------------------------------------------------------
-- Server version	10.5.19-MariaDB-0+deb11u2

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
-- Table structure for table `adres`
--

DROP TABLE IF EXISTS `adres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adres` (
  `id_adres` int(11) NOT NULL,
  `miasto` varchar(45) DEFAULT NULL,
  `wojewodztwo` varchar(45) DEFAULT NULL,
  `kod_pocztowy` varchar(45) DEFAULT NULL,
  `ulica` varchar(45) DEFAULT NULL,
  `nr_domu` varchar(45) DEFAULT NULL,
  `nr_lokalu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_adres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adres`
--

LOCK TABLES `adres` WRITE;
/*!40000 ALTER TABLE `adres` DISABLE KEYS */;
INSERT INTO `adres` VALUES (1,'Warszawa','Mazowieckie','00-001','ul. Prosta','1','A'),(2,'Kraków','Małopolskie','30-002','ul. Krolewska','10',''),(3,'Gdańsk','Pomorskie','80-003','ul. Portowa','5','22'),(4,'Wrocław','Dolnośląskie','50-004','ul. Rynek','7',''),(5,'Poznań','Wielkopolskie','60-005','ul. Garbary','15','B'),(6,'Łódź','Łódzkie','90-006','ul. Piotrkowska','20','C'),(7,'Szczecin','Zachodniopomorskie','70-007','ul. Monte Cassino','3',''),(8,'Bydgoszcz','Kujawsko-Pomorskie','85-008','ul. Gdańska','12',''),(9,'Katowice','Śląskie','40-009','ul. Mariacka','8','15'),(10,'Białystok','Podlaskie','15-010','ul. Sienkiewicza','4','2'),(11,'Lublin','Lubelskie','20-011','ul. Krakowskie Przedmieście','6','18'),(12,'Rzeszów','Podkarpackie','35-012','ul. Jagiellońska','11',''),(13,'Olsztyn','Warmińsko-Mazurskie','10-013','ul. Dworcowa','9','3'),(14,'Kielce','Świętokrzyskie','25-014','ul. Sienkiewicza','22','5'),(15,'Gdynia','Pomorskie','81-015','ul. Wzgórze Św. Maksymiliana','17',''),(16,'Częstochowa','Śląskie','42-016','ul. Jasnogórska','14',''),(17,'Radom','Mazowieckie','26-017','ul. Klonowa','30','8'),(18,'Sosnowiec','Śląskie','41-018','ul. Zwycięstwa','5',''),(19,'Toruń','Kujawsko-Pomorskie','87-019','ul. Staromiejska','7','11'),(20,'Kalisz','Wielkopolskie','62-020','ul. Wrocławska','18','B');
/*!40000 ALTER TABLE `adres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faktura`
--

DROP TABLE IF EXISTS `faktura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faktura` (
  `id_faktura` int(11) NOT NULL,
  `data_sprzedazy` datetime DEFAULT NULL,
  `wartosc_netto` decimal(10,2) DEFAULT NULL,
  `wartosc_brutto` decimal(10,2) DEFAULT NULL,
  `forma_platnosci` varchar(20) DEFAULT NULL,
  `rodzaj_dokumentu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_faktura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faktura`
--

LOCK TABLES `faktura` WRITE;
/*!40000 ALTER TABLE `faktura` DISABLE KEYS */;
INSERT INTO `faktura` VALUES (1,'2023-01-01 00:00:00',150.00,178.50,'Przelew','Faktura VAT'),(2,'2023-01-02 00:00:00',300.50,357.63,'Gotówka','Paragon'),(3,'2023-01-03 00:00:00',50.20,59.94,'Karta kredytowa','Faktura VAT'),(4,'2023-01-04 00:00:00',122.40,146.88,'Przelew','Faktura VAT'),(5,'2023-01-05 00:00:00',486.00,580.86,'Gotówka','Paragon'),(6,'2023-01-06 00:00:00',22.50,26.93,'Karta debetowa','Paragon'),(7,'2023-01-07 00:00:00',184.80,221.76,'Przelew','Faktura VAT'),(8,'2023-01-08 00:00:00',81.00,96.90,'Karta kredytowa','Paragon'),(9,'2023-01-09 00:00:00',156.75,187.59,'Gotówka','Faktura VAT'),(10,'2023-01-10 00:00:00',98.00,117.60,'Przelew','Paragon'),(11,'2023-01-11 00:00:00',126.50,151.80,'Karta debetowa','Faktura VAT'),(12,'2023-01-12 00:00:00',297.50,356.99,'Przelew','Faktura VAT'),(13,'2023-01-13 00:00:00',310.00,371.10,'Gotówka','Paragon'),(14,'2023-01-14 00:00:00',93.60,112.32,'Karta kredytowa','Faktura VAT'),(15,'2023-01-15 00:00:00',418.50,501.18,'Przelew','Paragon'),(16,'2023-01-16 00:00:00',165.00,197.10,'Karta debetowa','Faktura VAT'),(17,'2023-01-17 00:00:00',201.60,241.92,'Gotówka','Faktura VAT'),(18,'2023-01-18 00:00:00',134.40,161.28,'Przelew','Paragon'),(19,'2023-01-19 00:00:00',73.50,88.20,'Karta kredytowa','Faktura VAT'),(20,'2023-01-20 00:00:00',236.80,284.16,'Przelew','Paragon');
/*!40000 ALTER TABLE `faktura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gwarancja`
--

DROP TABLE IF EXISTS `gwarancja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gwarancja` (
  `id_gwarancja` int(11) NOT NULL,
  `data_kupna` datetime DEFAULT NULL,
  `data_gwarancji` datetime DEFAULT NULL,
  PRIMARY KEY (`id_gwarancja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gwarancja`
--

LOCK TABLES `gwarancja` WRITE;
/*!40000 ALTER TABLE `gwarancja` DISABLE KEYS */;
INSERT INTO `gwarancja` VALUES (1,'2022-01-01 00:00:00','2024-01-01 00:00:00'),(2,'2022-02-02 00:00:00','2024-02-02 00:00:00'),(3,'2022-03-03 00:00:00','2024-03-03 00:00:00'),(4,'2022-04-04 00:00:00','2024-04-04 00:00:00'),(5,'2022-05-05 00:00:00','2024-05-05 00:00:00'),(6,'2022-06-06 00:00:00','2024-06-06 00:00:00'),(7,'2022-07-07 00:00:00','2024-07-07 00:00:00'),(8,'2022-08-08 00:00:00','2024-08-08 00:00:00'),(9,'2022-09-09 00:00:00','2024-09-09 00:00:00'),(10,'2022-10-10 00:00:00','2024-10-10 00:00:00'),(11,'2022-11-11 00:00:00','2024-11-11 00:00:00'),(12,'2022-12-12 00:00:00','2024-12-12 00:00:00'),(13,'2023-01-01 00:00:00','2025-01-01 00:00:00'),(14,'2023-02-02 00:00:00','2025-02-02 00:00:00'),(15,'2023-03-03 00:00:00','2025-03-03 00:00:00'),(16,'2023-04-04 00:00:00','2025-04-04 00:00:00'),(17,'2023-05-05 00:00:00','2025-05-05 00:00:00'),(18,'2023-06-06 00:00:00','2025-06-06 00:00:00'),(19,'2023-07-07 00:00:00','2025-07-07 00:00:00'),(20,'2023-08-08 00:00:00','2025-08-08 00:00:00');
/*!40000 ALTER TABLE `gwarancja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoria`
--

DROP TABLE IF EXISTS `kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategoria` (
  `id_kategoria` int(11) NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_kategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoria`
--

LOCK TABLES `kategoria` WRITE;
/*!40000 ALTER TABLE `kategoria` DISABLE KEYS */;
INSERT INTO `kategoria` VALUES (1,'Elektronika'),(2,'Odzież'),(3,'Dom i ogród'),(4,'Motoryzacja'),(5,'Sport i rekreacja'),(6,'Książki'),(7,'Sprzęt AGD'),(8,'Meble'),(9,'Zdrowie i uroda'),(10,'Dla dzieci'),(11,'Telewizory'),(12,'Buty'),(13,'Oświetlenie'),(14,'Samochody'),(15,'Sprzęt fitness'),(16,'Biżuteria'),(17,'Gry komputerowe'),(18,'Kuchnia'),(19,'Telefony'),(20,'Fotografia');
/*!40000 ALTER TABLE `kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoria_producent`
--

DROP TABLE IF EXISTS `kategoria_producent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategoria_producent` (
  `id_kategoria_producent` int(11) NOT NULL,
  `kategoria_id` int(11) DEFAULT NULL,
  `producent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kategoria_producent`),
  KEY `kategoria_id` (`kategoria_id`),
  KEY `producent_id` (`producent_id`),
  CONSTRAINT `kategoria_producent_ibfk_1` FOREIGN KEY (`kategoria_id`) REFERENCES `kategoria` (`id_kategoria`),
  CONSTRAINT `kategoria_producent_ibfk_2` FOREIGN KEY (`producent_id`) REFERENCES `producent` (`id_producent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoria_producent`
--

LOCK TABLES `kategoria_producent` WRITE;
/*!40000 ALTER TABLE `kategoria_producent` DISABLE KEYS */;
INSERT INTO `kategoria_producent` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);
/*!40000 ALTER TABLE `kategoria_producent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klient`
--

DROP TABLE IF EXISTS `klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klient` (
  `id_klient` int(11) NOT NULL,
  `adres_id` int(11) DEFAULT NULL,
  `kontakt_id` int(11) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `md5_haslo` varchar(32) DEFAULT NULL,
  `nazwa_firmy` varchar(45) DEFAULT NULL,
  `regon` varchar(45) DEFAULT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `imie` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_klient`),
  KEY `adres_id` (`adres_id`),
  KEY `kontakt_id` (`kontakt_id`),
  CONSTRAINT `klient_ibfk_1` FOREIGN KEY (`adres_id`) REFERENCES `adres` (`id_adres`),
  CONSTRAINT `klient_ibfk_2` FOREIGN KEY (`kontakt_id`) REFERENCES `kontakt` (`id_kontakt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES (1,1,1,'john_doe','5f4dcc3b5aa765d61d8327deb882cf99','ABC Company','123456789','987654321','Doe','John'),(2,2,2,'jane_smith','5f4dcc3b5aa765d61d8327deb882cf99','XYZ Corporation','987654321','123456789','Smith','Jane'),(3,3,3,'mike_jones','5f4dcc3b5aa765d61d8327deb882cf99','123 Industries','555666777','111222333','Jones','Mike'),(4,4,4,'susan_wilson','5f4dcc3b5aa765d61d8327deb882cf99','Wilson Enterprises','111222333','444555666','Wilson','Susan'),(5,5,5,'peter_miller','5f4dcc3b5aa765d61d8327deb882cf99','Miller & Sons','444555666','777888999','Miller','Peter'),(6,6,6,'lisa_davis','5f4dcc3b5aa765d61d8327deb882cf99','Davis Ltd.','777888999','123123123','Davis','Lisa'),(7,7,7,'david_clark','5f4dcc3b5aa765d61d8327deb882cf99','Clark Co.','123123123','456456456','Clark','David'),(8,8,8,'emily_brown','5f4dcc3b5aa765d61d8327deb882cf99','Brown Industries','456456456','789789789','Brown','Emily'),(9,9,9,'mark_taylor','5f4dcc3b5aa765d61d8327deb882cf99','Taylor Corporation','789789789','987654321','Taylor','Mark'),(10,10,10,'amy_wilkins','5f4dcc3b5aa765d61d8327deb882cf99','Wilkins Ltd.','987654321','111222333','Wilkins','Amy'),(11,11,11,'chris_lee','5f4dcc3b5aa765d61d8327deb882cf99','Lee & Co.','111222333','444555666','Lee','Chris'),(12,12,12,'jessica_white','5f4dcc3b5aa765d61d8327deb882cf99','White Enterprises','444555666','777888999','White','Jessica'),(13,13,13,'steve_green','5f4dcc3b5aa765d61d8327deb882cf99','Green Corporation','777888999','123123123','Green','Steve'),(14,14,14,'kelly_jackson','5f4dcc3b5aa765d61d8327deb882cf99','Jackson Ltd.','123123123','456456456','Jackson','Kelly'),(15,15,15,'robert_hall','5f4dcc3b5aa765d61d8327deb882cf99','Hall Co.','456456456','789789789','Hall','Robert'),(16,16,16,'linda_morris','5f4dcc3b5aa765d61d8327deb882cf99','Morris Enterprises','789789789','987654321','Morris','Linda'),(17,17,17,'brian_wilson','5f4dcc3b5aa765d61d8327deb882cf99','Wilson Ltd.','987654321','111222333','Wilson','Brian'),(18,18,18,'amanda_roberts','5f4dcc3b5aa765d61d8327deb882cf99','Roberts Co.','111222333','444555666','Roberts','Amanda'),(19,19,19,'kevin_brown','5f4dcc3b5aa765d61d8327deb882cf99','Brown & Sons','444555666','777888999','Brown','Kevin'),(20,20,20,'nicole_jones','5f4dcc3b5aa765d61d8327deb882cf99','Jones Corporation','777888999','123123123','Jones','Nicole');
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kontakt`
--

DROP TABLE IF EXISTS `kontakt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kontakt` (
  `id_kontakt` int(11) NOT NULL,
  `nr_telefonu` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_kontakt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontakt`
--

LOCK TABLES `kontakt` WRITE;
/*!40000 ALTER TABLE `kontakt` DISABLE KEYS */;
INSERT INTO `kontakt` VALUES (1,'123456789','john.doe@example.com'),(2,'987654321','jane.smith@example.com'),(3,'555666777','mike.jones@example.com'),(4,'111222333','susan.wilson@example.com'),(5,'444555666','peter.miller@example.com'),(6,'777888999','lisa.davis@example.com'),(7,'123123123','david.clark@example.com'),(8,'456456456','emily.brown@example.com'),(9,'789789789','mark.taylor@example.com'),(10,'987654321','amy.wilkins@example.com'),(11,'111222333','chris.lee@example.com'),(12,'444555666','jessica.white@example.com'),(13,'777888999','steve.green@example.com'),(14,'123123123','kelly.jackson@example.com'),(15,'456456456','robert.hall@example.com'),(16,'789789789','linda.morris@example.com'),(17,'987654321','brian.wilson@example.com'),(18,'111222333','amanda.roberts@example.com'),(19,'444555666','kevin.brown@example.com'),(20,'777888999','nicole.jones@example.com');
/*!40000 ALTER TABLE `kontakt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koszyk`
--

DROP TABLE IF EXISTS `koszyk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koszyk` (
  `id_koszyk` int(11) NOT NULL,
  `produkt_id` int(11) DEFAULT NULL,
  `wartosc` decimal(10,2) DEFAULT NULL,
  `ilosc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_koszyk`),
  KEY `produkt_id` (`produkt_id`),
  CONSTRAINT `koszyk_ibfk_1` FOREIGN KEY (`produkt_id`) REFERENCES `produkt` (`id_produkt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koszyk`
--

LOCK TABLES `koszyk` WRITE;
/*!40000 ALTER TABLE `koszyk` DISABLE KEYS */;
INSERT INTO `koszyk` VALUES (1,1,1500.00,'1'),(2,2,800.50,'2'),(3,3,1200.20,'1'),(4,4,400.40,'3'),(5,5,600.60,'1'),(6,6,100.10,'2'),(7,7,900.90,'1'),(8,8,1200.00,'1'),(9,9,350.50,'2'),(10,10,150.75,'1'),(11,11,200.25,'1'),(12,12,300.30,'1'),(13,13,500.50,'1'),(14,14,400.40,'2'),(15,15,250.25,'1'),(16,16,120.00,'3'),(17,17,180.80,'1'),(18,18,300.30,'1'),(19,19,700.70,'1'),(20,20,150.50,'2');
/*!40000 ALTER TABLE `koszyk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opinia`
--

DROP TABLE IF EXISTS `opinia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opinia` (
  `id_opinia` int(11) NOT NULL,
  `produkt_id` int(11) DEFAULT NULL,
  `klient_id` int(11) DEFAULT NULL,
  `data_wystawienia` datetime DEFAULT NULL,
  `tresc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_opinia`),
  KEY `produkt_id` (`produkt_id`),
  KEY `klient_id` (`klient_id`),
  CONSTRAINT `opinia_ibfk_1` FOREIGN KEY (`produkt_id`) REFERENCES `produkt` (`id_produkt`),
  CONSTRAINT `opinia_ibfk_2` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`id_klient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opinia`
--

LOCK TABLES `opinia` WRITE;
/*!40000 ALTER TABLE `opinia` DISABLE KEYS */;
INSERT INTO `opinia` VALUES (1,1,1,'2023-01-01 00:00:00','Bardzo zadowolony z zakupu, laptop działa świetnie!'),(2,2,2,'2023-01-02 00:00:00','Doskonała jakość zdjęć, polecam ten smartfon.'),(3,3,3,'2023-01-03 00:00:00','Telewizor Sony to prawdziwy hit, obraz jest niesamowity.'),(4,4,4,'2023-01-04 00:00:00','Konsola Xbox to świetna rozrywka dla całej rodziny.'),(5,5,5,'2023-01-05 00:00:00','Aparat Canon robi wspaniałe zdjęcia, jestem pod wrażeniem.'),(6,6,6,'2023-01-06 00:00:00','Słuchawki Sony mają doskonałą jakość dźwięku.'),(7,7,7,'2023-01-07 00:00:00','Dron DJI jest łatwy w obsłudze i robi fantastyczne filmy.'),(8,8,8,'2023-01-08 00:00:00','Lodówka Bosch świetnie utrzymuje niską temperaturę.'),(9,9,9,'2023-01-09 00:00:00','Tablet Lenovo ma duży ekran i świetną wydajność.'),(10,10,10,'2023-01-10 00:00:00','Mikrofalówka Samsung jest bardzo przydatna w kuchni.'),(11,11,11,'2023-01-11 00:00:00','Soundbar LG polepsza jakość dźwięku w moim salonie.'),(12,12,12,'2023-01-12 00:00:00','Suszarka Bosch działa cicho i skutecznie.'),(13,13,13,'2023-01-13 00:00:00','Smartwatch Apple jest elegancki i funkcjonalny.'),(14,14,14,'2023-01-14 00:00:00','Odkurzacz Dyson jest wygodny i skuteczny.'),(15,15,15,'2023-01-15 00:00:00','Głośniki Bose mają doskonałą jakość dźwięku.'),(16,16,16,'2023-01-16 00:00:00','Aptopix Camera to świetne rozwiązanie do monitoringu domowego.'),(17,17,17,'2023-01-17 00:00:00','Robot kuchenny Moulinex oszczędza mi dużo czasu w kuchni.'),(18,18,18,'2023-01-18 00:00:00','Monitor Dell jest idealny do pracy.'),(19,19,19,'2023-01-19 00:00:00','Klimatyzator Samsung szybko schładza pomieszczenie.'),(20,20,20,'2023-01-20 00:00:00','Ekspres do kawy Philips przygotowuje pyszną kawę.');
/*!40000 ALTER TABLE `opinia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platnosc`
--

DROP TABLE IF EXISTS `platnosc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platnosc` (
  `id_platnosc` int(11) NOT NULL,
  `rodzaj_platnosci` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_platnosc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platnosc`
--

LOCK TABLES `platnosc` WRITE;
/*!40000 ALTER TABLE `platnosc` DISABLE KEYS */;
INSERT INTO `platnosc` VALUES (1,'Karta kredytowa'),(2,'Przelew bankowy'),(3,'Gotówka'),(4,'PayPal'),(5,'BLIK'),(6,'Apple Pay'),(7,'Google Pay'),(8,'Bitcoin'),(9,'Płatność ratalna'),(10,'Voucher'),(11,'Kryptowaluty'),(12,'Bon towarowy'),(13,'Czek'),(14,'Płatność online'),(15,'ePrzelew'),(16,'InPost płatność'),(17,'Western Union'),(18,'Revolut'),(19,'MBank Pay'),(20,'Karta przedpłacona');
/*!40000 ALTER TABLE `platnosc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pozycja_faktura`
--

DROP TABLE IF EXISTS `pozycja_faktura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pozycja_faktura` (
  `id_pozycja_faktura` int(11) NOT NULL,
  `liczba_szt` tinyint(4) DEFAULT NULL,
  `cena_netto` decimal(10,2) DEFAULT NULL,
  `cena_brutto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_pozycja_faktura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pozycja_faktura`
--

LOCK TABLES `pozycja_faktura` WRITE;
/*!40000 ALTER TABLE `pozycja_faktura` DISABLE KEYS */;
INSERT INTO `pozycja_faktura` VALUES (1,5,10.50,12.60),(2,10,25.75,30.90),(3,2,8.20,9.80),(4,8,15.30,18.36),(5,15,32.40,38.88),(6,3,7.50,9.00),(7,12,20.60,24.72),(8,6,12.75,15.30),(9,4,9.80,11.76),(10,7,18.90,22.68),(11,9,22.40,26.88),(12,11,29.75,35.70),(13,14,31.20,37.44),(14,1,5.50,6.60),(15,13,27.90,33.48),(16,6,13.75,16.50),(17,8,16.80,20.16),(18,3,8.90,10.68),(19,10,24.50,29.40),(20,5,11.20,13.44);
/*!40000 ALTER TABLE `pozycja_faktura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownik`
--

DROP TABLE IF EXISTS `pracownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracownik` (
  `id_pracownik` int(11) NOT NULL,
  `adres_id` int(11) DEFAULT NULL,
  `kontakt_id` int(11) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `md5_haslo` varchar(32) DEFAULT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `konto_aktywne` tinyint(1) DEFAULT NULL,
  `data_zatrudnienia` datetime DEFAULT NULL,
  `data_zwolnienia` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pracownik`),
  KEY `adres_id` (`adres_id`),
  KEY `kontakt_id` (`kontakt_id`),
  CONSTRAINT `pracownik_ibfk_1` FOREIGN KEY (`adres_id`) REFERENCES `adres` (`id_adres`),
  CONSTRAINT `pracownik_ibfk_2` FOREIGN KEY (`kontakt_id`) REFERENCES `kontakt` (`id_kontakt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownik`
--

LOCK TABLES `pracownik` WRITE;
/*!40000 ALTER TABLE `pracownik` DISABLE KEYS */;
INSERT INTO `pracownik` VALUES (1,1,1,'john_doe','5f4dcc3b5aa765d61d8327deb882cf99','John','Doe',1,'2023-01-01 08:00:00',NULL),(2,2,2,'jane_smith','5f4dcc3b5aa765d61d8327deb882cf99','Jane','Smith',1,'2023-01-02 09:30:00',NULL),(3,3,3,'mike_jones','5f4dcc3b5aa765d61d8327deb882cf99','Mike','Jones',1,'2023-01-03 10:45:00',NULL),(4,4,4,'susan_wilson','5f4dcc3b5aa765d61d8327deb882cf99','Susan','Wilson',1,'2023-01-04 11:15:00',NULL),(5,5,5,'peter_miller','5f4dcc3b5aa765d61d8327deb882cf99','Peter','Miller',1,'2023-01-05 12:00:00',NULL),(6,6,6,'lisa_davis','5f4dcc3b5aa765d61d8327deb882cf99','Lisa','Davis',1,'2023-01-06 13:20:00',NULL),(7,7,7,'david_clark','5f4dcc3b5aa765d61d8327deb882cf99','David','Clark',1,'2023-01-07 14:30:00',NULL),(8,8,8,'emily_brown','5f4dcc3b5aa765d61d8327deb882cf99','Emily','Brown',1,'2023-01-08 15:45:00',NULL),(9,9,9,'mark_taylor','5f4dcc3b5aa765d61d8327deb882cf99','Mark','Taylor',1,'2023-01-09 16:55:00',NULL),(10,10,10,'amy_wilkins','5f4dcc3b5aa765d61d8327deb882cf99','Amy','Wilkins',1,'2023-01-10 17:30:00',NULL),(11,11,11,'chris_lee','5f4dcc3b5aa765d61d8327deb882cf99','Chris','Lee',1,'2023-01-11 18:15:00',NULL),(12,12,12,'jessica_white','5f4dcc3b5aa765d61d8327deb882cf99','Jessica','White',1,'2023-01-12 08:30:00',NULL),(13,13,13,'steve_green','5f4dcc3b5aa765d61d8327deb882cf99','Steve','Green',1,'2023-01-13 09:45:00',NULL),(14,14,14,'kelly_jackson','5f4dcc3b5aa765d61d8327deb882cf99','Kelly','Jackson',1,'2023-01-14 10:30:00',NULL),(15,15,15,'robert_hall','5f4dcc3b5aa765d61d8327deb882cf99','Robert','Hall',1,'2023-01-15 11:20:00',NULL),(16,16,16,'linda_morris','5f4dcc3b5aa765d61d8327deb882cf99','Linda','Morris',1,'2023-01-16 12:10:00',NULL),(17,17,17,'brian_wilson','5f4dcc3b5aa765d61d8327deb882cf99','Brian','Wilson',1,'2023-01-17 13:05:00',NULL),(18,18,18,'amanda_roberts','5f4dcc3b5aa765d61d8327deb882cf99','Amanda','Roberts',1,'2023-01-18 14:45:00',NULL),(19,19,19,'kevin_brown','5f4dcc3b5aa765d61d8327deb882cf99','Kevin','Brown',1,'2023-01-19 15:30:00',NULL),(20,20,20,'nicole_jones','5f4dcc3b5aa765d61d8327deb882cf99','Nicole','Jones',1,'2023-01-20 16:20:00',NULL);
/*!40000 ALTER TABLE `pracownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producent`
--

DROP TABLE IF EXISTS `producent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producent` (
  `id_producent` int(11) NOT NULL,
  `nazwa_producent` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_producent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producent`
--

LOCK TABLES `producent` WRITE;
/*!40000 ALTER TABLE `producent` DISABLE KEYS */;
INSERT INTO `producent` VALUES (1,'Dell'),(2,'Samsung'),(3,'Sony'),(4,'Microsoft'),(5,'Canon'),(6,'Sony'),(7,'DJI'),(8,'Bosch'),(9,'Lenovo'),(10,'Philips'),(11,'LG'),(12,'Bosch'),(13,'Apple'),(14,'Dyson'),(15,'Bose'),(16,'Aptopix'),(17,'Moulinex'),(18,'Dell'),(19,'Samsung'),(20,'Philips');
/*!40000 ALTER TABLE `producent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produkt`
--

DROP TABLE IF EXISTS `produkt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produkt` (
  `id_produkt` int(11) NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `kategoria` int(11) DEFAULT NULL,
  `cena_netto` decimal(10,2) DEFAULT NULL,
  `cena_brutto` decimal(10,2) DEFAULT NULL,
  `gwarancja` varchar(20) DEFAULT NULL,
  `ilosc` decimal(5,1) DEFAULT NULL,
  `opis` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_produkt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkt`
--

LOCK TABLES `produkt` WRITE;
/*!40000 ALTER TABLE `produkt` DISABLE KEYS */;
INSERT INTO `produkt` VALUES (1,'Laptop Dell',1,1500.00,1785.00,'2 lata',50.5,'Potężny laptop do pracy'),(2,'Smartfon Samsung',2,800.50,952.60,'1 rok',120.2,'Najnowszy model ze świetnym aparatem'),(3,'Telewizor Sony',3,1200.20,1434.24,'3 lata',30.0,'Duży telewizor 4K'),(4,'Konsola Xbox',4,400.40,478.48,'2 lata',15.8,'Nowoczesna konsola do gier'),(5,'Aparat Canon',5,600.60,717.72,'1 rok',40.2,'Profesjonalny aparat fotograficzny'),(6,'Słuchawki Sony',6,100.10,119.12,'2 lata',80.5,'Dobrej jakości słuchawki douszne'),(7,'Drone DJI',7,900.90,1074.88,'1 rok',10.0,'Nowoczesny dron z kamerą 4K'),(8,'Lodówka Bosch',8,1200.00,1434.00,'5 lat',20.0,'Duża lodówka z funkcją chłodzenia'),(9,'Tablet Lenovo',9,350.50,418.40,'2 lata',60.0,'Tablet z dużym ekranem'),(10,'Mikrofalówka Samsung',10,150.75,180.90,'3 lata',25.0,'Mikrofalówka z wieloma funkcjami'),(11,'Soundbar LG',11,200.25,239.40,'2 lata',15.0,'Dźwięk kinowy w twoim salonie'),(12,'Suszarka Bosch',12,300.30,359.16,'4 lata',18.0,'Suszarka do ubrań z wieloma programami'),(13,'Smartwatch Apple',13,500.50,598.60,'1 rok',30.0,'Elegancki smartwatch z funkcją EKG'),(14,'Odkurzacz Dyson',14,400.40,478.48,'3 lata',12.0,'Bezprzewodowy odkurzacz pionowy'),(15,'Głośniki Bose',15,250.25,299.50,'2 lata',25.0,'Wysokiej jakości głośniki stereo'),(16,'Aptopix Camera',16,120.00,143.52,'2 lata',50.0,'Kamera do monitoringu domowego'),(17,'Robot kuchenny Moulinex',17,180.80,216.96,'1 rok',8.0,'Uniwersalny robot kuchenny'),(18,'Monitor Dell',18,300.30,359.16,'3 lata',40.0,'Duży monitor do pracy'),(19,'Klimatyzator Samsung',19,700.70,837.84,'2 lata',10.0,'Klimatyzator z funkcją grzania'),(20,'Ekspres do kawy Philips',20,150.50,180.60,'2 lata',15.0,'Ekspres z funkcją mlecznej pianki');
/*!40000 ALTER TABLE `produkt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zamowienie`
--

DROP TABLE IF EXISTS `zamowienie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zamowienie` (
  `id_zamowienia` int(11) NOT NULL,
  `klient_id` int(11) DEFAULT NULL,
  `data_zamowienia` datetime DEFAULT NULL,
  `data_przyjecia` datetime DEFAULT NULL,
  `czy_zrealizowano` tinyint(1) DEFAULT NULL,
  `platnosc` varchar(20) DEFAULT NULL,
  `data_wysylki` datetime DEFAULT NULL,
  `data_realizacji` datetime DEFAULT NULL,
  PRIMARY KEY (`id_zamowienia`),
  KEY `klient_id` (`klient_id`),
  CONSTRAINT `zamowienie_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`id_klient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienie`
--

LOCK TABLES `zamowienie` WRITE;
/*!40000 ALTER TABLE `zamowienie` DISABLE KEYS */;
INSERT INTO `zamowienie` VALUES (1,1,'2023-01-01 00:00:00','2023-01-02 00:00:00',1,'Przelew',NULL,NULL),(2,2,'2023-01-02 00:00:00','2023-01-03 00:00:00',1,'Gotówka',NULL,NULL),(3,3,'2023-01-03 00:00:00','2023-01-04 00:00:00',0,'Karta kredytowa',NULL,NULL),(4,4,'2023-01-04 00:00:00','2023-01-05 00:00:00',1,'Przelew',NULL,NULL),(5,5,'2023-01-05 00:00:00','2023-01-06 00:00:00',0,'Gotówka',NULL,NULL),(6,6,'2023-01-06 00:00:00','2023-01-07 00:00:00',1,'Karta debetowa',NULL,NULL),(7,7,'2023-01-07 00:00:00','2023-01-08 00:00:00',0,'Przelew',NULL,NULL),(8,8,'2023-01-08 00:00:00','2023-01-09 00:00:00',1,'Karta kredytowa',NULL,NULL),(9,9,'2023-01-09 00:00:00','2023-01-10 00:00:00',0,'Gotówka',NULL,NULL),(10,10,'2023-01-10 00:00:00','2023-01-11 00:00:00',1,'Przelew',NULL,NULL),(11,11,'2023-01-11 00:00:00','2023-01-12 00:00:00',0,'Karta debetowa',NULL,NULL),(12,12,'2023-01-12 00:00:00','2023-01-13 00:00:00',1,'Przelew',NULL,NULL),(13,13,'2023-01-13 00:00:00','2023-01-14 00:00:00',0,'Gotówka',NULL,NULL),(14,14,'2023-01-14 00:00:00','2023-01-15 00:00:00',1,'Karta kredytowa',NULL,NULL),(15,15,'2023-01-15 00:00:00','2023-01-16 00:00:00',0,'Przelew',NULL,NULL),(16,16,'2023-01-16 00:00:00','2023-01-17 00:00:00',1,'Karta debetowa',NULL,NULL),(17,17,'2023-01-17 00:00:00','2023-01-18 00:00:00',0,'Gotówka',NULL,NULL),(18,18,'2023-01-18 00:00:00','2023-01-19 00:00:00',1,'Przelew',NULL,NULL),(19,19,'2023-01-19 00:00:00','2023-01-20 00:00:00',0,'Karta kredytowa',NULL,NULL),(20,20,'2023-01-20 00:00:00','2023-01-21 00:00:00',1,'Gotówka',NULL,NULL);
/*!40000 ALTER TABLE `zamowienie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zamowienie_produkt`
--

DROP TABLE IF EXISTS `zamowienie_produkt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zamowienie_produkt` (
  `id_zamowienie_produkt` int(11) NOT NULL,
  `zamowienie_id` int(11) DEFAULT NULL,
  `produkt_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_zamowienie_produkt`),
  KEY `zamowienie_id` (`zamowienie_id`),
  KEY `produkt_id` (`produkt_id`),
  CONSTRAINT `zamowienie_produkt_ibfk_1` FOREIGN KEY (`zamowienie_id`) REFERENCES `zamowienie` (`id_zamowienia`),
  CONSTRAINT `zamowienie_produkt_ibfk_2` FOREIGN KEY (`produkt_id`) REFERENCES `produkt` (`id_produkt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienie_produkt`
--

LOCK TABLES `zamowienie_produkt` WRITE;
/*!40000 ALTER TABLE `zamowienie_produkt` DISABLE KEYS */;
INSERT INTO `zamowienie_produkt` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);
/*!40000 ALTER TABLE `zamowienie_produkt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-13 16:59:57
