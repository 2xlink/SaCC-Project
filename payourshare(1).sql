-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 08. Dez 2015 um 16:32
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
  `idbetrag` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `betrag` int(20) NOT NULL,
  `iduser` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `ausgaben`
--

INSERT INTO `ausgaben` (`idbetrag`, `name`, `betrag`, `iduser`) VALUES
('1', 'Ticket', 40, '1'),
('2', 'Popcorn', 5, '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ausgabenuser`
--

CREATE TABLE `ausgabenuser` (
  `idausgabenuser` varchar(40) NOT NULL,
  `iduser` varchar(40) NOT NULL,
  `idbetrag` varchar(40) NOT NULL,
  `betrag` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `ausgabenuser`
--

INSERT INTO `ausgabenuser` (`idausgabenuser`, `iduser`, `idbetrag`, `betrag`) VALUES
('1', '1', '1', 10),
('2', '2', '1', 30),
('3', '1', '2', 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `idevent` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idmoderator` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`idevent`, `name`, `idmoderator`) VALUES
('1', 'Musik', '1'),
('2', 'Film', '1'),
('5cc8597f-fce9-40e1-9935-c5836d1aa6f0', 'Zug', '3'),
('a58c3fa5-488c-4526-b299-7fe5ff598e09', 'Zug', '3');

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
('1', '1', '1'),
('2', '1', '2'),
('3', '2', '1'),
('4', 'a58c3fa5-488c-4526-b299-7fe5ff598e09', '3');

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
('3', 'Wurst', 'test3@test.de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userlogin`
--

CREATE TABLE `userlogin` (
  `iduser` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `userlogin`
--

INSERT INTO `userlogin` (`iduser`, `password`, `email`) VALUES
('1', 'pw1', 'test1@test.de'),
('2', 'pw2', 'test2@test.de'),
('3', 'pw3', 'test3@test.de');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `ausgaben`
--
ALTER TABLE `ausgaben`
  ADD PRIMARY KEY (`idbetrag`);

--
-- Indizes für die Tabelle `ausgabenuser`
--
ALTER TABLE `ausgabenuser`
  ADD PRIMARY KEY (`idausgabenuser`);

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
