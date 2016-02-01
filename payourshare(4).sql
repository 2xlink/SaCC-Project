-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 01. Feb 2016 um 17:53
-- Server-Version: 10.1.8-MariaDB
-- PHP-Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `payourshare`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ausgaben`
--

CREATE TABLE `ausgaben` (
  `idexpense` varchar(40) NOT NULL,
  `idevent` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `betrag` varchar(40) NOT NULL,
  `idcreator` varchar(40) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `ausgaben`
--

INSERT INTO `ausgaben` (`idexpense`, `idevent`, `name`, `description`, `betrag`, `idcreator`, `version`) VALUES
('002', '1', 'Test2erfolgreich', 'platzhalter', '60', '1', '0'),
('1', '2', 'Tickets', 'Test', '60', '1', '0'),
('16da1252-f8bc-4241-953e-646477118f86', '3', 'Test', 'Test', '25', '3', '0'),
('2', '2', 'Popcorn', 'Test', '5', '1', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ausgabenuser`
--

CREATE TABLE `ausgabenuser` (
  `idexpenseuser` varchar(40) NOT NULL,
  `iduser` varchar(40) NOT NULL,
  `idexpense` varchar(40) NOT NULL,
  `betrag` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `ausgabenuser`
--

INSERT INTO `ausgabenuser` (`idexpenseuser`, `iduser`, `idexpense`, `betrag`) VALUES
('3', '1', '2', '5'),
('39dd695d-ec7b-4468-a296-0741f03325ef', '1', '002', '10'),
('3cbb6799-4036-4619-b936-ab2b469a0112', '3', '16da1252-f8bc-4241-953e-646477118f86', '25'),
('c2dcfb5d-f263-447b-81bd-8a0d1d01f034', '1', '1', '30'),
('f7344b65-02ad-4fd1-bc89-6c7ed190a06c', '2', '002', '50');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `idevent` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(40) NOT NULL,
  `idmoderator` varchar(40) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`idevent`, `name`, `description`, `idmoderator`, `version`) VALUES
('1', 'Musik1', 'platzhalter', '1', '0'),
('2', 'Zug1', 'platzhalter', '1', '0'),
('acef023d-5574-416e-b9a4-e88f3232315b', 'Zug', 'platzhalter', '3', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eventuser`
--

CREATE TABLE `eventuser` (
  `ideventuser` varchar(40) NOT NULL,
  `idevent` varchar(40) NOT NULL,
  `iduser` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `eventuser`
--

INSERT INTO `eventuser` (`ideventuser`, `idevent`, `iduser`) VALUES
('051f1439-14fd-49a8-82f2-f672146893ce', '2', '2'),
('05d9d032-5e7c-46a8-acc2-66ba43c7a7c3', '2', '3'),
('1', '1', '1'),
('2', '1', '2'),
('64a62152-6b0f-4c8a-b34f-d7561a0a8d11', 'acef023d-5574-416e-b9a4-e88f3232315b', '3'),
('9ad94ddc-5296-4005-8fcd-89aca63f9359', '2', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `iduser` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`iduser`, `name`, `email`) VALUES
('1', 'Schmidt', 'test1@test.de'),
('2', 'Meier', 'test2@test.de'),
('3', 'Wurst', 'test3@test.de'),
('5668cc25-8862-49c3-afa3-37ec048c7b61', 'Gustaf', 'test4@test.de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userlogin`
--

CREATE TABLE `userlogin` (
  `iduser` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(20) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `userlogin`
--

INSERT INTO `userlogin` (`iduser`, `password`, `email`, `token`) VALUES
('1', 'pw1', 'test1@test.de', 'Token1erfolg'),
('2', 'pw2', 'test2@test.de', 'null'),
('3', 'pw3', 'test3@test.de', 'token3'),
('5668cc25-8862-49c3-afa3-37ec048c7b61', 'pw4', 'test4@test.de', 'token4');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `ausgaben`
--
ALTER TABLE `ausgaben`
  ADD PRIMARY KEY (`idexpense`);

--
-- Indizes für die Tabelle `ausgabenuser`
--
ALTER TABLE `ausgabenuser`
  ADD PRIMARY KEY (`idexpenseuser`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`idevent`);

--
-- Indizes für die Tabelle `eventuser`
--
ALTER TABLE `eventuser`
  ADD PRIMARY KEY (`ideventuser`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- Indizes für die Tabelle `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `email` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
