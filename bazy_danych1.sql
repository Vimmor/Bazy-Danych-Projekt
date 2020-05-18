-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 18 Maj 2020, 12:36
-- Wersja serwera: 5.6.37
-- Wersja PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pparczyk_bd2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy`
--

CREATE TABLE `adresy` (
  `idAdresu` int(11) NOT NULL,
  `ulica` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numerBudynku` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numerMieszkania` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kodPocztowy` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `miejscowosc` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `adresy`
--

INSERT INTO `adresy` (`idAdresu`, `ulica`, `numerBudynku`, `numerMieszkania`, `kodPocztowy`, `miejscowosc`) VALUES
(1, 'Nowotarska', '89', '11', '00-791', 'Warszawa'),
(2, 'Klonowa', '23', '1', '22-983', 'Radom'),
(3, 'Górna', '120', '7', '04-413', 'Warszawa'),
(4, 'Gruszowa', '44', '4', '54-530', 'Wrocław'),
(5, 'Sztabowa', '456', '9', '53-327', 'Wrocław'),
(6, 'Lipowa', '191', NULL, '55-300', 'Środa Śląska'),
(7, 'Osiedlowa', '12', NULL, '56-120', 'Brzeg Dolny'),
(8, 'Łukowa', '123', '4', '56-120', 'Brzeg Dolny'),
(9, 'Główna', '56', NULL, '56-100', 'Wołów'),
(10, 'Rynkowa', '78', '8', '55-300', 'Środa Śląska'),
(11, 'Grójecka', '126', '17', '53-118', 'Wrocław'),
(12, 'Grójecka', '74', '1', '53-118', 'Wrocław'),
(13, 'Ślusarska', '65', '7', '53-207', 'Wrocław'),
(14, 'Pochyła', '98', '7', '53-512', 'Wrocław'),
(15, NULL, '12', NULL, '55-330', 'Klęka'),
(16, NULL, '5', NULL, '55-330', 'Gąsiorów'),
(17, 'Kolorowa', '5', '6', '56-122', 'Brzeg Dolny'),
(18, 'Szkolna', '2', NULL, '55-330', 'Miękinia'),
(19, 'Bzowa', '56', '1', '56-100', 'Wołów'),
(20, 'Krzycka', '16A', NULL, '53-020', 'Wrocław'),
(21, 'Liliowa', '97', NULL, '59-700', 'Bolesławiec'),
(22, 'Hiszpańska', '76', '6', '54-409', 'Wrocław'),
(23, 'Pozioma', '72', NULL, '55-300', 'Środa Śląska'),
(24, 'Henrykowska', '345', '14', '50-503', 'Wrocław'),
(25, 'Świerkowa', '432', '5', '54-020', 'Wrocław');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `danepersonalne`
--

