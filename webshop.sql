-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Jul 2022 um 12:52
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `webshop`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `anzahl`
--

CREATE TABLE `anzahl` (
  `ID` int(3) NOT NULL,
  `Farbe` char(25) NOT NULL,
  `Größe` int(2) NOT NULL,
  `Anzahl` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `anzahl`
--

INSERT INTO `anzahl` (`ID`, `Farbe`, `Größe`, `Anzahl`) VALUES
(1, 'black', 42, 12),
(1, 'black', 43, 56),
(1, 'black', 44, 8),
(1, 'darkblue', 42, 37),
(1, 'darkblue', 43, 7),
(1, 'darkblue', 44, 5),
(2, 'green', 42, 45),
(2, 'green', 43, 33),
(2, 'green', 44, 9),
(2, 'lightgray', 42, 17),
(2, 'lightgray', 43, 24),
(2, 'lightgray', 44, 33),
(3, 'green', 42, 76),
(3, 'green', 43, 36),
(3, 'green', 44, 21),
(3, 'lightgray', 42, 78),
(3, 'lightgray', 43, 45),
(3, 'lightgray', 44, 22),
(4, 'black', 42, 9),
(4, 'black', 43, 23),
(4, 'black', 44, 17),
(4, 'lightgray', 42, 12),
(4, 'lightgray', 43, 5),
(4, 'lightgray', 44, 66),
(5, 'black', 42, 7),
(5, 'black', 43, 25),
(5, 'black', 44, 31),
(5, 'gray', 42, 27),
(5, 'gray', 43, 13),
(5, 'gray', 44, 41);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE `artikel` (
  `ID` int(3) NOT NULL,
  `Name` char(25) NOT NULL,
  `Preis` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`ID`, `Name`, `Preis`) VALUES
(1, 'Air Force', 119),
(2, 'Air Jordan', 149),
(3, 'Blazer', 109),
(4, 'Crater', 129),
(5, 'Wing', 99);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `anzahl`
--
ALTER TABLE `anzahl`
  ADD PRIMARY KEY (`ID`,`Farbe`,`Größe`);

--
-- Indizes für die Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `anzahl`
--
ALTER TABLE `anzahl`
  ADD CONSTRAINT `anzahl_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `artikel` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
