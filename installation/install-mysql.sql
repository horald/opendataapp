-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 11. Sep 2014 um 18:18
-- Server Version: 5.5.38
-- PHP-Version: 5.5.9-1ubuntu4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `dbopendataapp`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblfilter`
--

CREATE TABLE IF NOT EXISTS `tblfilter` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldfeld` varchar(80) COLLATE utf8_bin NOT NULL,
  `fldwert` varchar(80) COLLATE utf8_bin NOT NULL,
  `fldmaske` varchar(80) COLLATE utf8_bin NOT NULL,
  `fldname` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=37454 ;

--
-- Daten für Tabelle `tblfilter`
--

INSERT INTO `tblfilter` (`fldindex`, `fldfeld`, `fldwert`, `fldmaske`, `fldname`) VALUES
(37275, 'fldid_spielplatz', '34', 'SHOWTAB', 'fltspielplatz'),
(37283, 'fldview', '(ohne)', 'SHOWTAB', 'Anzeige'),
(37293, 'fldparent', '(ohne)', 'SHOWTAB', 'parent'),
(37303, 'fldid_menuprojekt', '(ohne)', 'SHOWTAB', 'menuprojekt'),
(37313, 'fldversion', '(ohne)', 'SHOWTAB', 'version'),
(37323, 'fldMenu', '', 'SHOWTAB', 'suchen'),
(37333, 'fldMenuID', '(ohne)', 'SHOWTAB', 'parent'),
(37343, 'fldschultyp', 'allgemeinbildend', 'SHOWTAB', 'schultyp'),
(37353, 'fldschulart', 'Grundschule', 'SHOWTAB', 'schulart'),
(37363, 'fldstadtbezirk', 'Nippes', 'SHOWTAB', 'schulbezirk'),
(37433, '', '', 'TERMINE_DEFAULT', 'serie'),
(37453, 'fldmenuid', '(ohne)', 'SHOWTAB', 'parent'),
(37383, 'fldsel', '(ohne)', 'SHOWTAB', 'askjn'),
(37393, 'fldid_terminegrp', '(ohne)', 'SHOWTAB', 'gruppe'),
(37403, 'fldid_terminserie', '(ohne)', 'SHOWTAB', 'serie'),
(37413, 'fldvondatum', '', 'SHOWTAB', 'zeitraumvon'),
(37423, 'fldvondatum', '', 'SHOWTAB', 'zeitraumbis'),
(37443, 'fldmenu', '', 'SHOWTAB', 'suchen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblfunc`
--

CREATE TABLE IF NOT EXISTS `tblfunc` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldphp` varchar(500) COLLATE utf8_bin NOT NULL,
  `fldmenuid` bigint(20) NOT NULL,
  `fldtyp` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldtarget` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldparam` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldaktiv` varchar(5) COLLATE utf8_bin NOT NULL,
  `fldname` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldid_version` bigint(20) NOT NULL,
  `fldversion` varchar(5) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=724 ;

--
-- Daten für Tabelle `tblfunc`
--

INSERT INTO `tblfunc` (`fldindex`, `fldbez`, `fldphp`, `fldmenuid`, `fldtyp`, `fldtarget`, `fldparam`, `fldaktiv`, `fldname`, `fldtimestamp`, `fldid_version`, `fldversion`) VALUES
(673, 'Delsel', 'delsel.php', 1763, 'USERMENU', '', '', 'J', '', '2014-08-29 16:17:43', 0, '0312'),
(683, 'Distinct', 'distinct.php', 1763, 'USERMENU', '', '', 'J', '', '2014-08-29 16:24:20', 0, '0312'),
(693, 'Distinct', 'distinct.php', 1793, 'USERMENU', '', '', 'J', '', '2014-08-29 19:35:13', 0, '1003'),
(703, 'Delsel', 'delsel.php', 1793, 'USERMENU', '', '', 'J', '', '2014-08-29 19:36:11', 0, '0312'),
(713, 'Distinct', 'distinct.php', 1803, 'USERMENU', '', '', 'J', '', '2014-08-29 20:03:44', 0, '0312'),
(723, 'Export', 'export.php', 1723, 'MENU', '', '', 'J', '', '2014-09-08 16:03:39', 0, '1003');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblmarkers`
--

CREATE TABLE IF NOT EXISTS `tblmarkers` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldname` varchar(250) NOT NULL,
  `fldaddress` varchar(250) NOT NULL,
  `fldlat` double NOT NULL,
  `fldlng` double NOT NULL,
  `fldtype` varchar(10) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Daten für Tabelle `tblmarkers`
--

INSERT INTO `tblmarkers` (`fldindex`, `fldname`, `fldaddress`, `fldlat`, `fldlng`, `fldtype`) VALUES
(37, 'Beispielspielplatz', 'HacklÃ¤nderstraÃŸe 2, 50825 Cologne, Germany', 50.9554784, 6.9104529, 'spielplatz'),
(38, 'Merkenicher Spielplatz', 'FÃ¤hrgasse 5, 50769 Cologne, Germany', 51.0254339, 6.9588204, 'spielplatz'),
(39, 'test', '', 2, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblmenu_liste`
--

CREATE TABLE IF NOT EXISTS `tblmenu_liste` (
  `fldindex` double NOT NULL AUTO_INCREMENT,
  `fldmenu` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldtblwebadr` char(250) CHARACTER SET latin1 DEFAULT NULL,
  `fldsort` char(5) CHARACTER SET latin1 DEFAULT NULL,
  `fldGroup` char(20) CHARACTER SET latin1 DEFAULT NULL,
  `fldview` varchar(1) CHARACTER SET latin1 NOT NULL DEFAULT 'J',
  `fldid_modul` int(11) NOT NULL,
  `fldparent` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldversion` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '0303',
  `fldTyp` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldName` varchar(200) COLLATE utf8_bin NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldid_publictyp` bigint(20) NOT NULL,
  `fldhelplink` varchar(500) COLLATE utf8_bin NOT NULL,
  `fldTarget` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldid_menuprojekt` bigint(20) NOT NULL,
  `fldart` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1854 ;

--
-- Daten für Tabelle `tblmenu_liste`
--

INSERT INTO `tblmenu_liste` (`fldindex`, `fldmenu`, `fldtblwebadr`, `fldsort`, `fldGroup`, `fldview`, `fldid_modul`, `fldparent`, `fldversion`, `fldTyp`, `fldName`, `fldtimestamp`, `fldid_publictyp`, `fldhelplink`, `fldTarget`, `fldid_menuprojekt`, `fldart`) VALUES
(1843, 'Terminserie', '', '', NULL, 'J', 1473, '1823', '0312', 'MODUL', '', '2014-09-01 19:49:12', 0, '', '', 23, 'MENU'),
(1603, 'Spielpl&aumltze', '', '00002', NULL, 'J', 1363, '0', '0312', 'MODUL', '', '2014-08-27 05:43:18', 0, '', '', 13, 'MENU'),
(1613, 'Administration', '', '00100', NULL, 'J', 133, '0', '0303', 'MODUL', '', '2014-08-27 05:45:02', 13, '', '', 13, 'USERMENU'),
(1623, 'MenÃ¼-Projekte', '', '', NULL, 'J', 1353, '1613', '0312', 'MODUL', '', '2014-08-27 05:48:00', 0, '', '', 13, 'MENU'),
(1833, 'Kalendar', 'classes/calendar.php?menu=Kalender', '', NULL, 'J', 0, '1823', '0312', 'WEBLINK', '', '2014-09-01 19:42:47', 0, '', '', 23, 'MENU'),
(1643, 'Spielplatzmap', '', '00003', NULL, 'J', 1373, '0', '0312', 'MODUL', '', '2014-08-27 15:40:46', 0, '', '', 13, 'MENU'),
(1653, 'Module', '', '', NULL, 'J', 353, '1613', '0312', 'MODUL', '', '2014-08-27 15:56:29', 0, '', '', 13, 'MENU'),
(1663, 'Home', '', '00001', NULL, 'J', 1383, '0', '0312', 'MODUL', '', '2014-08-28 05:25:37', 0, '', '', 13, 'MENU'),
(1823, 'Termine', '', '00004', NULL, 'J', 1463, '0', '0312', 'MODUL', '', '2014-09-01 19:35:04', 0, '', '', 23, 'USERMENU'),
(1813, 'Schulmap', '', '00003', NULL, 'J', 1423, '0', '0312', 'MODUL', '', '2014-08-29 20:31:57', 0, '', '', 23, 'MENU'),
(1803, 'Stadtteil', '', '', NULL, 'J', 1453, '1723', '0312', 'MODUL', '', '2014-08-29 19:58:42', 0, '', '', 23, 'MENU'),
(1793, 'Schulart', '', '', NULL, 'J', 1443, '1723', '0312', 'MODUL', '', '2014-08-29 19:33:51', 0, '', '', 23, 'MENU'),
(1723, 'Schulen', '', '00002', NULL, 'J', 1393, '0', '0312', 'MODUL', '', '2014-08-29 05:43:03', 0, '', '', 23, 'MENU'),
(1733, 'Administration', '', '00100', NULL, 'J', 133, '0', '0303', 'MODUL', '', '2014-08-29 05:44:55', 13, '', '', 23, 'USERMENU'),
(1743, 'Men&uuml-Projekte', '', '', NULL, 'J', 1353, '1733', '0312', 'MODUL', '', '2014-08-29 05:47:16', 0, '', '', 23, 'MENU'),
(1753, 'Home', '', '00001', NULL, 'J', 1383, '0', '0312', 'MODUL', '', '2014-08-29 05:50:18', 0, '', '', 23, 'MENU'),
(1763, 'Schultyp', '', '', NULL, 'J', 1403, '1723', '0312', 'MODUL', '', '2014-08-29 05:52:24', 0, '', '', 23, 'MENU'),
(1773, 'Module', '', '', NULL, 'J', 353, '1733', '0312', 'MODUL', '', '2014-08-29 05:53:47', 0, '', '', 23, 'MENU'),
(1783, 'Funktionen', '', '', NULL, 'J', 443, '1733', '0312', 'MODUL', '', '2014-08-29 05:54:42', 0, '', '', 23, 'MENU'),
(1853, 'Version', '', '', NULL, 'J', 1483, '1733', '0312', 'MODUL', '', '2014-09-03 05:21:34', 0, '', '', 23, 'MENU');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblmenu_modul`
--

CREATE TABLE IF NOT EXISTS `tblmenu_modul` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldwebadr` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldlang` varchar(4) COLLATE utf8_bin NOT NULL,
  `fldversion` varchar(5) COLLATE utf8_bin NOT NULL,
  `fldtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fldsource` varchar(2048) COLLATE utf8_bin NOT NULL,
  `fldid_publictyp` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1484 ;

--
-- Daten für Tabelle `tblmenu_modul`
--

INSERT INTO `tblmenu_modul` (`fldindex`, `fldbez`, `fldwebadr`, `fldlang`, `fldversion`, `fldtimestamp`, `fldsource`, `fldid_publictyp`) VALUES
(443, 'Funktion', 'classes/showtab.php?menu=func', 'de', '0312', '0000-00-00 00:00:00', '', 0),
(353, 'Modul', 'classes/showtab.php?menu=modul', 'de', '0312', '0000-00-00 00:00:00', '', 0),
(1473, 'Terminserie', 'classes/showtab.php?menu=terminserie', 'de', '0312', '2014-09-01 19:48:36', '', 0),
(1463, 'Termine', 'classes/showtab.php?menu=termine', 'de', '0312', '2014-09-01 19:34:08', '', 0),
(133, 'Administration', 'classes/showtab.php?menu=admin', 'de', '0303', '0000-00-00 00:00:00', '', 0),
(1453, 'Stadtteil', 'classes/showtab.php?menu=stadtteil', 'de', '0312', '2014-08-29 19:54:02', '', 0),
(1303, 'Tables', 'classes/showtab.php?menu=tables', 'de', '0312', '2014-05-05 03:24:34', '', 0),
(1313, 'Dauerauftragtyp', 'classes/showtab.php?menu=dauerauftragtyp', 'de', '0312', '2014-05-08 03:52:07', '', 0),
(1323, 'Statuszuord', 'classes/showtab.php?menu=statuszuord', 'de', '0312', '2014-06-20 06:51:38', '', 3),
(1333, 'Anlass', 'classes/showtab.php?menu=anlass', 'de', '0312', '2014-07-01 03:43:28', '', 0),
(1343, 'Einkaufsarchiv', 'classes/showtab.php?menu=shoppingarchiv', 'de', '0312', '2014-08-25 15:58:24', '', 0),
(1353, 'Men&uuml-Projekte', 'classes/showtab.php?menu=menuprojekt', 'de', '0312', '2014-08-26 17:00:29', '', 0),
(1363, 'Playground', 'classes/showtab.php?menu=playground', 'de', '0312', '2014-08-27 15:55:50', '', 0),
(1373, 'Spielplatzmap', 'classes/spielplatzmap.php', 'de', '0312', '2014-08-27 16:01:30', '', 0),
(1393, 'Schulen', 'classes/showtab.php?menu=schulen', 'de', '0312', '2014-08-28 18:28:05', '', 0),
(1383, 'Home_opendata', 'classes/welcome_opendataapp.php', 'de', '0312', '2014-08-28 05:23:43', '', 0),
(1403, 'Schultyp', 'classes/showtab.php?menu=schultyp', 'de', '0312', '2014-08-28 19:07:00', '', 0),
(1413, 'Schulart', 'classes/showtab.php?menu=schulart', 'de', '0312', '2014-08-28 19:37:43', '', 0),
(1423, 'Schulmap', 'classes/googlemap.php?menu=schulmap', 'de', '0312', '2014-08-28 19:57:19', '', 0),
(1433, 'Schulbezirk', 'classes/showtab.php?menu=schulbezirk', 'de', '0312', '2014-08-29 05:14:27', '', 0),
(1443, 'Schulart', 'classes/showtab.php?menu=schulart', 'de', '0312', '2014-08-29 16:33:11', '', 0),
(1483, 'Version', 'classes/showtab.php?menu=version', 'de', '0312', '2014-09-03 05:20:39', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblmenu_projekt`
--

CREATE TABLE IF NOT EXISTS `tblmenu_projekt` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) NOT NULL,
  `fldaktiv` varchar(1) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Daten für Tabelle `tblmenu_projekt`
--

INSERT INTO `tblmenu_projekt` (`fldindex`, `fldbez`, `fldaktiv`) VALUES
(13, 'Spielplatzapp', 'N'),
(23, 'Schulen', 'J');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblmenu_typ`
--

CREATE TABLE IF NOT EXISTS `tblmenu_typ` (
  `fldIndex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldBez` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldIndex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=24 ;

--
-- Daten für Tabelle `tblmenu_typ`
--

INSERT INTO `tblmenu_typ` (`fldIndex`, `fldBez`) VALUES
(3, 'MODUL'),
(13, 'PLUGIN'),
(23, 'WEBLINK');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblpublictyp`
--

CREATE TABLE IF NOT EXISTS `tblpublictyp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=24 ;

--
-- Daten für Tabelle `tblpublictyp`
--

INSERT INTO `tblpublictyp` (`fldindex`, `fldbez`) VALUES
(3, 'PUBLIC'),
(13, 'PRIVATE'),
(23, 'HOSTLIST');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblschulart`
--

CREATE TABLE IF NOT EXISTS `tblschulart` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(100) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=194 ;

--
-- Daten für Tabelle `tblschulart`
--

INSERT INTO `tblschulart` (`fldindex`, `fldbez`) VALUES
(113, 'Grundschule'),
(123, 'Realschule'),
(133, 'FÃ¶rderschule'),
(143, 'Gymnasium'),
(153, 'Hauptschule'),
(163, 'Gesamtschule'),
(173, 'Berufskolleg'),
(183, '2. Bildungsweg'),
(193, 'Freie Waldorfschule');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblschulen`
--

CREATE TABLE IF NOT EXISTS `tblschulen` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldstadtbezirk` varchar(40) NOT NULL,
  `fldstadtteil` varchar(40) NOT NULL,
  `fldadresse` varchar(50) NOT NULL,
  `fldpostzustellbezirk` varchar(5) NOT NULL,
  `fldschulart` varchar(75) NOT NULL,
  `fldschultyp` varchar(50) NOT NULL,
  `fldname` varchar(100) NOT NULL,
  `fldstadt` varchar(100) NOT NULL,
  `fldxkoor` double NOT NULL,
  `fldykoor` double NOT NULL,
  `fldlink` varchar(250) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30094 ;

--
-- Daten für Tabelle `tblschulen`
--

INSERT INTO `tblschulen` (`fldindex`, `fldstadtbezirk`, `fldstadtteil`, `fldadresse`, `fldpostzustellbezirk`, `fldschulart`, `fldschultyp`, `fldname`, `fldstadt`, `fldxkoor`, `fldykoor`, `fldlink`) VALUES
(27093, 'Nippes', 'Niehl', 'Halfengasse 25', '50735', 'Grundschule', 'allgemeinbildend', 'Halfengasse', 'KÃ¶ln', 50.9926978600443, 6.96096480128651, ''),
(27103, 'Innenstadt', 'Neustadt/SÃ¼d', 'PfÃ¤lzer Str. 30', '50677', 'Grundschule', 'allgemeinbildend', 'PfÃ¤lzer Str.', 'KÃ¶ln', 50.9259078326794, 6.94352138596164, ''),
(27113, 'Porz', 'Poll', 'Poller Hauptstr. 61', '51105', 'Grundschule', 'allgemeinbildend', 'Poller Hauptstr.', 'KÃ¶ln', 50.9119504734756, 6.99260682186333, ''),
(27123, 'Kalk', 'Ostheim', 'Hardtgenbuscher Kirchweg 100', '51107', 'Realschule', 'allgemeinbildend', 'Albert-Schweitzer-Schule', 'KÃ¶ln', 50.9270962689767, 7.04867838308276, ''),
(27133, 'MÃ¼lheim', 'HÃ¶henhaus', 'Thymianweg 1', '51061', 'FÃ¶rderschule', 'allgemeinbildend', 'Thymianweg', 'KÃ¶ln', 50.9801414931648, 7.03121787495834, ''),
(27143, 'Nippes', 'Riehl', 'Garthestr. 20', '50735', 'Grundschule', 'allgemeinbildend', 'Otfried-PreuÃŸler-Schule', 'KÃ¶ln', 50.9656026286007, 6.97551602364927, ''),
(27153, 'Lindenthal', 'Lindenthal', 'Freiligrathstr. 60', '50935', 'Grundschule', 'allgemeinbildend', 'Hans-Christian-Andersen', 'KÃ¶ln', 50.9225864946738, 6.90229556914208, ''),
(27163, 'Lindenthal', 'SÃ¼lz', 'Berrenrather Str. 488', '50937', 'Realschule', 'allgemeinbildend', 'Elsa-BrÃ¤ndstrÃ¶m-Schule', 'KÃ¶ln', 50.9076901592827, 6.91322945961997, ''),
(27173, 'Lindenthal', 'Lindenthal', 'Gronewaldstr. 1', '50931', 'FÃ¶rderschule', 'allgemeinbildend', 'Johann-Joseph-Gronewald-Schule', 'KÃ¶ln', 50.9333369984053, 6.91873363207805, ''),
(27183, 'Porz', 'ZÃ¼ndorf', 'Irisweg 2', '51143', 'Grundschule', 'allgemeinbildend', 'Irisweg', 'KÃ¶ln', 50.8721608350798, 7.05690560625459, ''),
(27193, 'Rodenkirchen', 'Godorf', 'Kuckucksweg 4', '50997', 'Realschule', 'allgemeinbildend', 'Johannes-Gutenberg-Schule', 'KÃ¶ln', 50.8519867871856, 6.9720636984225, ''),
(27203, 'MÃ¼lheim', 'Holweide', 'Buschfeldstr. 46', '51067', 'Grundschule', 'allgemeinbildend', 'Berthold-Otto-Schule', 'KÃ¶ln', 50.9704604763098, 7.03987814231258, ''),
(27213, 'Innenstadt', 'Deutz', 'Thusneldastr. 15', '50679', 'Gymnasium', 'allgemeinbildend', 'Thusneldastr.', 'KÃ¶ln', 50.9351932138345, 6.98131681943333, ''),
(27223, 'Ehrenfeld', 'Neuehrenfeld', 'Ottostr. 87', '50823', 'Gymnasium', 'allgemeinbildend', 'Albertus-Magnus-Gymnasium', 'KÃ¶ln', 50.957873432807, 6.92759909127171, ''),
(27233, 'Lindenthal', 'Lindenthal', 'Bachemer Str. 69', '50931', 'Grundschule', 'allgemeinbildend', 'Bachemer Str.', 'KÃ¶ln', 50.9289968288116, 6.91879587396391, ''),
(27243, 'MÃ¼lheim', 'MÃ¼lheim', 'Tiefentalstr. 66', '51063', 'Hauptschule', 'allgemeinbildend', 'Tiefentalstr.', 'KÃ¶ln', 50.975301869442, 7.00946573791683, ''),
(27253, 'Kalk', 'Rath/Heumar', 'Forststr. 20', '51107', 'Grundschule', 'allgemeinbildend', 'Forststr.', 'KÃ¶ln', 50.9167927953322, 7.08404589439224, ''),
(27263, 'MÃ¼lheim', 'HÃ¶henhaus', 'Von-Bodelschwingh-Str. 24', '51061', 'Grundschule', 'allgemeinbildend', 'Von-Bodelschwingh-Str.', 'KÃ¶ln', 50.986012323167, 7.02473528592778, ''),
(27273, 'MÃ¼lheim', 'Buchforst', 'Kopernikusstr. 40', '51065', 'Grundschule', 'allgemeinbildend', 'Kopernikusstr.', 'KÃ¶ln', 50.9496531428064, 7.00966910998006, ''),
(27283, 'Chorweiler', 'Heimersdorf', 'Lebensbaumweg 51', '50767', 'Grundschule', 'allgemeinbildend', 'Anna-Langohr-Schule', 'KÃ¶ln', 51.0097384323576, 6.90235052443153, ''),
(27293, 'Chorweiler', 'Pesch', 'Schulstr. 16', '50767', 'Grundschule', 'allgemeinbildend', 'Erich-Ohser-Schule', 'KÃ¶ln', 50.9968320435202, 6.87182525758449, ''),
(27303, 'Rodenkirchen', 'Raderberg', 'Annastr. 63', '50968', 'Grundschule', 'allgemeinbildend', 'Annastr.', 'KÃ¶ln', 50.9045752477621, 6.95982664161587, ''),
(27313, 'Kalk', 'Kalk', 'Falckensteinstr. 34', '51103', 'Hauptschule', 'allgemeinbildend', 'Adolph-Kolping-Schule', 'KÃ¶ln', 50.944481360371, 7.00629117116864, ''),
(27323, 'MÃ¼lheim', 'MÃ¼lheim', 'Lassallestr. 59', '51065', 'Realschule', 'allgemeinbildend', 'Lassallestr.', 'KÃ¶ln', 50.9587909683255, 7.00776667465908, ''),
(27333, 'Kalk', 'BrÃ¼ck', 'Diesterwegstr. 69', '51109', 'Grundschule', 'allgemeinbildend', 'Diesterwegstr.', 'KÃ¶ln', 50.9479415376022, 7.07651884920569, ''),
(27343, 'Lindenthal', 'MÃ¼ngersdorf', 'Alter MilitÃ¤rring 96', '50933', 'Realschule', 'allgemeinbildend', 'Ernst-Simons-Schule', 'KÃ¶ln', 50.9447904190031, 6.87746815858695, ''),
(27353, 'MÃ¼lheim', 'DellbrÃ¼ck', 'DellbrÃ¼cker Hauptstr. 16', '51069', 'Grundschule', 'allgemeinbildend', 'DellbrÃ¼cker Hauptstr.', 'KÃ¶ln', 50.9729479711394, 7.07583400128451, ''),
(27363, 'Ehrenfeld', 'Ehrenfeld', 'Borsigstr. 13', '50825', 'Grundschule', 'allgemeinbildend', 'Astrid-Lindgren-Grundschule', 'KÃ¶ln', 50.9571382560414, 6.90662247010449, ''),
(27373, 'Rodenkirchen', 'Bayenthal', 'CÃ¤sarstr. 21', '50968', 'Grundschule', 'allgemeinbildend', 'Franziskus-Schule', 'KÃ¶ln', 50.9072967445381, 6.96646228777073, ''),
(27383, 'Rodenkirchen', 'Rodenkirchen', 'SÃ¼rther Str. 191', '50999', 'Gesamtschule', 'allgemeinbildend', 'Gesamtschule Rodenkirchen', 'KÃ¶ln', 50.8764247718051, 7.00552382508404, ''),
(27393, 'Lindenthal', 'Weiden', 'Ostlandstr. 39', '50858', 'Gymnasium', 'allgemeinbildend', 'Georg-BÃ¼chner-Gymnasium', 'KÃ¶ln', 50.9345590727314, 6.83850837808119, ''),
(27403, 'Rodenkirchen', 'Zollstock', 'Rosenzweigweg 3', '50969', 'FÃ¶rderschule', 'allgemeinbildend', 'Mildred-Scheel-Schule', 'KÃ¶ln', 50.9084669871284, 6.94412134011953, ''),
(27413, 'Porz', 'Westhoven', 'Stresemannstr. 15', '51149', 'FÃ¶rderschule', 'allgemeinbildend', 'Finkenberg-Schule', 'KÃ¶ln', 50.8998848243959, 7.02237839141192, ''),
(27423, 'MÃ¼lheim', 'MÃ¼lheim', 'Ferdinandstr. 43', '51063', 'Hauptschule', 'allgemeinbildend', 'Montessori-Hauptschule', 'KÃ¶ln', 50.9475472967392, 6.98960460413105, ''),
(27433, 'Nippes', 'BilderstÃ¶ckchen', 'Osterather Str. 13', '50739', 'Grundschule', 'allgemeinbildend', 'Osterather Str.', 'KÃ¶ln', 50.9585098262141, 6.9374544639397, ''),
(27443, 'MÃ¼lheim', 'Stammheim', 'Ricarda-Huch-Str. 60', '51061', 'Grundschule', 'allgemeinbildend', 'Ricarda-Huch Str.', 'KÃ¶ln', 50.9838522163796, 6.99036600490109, ''),
(27453, 'Rodenkirchen', 'Zollstock', 'Rosenzweigweg 3', '50969', 'Grundschule', 'allgemeinbildend', 'Rosenzweigweg', 'KÃ¶ln', 50.9081216440765, 6.94410127451399, ''),
(27463, 'Nippes', 'BilderstÃ¶ckchen', 'Escher Str. 217', '50739', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Joseph-DuMont', 'KÃ¶ln', 50.9653359274037, 6.9306688777066, ''),
(27473, 'Lindenthal', 'SÃ¼lz', 'Berrenrather Str. 352', '50937', 'Grundschule', 'allgemeinbildend', 'Manderscheider Platz.', 'KÃ¶ln', 50.9151691454241, 6.92119464787804, ''),
(27483, 'Innenstadt', 'Neustadt/Nord', 'Balthasarstr. 87', '50670', 'Grundschule', 'allgemeinbildend', 'Balthasarstr.', 'KÃ¶ln', 50.9534250537164, 6.96003993334344, ''),
(27493, 'Ehrenfeld', 'Vogelsang', 'Kolkrabenweg 8', '50829', 'FÃ¶rderschule', 'allgemeinbildend', 'Kolkrabenschule', 'KÃ¶ln', 50.9649362685753, 6.87773780416053, ''),
(27503, 'Ehrenfeld', 'Neuehrenfeld', 'NuÃŸbaumerstr. 254', '50825', 'Grundschule', 'allgemeinbildend', 'NuÃŸbaumer Str.', 'KÃ¶ln', 50.9584702787129, 6.92199995040781, ''),
(27513, 'Chorweiler', 'Seeberg', 'Riphahnstr. 40', '50769', 'Grundschule', 'allgemeinbildend', 'Riphanstr.', 'KÃ¶ln', 51.0198507532736, 6.90171600529587, ''),
(27523, 'Kalk', 'Kalk', 'Kapitelstr. 24', '51103', 'Grundschule', 'allgemeinbildend', 'GrÃ¼neberg-Schule', 'KÃ¶ln', 50.9398987238905, 7.00427260630953, ''),
(27533, 'MÃ¼lheim', 'HÃ¶henhaus', 'Honschaftsstr. 312', '51061', 'Grundschule', 'allgemeinbildend', 'Honschaftsstr.', 'KÃ¶ln', 50.9828062900714, 7.03251845063091, ''),
(27543, 'Nippes', 'Nippes', 'Auguststr. 1', '50733', 'FÃ¶rderschule', 'allgemeinbildend', 'Schule Auguststr.', 'KÃ¶ln', 50.9600410142017, 6.95155211021962, ''),
(27553, 'Nippes', 'Nippes', 'BÃ¼lowstr. 90', '50733', 'Hauptschule', 'allgemeinbildend', 'BÃ¼lowstr.', 'KÃ¶ln', 50.9700030013274, 6.95648194987917, ''),
(27563, 'Chorweiler', 'Worringen', 'An den Kaulen 62', '50769', 'Grundschule', 'allgemeinbildend', 'An den Kaulen', 'KÃ¶ln', 51.0681299935303, 6.8577918995029, ''),
(27573, 'Porz', 'Eil', 'Bonner Str. 40', '51145', 'Hauptschule', 'allgemeinbildend', 'Kopernikus-Schule', 'KÃ¶ln', 50.8881391885321, 7.0711634832824, ''),
(27583, 'Lindenthal', 'Weiden', 'Schulstr. 2', '50859', 'Grundschule', 'allgemeinbildend', 'Clarenhofschule', 'KÃ¶ln', 50.9377742864764, 6.8287515430836, ''),
(27593, 'Porz', 'Grengel', 'MÃ¶rikeweg 2', '51147', 'FÃ¶rderschule', 'allgemeinbildend', 'Eduard-MÃ¶rike-Schule', 'KÃ¶ln', 50.8746623314345, 7.09903229109975, ''),
(27603, 'Ehrenfeld', 'BocklemÃ¼nd/Mengenich', 'GÃ¶rlinger-Zentrum 45', '50829', 'Grundschule', 'allgemeinbildend', 'GÃ¶rlinger-Zentrum', 'KÃ¶ln', 50.9801435585194, 6.8699632094378, ''),
(27613, 'Chorweiler', 'Esch/Auweiler', 'Martinusstr. 28', '50765', 'Grundschule', 'allgemeinbildend', 'Konrad-Adenauer-Schule', 'KÃ¶ln', 51.0104494091031, 6.85402618355058, ''),
(27623, 'Chorweiler', 'Worringen', 'An den Kaulen 62', '50769', 'Grundschule', 'allgemeinbildend', 'An den Kaulen', 'KÃ¶ln', 51.0682265057406, 6.85788171070559, ''),
(27633, 'Ehrenfeld', 'Ehrenfeld', 'Everhardstr. 60', '50823', 'Grundschule', 'allgemeinbildend', 'Everhardstr.', 'KÃ¶ln', 50.9493470816533, 6.92878814603845, ''),
(27643, 'Nippes', 'BilderstÃ¶ckchen', 'Reutlinger Str. 49', '50739', 'Hauptschule', 'allgemeinbildend', 'Reutlingerstr.', 'KÃ¶ln', 50.9686486956788, 6.93231421125341, ''),
(27653, 'Porz', 'Porz', 'Humboldtstr. 2', '51145', 'Gymnasium', 'allgemeinbildend', 'Stadtgymnasium Porz', 'KÃ¶ln', 50.8823984301039, 7.07199436099909, ''),
(27663, 'Nippes', 'Weidenpesch', 'Neusser Str. 605', '50737', 'Grundschule', 'allgemeinbildend', 'Florianschule', 'KÃ¶ln', 50.9826659381202, 6.94668536536575, ''),
(27673, 'Porz', 'Finkenberg', 'Stresemannstr. 38', '51149', 'Gesamtschule', 'allgemeinbildend', 'Liese-Meitner-Gesamtschule', 'KÃ¶ln', 50.89917098071, 7.06300469618772, ''),
(27683, 'Ehrenfeld', 'Vogelsang', 'Kolkrabenweg 8', '50829', 'FÃ¶rderschule', 'allgemeinbildend', 'Kolkrabenweg', 'KÃ¶ln', 50.9650706895315, 6.87800852982872, ''),
(27693, 'Lindenthal', 'MÃ¼ngersdorf', 'Alter MilitÃ¤rring 96', '50933', 'FÃ¶rderschule', 'allgemeinbildend', 'Anna-Freud-Schule', 'KÃ¶ln', 50.9452304551919, 6.87594695471479, ''),
(27703, 'Rodenkirchen', 'Bayenthal', 'Schillerstr. 98', '50968', 'Gymnasium', 'allgemeinbildend', 'Irmgardis-Gymnasium', 'KÃ¶ln', 50.9046110959076, 6.96840070704029, ''),
(27713, 'Lindenthal', 'LÃ¶venich', 'KÃ¶lner Str. 37', '50859', 'Grundschule', 'allgemeinbildend', 'Johanniter-Schule', 'KÃ¶ln', 50.9468885987332, 6.83431242638955, ''),
(27723, 'Innenstadt', 'Altstadt/SÃ¼d', 'Heinrichstr. 51', '50676', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Richard-Riemerschmid-Schule', 'KÃ¶ln', 50.927443378943, 6.95225387148072, ''),
(27733, 'MÃ¼lheim', 'DÃ¼nnwald', 'Am Portzenacker 1', '51069', 'Grundschule', 'allgemeinbildend', 'Am Portzenacker', 'KÃ¶ln', 51.0011058841925, 7.02863649826557, ''),
(27743, 'Porz', 'Wahn', 'Albert-Schweitzer-Str. 8', '51147', 'Realschule', 'allgemeinbildend', 'Otto-Lilienthal-Schule', 'KÃ¶ln', 50.8645732466011, 7.08829334111781, ''),
(27753, 'Ehrenfeld', 'Ossendorf', 'Wilhelm-Schreiber-Str. 56', '50827', 'Grundschule', 'allgemeinbildend', 'Wilhelm-Schreiber Str.', 'KÃ¶ln', 50.9713180865898, 6.90100305781309, ''),
(27763, 'Chorweiler', 'Seeberg', 'Balsaminenweg 52', '50769', 'Grundschule', 'allgemeinbildend', 'Sankt-Martin-Schule', 'KÃ¶ln', 51.0176040068476, 6.91455689747019, ''),
(27773, 'Kalk', 'Merheim', 'FuÃŸfallstr. 55', '51109', 'Grundschule', 'allgemeinbildend', 'FuÃŸfallstr.', 'KÃ¶ln', 50.9491688243067, 7.04592869713806, ''),
(27783, 'Ehrenfeld', 'Ehrenfeld', 'Gravenreuthstr. 10', '50823', 'Realschule', 'allgemeinbildend', 'Geschwister-Scholl-Schule', 'KÃ¶ln', 50.9526410948708, 6.92137377764192, ''),
(27793, 'MÃ¼lheim', 'Flittard', 'Am Feldrain 10', '51061', 'FÃ¶rderschule', 'allgemeinbildend', 'Heinrich-Welsch-Schule', 'KÃ¶ln', 50.9975984097726, 6.97936923732415, ''),
(27803, 'Porz', 'Langel', 'Hinter der Kirche 3', '51143', 'Grundschule', 'allgemeinbildend', 'Hinter der Kirche', 'KÃ¶ln', 50.8452236900339, 7.00527906341454, ''),
(27813, 'Innenstadt', 'Deutz', 'Judenkirchhofsweg 6', '50679', '2. Bildungsweg', 'allgemeinbildend', 'KÃ¶ln-Kolleg', 'KÃ¶ln', 50.9270777149458, 6.98131764949361, ''),
(27823, 'MÃ¼lheim', 'MÃ¼lheim', 'LangemaÃŸ 21', '51063', 'Grundschule', 'allgemeinbildend', 'LangemaÃŸ', 'KÃ¶ln', 50.9692878296035, 7.00876085357028, ''),
(27833, 'Kalk', 'BrÃ¼ck', 'Petersenstr. 7', '51109', 'Realschule', 'allgemeinbildend', 'KÃ¤the-Kollwitz-Schule', 'KÃ¶ln', 50.9477722306011, 7.07655207755054, ''),
(27843, 'Nippes', 'Longerich', 'Altonaer Str. 32', '50737', 'Grundschule', 'allgemeinbildend', 'Altonaer Str.', 'KÃ¶ln', 50.9957135336548, 6.9241694997024, ''),
(27853, 'MÃ¼lheim', 'Buchheim', 'Kattowitzer Str. 52', '51065', 'Gymnasium', 'allgemeinbildend', 'Johann-Gottfried-Herder-Gymnasium', 'KÃ¶ln', 50.9518207637127, 7.0218219402289, ''),
(27863, 'Kalk', 'Vingst', 'HeÃŸhofstr. 45', '51107', 'Grundschule', 'allgemeinbildend', 'HeÃŸhofstr.', 'KÃ¶ln', 50.9311366443152, 7.02382904682431, ''),
(27873, 'Innenstadt', 'Deutz', 'Gotenring 5', '50679', 'Grundschule', 'allgemeinbildend', 'Gotenring', 'KÃ¶ln', 50.9362791337919, 6.97848968913009, ''),
(27883, 'Nippes', 'Longerich', 'Ossietzkystr. 2', '50737', 'FÃ¶rderschule', 'allgemeinbildend', 'Ossietzkystr.', 'KÃ¶ln', 50.9897178408304, 6.92093545955023, ''),
(27893, 'Kalk', 'Ostheim', 'Zehnthofstr. 22', '51107', 'Grundschule', 'allgemeinbildend', 'James-KrÃ¼ss-Schule', 'KÃ¶ln', 50.9306800568142, 7.04221856682253, ''),
(27903, 'Kalk', 'Humboldt/Gremberg', 'Lohmarer Str. 11', '51105', 'Grundschule', 'allgemeinbildend', 'Lohmarer Str.', 'KÃ¶ln', 50.9289324629506, 7.00495791157792, ''),
(27913, 'Porz', 'Grengel', 'Friedensstr. 41', '51147', 'Grundschule', 'allgemeinbildend', 'Peter-Petersen-Schule', 'KÃ¶ln', 50.8754759830796, 7.10105165548089, ''),
(27923, 'Porz', 'Wahnheide', 'Neue Heide 25', '51147', 'Grundschule', 'allgemeinbildend', 'Heideschule', 'KÃ¶ln', 50.8612911040101, 7.09927609019736, ''),
(27933, 'Lindenthal', 'Lindenthal', 'Lindenburger Allee 38', '50931', 'Grundschule', 'allgemeinbildend', 'Lindenburger Allee', 'KÃ¶ln', 50.9271176167137, 6.91595975752066, ''),
(27943, 'Lindenthal', 'Lindenthal', 'Brucknerstr. 15', '50931', 'Gymnasium', 'allgemeinbildend', 'Liebfrauenschule ', 'KÃ¶ln', 50.9341314176512, 6.91786103444313, ''),
(27953, 'Kalk', 'Kalk', 'Kapitelstr. 24', '51103', 'Grundschule', 'allgemeinbildend', 'Kapitelstr.', 'KÃ¶ln', 50.9400068867152, 7.00425971391667, ''),
(27963, 'MÃ¼lheim', 'Holweide', 'Burgwiesenstr. 125', '51067', 'Gesamtschule', 'allgemeinbildend', 'Gesamtschule Holweide', 'KÃ¶ln', 50.9614724689392, 7.03883158549873, ''),
(27973, 'Chorweiler', 'Lindweiler', 'Soldiner Str. 68', '50767', 'Grundschule', 'allgemeinbildend', 'Soldinerstr.', 'KÃ¶ln', 51.006327142553, 6.88677949038891, ''),
(27983, 'Kalk', 'Vingst', 'Lustheider Str. 43', '51103', 'Grundschule', 'allgemeinbildend', 'Lustheider Str.', 'KÃ¶ln', 50.9360608493605, 7.02675378654739, ''),
(27993, 'Ehrenfeld', 'Bickendorf', 'Erlenweg 16', '50827', 'Grundschule', 'allgemeinbildend', 'Erlenweg', 'KÃ¶ln', 50.9648175478257, 6.89398442586749, ''),
(28003, 'MÃ¼lheim', 'DellbrÃ¼ck', 'DellbrÃ¼cker Mauspfad 200', '51069', 'Realschule', 'allgemeinbildend', 'DellbrÃ¼cker Mauspfad', 'KÃ¶ln', 50.9703208943348, 7.06761434280172, ''),
(28013, 'Innenstadt', 'Deutz', 'Gotenring 5', '50679', 'Grundschule', 'allgemeinbildend', 'Gotenring', 'KÃ¶ln', 50.9360269419711, 6.97880548481517, ''),
(28023, 'Lindenthal', 'Widdersdorf', 'Im Kamp 14', '50859', 'Grundschule', 'allgemeinbildend', 'Pater-Delp-Schule', 'KÃ¶ln', 50.9670322407694, 6.83140773513559, ''),
(28033, 'Ehrenfeld', 'Bickendorf', 'Rochusstr. 145', '50827', 'Hauptschule', 'allgemeinbildend', 'Montessori-Hauptschule', 'KÃ¶ln', 50.9633703629708, 6.90455581085952, ''),
(28043, 'Kalk', 'BrÃ¼ck', 'Olpener Str. 930', '51109', 'Grundschule', 'allgemeinbildend', 'Olpener Str.', 'KÃ¶ln', 50.9449427379489, 7.0786932177068, ''),
(28053, 'Innenstadt', 'Neustadt/SÃ¼d', 'Loreleystr. 3', '50677', 'Freie Waldorfschule', 'allgemeinbildend', 'Michaeli-Schule', 'KÃ¶ln', 50.9196545123354, 6.95212821633096, ''),
(28063, 'Innenstadt', 'Neustadt/Nord', 'Bernhard-Letterhaus-Str. 17', '50670', 'Gesamtschule', 'allgemeinbildend', 'Freie Schule KÃ¶ln', 'KÃ¶ln', 50.9553268010298, 6.95156935362789, ''),
(28073, 'Innenstadt', 'Altstadt/SÃ¼d', 'Weberstr. 29', '50676', 'FÃ¶rderschule', 'allgemeinbildend', 'Severin-Schule', 'KÃ¶ln', 50.9305659474471, 6.95856275870668, ''),
(28083, 'Innenstadt', 'Neustadt/Nord', 'Hansaring 56', '50670', 'Gymnasium', 'allgemeinbildend', 'Hansa-Gymnasium', 'KÃ¶ln', 50.9480852009073, 6.95076440731992, ''),
(28093, 'Rodenkirchen', 'Immendorf', 'Godorfer Str. 29', '50997', 'Grundschule', 'allgemeinbildend', 'Freiherr-vom-Stein-Schule', 'KÃ¶ln', 50.8565813804248, 6.96282158416982, ''),
(28103, 'Chorweiler', 'Chorweiler', 'Weichselring 6', '50765', 'Freie Waldorfschule', 'allgemeinbildend', 'Freie Waldorfschule', 'KÃ¶ln', 51.0298717724295, 6.89475020451901, ''),
(28113, 'MÃ¼lheim', 'MÃ¼lheim', 'Danzierstr. 146', '51063', 'Realschule', 'allgemeinbildend', 'Johann-Bendel-Schule', 'KÃ¶ln', 50.959008928783, 7.00107539902872, ''),
(28123, 'Chorweiler', 'Pesch', 'Schulstr. 18', '50767', 'Gymnasium', 'allgemeinbildend', 'Schulstr.', 'KÃ¶ln', 50.9980798175557, 6.87185121731417, ''),
(28133, 'Lindenthal', 'SÃ¼lz', 'Berrenrather Str. 179', '50937', 'Grundschule', 'allgemeinbildend', 'Berrenratherstr.', 'KÃ¶ln', 50.9197446006605, 6.92786842311134, ''),
(28143, 'Lindenthal', 'MÃ¼ngersdorf', 'Belvederestr. 149', '50933', 'FÃ¶rderschule', 'allgemeinbildend', 'Belvederestr.', 'KÃ¶ln', 50.9475899505249, 6.8706743293076, ''),
(28153, 'Porz', 'ZÃ¼ndorf', 'Schmittgasse 66', '51143', 'Grundschule', 'allgemeinbildend', 'Schmittgasse', 'KÃ¶ln', 50.8660676170886, 7.04549166411885, ''),
(28163, 'Kalk', 'Kalk', 'Vietorstr. 38', '51103', 'FÃ¶rderschule', 'allgemeinbildend', 'Schule Der Kleine Prinz', 'KÃ¶ln', 50.9389839823974, 6.99943394670856, ''),
(28173, 'Nippes', 'Longerich', 'Longericher Hauptstr. 83', '50739', 'Grundschule', 'allgemeinbildend', 'Longericher Hauptstr.', 'KÃ¶ln', 50.9963462014585, 6.90457592359327, ''),
(28183, 'Rodenkirchen', 'Rodenkirchen', 'Ringelnatzstr. 12', '50996', 'Hauptschule', 'allgemeinbildend', 'Ringelnatzstr.', 'KÃ¶ln', 50.8889969562615, 7.00111375335667, ''),
(28193, 'Rodenkirchen', 'Rodenkirchen', 'Mainstr. 75', '50996', 'Grundschule', 'allgemeinbildend', 'GrÃ¼ngÃ¼rtelschule', 'KÃ¶ln', 50.8838495598248, 7.0026260617545, ''),
(28203, 'Chorweiler', 'Seeberg', 'Karl-Marx-Allee 3', '50769', 'Hauptschule', 'allgemeinbildend', 'Gustav-Heinemann-Schule', 'KÃ¶ln', 51.0235952613136, 6.90643193873344, ''),
(28213, 'MÃ¼lheim', 'MÃ¼lheim', 'Ferdinandstr. 43', '51063', 'Grundschule', 'allgemeinbildend', 'Montessori-Grundschule', 'KÃ¶ln', 50.9472077677265, 6.98942464042946, ''),
(28223, 'Rodenkirchen', 'Godorf', 'Godorfer Hauptstr. 73', '50997', 'Grundschule', 'allgemeinbildend', 'Godorfer Hauptstr.', 'KÃ¶ln', 50.8490775834276, 6.97445865118011, ''),
(28233, 'Chorweiler', 'Heimersdorf', 'Volkhovener Weg 140', '50767', 'Hauptschule', 'allgemeinbildend', 'Ursula-Kuhr-Schule', 'KÃ¶ln', 51.0082899653941, 6.89826386952201, ''),
(28243, 'Innenstadt', 'Neustadt/Nord', 'Blumenthalstr. 10', '50670', 'FÃ¶rderschule', 'allgemeinbildend', 'Blumenthalstr.', 'KÃ¶ln', 50.9549185543284, 6.95923956118351, ''),
(28253, 'Innenstadt', 'Neustadt/Nord', 'Antwerpener Str. 19', '50672', 'Grundschule', 'allgemeinbildend', 'Antwerpener Str.', 'KÃ¶ln', 50.9401324226219, 6.93595559365961, ''),
(28263, 'Nippes', 'Nippes', 'BÃ¼lowstr. 90', '50733', 'Grundschule', 'allgemeinbildend', 'Marternus-Grundschule', 'KÃ¶ln', 50.9701220032751, 6.95646204326014, ''),
(28273, 'Rodenkirchen', 'Bayenthal', 'Bonner Str. 271', '50968', 'Berufskolleg', 'berufsbildend', 'Berufskolleg f. Wirtschaft/Marketing', 'KÃ¶ln', 50.9081271810253, 6.96397460999637, ''),
(28283, 'Innenstadt', 'Neustadt/SÃ¼d', 'Sachsenring 79', '50677', 'Berufskolleg', 'berufsbildend', 'Berufskolleg des Erzbistums Sachsenring', 'KÃ¶ln', 50.9249956035484, 6.9485983296444, ''),
(28293, 'Innenstadt', 'Neustadt/SÃ¼d', 'Hardefuststr. 1', '50677', 'Berufskolleg', 'berufsbildend', 'Berufskolleg EWS-Berufskolleg', 'KÃ¶ln', 50.9243556046507, 6.94901327218809, ''),
(28303, 'Rodenkirchen', 'Rodenkirchen', 'Pfarrer-te-Reh-Str. 5', '50999', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Michaelshoven', 'KÃ¶ln', 50.8779376834633, 6.99861955234862, ''),
(28313, 'Lindenthal', 'Lindenthal', 'Frangenheimstr. 6', '50931', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Fachschule des MÃ¶belhandel', 'KÃ¶ln', 50.9325755585887, 6.9181797673107, ''),
(28323, 'Rodenkirchen', 'Marienburg', 'BayenthalgÃ¼rtel 6', '50968', 'Berufskolleg', 'berufsbildend', 'Berufskolleg HÃ¶here Fachschule f. Augenoptik', 'KÃ¶ln', 50.9065630179448, 6.97606334168143, ''),
(28333, 'Chorweiler', 'Esch/Auweiler', 'Gartenstr. 11', '50765', 'Berufskolleg', 'berufsbildend', 'Berufskolleg fÃ¼r Floristik', 'KÃ¶ln', 51.0017174644518, 6.84993206067723, ''),
(28343, 'Ehrenfeld', 'Ehrenfeld', 'Vogelsanger Str. 295', '50825', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Rhein. Akademie ', 'KÃ¶ln', 50.9520657339794, 6.89978848809127, ''),
(28353, 'Rodenkirchen', 'Raderberg', 'Bischofsweg 48', '50969', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Berufskolleg f. Medien', 'KÃ¶ln', 50.9155606588902, 6.95084018152804, ''),
(28363, 'MÃ¼lheim', 'MÃ¼lheim', 'Luzerner Weg 72', '51063', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Berufsfeld Sozialwesen', 'KÃ¶ln', 50.9862206356401, 7.00835621418465, ''),
(28373, 'Lindenthal', 'MÃ¼ngersdorf', 'Widdersdorfer Str. 401', '50933', 'Berufskolleg', 'berufsbildend', 'Berufskolleg fÃ¼r Gestaltung', 'KÃ¶ln', 50.9469520345277, 6.88720127652123, ''),
(28383, 'Innenstadt', 'Altstadt/Nord', 'Dagobertstr. 79', '50668', 'Grundschule', 'allgemeinbildend', 'CÃ©lestin-Freinet-Schule', 'KÃ¶ln', 50.9483428083606, 6.96277438727686, ''),
(28393, 'Ehrenfeld', 'BocklemÃ¼nd/Mengenich', 'Tollerstr. 16', '50829', 'Gesamtschule', 'allgemeinbildend', 'Max-Ernst-Gesamtschule', 'KÃ¶ln', 50.9787124999368, 6.87084639450219, ''),
(28403, 'Innenstadt', 'Altstadt/SÃ¼d', 'Georgsplatz 10', '50676', 'Gymnasium', 'allgemeinbildend', 'Kaiserin-Augusta-Schule', 'KÃ¶ln', 50.9314768877522, 6.95845802039952, ''),
(28413, 'Innenstadt', 'Altstadt/Nord', 'MachabÃ¤erstr. 47', '50668', 'Gymnasium', 'allgemeinbildend', 'Ursulinenschule', 'KÃ¶ln', 50.9467466858032, 6.96057933804971, ''),
(28423, 'Innenstadt', 'Neustadt/Nord', 'Gilbachstr. 20', '50672', 'Grundschule', 'allgemeinbildend', 'Montessori-Grundschule', 'KÃ¶ln', 50.9453970040538, 6.93874272608457, ''),
(28433, 'Innenstadt', 'Neustadt/SÃ¼d', 'Loreleystr. 3', '50677', 'Grundschule', 'allgemeinbildend', 'Lorelystr.', 'KÃ¶ln', 50.9195305417529, 6.95175450614424, ''),
(28443, 'Innenstadt', 'Altstadt/Nord', 'Dagobertstr. 79', '50668', '2. Bildungsweg', 'allgemeinbildend', 'Abendrealschule', 'KÃ¶ln', 50.9484482764757, 6.96210660906671, ''),
(28453, 'Innenstadt', 'Neustadt/SÃ¼d', 'Zugweg 42', '50677', 'Grundschule', 'allgemeinbildend', 'Zugweg', 'KÃ¶ln', 50.918128023047, 6.95677759064681, ''),
(28463, 'Innenstadt', 'Neustadt/Nord', 'Vogelsanger Str. 1', '50672', 'Gymnasium', 'allgemeinbildend', 'Gymnasium Kreuzgasse', 'KÃ¶ln', 50.9408965379886, 6.92679538035851, ''),
(28473, 'Innenstadt', 'Altstadt/SÃ¼d', 'Severinswall 40', '50678', 'Realschule', 'allgemeinbildend', 'Theo-Burauen-Schule', 'KÃ¶ln', 50.9231547108732, 6.96527685377176, ''),
(28483, 'Innenstadt', 'Altstadt/Nord', 'MachabÃ¤erstr. 47', '50668', 'Realschule', 'allgemeinbildend', 'Ursulinenschule (Realschule)', 'KÃ¶ln', 50.946748320999, 6.96028225654016, ''),
(28493, 'Innenstadt', 'Altstadt/Nord', 'Alte Wallgasse 10', '50672', 'Gymnasium', 'allgemeinbildend', 'KÃ¶nigin-Luise-Schule ', 'KÃ¶ln', 50.9393237826104, 6.94363054716438, ''),
(28503, 'Innenstadt', 'Altstadt/SÃ¼d', 'KartÃ¤userwall 40', '50676', 'Gymnasium', 'allgemeinbildend', 'Humboldt Gymnasium', 'KÃ¶ln', 50.926756184585, 6.94878378717348, ''),
(28513, 'Lindenthal', 'SÃ¼lz', 'Redwitzstr. 80', '50937', 'FÃ¶rderschule', 'allgemeinbildend', 'Redwitzstr.', 'KÃ¶ln', 50.9222059966634, 6.92347994615355, ''),
(28523, 'Chorweiler', 'Volkhoven/Weiler', 'FÃ¼hlinger Weg 4', '50765', 'Gymnasium', 'allgemeinbildend', 'Heinrich-Mann-Gymnasium', 'KÃ¶ln', 51.0181075291878, 6.88312646403565, ''),
(28533, 'Porz', 'Poll', 'Auf dem Sandberg 120', '51105', 'FÃ¶rderschule', 'allgemeinbildend', 'Auf dem Sandberg', 'KÃ¶ln', 50.9160131512877, 6.99555897729986, ''),
(28543, 'Rodenkirchen', 'Rondorf', 'Adlerstr. 13', '50997', 'Grundschule', 'allgemeinbildend', 'Anne-Frank-Schule', 'KÃ¶ln', 50.8766062766012, 6.96352885995615, ''),
(28553, 'Ehrenfeld', 'Ehrenfeld', 'Lindenbornstr. 15', '50823', 'Grundschule', 'allgemeinbildend', 'Lindenbornstr.', 'KÃ¶ln', 50.9457340295927, 6.91430618355058, ''),
(28563, 'Porz', 'Ensen', 'Hohe Str. 77', '51149', 'Grundschule', 'allgemeinbildend', 'Hohestr.', 'KÃ¶ln', 50.8969054844098, 7.02961852686738, ''),
(28573, 'Nippes', 'Niehl', 'Nesselrodestr. 15', '50735', 'Grundschule', 'allgemeinbildend', 'Nesselrodestr.', 'KÃ¶ln', 50.9774983576887, 6.96423812358066, ''),
(28583, 'Lindenthal', 'Klettenberg', 'Stenzelbergstr. 3', '50939', 'Grundschule', 'allgemeinbildend', 'Stenzelbergstr.', 'KÃ¶ln', 50.9108027856606, 6.92991589896034, ''),
(28593, 'Ehrenfeld', 'Neuehrenfeld', 'Baadenberger Str. 111', '50825', 'Hauptschule', 'allgemeinbildend', 'Baadenbergerstr.', 'KÃ¶ln', 50.964549411146, 6.91853879360733, ''),
(28603, 'Chorweiler', 'Roggendorf/Thenhoven', 'Gutnickstr. 37', '50769', 'Grundschule', 'allgemeinbildend', 'Gutnickstr.', 'KÃ¶ln', 51.0449904976393, 6.84700002158329, ''),
(28613, 'Lindenthal', 'Weiden', 'Ostlandstr. 39', '50858', 'Hauptschule', 'allgemeinbildend', 'Martin-Luther-King-Schule', 'KÃ¶ln', 50.9345715295169, 6.83817585806345, ''),
(28623, 'Lindenthal', 'SÃ¼lz', 'Euskirchener Str. 50', '50935', 'Realschule', 'allgemeinbildend', 'Theodor-Heuss-Schule', 'KÃ¶ln', 50.9177939526125, 6.91573465035843, ''),
(28633, 'Kalk', 'Ostheim', 'Zehnthofstr. 22', '51107', 'Grundschule', 'allgemeinbildend', 'Zehnthofstr.', 'KÃ¶ln', 50.9305720167119, 7.04216693310516, ''),
(28643, 'Porz', 'Porz', 'Hauptstr. 432', '51143', 'Grundschule', 'allgemeinbildend', 'Hauptstr.', 'KÃ¶ln', 50.8871356847925, 7.05642846282247, ''),
(28653, 'Rodenkirchen', 'Meschenich', 'Kettelerstr. 14', '50997', 'Grundschule', 'allgemeinbildend', 'Kettelerschule', 'KÃ¶ln', 50.8595349350125, 6.93173469640161, ''),
(28663, 'Lindenthal', 'Junkersdorf', 'Kirchweg 138', '50858', 'Grundschule', 'allgemeinbildend', 'Ildefons-Herwegen-Schule', 'KÃ¶ln', 50.9325462785135, 6.85727626416377, ''),
(28673, 'Nippes', 'Nippes', 'Gellertstr. 4', '50733', 'Grundschule', 'allgemeinbildend', 'Mathilde-von-Mevissen', 'KÃ¶ln', 50.9628303895316, 6.95772886242555, ''),
(28683, 'Innenstadt', 'Deutz', 'Im Hasental 41', '50679', 'Realschule', 'allgemeinbildend', 'Im Hasental', 'KÃ¶ln', 50.9291673136891, 6.97980649279043, ''),
(28693, 'Ehrenfeld', 'Ehrenfeld', 'Platenstr. 7', '50825', 'Grundschule', 'allgemeinbildend', 'Michael-Ende-Schule', 'KÃ¶ln', 50.9531223554284, 6.91395710380642, ''),
(28703, 'Kalk', 'Ostheim', 'Hardtgenbuscher Kirchweg 100', '51107', 'Gymnasium', 'allgemeinbildend', 'Heinrich-Heine-Gymnasium', 'KÃ¶ln', 50.9270957174468, 7.04822961039935, ''),
(28713, 'Rodenkirchen', 'Raderthal', 'RaderthalgÃ¼rtel 3', '50968', 'Gesamtschule', 'allgemeinbildend', 'Europaschule', 'KÃ¶ln', 50.9022293375557, 6.95046611565, ''),
(28723, 'Nippes', 'Mauenheim', 'Nibelungenstr. 50', '50739', 'Grundschule', 'allgemeinbildend', 'Nibelungenstr.', 'KÃ¶ln', 50.9745171497127, 6.94310199843446, ''),
(28733, 'MÃ¼lheim', 'Holweide', 'Neufelder Str. 2', '51067', 'Grundschule', 'allgemeinbildend', 'Neufelderstr.', 'KÃ¶ln', 50.9698033110414, 7.05454032834866, ''),
(28743, 'Chorweiler', 'Lindweiler', 'Soldiner Str. 68', '50767', 'FÃ¶rderschule', 'allgemeinbildend', 'Hermann-Gmeiner-Schule', 'KÃ¶ln', 51.0061303193599, 6.88709374663252, ''),
(28753, 'MÃ¼lheim', 'Holweide', 'Friedlandstr. 5', '51067', 'Grundschule', 'allgemeinbildend', 'Friedlandstr.', 'KÃ¶ln', 50.9698598639178, 7.04074940036833, ''),
(28763, 'MÃ¼lheim', 'Buchheim', 'An St.Theresia 1', '51067', 'Grundschule', 'allgemeinbildend', 'An St. Theresia', 'KÃ¶ln', 50.9640952014183, 7.0244926389841, ''),
(28773, 'Rodenkirchen', 'Rodenkirchen', 'SÃ¼rther Str. 55', '50996', 'Gymnasium', 'allgemeinbildend', 'Gymnasium Rodenkirchen', 'KÃ¶ln', 50.8876078605279, 6.99873902936666, ''),
(28783, 'Kalk', 'Humboldt/Gremberg', 'Westerwaldstr. 90', '51105', 'Grundschule', 'allgemeinbildend', 'Westerwaldstr.', 'KÃ¶ln', 50.9288087441909, 6.99557577646796, ''),
(28793, 'MÃ¼lheim', 'Buchheim', 'Alte WipperfÃ¼rther Str. 49', '51065', 'Grundschule', 'allgemeinbildend', 'Alte WipperfÃ¼hrter-Str.', 'KÃ¶ln', 50.9559371278784, 7.01604987796902, ''),
(28803, 'Lindenthal', 'Klettenberg', 'Lohrbergstr. 46', '50939', 'Grundschule', 'allgemeinbildend', 'Lohrbergstr.', 'KÃ¶ln', 50.9102759750563, 6.92311717998906, ''),
(28813, 'MÃ¼lheim', 'Flittard', 'Am Feldrain 10', '51061', 'Grundschule', 'allgemeinbildend', 'Am Feldrain', 'KÃ¶ln', 50.9976173178051, 6.9794941395264, ''),
(28823, 'Lindenthal', 'SÃ¼lz', 'Leybergstr. 1', '50939', 'Gymnasium', 'allgemeinbildend', 'Hildegard-von-Bingen-Schule', 'KÃ¶ln', 50.9169502795093, 6.93297332733056, ''),
(28833, 'Lindenthal', 'SÃ¼lz', 'Nikolausstr. 55', '50937', 'Gymnasium', 'allgemeinbildend', 'Schiller-Gymnasium', 'KÃ¶ln', 50.9234279202852, 6.92955854635203, ''),
(28843, 'Nippes', 'BilderstÃ¶ckchen', 'Alzeyer Str. 12', '50739', 'Grundschule', 'allgemeinbildend', 'Alzeyer Str.', 'KÃ¶ln', 50.970696453879, 6.92844518214786, ''),
(28853, 'Ehrenfeld', 'Ehrenfeld', 'Lindenbornstr. 15', '50823', 'Grundschule', 'allgemeinbildend', 'Vincenz-Statz-Schule', 'KÃ¶ln', 50.9456776532179, 6.91428501348131, ''),
(28863, 'Lindenthal', 'Weiden', 'Breslauer Str. 11', '50858', 'Grundschule', 'allgemeinbildend', 'Albert-Schweitzer-Schule', 'KÃ¶ln', 50.936205152606, 6.84486887903262, ''),
(28873, 'Chorweiler', 'Merkenich', 'Spoerkelhof 7', '50769', 'Grundschule', 'allgemeinbildend', 'Spoerkelhof', 'KÃ¶ln', 51.0270139027753, 6.95330730426441, 'http://spoerkelhof-koeln.de/'),
(28883, 'Nippes', 'Nippes', 'Niehler Kirchweg 120', '50733', 'Realschule', 'allgemeinbildend', 'Edith-Stein-Schule', 'KÃ¶ln', 50.9712763708693, 6.95489618527187, ''),
(28893, 'Nippes', 'BilderstÃ¶ckchen', 'Escher Str. 247', '50739', 'Gymnasium', 'allgemeinbildend', 'DreikÃ¶nigs-Gymnasium', 'KÃ¶ln', 50.9670780017171, 6.92881887563006, ''),
(28903, 'Innenstadt', 'Altstadt/SÃ¼d', 'Trierer Str. 8', '50676', 'Grundschule', 'allgemeinbildend', 'Triererstr.', 'KÃ¶ln', 50.9278712095898, 6.94667132902827, ''),
(28913, 'Innenstadt', 'Altstadt/Nord', 'GereonsmÃ¼hlengasse 4', '50670', '2. Bildungsweg', 'allgemeinbildend', 'Abendgymnasium', 'KÃ¶ln', 50.9449069433096, 6.94854382824562, ''),
(28923, 'Innenstadt', 'Neustadt/SÃ¼d', 'Mainzer Str. 30', '50678', 'Grundschule', 'allgemeinbildend', 'Mainzerstr.', 'KÃ¶ln', 50.919689438427, 6.96396813369739, ''),
(28933, 'Nippes', 'Longerich', 'Altonaer Str. 32', '50737', 'Grundschule', 'allgemeinbildend', 'Marienschule', 'KÃ¶ln', 50.9960664594308, 6.92498561576269, ''),
(28943, 'MÃ¼lheim', 'DellbrÃ¼ck', 'DellbrÃ¼cker Mauspfad 198', '51069', 'Hauptschule', 'allgemeinbildend', 'Heinrich-Schieffer-Hauptschule', 'KÃ¶ln', 50.9700112362454, 7.06847611671461, ''),
(28953, 'Lindenthal', 'SÃ¼lz', 'Nikolausstr. 51', '50937', 'Gymnasium', 'allgemeinbildend', 'Elisabeth-von-ThÃ¼ringen-Schule', 'KÃ¶ln', 50.9238601359829, 6.92919623661545, ''),
(28963, 'MÃ¼lheim', 'Stammheim', 'Diependahlstr. 12', '51061', 'Grundschule', 'allgemeinbildend', 'Diependahlstr.', 'KÃ¶ln', 50.986763721144, 6.9873555749894, ''),
(28973, 'Kalk', 'HÃ¶henberg', 'Adalbertstr. 17', '51103', 'Gesamtschule', 'allgemeinbildend', 'Katharina-Henoth-Schule', 'KÃ¶ln', 50.9380142233379, 7.02861048653202, ''),
(28983, 'Porz', 'Finkenberg', 'Konrad-Adenauer-Str. 20', '51149', 'Grundschule', 'allgemeinbildend', 'Konrad-Adenauer Str.', 'KÃ¶ln', 50.8960229900043, 7.06545559679736, ''),
(28993, 'MÃ¼lheim', 'MÃ¼lheim', 'FÃ¼rstenbergstr. 26', '51065', 'Realschule', 'allgemeinbildend', 'Elly-Heuss-Knapp-Schule', 'KÃ¶ln', 50.9590271023823, 7.00682070544978, ''),
(29003, 'Porz', 'Wahn', 'Adolph-Kolping-Str. 41', '51147', 'Grundschule', 'allgemeinbildend', 'Adolph-Kolping-Str.', 'KÃ¶ln', 50.8593725571563, 7.09026490555934, ''),
(29013, 'Lindenthal', 'MÃ¼ngersdorf', 'Wendelinstr. 64', '50933', 'Grundschule', 'allgemeinbildend', 'MÃ¼ngersdorf', 'KÃ¶ln', 50.9412822189779, 6.8801603185797, ''),
(29023, 'Ehrenfeld', 'BocklemÃ¼nd/Mengenich', 'Mengenicher Str. 28', '50829', 'Grundschule', 'allgemeinbildend', 'Mengenicher Str.', 'KÃ¶ln', 50.9757613615809, 6.86268998928905, ''),
(29033, 'Porz', 'Poll', 'Am Altenberger Kreuz 14', '51105', 'Grundschule', 'allgemeinbildend', 'Janusz-Korczak-Schule', 'KÃ¶ln', 50.9188386454128, 6.98950915874196, ''),
(29043, 'Innenstadt', 'Deutz', 'Eitorfer Str. 18', '50679', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Hans-BÃ¶ckler', 'KÃ¶ln', 50.9352461591573, 6.98462538501113, ''),
(29053, 'Innenstadt', 'Deutz', 'Eitorfer Str. 16', '50679', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Nicolaus-August-Otto', 'KÃ¶ln', 50.9356780313425, 6.98368447549444, ''),
(29063, 'Innenstadt', 'Deutz', 'Eumeniusstr. 4', '50679', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Deutzer Freiheit', 'KÃ¶ln', 50.9359657001286, 6.98030764561263, ''),
(29073, 'Innenstadt', 'Altstadt/SÃ¼d', 'Ulrichgasse 1', '50678', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Ulrepforte', 'KÃ¶ln', 50.9257846679868, 6.95288137187249, ''),
(29083, 'Nippes', 'Nippes', 'Niehler Kirchweg 118', '50733', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Barbara-von-Sell', 'KÃ¶ln', 50.9707396411639, 6.9544431125811, ''),
(29093, 'Innenstadt', 'Neustadt/SÃ¼d', 'Lindenstr. 78', '50674', 'Berufskolleg', 'berufsbildend', 'Berufskolleg an der LindenstraÃŸe', 'KÃ¶ln', 50.9328649045171, 6.9336688517488, ''),
(29103, 'Innenstadt', 'Deutz', 'Eitorfer Str. 18', '50679', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Werner-von-Siemens', 'KÃ¶ln', 50.9350202503863, 6.98554189685209, ''),
(29113, 'Innenstadt', 'Altstadt/SÃ¼d', 'Humboldtstr. 41', '50676', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Humboldtstr.', 'KÃ¶ln', 50.9326723084219, 6.94185141419283, ''),
(29123, 'Innenstadt', 'Neustadt/SÃ¼d', 'Zugweg 48', '50677', 'Berufskolleg', 'berufsbildend', 'Berufskolleg SÃ¼dstadt', 'KÃ¶ln', 50.9178307085, 6.95566325798393, ''),
(29133, 'Ehrenfeld', 'Ehrenfeld', 'Weinsbergstr. 72', '50823', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Ehrenfeld', 'KÃ¶ln', 50.9410488470279, 6.92337830058774, ''),
(29143, 'MÃ¼lheim', 'Buchheim', 'Modemannstr. 25', '51065', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Erich-Gutenberg', 'KÃ¶ln', 50.9512314276286, 7.01977638210811, ''),
(29153, 'Kalk', 'Humboldt/Gremberg', 'Westerwaldstr. 92', '51105', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Georg-Simon-Ohm-Schule', 'KÃ¶ln', 50.9273248697896, 6.99608145955519, ''),
(29163, 'Innenstadt', 'Altstadt/SÃ¼d', 'KartÃ¤userwall 30', '50676', 'Berufskolleg', 'berufsbildend', 'Berufskolleg KartÃ¤userwall', 'KÃ¶ln', 50.9254115403485, 6.95210811231933, ''),
(29173, 'Porz', 'Porz', 'Hauptstr. 426', '51143', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Haupstr.', 'KÃ¶ln', 50.8861830779292, 7.05661637835581, ''),
(29183, 'Rodenkirchen', 'Zollstock', 'BrÃ¼ggener Str. 1', '50969', 'Berufskolleg', 'berufsbildend', 'Berufskolleg Alfred-MÃ¼ller-Armack', 'KÃ¶ln', 50.904963309597, 6.93808938815081, ''),
(29193, 'MÃ¼lheim', 'MÃ¼lheim', 'DÃ¼sseldorfer Str. 13', '51063', 'Gymnasium', 'allgemeinbildend', 'Rhein-Gymnasium', 'KÃ¶ln', 50.9692774382065, 7.00205746313791, ''),
(29203, 'Kalk', 'Vingst', 'HeÃŸhofstr. 45', '51107', 'Grundschule', 'allgemeinbildend', 'HeinzelmÃ¤nnchen-Schule', 'KÃ¶ln', 50.9308389898363, 7.02408694933251, ''),
(29213, 'MÃ¼lheim', 'Buchheim', 'Arnsberger Str. 11', '51065', 'Gymnasium', 'allgemeinbildend', 'Privatgymnasium Dialog', 'KÃ¶ln', 50.9541254676478, 7.01470115099493, ''),
(29223, 'MÃ¼lheim', 'DellbrÃ¼ck', 'Thurner Str. 23', '51069', 'Grundschule', 'allgemeinbildend', 'Thurner Str.', 'KÃ¶ln', 50.9753264532992, 7.07724791159016, ''),
(29233, 'Lindenthal', 'Lindenthal', 'Lindenburger Allee 38', '50931', 'FÃ¶rderschule', 'allgemeinbildend', 'Johann-Christoph-Winters', 'KÃ¶ln', 50.9272451180206, 6.91610449974211, ''),
(29243, 'MÃ¼lheim', 'Buchheim', 'Alte WipperfÃ¼rther Str. 49', '51065', 'Grundschule', 'allgemeinbildend', 'Sankt-Mauritius-Schule', 'KÃ¶ln', 50.9561841668246, 7.01584192096595, ''),
(29253, 'Lindenthal', 'Braunsfeld', 'Geilenkircher Str. 52', '50933', 'Grundschule', 'allgemeinbildend', 'Geilenkircher Str.', 'KÃ¶ln', 50.9417347020707, 6.89685971534879, ''),
(29263, 'Rodenkirchen', 'SÃ¼rth', 'SÃ¼rther Hauptstr. 149', '50999', 'Grundschule', 'allgemeinbildend', 'BrÃ¼der-Grimm-Schule', 'KÃ¶ln', 50.866154472697, 7.01267421757171, ''),
(29273, 'Porz', 'Gremberghoven', 'Breitenbachstr. 2', '51149', 'Grundschule', 'allgemeinbildend', 'Friedrich-List-Schule', 'KÃ¶ln', 50.9016475694735, 7.05607679084544, ''),
(29283, 'Innenstadt', 'Neustadt/Nord', 'Gladbacher Wall 5', '50670', 'Gesamtschule', 'allgemeinbildend', 'Francesco-Petrarca', 'KÃ¶ln', 50.9530232613947, 6.94838165672445, ''),
(29293, 'Innenstadt', 'Neustadt/SÃ¼d', 'Lochnerstr. 13', '50674', 'Grundschule', 'allgemeinbildend', 'Stephan-Lochner-Schule', 'KÃ¶ln', 50.9300173758952, 6.93551861418718, ''),
(29303, 'Nippes', 'Nippes', 'BlÃ¼cherstr. 15', '50733', 'Gymnasium', 'allgemeinbildend', 'Leonardo-da-Vinci-Gymnasium', 'KÃ¶ln', 50.9666602229828, 6.95582674862266, ''),
(29313, 'Ehrenfeld', 'Neuehrenfeld', 'Ottostr. 85', '50674', 'Grundschule', 'allgemeinbildend', 'Lauder-Morijah-Schule', 'KÃ¶ln', 50.9566575993292, 6.9262903712132, ''),
(29323, 'Rodenkirchen', 'Bayenthal', 'CÃ¤sarstr. 21', '50968', 'Grundschule', 'allgemeinbildend', 'Maria-Sybilla-Merian-Schule', 'KÃ¶ln', 50.9077213894947, 6.96687615099154, ''),
(29333, 'Lindenthal', 'Braunsfeld', 'Stolberger Str. 311', '50933', 'Grundschule', 'allgemeinbildend', 'BilinGO-Bilinguale Grundschule ', 'KÃ¶ln', 50.9417918390166, 6.89343055543803, ''),
(29343, 'Ehrenfeld', 'Vogelsang', 'Wasseramselweg 11', '50829', 'Grundschule', 'allgemeinbildend', 'Aktive Schule KÃ¶ln', 'KÃ¶ln', 50.9505678813712, 6.87784963379925, ''),
(29353, 'Lindenthal', 'Widdersdorf', 'Neue Sandkaul 29', '50859', 'Grundschule', 'allgemeinbildend', 'Internationale Friedensschule', 'KÃ¶ln', 50.9627063621619, 6.83899412185604, ''),
(29363, 'Rodenkirchen', 'Zollstock', 'Bernkasteler Str. 9', '50969', 'Grundschule', 'allgemeinbildend', 'Sankt-Nikolaus-Schule', 'KÃ¶ln', 50.9077489821529, 6.93933444046191, ''),
(29373, 'Lindenthal', 'Lindenthal', 'Clarenbachstr. 5', '50931', 'Grundschule', 'allgemeinbildend', 'KÃ¶lner Domsingschule', 'KÃ¶ln', 50.9357188337743, 6.91568765096521, ''),
(29383, 'Rodenkirchen', 'Hahnwald', 'An der Wachsfabrik 25', '50996', 'Gesamtschule', 'allgemeinbildend', 'Offene Schule KÃ¶ln', 'KÃ¶ln', 50.8692439554806, 6.999186847836, ''),
(29393, 'Ehrenfeld', 'Vogelsang', 'Wasseramselweg 11', '50829', 'Hauptschule', 'allgemeinbildend', 'Aktive Schule KÃ¶ln', 'KÃ¶ln', 50.9510824645131, 6.8782740567909, ''),
(29403, 'Chorweiler', 'Blumenberg', 'Ernstbergstr. 2', '50765', 'Grundschule', 'allgemeinbildend', 'Ernstbergstr.', 'KÃ¶ln', 51.0395678232638, 6.88224764800926, ''),
(29413, 'Chorweiler', 'Chorweiler', 'Merianstr. 7', '50765', 'Grundschule', 'allgemeinbildend', 'Merianstr.', 'KÃ¶ln', 51.0268526036193, 6.89884514318495, ''),
(29423, 'MÃ¼lheim', 'HÃ¶henhaus', 'Am Rosenmaar 3', '51061', 'Grundschule', 'allgemeinbildend', 'Rosenmaarschule', 'KÃ¶ln', 50.9934677987548, 7.03736137924969, ''),
(29433, 'MÃ¼lheim', 'MÃ¼lheim', 'Genovevastr. 72', '51063', '2. Bildungsweg', 'allgemeinbildend', 'Tages-u. Abendrealschule (TAS)', 'KÃ¶ln', 50.9650590803698, 7.00780342573064, ''),
(29443, 'Lindenthal', 'Widdersdorf', 'Neue Sandkaul 29', '50859', 'Gymnasium', 'allgemeinbildend', 'Internationale Friedensschule', 'KÃ¶ln', 50.9630276317732, 6.83862244978268, ''),
(29453, 'Innenstadt', 'Neustadt/Nord', 'Bernhard-Letterhaus-Str. 17', '50670', 'Grundschule', 'allgemeinbildend', 'Nikolaus-GroÃŸ-Schule', 'KÃ¶ln', 50.955627674369, 6.95188918946573, ''),
(29463, 'Ehrenfeld', 'Ossendorf', 'Am Pistorhof 11', '50827', 'Grundschule', 'allgemeinbildend', 'Montessori-Grundschule', 'KÃ¶ln', 50.9649690007805, 6.90938849292108, ''),
(29473, 'Porz', 'Wahn', 'Nachtigallenstr. 19', '51147', 'Gymnasium', 'allgemeinbildend', 'Maximilian-Kolbe-Gymnasium', 'KÃ¶ln', 50.8635758621318, 7.09002577933756, ''),
(29483, 'Porz', 'ZÃ¼ndorf', 'Heerstr. 7', '51143', 'Hauptschule', 'allgemeinbildend', 'Johann-Amos-Comenius-Schule', 'KÃ¶ln', 50.8671066813354, 7.05514766938932, ''),
(29493, 'Innenstadt', 'Altstadt/SÃ¼d', 'Zwirnerstr. 15', '50678', 'Grundschule', 'allgemeinbildend', 'Zwirnerstr.', 'KÃ¶ln', 50.9249693366487, 6.96220327452768, ''),
(29503, 'Innenstadt', 'Altstadt/SÃ¼d', 'Severinstr. 241', '50676', 'Gymnasium', 'allgemeinbildend', 'Friedrich-Wilhelm-Gymnasium', 'KÃ¶ln', 50.930593380628, 6.95611737485542, ''),
(29513, 'Innenstadt', 'Deutz', 'Alter MÃ¼hlenweg 2', '51065', 'FÃ¶rderschule', 'allgemeinbildend', 'Alter MÃ¼hlenweg', 'KÃ¶ln', 50.9273247892799, 6.98046087072192, ''),
(29523, 'Lindenthal', 'Widdersdorf', 'Neue Sandkaul 23', '50859', 'Grundschule', 'allgemeinbildend', 'Olympia-Schule', 'KÃ¶ln', 50.9643571892506, 6.83728655051114, ''),
(29533, 'Ehrenfeld', 'Neuehrenfeld', 'Overbeckstr. 71', '50823', 'Grundschule', 'allgemeinbildend', 'Overbeckstr.', 'KÃ¶ln', 50.9556287396278, 6.92770979560699, ''),
(29543, 'Nippes', 'Niehl', 'Castroper Str. 7', '50735', 'Gymnasium', 'allgemeinbildend', 'Erich-KÃ¤stner-Gymnasium', 'KÃ¶ln', 50.9733279330987, 6.96410059976185, ''),
(29553, 'Porz', 'ZÃ¼ndorf', 'Heerstr. 7', '51143', 'Realschule', 'allgemeinbildend', 'Wilhelm-Busch-Realschule', 'KÃ¶ln', 50.8671049624567, 7.05537747546954, ''),
(29563, 'Porz', 'Porz', 'Humboldtstr. 81', '51145', 'Grundschule', 'allgemeinbildend', 'Don-Bosco-Schule', 'KÃ¶ln', 50.8874727085146, 7.07019401456505, ''),
(29573, 'Ehrenfeld', 'Bickendorf', 'Rochusstr. 80', '50827', 'FÃ¶rderschule', 'allgemeinbildend', 'Lindweiler Hof', 'KÃ¶ln', 50.9606483128964, 6.90314145418137, ''),
(29583, 'Nippes', 'Longerich', 'Paul-Humburg-Str. 13', '50737', 'Gesamtschule', 'allgemeinbildend', 'Gesamtschule Nippes', 'KÃ¶ln', 50.9933329720286, 6.92104649971098, ''),
(29593, 'MÃ¼lheim', 'Buchheim', 'Arnsberger Str. 11', '51065', 'Realschule', 'allgemeinbildend', 'Privatrealschule Dialog', 'KÃ¶ln', 50.9540654671304, 7.01481259030149, ''),
(29603, 'Lindenthal', 'SÃ¼lz', 'Mommsenstr. 5', '50935', 'Grundschule', 'allgemeinbildend', 'Mommsenstr.', 'KÃ¶ln', 50.9177880556821, 6.9132732544731, ''),
(29613, 'Ehrenfeld', 'Vogelsang', 'Vogelsanger Str. 453', '50829', 'Grundschule', 'allgemeinbildend', 'Vogelsanger Str.', 'KÃ¶ln', 50.9555143363186, 6.88021545036284, ''),
(29623, 'Ehrenfeld', 'Vogelsang', 'Vogelsanger Str. 453', '50829', 'Grundschule', 'allgemeinbildend', 'Kardinal-Frings-Schule', 'KÃ¶ln', 50.9550080743147, 6.88033602379647, ''),
(29633, 'Kalk', 'NeubrÃ¼ck', 'Andreas-Hermes-Str. 2', '51109', 'Grundschule', 'allgemeinbildend', 'Andreas-Hermes Str.', 'KÃ¶ln', 50.9378215940673, 7.06140382309828, ''),
(29643, 'MÃ¼lheim', 'MÃ¼lheim', 'Rendsburger Platz 1', '51065', 'Hauptschule', 'allgemeinbildend', 'Rendsburger Platz', 'KÃ¶ln', 50.9562429077009, 7.00261554069376, ''),
(29653, 'Rodenkirchen', 'Rodenkirchen', 'Mainstr. 75', '50996', 'Grundschule', 'allgemeinbildend', 'Ernst-Moritz-Arndt-Schule', 'KÃ¶ln', 50.8836229004028, 7.00292302528521, ''),
(29663, 'MÃ¼lheim', 'MÃ¼lheim', 'Horststr. 1', '51063', 'Grundschule', 'allgemeinbildend', 'Horststr.', 'KÃ¶ln', 50.9579994853908, 6.99848745910527, ''),
(29673, 'Kalk', 'HÃ¶henberg', 'Weimarer Str. 28', '51103', 'Grundschule', 'allgemeinbildend', 'Weimarer Str.', 'KÃ¶ln', 50.9450920489742, 7.02172058959945, ''),
(29683, 'Nippes', 'Riehl', 'Garthestr. 20', '50735', 'Grundschule', 'allgemeinbildend', 'Garthestr.', 'KÃ¶ln', 50.9655474267413, 6.97549536395417, ''),
(29693, 'MÃ¼lheim', 'DÃ¼nnwald', 'Leuchterstr. 25', '51069', 'Grundschule', 'allgemeinbildend', 'Leuchterstr.', 'KÃ¶ln', 50.9972124292682, 7.03833595381772, ''),
(29703, 'Ehrenfeld', 'Neuehrenfeld', 'Baadenberger Str. 111', '50825', 'Grundschule', 'allgemeinbildend', 'Baadenbergerstr.', 'KÃ¶ln', 50.9648040570483, 6.91872403511488, ''),
(29713, 'MÃ¼lheim', 'HÃ¶henhaus', 'Im Weidenbruch 214', '51061', 'Gesamtschule', 'allgemeinbildend', 'Willy-Brandt-Gesamtschule', 'KÃ¶ln', 50.9839343486155, 7.04405999997176, ''),
(29723, 'MÃ¼lheim', 'Holweide', 'Neufelder Str. 32', '51067', 'FÃ¶rderschule', 'allgemeinbildend', 'Hilde-Domin-Schule', 'KÃ¶ln', 50.9662568998685, 7.05574675577721, ''),
(29733, 'Porz', 'Porz', 'Planckstr. 14', '51145', 'Realschule', 'allgemeinbildend', 'Max-Planck-Realschule', 'KÃ¶ln', 50.8872500883276, 7.06854135506698, ''),
(29743, 'Lindenthal', 'MÃ¼ngersdorf', 'Belvederestr. 149', '50933', 'FÃ¶rderschule', 'allgemeinbildend', 'Belvederestr. Hauptschule', 'KÃ¶ln', 50.9474388931998, 6.8702575594157, ''),
(29753, 'Porz', 'Wahnheide', 'Sportplatzstr. 82', '51147', 'FÃ¶rderschule', 'allgemeinbildend', 'Pestalozzi-Schule', 'KÃ¶ln', 50.8650242995538, 7.10208303744572, ''),
(29763, 'Ehrenfeld', 'Bickendorf', 'Erlenweg 16', '50827', 'Grundschule', 'allgemeinbildend', 'Erlenweg', 'KÃ¶ln', 50.9651881627007, 6.89365715751823, ''),
(29773, 'Kalk', 'Rath/Heumar', 'Volberger Weg 17', '51107', 'Grundschule', 'allgemeinbildend', 'Volberger Weg', 'KÃ¶ln', 50.9255896412275, 7.0902225351866, ''),
(29783, 'Porz', 'ZÃ¼ndorf', 'Heerstr. 7', '51143', 'Gymnasium', 'allgemeinbildend', 'Lessing-Gymnasium', 'KÃ¶ln', 50.8671065848502, 7.05494964221057, ''),
(29793, 'MÃ¼lheim', 'MÃ¼lheim', 'Genovevastr. 58', '51063', 'Gymnasium', 'allgemeinbildend', 'Genoveva-Gymnasium', 'KÃ¶ln', 50.9643230459138, 7.00791674565725, ''),
(29803, 'MÃ¼lheim', 'MÃ¼lheim', 'Graf-Adolf-Str. 59', '51065', 'Gymnasium', 'allgemeinbildend', 'HÃ¶lderlin-Gymnasium', 'KÃ¶ln', 50.9572566299914, 7.00631302150698, ''),
(29813, 'Ehrenfeld', 'Ehrenfeld', 'Leyendeckerstr. 20', '50825', 'FÃ¶rderschule', 'allgemeinbildend', 'Wilhelm-Leyendecker-Schule', 'KÃ¶ln', 50.9553661063508, 6.91187341282778, ''),
(29823, 'Lindenthal', 'Lindenthal', 'Freiligrathstr. 60', '50935', 'Grundschule', 'allgemeinbildend', 'Freiligrathstr.', 'KÃ¶ln', 50.9225605091514, 6.9024475292293, ''),
(29833, 'Nippes', 'Nippes', 'Neusser Str. 421', '50733', 'Realschule', 'allgemeinbildend', 'Peter-Ustinov-Schule', 'KÃ¶ln', 50.9715929576847, 6.95107726417385, ''),
(29843, 'Kalk', 'Kalk', 'Kantstr. 3', '51103', 'Gymnasium', 'allgemeinbildend', 'Kaiserin-Theophanu-Schule', 'KÃ¶ln', 50.9373082207232, 7.00779112863872, ''),
(29853, 'Porz', 'Urbach', 'Kupfergasse 5', '51145', 'Grundschule', 'allgemeinbildend', 'Kupfergasse', 'KÃ¶ln', 50.8794865809807, 7.08141859946536, ''),
(29863, 'Kalk', 'Kalk', 'Martin-KÃ¶llen-Str. 1', '51103', 'FÃ¶rderschule', 'allgemeinbildend', 'Martin-KÃ¶llen-Str.', 'KÃ¶ln', 50.9375622629197, 7.01203866412021, ''),
(29873, 'Porz', 'Eil', 'Schulstr. 23', '51145', 'Grundschule', 'allgemeinbildend', 'Unter Birken', 'KÃ¶ln', 50.8931491932582, 7.07936520839904, ''),
(29883, 'MÃ¼lheim', 'DÃ¼nnwald', 'Berliner Str. 975', '51069', 'FÃ¶rderschule', 'allgemeinbildend', 'Berliner Str.', 'KÃ¶ln', 51.0019724588493, 7.04094653741945, ''),
(29893, 'Lindenthal', 'Lindenthal', 'Biggestr. 2', '50931', 'Gymnasium', 'allgemeinbildend', 'Apostel-Gymnasium', 'KÃ¶ln', 50.9324345046182, 6.91567589742252, ''),
(29903, 'Nippes', 'Nippes', 'Steinbergerstr. 40', '50733', 'Grundschule', 'allgemeinbildend', 'Steinbergerstr.', 'KÃ¶ln', 50.9616519969412, 6.95001656437754, ''),
(29913, 'Chorweiler', 'Chorweiler', 'Merianstr. 11', '50765', 'Gesamtschule', 'allgemeinbildend', 'Heinrich-BÃ¶ll-Schule', 'KÃ¶ln', 51.0262328833928, 6.90007167975067, ''),
(29923, 'Nippes', 'BilderstÃ¶ckchen', 'Alzeyer Str. 12', '50739', 'Grundschule', 'allgemeinbildend', 'Lukas-Schule', 'KÃ¶ln', 50.9707497560515, 6.92844567600499, ''),
(29933, 'Ehrenfeld', 'Neuehrenfeld', 'Dechenstr. 1', '50825', 'Realschule', 'allgemeinbildend', 'Eichendorff-Schule', 'KÃ¶ln', 50.9586469658035, 6.9162406712458, ''),
(29943, 'Kalk', 'HÃ¶henberg', 'NÃ¼rnberger Str. 10', '51103', 'Hauptschule', 'allgemeinbildend', 'NÃ¼rnberger Str.', 'KÃ¶ln', 50.9389051708527, 7.02365400695925, ''),
(29953, 'Ehrenfeld', 'Bickendorf', 'Rochusstr. 145', '50827', 'Gymnasium', 'allgemeinbildend', 'Montessori-Gymnasium', 'KÃ¶ln', 50.9634465351674, 6.90336769360778, ''),
(29963, 'Kalk', 'NeubrÃ¼ck', 'Helene-Weber-Platz 3', '51109', 'Hauptschule', 'allgemeinbildend', 'Kurt-Tucholsky-Schule', 'KÃ¶ln', 50.9349907298694, 7.0583774557854, ''),
(29973, 'MÃ¼lheim', 'MÃ¼lheim', 'MÃ¼lheimer Freiheit 99', '51063', 'Grundschule', 'allgemeinbildend', 'MÃ¼lheimer Freiheit', 'KÃ¶ln', 50.9667886153239, 6.99989313804874, '');
INSERT INTO `tblschulen` (`fldindex`, `fldstadtbezirk`, `fldstadtteil`, `fldadresse`, `fldpostzustellbezirk`, `fldschulart`, `fldschultyp`, `fldname`, `fldstadt`, `fldxkoor`, `fldykoor`, `fldlink`) VALUES
(29983, 'Chorweiler', 'Heimersdorf', 'Lebensbaumweg 51', '50767', 'Grundschule', 'allgemeinbildend', 'Lebensbaumweg', 'KÃ¶ln', 51.0097848494195, 6.90231138657425, ''),
(29993, 'Chorweiler', 'Seeberg', 'Karl-Marx-Allee 43', '50769', 'Realschule', 'allgemeinbildend', 'Henry-Ford-Realschule', 'KÃ¶ln', 51.0203202686966, 6.9096766880049, ''),
(30003, 'Rodenkirchen', 'WeiÃŸ', 'Zum Hedelsberg 13', '50999', 'Grundschule', 'allgemeinbildend', 'Albert-Schweitzer-Schule ', 'KÃ¶ln', 50.8743813850351, 7.02635957318515, ''),
(30013, 'Kalk', 'NeubrÃ¼ck', 'Europaring 51', '51109', 'Grundschule', 'allgemeinbildend', 'Europaring', 'KÃ¶ln', 50.9325999379191, 7.0568274988609, ''),
(30023, 'Innenstadt', 'Deutz', 'Schaurtestr. 1', '50679', 'Gymnasium', 'allgemeinbildend', 'Schauertestr.', 'KÃ¶ln', 50.9337709791192, 6.97631568411851, ''),
(30033, 'Ehrenfeld', 'Vogelsang', 'Kolkrabenweg 65', '50829', 'Realschule', 'allgemeinbildend', 'Bertha-von-Suttner-Schule', 'KÃ¶ln', 50.9629129812776, 6.87752129739286, ''),
(30043, 'Lindenthal', 'SÃ¼lz', 'ZÃ¼lpicher Str. 194', '50937', 'FÃ¶rderschule', 'allgemeinbildend', 'SÃ¼lzgÃ¼rtel', 'KÃ¶ln', 50.9245172872457, 6.92770913320925, ''),
(30053, 'Innenstadt', 'Altstadt/Nord', 'Niederichstr. 1', '50668', 'Realschule', 'allgemeinbildend', 'Realschule am Rhein', 'KÃ¶ln', 50.9483751680066, 6.96282913102471, ''),
(30063, 'Innenstadt', 'Altstadt/SÃ¼d', 'GroÃŸer Griechenmarkt 76', '50676', 'Hauptschule', 'allgemeinbildend', 'Gr. Griechenmarkt', 'KÃ¶ln', 50.9323042320636, 6.9506709024962, ''),
(30073, 'Innenstadt', 'Altstadt/SÃ¼d', 'Marienplatz 2', '50676', 'FÃ¶rderschule', 'allgemeinbildend', 'Paul-Maar-Schule', 'KÃ¶ln', 50.9338590819554, 6.95695483896954, ''),
(30083, 'Innenstadt', 'Altstadt/SÃ¼d', 'Frankstr. 26', '50676', 'Gesamtschule', 'allgemeinbildend', 'Gesamtschule Innenstadt', 'KÃ¶ln', 50.9323559269713, 6.94435976804844, ''),
(30093, 'MÃ¼lheim', 'MÃ¼lheim', 'Ferdinandstr. 43', '51063', 'Gesamtschule', 'allgemeinbildend', 'Gesamtschule MÃ¼lheim', 'KÃ¶ln', 50.9475472967392, 6.98960460413105, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblschultyp`
--

CREATE TABLE IF NOT EXISTS `tblschultyp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(50) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Daten für Tabelle `tblschultyp`
--

INSERT INTO `tblschultyp` (`fldindex`, `fldbez`) VALUES
(63, 'allgemeinbildend'),
(73, 'berufsbildend');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblsel`
--

CREATE TABLE IF NOT EXISTS `tblsel` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(1) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Daten für Tabelle `tblsel`
--

INSERT INTO `tblsel` (`fldindex`, `fldbez`) VALUES
(3, 'J'),
(13, 'N');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblspielgeraete`
--

CREATE TABLE IF NOT EXISTS `tblspielgeraete` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) NOT NULL,
  `fldid_spielplatz` bigint(20) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblstadtbezirk`
--

CREATE TABLE IF NOT EXISTS `tblstadtbezirk` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(100) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=264 ;

--
-- Daten für Tabelle `tblstadtbezirk`
--

INSERT INTO `tblstadtbezirk` (`fldindex`, `fldbez`) VALUES
(183, 'Nippes'),
(193, 'Innenstadt'),
(203, 'Porz'),
(213, 'Kalk'),
(223, 'MÃ¼lheim'),
(233, 'Lindenthal'),
(243, 'Rodenkirchen'),
(253, 'Ehrenfeld'),
(263, 'Chorweiler');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblstadtteil`
--

CREATE TABLE IF NOT EXISTS `tblstadtteil` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(100) NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=814 ;

--
-- Daten für Tabelle `tblstadtteil`
--

INSERT INTO `tblstadtteil` (`fldindex`, `fldbez`) VALUES
(3, 'Niehl'),
(13, 'Neustadt/SÃ¼d'),
(23, 'Poll'),
(33, 'Ostheim'),
(43, 'HÃ¶henhaus'),
(53, 'Riehl'),
(63, 'Lindenthal'),
(73, 'SÃ¼lz'),
(83, 'ZÃ¼ndorf'),
(93, 'Godorf'),
(103, 'Holweide'),
(113, 'Deutz'),
(123, 'Neuehrenfeld'),
(133, 'MÃ¼lheim'),
(143, 'Rath/Heumar'),
(153, 'Buchforst'),
(163, 'Heimersdorf'),
(173, 'Pesch'),
(183, 'Raderberg'),
(193, 'Kalk'),
(203, 'BrÃ¼ck'),
(213, 'MÃ¼ngersdorf'),
(223, 'DellbrÃ¼ck'),
(233, 'Ehrenfeld'),
(243, 'Bayenthal'),
(253, 'Rodenkirchen'),
(263, 'Weiden'),
(273, 'Zollstock'),
(283, 'Westhoven'),
(293, 'BilderstÃ¶ckchen'),
(303, 'Stammheim'),
(313, 'Neustadt/Nord'),
(323, 'Vogelsang'),
(333, 'Seeberg'),
(343, 'Nippes'),
(353, 'Worringen'),
(363, 'Eil'),
(373, 'Grengel'),
(383, 'BocklemÃ¼nd/Mengenich'),
(393, 'Esch/Auweiler'),
(403, 'Porz'),
(413, 'Weidenpesch'),
(423, 'Finkenberg'),
(433, 'LÃ¶venich'),
(443, 'Altstadt/SÃ¼d'),
(453, 'DÃ¼nnwald'),
(463, 'Wahn'),
(473, 'Ossendorf'),
(483, 'Merheim'),
(493, 'Flittard'),
(503, 'Langel'),
(513, 'Longerich'),
(523, 'Buchheim'),
(533, 'Vingst'),
(543, 'Humboldt/Gremberg'),
(553, 'Wahnheide'),
(563, 'Lindweiler'),
(573, 'Bickendorf'),
(583, 'Widdersdorf'),
(593, 'Immendorf'),
(603, 'Chorweiler'),
(613, 'Marienburg'),
(623, 'Altstadt/Nord'),
(633, 'Volkhoven/Weiler'),
(643, 'Rondorf'),
(653, 'Ensen'),
(663, 'Klettenberg'),
(673, 'Roggendorf/Thenhoven'),
(683, 'Meschenich'),
(693, 'Junkersdorf'),
(703, 'Raderthal'),
(713, 'Mauenheim'),
(723, 'Merkenich'),
(733, 'HÃ¶henberg'),
(743, 'Braunsfeld'),
(753, 'SÃ¼rth'),
(763, 'Gremberghoven'),
(773, 'Hahnwald'),
(783, 'Blumenberg'),
(793, 'NeubrÃ¼ck'),
(803, 'Urbach'),
(813, 'WeiÃŸ');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbltermine_grp`
--

CREATE TABLE IF NOT EXISTS `tbltermine_grp` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldfarbe` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbltermine_liste`
--

CREATE TABLE IF NOT EXISTS `tbltermine_liste` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldkurz` varchar(100) COLLATE utf8_bin NOT NULL,
  `fldvondatum` date NOT NULL,
  `fldvonuhrzeit` time NOT NULL,
  `fldbisdatum` date NOT NULL,
  `fldbisuhrzeit` time NOT NULL,
  `fldid_terminegrp` bigint(20) NOT NULL,
  `fldfarbe` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldid_terminserie` bigint(20) NOT NULL,
  `fldtermintyp` varchar(50) COLLATE utf8_bin NOT NULL,
  `fldlink` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2424 ;

--
-- Daten für Tabelle `tbltermine_liste`
--

INSERT INTO `tbltermine_liste` (`fldindex`, `fldbez`, `fldkurz`, `fldvondatum`, `fldvonuhrzeit`, `fldbisdatum`, `fldbisuhrzeit`, `fldid_terminegrp`, `fldfarbe`, `fldid_terminserie`, `fldtermintyp`, `fldlink`) VALUES
(2363, 'Best of Daphne de Luxe ', '', '2014-09-05', '00:00:00', '2014-09-05', '00:00:00', 0, '', 93, 'TERMINE-KOELN', 'http://www.stadt-koeln.de/leben-in-koeln/veranstaltungen/daten/12754/index.html'),
(2373, 'Martin GroÃŸmann - TrÃ¼ffelschweine', '', '2014-09-06', '00:00:00', '2014-09-06', '00:00:00', 0, '', 93, 'TERMINE-KOELN', 'http://www.stadt-koeln.de/leben-in-koeln/veranstaltungen/daten/12755/index.html'),
(2383, 'Martin GroÃŸmann - TrÃ¼ffelschweine', '', '2014-09-07', '00:00:00', '2014-09-07', '00:00:00', 0, '', 93, 'TERMINE-KOELN', 'http://www.stadt-koeln.de/leben-in-koeln/veranstaltungen/daten/12756/index.html'),
(2393, 'Das Museum der Fotografie: Eine Revision', '', '2014-06-28', '00:00:00', '2014-10-05', '00:00:00', 0, '', 103, 'TERMINE-KOELN', 'http://www.stadt-koeln.de/leben-in-koeln/veranstaltungen/daten/12604/index.html'),
(2403, 'Unbeugsam und ungebÃ¤ndigt: Dokumentarische Fotografie um 1979', '', '2014-06-28', '00:00:00', '2014-10-05', '00:00:00', 0, '', 103, 'TERMINE-KOELN', 'http://www.stadt-koeln.de/leben-in-koeln/veranstaltungen/daten/12603/index.html'),
(2413, 'Ludwig goes POP', '', '2014-06-28', '00:00:00', '2014-10-05', '00:00:00', 0, '', 93, 'TERMINE-KOELN', 'http://www.stadt-koeln.de/leben-in-koeln/veranstaltungen/daten/16412/index.html'),
(2423, 'test', '', '2014-09-01', '00:00:00', '2014-09-01', '00:00:00', 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbltermine_serie`
--

CREATE TABLE IF NOT EXISTS `tbltermine_serie` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldfarbe` varchar(10) COLLATE utf8_bin NOT NULL,
  `fldimagepfad` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldsel` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'J',
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=104 ;

--
-- Daten für Tabelle `tbltermine_serie`
--

INSERT INTO `tbltermine_serie` (`fldindex`, `fldbez`, `fldfarbe`, `fldimagepfad`, `fldsel`) VALUES
(93, 'Termine', '', '', 'J'),
(103, 'Nicht anzeigen', '', '', 'N');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbltranslate`
--

CREATE TABLE IF NOT EXISTS `tbltranslate` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldlang` varchar(5) COLLATE utf8_bin NOT NULL,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldname` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=134 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tblversion`
--

CREATE TABLE IF NOT EXISTS `tblversion` (
  `fldindex` bigint(20) NOT NULL AUTO_INCREMENT,
  `fldbez` varchar(250) COLLATE utf8_bin NOT NULL,
  `fldkurz` varchar(5) COLLATE utf8_bin NOT NULL,
  `flddatum` date NOT NULL,
  PRIMARY KEY (`fldindex`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=124 ;

--
-- Daten für Tabelle `tblversion`
--

INSERT INTO `tblversion` (`fldindex`, `fldbez`, `fldkurz`, `flddatum`) VALUES
(3, '0.3.0.2 ', '0302', '2013-08-30'),
(13, '0.3.0.3', '0303', '2013-08-30'),
(23, '0.3.0.4', '0304', '2013-08-30'),
(33, '0.3.0.5', '0305', '2013-08-30'),
(43, '0.3.0.6', '0306', '2013-08-30'),
(53, '0.3.0.7', '0307', '2013-08-30'),
(63, '0.3.0.8 (alpha)', '0308', '2013-08-29'),
(73, '0.3.0.9 (alpha)', '0309', '2013-10-06'),
(83, 'Vollversion', 'full', '0000-00-00'),
(93, '0.3.0.10 (alpha)', '0310', '2013-10-30'),
(103, '0.3.0.11 (alpha)', '0311', '2014-02-07'),
(113, '0.3.0.12 (alpha)', '0312', '2014-04-30'),
(123, '1.003', '1003', '2014-09-03');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