CREATE TABLE `danepersonalne` (
  `idDanych` int(11) NOT NULL,
  `imie` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hasło` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `danepersonalne`
--

INSERT INTO `danepersonalne` (`idDanych`, `imie`, `nazwisko`, `login`, `hasło`, `email`) VALUES
(1, 'Jan', 'Nowak', 'Jan Nowak', 'jan0102', 'jnowak@wp.pl'),
(2, 'Jan', 'Nowacki', 'Jan Nowacki', 'jn1979', 'nowacji_jan@gmail.com'),
(3, 'Marian', 'Nowakowski', 'Marian Nowakowski', 'ptys01', 'm_nowakowski@onet.pl'),
(4, 'Daniel', 'Wiśniewski', 'Daniel Wiśniewski', 'danko1702', 'danwisniewski90@gmail.com'),
(5, 'Amelia', 'Żukowska', 'Amelia Żukowska', 'ami13', 'amelia_zuk87@o2.pl'),
(6, 'Łucja', 'Wojciechowska', 'Łucja Wojciechowska', 'lubieplacki123', 'wojciechowska_lucja@o2.pl'),
(7, 'Filip', 'Wilk', 'Filip Wilk', 'wilczek13', 'wilk1910@wp.pl'),
(8, 'Paulina', 'Pawlak', 'Paulina Pawlak', 'paulinka333', 'ppawlak@onet.pl'),
(9, 'Maria', 'Wróblewska', 'Maria Wróblewska ', 'lubiekotki0102', 'm.wroblewska@wp.pl'),
(10, 'Jan', 'Dębski', 'Jan Dębski', 'dabek15', 'jandebski@gmail.com'),
(11, 'Iga', 'Matuszewska', 'Iga Matuszewska', 'matuszewska12', 'matuszewska_iga99@wp.pl'),
(12, 'Karolina', 'Tomczak', 'Karolina Tomczak', 'lola0102', 'lola_tomczak@gmail.com'),
(13, 'Marcel', 'Kowalczyk', 'Marcel Kowalczyk', 'abcd1234', 'marcel95@gmail.com'),
(14, 'Daria', 'Stępień', 'Daria Stępień', 'darisia98', 'darianna_stepien@gmail.com'),
(15, 'Milena', 'Nowak', 'Milena Nowak', 'milenka09', 'm_nowak@o2.pl'),
(16, 'Ignacy', 'Kujawa', 'Ignacy Kujawa', 'ignas1111', 'ignacykujawa@wp.pl'),
(17, 'Alicja', 'Czajkowska', 'Alicja Czajkowska', 'ala0102', 'a_czajka@gmail.com'),
(18, 'Bartłomiej', 'Piasecki', 'Bartłomiej Piasecki', 'bartus0102', 'piaseckib@gmail.com'),
(19, 'Daria', 'Madej', 'Daria Madej', 'darianna0102', 'dariamadej@onet.pl'),
(20, 'Wiktoria', 'Walczak', 'Wiktoria Walczak', 'wika1020', 'wwalczak@onet.pl'),
(21, 'Adam', 'Jastrzębski', 'Adam Jastrzębski', 'adasko0102', 'jastrzebskiadam@gmail.com'),
(22, 'Ignacy', 'Laskowski', 'Ignacy Laskowski', 'ignacy0102', 'ignacy_las@gmail.com'),
(23, 'Małgorzata', 'Grabowska', 'Małgorzata Grabowska', 'grabka0102', 'gosiagrabowska@gmail.com'),
(24, 'Hanna', 'Sikorska', 'Hanna Sikorska', 'sikorka0102', 'sikorskahanna@wp.pl'),
(25, 'Szymon', 'Gajewski', 'Szymon Gajewski', 'gajo0102', 'gajewskiszymek@onet.pl'),
(26, 'Maciej', 'Mazurkiewicz', 'Maciej Mazurkiewicz', 'emem0102', 'maciej_em@wp.pl'),
(27, 'Marcel', 'Kozak', 'Marcel Kozak', 'kozakkozak01', 'kozak_maciej89@wp.pl'),
(28, 'Sylwia', 'Owczarek', 'Sylwia Owczarek', 'sylwus13', 'sylwia1212@gmail.com'),
(29, 'Zuzanna', 'Sadowska', 'Zuzanna Sadowska', 'zuzik12', 'zuza_sadowska@gmail.com'),
(30, 'Julia', 'Michalak', 'Julia Michalak', 'jules1020', 'jmichalak@gmail.com'),
(31, 'Damian', 'Wieczorek', 'Damian Wieczorek', 'dam0102', 'wieczorek95@gmaiul.com'),
(32, 'Piotr', 'Piotrowski', 'Piotr Piotrowski', 'piotrpiotr66', 'piotrowskipiotrek@wp.pl'),
(33, 'Klaudia', 'Dudek', 'Klaudia Dudek', 'dudek0102', 'k_dudek91@wp.pl'),
(34, 'Jakub', 'Krawczyk', 'Jakub Krawczyk', 'kubus25', 'kubakrawczyk@gmail.com'),
(35, 'Michał', 'Czech', 'Michał Czech', 'czechu0102', 'czech_michal90@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `daneproduktu`
--

CREATE TABLE `daneproduktu` (
  `idDanychProduktu` int(11) NOT NULL,
  `nazwa` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idKategorii` int(11) NOT NULL,
  `cenaKatalogowa` decimal(6,2) NOT NULL,
  `material` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `daneproduktu`
--

INSERT INTO `daneproduktu` (`idDanychProduktu`, `nazwa`, `idKategorii`, `cenaKatalogowa`, `material`) VALUES
(1, 'Piłka pingpongowa', 1, '1.50', 'Plastik'),
(2, 'Rakieta', 2, '150.00', 'Aluminium'),
(3, 'Piłka tenisowa', 2, '5.00', 'Kauczuk'),
(5, 'Step', 4, '99.00', 'Plastik'),
(6, 'Stepper', 4, '179.00', 'Stal, plastik'),
(7, 'Mata treningowa', 4, '80.00', 'Polichlorek winylu'),
(8, 'Ergometr', 4, '659.00', 'Inny'),
(9, 'Mini bike', 4, '150.00', 'Inny'),
(10, 'Rower stacjonarny', 4, '900.00', 'Inny'),
(11, 'Kettlebell', 4, '79.00', 'Żeliwo'),
(12, 'Skakanka', 4, '25.00', 'Inny'),
(13, 'Hantel', 4, '40.00', 'Stal'),
(14, 'Gryf', 4, '90.00', 'Stal'),
(15, 'Talerz', 4, '5.00', 'Żeliwo'),
(16, 'Zacisk', 4, '1.50', 'Stal'),
(17, 'Piłka', 5, '40.00', 'Inny'),
(18, 'Piłka', 7, '39.00', 'Kauczuk'),
(19, 'Piłka', 6, '35.00', 'Inny'),
(20, 'Piłka', 8, '35.00', 'Kauczuk, guma');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktury`
--

CREATE TABLE `faktury` (
  `idFaktury` int(11) NOT NULL,
  `idZamowienia` int(11) NOT NULL,
  `idRodzajFaktury` int(11) NOT NULL,
  `dataWystawienia` date NOT NULL,
  `terminPlatnosci` date NOT NULL,
  `czyOplacona` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `faktury`
--

INSERT INTO `faktury` (`idFaktury`, `idZamowienia`, `idRodzajFaktury`, `dataWystawienia`, `terminPlatnosci`, `czyOplacona`) VALUES
(1, 2, 1, '2020-05-15', '2020-05-14', 1),
(2, 1, 1, '2020-05-18', '2020-05-18', 0),
(3, 4, 1, '2020-05-11', '2020-05-10', 1),
(4, 4, 2, '2020-05-14', '2020-05-10', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `idKategorii` int(11) NOT NULL,
  `kategoria` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`idKategorii`, `kategoria`) VALUES
(4, 'Fitness'),
(7, 'Koszykówka'),
(5, 'Piłka nożna'),
(8, 'Piłka ręczna'),
(1, 'Ping Pong'),
(6, 'Siatkówka'),
(2, 'Tenis');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `idKlienta` int(11) NOT NULL,
  `idDanych` int(11) NOT NULL,
  `numerTelefonu` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idAdresu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`idKlienta`, `idDanych`, `numerTelefonu`, `nip`, `idAdresu`) VALUES
(1, 6, '+48519374123', NULL, 1),
(2, 7, '+48549234860', NULL, 2),
(3, 8, NULL, NULL, 3),
(4, 12, '+48544321777', '6523871109', 7),
(5, 9, '+48708155558', '1234567895', 4),
(6, 10, NULL, '9876543219', 5),
(7, 11, '+48655984444', NULL, 6),
(8, 13, NULL, NULL, 8),
(9, 16, '+48123456789', NULL, 9),
(10, 17, '+48603123456', NULL, 10),
(11, 18, '+48505987772', NULL, 11),
(12, 19, '+48800123224', NULL, 12),
(13, 20, '+48605444765', NULL, 13),
(14, 21, '+48789774424', NULL, 14),
(15, 22, '+48799000204', NULL, 15),
(16, 23, NULL, NULL, 17),
(17, 27, '+48787352000', '2299504016', 16),
(18, 28, '+48505322110', NULL, 18),
(19, 29, NULL, NULL, 19),
(20, 30, '+48505211220', NULL, 20),
(21, 31, '+48504100200', '1234432146', 21),
(22, 32, '+48755311004', NULL, 22),
(23, 33, '+48604123442', NULL, 23),
(24, 34, '+48604007002', '4007457721', 24),
(25, 35, NULL, NULL, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `idPracownika` int(11) NOT NULL,
  `idDanych` int(11) NOT NULL,
  `stanowisko` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`idPracownika`, `idDanych`, `stanowisko`) VALUES
(1, 1, 'Sprzedawca'),
(2, 2, 'Sprzedawca'),
(3, 3, 'Sprzedawca'),
(4, 4, 'Asystent'),
(5, 5, 'Instruktor'),
(6, 14, 'Instruktor'),
(7, 15, 'Sprzedawca'),
(8, 24, 'Asystent'),
(9, 25, 'Sprzedawca'),
(10, 26, 'Asystent');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `idProduktu` int(11) NOT NULL,
  `idDanychProduktu` int(11) NOT NULL,
  `cena` decimal(6,2) NOT NULL,
  `numerSeryjny` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idZamowienia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`idProduktu`, `idDanychProduktu`, `cena`, `numerSeryjny`, `idZamowienia`) VALUES
(1, 1, '1.50', 'PP001', NULL),
(2, 1, '1.60', 'PP002', NULL),
(3, 1, '2.00', 'PP003', 5),
(4, 2, '150.00', 'RT001', 1),
(5, 2, '229.00', 'RT002', NULL),
(6, 3, '6.50', 'PT001', NULL),
(7, 3, '5.00', 'PT002', NULL),
(9, 5, '129.00', 'SP001', NULL),
(10, 5, '105.00', 'SP002', NULL),
(11, 6, '189.00', 'SPR001', 3),
(12, 7, '85.00', 'MT001', NULL),
(13, 8, '700.00', 'E001', NULL),
(14, 8, '689.00', 'E002', NULL),
(15, 9, '150.00', 'MB001', NULL),
(16, 10, '950.00', 'RS001', NULL),
(17, 10, '1100.00', 'RS002', NULL),
(18, 10, '1299.00', 'RS003', 4),
(19, 11, '79.00', 'KB_12kg', NULL),
(20, 11, '79.00', 'KB_8kg', NULL),
(21, 11, '89.00', 'KB_16kg', NULL),
(22, 11, '109.00', 'KB_20kg', NULL),
(23, 12, '25.00', 'SK001', 2),
(24, 12, '40.00', 'SK002', NULL),
(25, 13, '60.00', 'H_10kg', NULL),
(26, 13, '60.00', 'H_8kg', NULL),
(27, 13, '70.00', 'H_16kg', NULL),
(28, 13, '45.00', 'H_4kg', NULL),
(29, 14, '90.00', 'G_15kg', NULL),
(30, 14, '105.00', 'G_20kg', NULL),
(31, 15, '5.00', 'T_2.5kg', NULL),
(32, 15, '5.00', 'T_5kg', NULL),
(33, 15, '6.50', 'T_10kg', NULL),
(34, 15, '8.00', 'T_15kg', NULL),
(35, 15, '10.00', 'T_20kg', NULL),
(36, 16, '1.80', 'Z001', NULL),
(37, 17, '40.00', 'PN001', NULL),
(38, 17, '45.00', 'PN002', NULL),
(39, 17, '55.00', 'PN003', NULL),
(40, 18, '40.00', 'PK001', NULL),
(41, 18, '49.00', 'PK002', NULL),
(42, 19, '35.00', 'PS001', NULL),
(43, 19, '45.00', 'PS002', NULL),
(44, 20, '35.00', 'PR001', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzajfaktury`
--

CREATE TABLE `rodzajfaktury` (
  `idRodzajFaktury` int(11) NOT NULL,
  `rodzaj` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `rodzajfaktury`
--

INSERT INTO `rodzajfaktury` (`idRodzajFaktury`, `rodzaj`) VALUES
(2, 'Korygująca'),
(1, 'Zwykła');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `statuszamowienia`
--

CREATE TABLE `statuszamowienia` (
  `idStatusZamowienia` int(11) NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='		';

--
-- Zrzut danych tabeli `statuszamowienia`
--

INSERT INTO `statuszamowienia` (`idStatusZamowienia`, `status`) VALUES
(2, 'wysłano'),
(1, 'złożono'),
(3, 'zrealizowano');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typumowy`
--

CREATE TABLE `typumowy` (
  `idTypu` int(11) NOT NULL,
  `typ` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `typumowy`
--

INSERT INTO `typumowy` (`idTypu`, `typ`) VALUES
(3, 'B2B'),
(1, 'O Prace'),
(2, 'Zlecenie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umowy`
--

CREATE TABLE `umowy` (
  `idUmowy` int(11) NOT NULL,
  `idPracownika` int(11) NOT NULL,
  `idTypu` int(11) NOT NULL,
  `podstawaWynagrodzenia` int(11) NOT NULL,
  `dataRozpoczecia` date NOT NULL,
  `dataZakonczenia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `umowy`
--

INSERT INTO `umowy` (`idUmowy`, `idPracownika`, `idTypu`, `podstawaWynagrodzenia`, `dataRozpoczecia`, `dataZakonczenia`) VALUES
(1, 1, 1, 2500, '2020-04-06', '2021-04-06'),
(2, 2, 1, 2800, '2020-05-06', NULL),
(3, 3, 3, 3500, '2020-01-26', '2020-07-26'),
(4, 4, 2, 2000, '2020-04-29', '2020-08-29'),
(5, 5, 2, 2200, '2020-05-18', '2020-06-18'),
(6, 6, 1, 3500, '2020-05-10', NULL),
(7, 7, 2, 2000, '2020-05-16', '2020-06-16'),
(8, 8, 3, 2900, '2020-04-30', '2020-07-30'),
(9, 9, 1, 3200, '2020-05-04', '2021-05-04'),
(10, 10, 1, 3400, '2020-04-21', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `idZamowienia` int(11) NOT NULL,
  `idKlienta` int(11) NOT NULL,
  `idPracownika` int(11) NOT NULL,
  `idStatusZamowienia` int(11) NOT NULL,
  `dataTransakcji` date NOT NULL,
  `licznik` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`idZamowienia`, `idKlienta`, `idPracownika`, `idStatusZamowienia`, `dataTransakcji`, `licznik`) VALUES
(1, 6, 10, 1, '2020-05-18', 1),
(2, 20, 4, 2, '2020-05-14', 2),
(3, 7, 2, 2, '2020-05-16', 1),
(4, 18, 9, 3, '2020-05-10', 1),
(5, 13, 5, 3, '2020-05-09', 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adresy`
--
ALTER TABLE `adresy`
  ADD PRIMARY KEY (`idAdresu`),
  ADD KEY `kodPocztowy_idx` (`kodPocztowy`);

--
-- Indeksy dla tabeli `danepersonalne`
--
ALTER TABLE `danepersonalne`
  ADD PRIMARY KEY (`idDanych`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `imieNazwisko_idx` (`imie`,`nazwisko`);

--
-- Indeksy dla tabeli `daneproduktu`
--
ALTER TABLE `daneproduktu`
  ADD PRIMARY KEY (`idDanychProduktu`),
  ADD KEY `nazwa_idx` (`nazwa`),
  ADD KEY `daneproduktu_idKategorii_idx` (`idKategorii`);

--
-- Indeksy dla tabeli `faktury`
--
ALTER TABLE `faktury`
  ADD PRIMARY KEY (`idFaktury`),
  ADD KEY `idZamowienia_idx` (`idZamowienia`),
  ADD KEY `czyOplacona_idx` (`czyOplacona`),
  ADD KEY ` faktury_idRodzajFaktury_idx` (`idRodzajFaktury`);

--
-- Indeksy dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`idKategorii`),
  ADD UNIQUE KEY `kategoria_UNIQUE` (`kategoria`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`idKlienta`),
  ADD UNIQUE KEY `idDanych_UNIQUE` (`idDanych`),
  ADD UNIQUE KEY `numerTelefonu_UNIQUE` (`numerTelefonu`),
  ADD UNIQUE KEY `nip_UNIQUE` (`nip`),
  ADD KEY `klienci_idAdresu_idx` (`idAdresu`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`idPracownika`),
  ADD UNIQUE KEY `idDanych_UNIQUE` (`idDanych`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`idProduktu`),
  ADD UNIQUE KEY `numerSeryjny_UNIQUE` (`numerSeryjny`),
  ADD KEY `produkty_idDanychProduktu_idx` (`idDanychProduktu`),
  ADD KEY `produkty_idZamowienia_idx` (`idZamowienia`);

--
-- Indeksy dla tabeli `rodzajfaktury`
--
ALTER TABLE `rodzajfaktury`
  ADD PRIMARY KEY (`idRodzajFaktury`),
  ADD UNIQUE KEY `rodzaj_UNIQUE` (`rodzaj`);

--
-- Indeksy dla tabeli `statuszamowienia`
--
ALTER TABLE `statuszamowienia`
  ADD PRIMARY KEY (`idStatusZamowienia`),
  ADD UNIQUE KEY `status_UNIQUE` (`status`);

--
-- Indeksy dla tabeli `typumowy`
--
ALTER TABLE `typumowy`
  ADD PRIMARY KEY (`idTypu`),
  ADD UNIQUE KEY `typ_UNIQUE` (`typ`);

--
-- Indeksy dla tabeli `umowy`
--
ALTER TABLE `umowy`
  ADD PRIMARY KEY (`idUmowy`),
  ADD KEY `umowy_idPracownika_idx` (`idPracownika`),
  ADD KEY `umowy_idTypu_idx` (`idTypu`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`idZamowienia`),
  ADD KEY `zamowienia_idPracownika_idx` (`idPracownika`),
  ADD KEY `zamowienia_idKlienta_idx` (`idKlienta`),
  ADD KEY `zamowienia_idStatusZamowienia_idx` (`idStatusZamowienia`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `adresy`
--
ALTER TABLE `adresy`
  MODIFY `idAdresu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT dla tabeli `danepersonalne`
--
ALTER TABLE `danepersonalne`
  MODIFY `idDanych` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT dla tabeli `daneproduktu`
--
ALTER TABLE `daneproduktu`
  MODIFY `idDanychProduktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `faktury`
--
ALTER TABLE `faktury`
  MODIFY `idFaktury` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `idKategorii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `idKlienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `idPracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `idProduktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT dla tabeli `rodzajfaktury`
--
ALTER TABLE `rodzajfaktury`
  MODIFY `idRodzajFaktury` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `statuszamowienia`
--
ALTER TABLE `statuszamowienia`
  MODIFY `idStatusZamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `typumowy`
--
ALTER TABLE `typumowy`
  MODIFY `idTypu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `umowy`
--
ALTER TABLE `umowy`
  MODIFY `idUmowy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `idZamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `daneproduktu`
--
ALTER TABLE `daneproduktu`
  ADD CONSTRAINT `daneproduktu_idKategorii` FOREIGN KEY (`idKategorii`) REFERENCES `kategoria` (`idKategorii`);

--
-- Ograniczenia dla tabeli `faktury`
--
ALTER TABLE `faktury`
  ADD CONSTRAINT ` faktury_idRodzajFaktury` FOREIGN KEY (`idRodzajFaktury`) REFERENCES `rodzajfaktury` (`idRodzajFaktury`),
  ADD CONSTRAINT `faktury_idZamowienia` FOREIGN KEY (`idZamowienia`) REFERENCES `zamowienia` (`idZamowienia`);

--
-- Ograniczenia dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD CONSTRAINT `klienci_idAdresu` FOREIGN KEY (`idAdresu`) REFERENCES `adresy` (`idAdresu`),
  ADD CONSTRAINT `klienci_idDanych` FOREIGN KEY (`idDanych`) REFERENCES `danepersonalne` (`idDanych`);

--
-- Ograniczenia dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD CONSTRAINT `pracownicy_idDanych` FOREIGN KEY (`idDanych`) REFERENCES `danepersonalne` (`idDanych`);

--
-- Ograniczenia dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_idDanychProduktu` FOREIGN KEY (`idDanychProduktu`) REFERENCES `daneproduktu` (`idDanychProduktu`),
  ADD CONSTRAINT `produkty_idZamowienia` FOREIGN KEY (`idZamowienia`) REFERENCES `zamowienia` (`idZamowienia`);

--
-- Ograniczenia dla tabeli `umowy`
--
ALTER TABLE `umowy`
  ADD CONSTRAINT `umowy_idPracownika` FOREIGN KEY (`idPracownika`) REFERENCES `pracownicy` (`idPracownika`),
  ADD CONSTRAINT `umowy_idTypu` FOREIGN KEY (`idTypu`) REFERENCES `typumowy` (`idTypu`);

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_idKlienta` FOREIGN KEY (`idKlienta`) REFERENCES `klienci` (`idKlienta`),
  ADD CONSTRAINT `zamowienia_idPracownika` FOREIGN KEY (`idPracownika`) REFERENCES `pracownicy` (`idPracownika`),
  ADD CONSTRAINT `zamowienia_idStatusZamowienia` FOREIGN KEY (`idStatusZamowienia`) REFERENCES `statuszamowienia` (`idStatusZamowienia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
