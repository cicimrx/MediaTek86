-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 04 juin 2021 à 20:31
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediatek86`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
CREATE TABLE IF NOT EXISTS `personnel` (
  `IDPERSONNEL` int(11) NOT NULL AUTO_INCREMENT,
  `IDSERVICE` int(11) NOT NULL,
  `NOM` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRENOM` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEL` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAIL` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IDPERSONNEL`),
  KEY `FK_PERSONNEL_SERVICE` (`IDSERVICE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`IDPERSONNEL`, `IDSERVICE`, `NOM`, `PRENOM`, `TEL`, `MAIL`) VALUES
(1, 1, 'magee', 'sonia', '0629216488', 'sonia.magee@gestionpersonnel.com'),
(2, 1, 'daquan', 'zoe', '0690000878', 'zoe.daquan@gestionpersonnel.com'),
(3, 1, 'tanner', 'jenette', '0690318595', 'jenette.tanner@gestionpersonnel.com'),
(4, 3, 'malcolm', 'mollie', '0669417665', 'mollie.malcolm@gestionpersonnel.com'),
(5, 3, 'gemma', 'shoshana', '0680333716', 'shoshana.gemma@gestionpersonnel.com'),
(6, 3, 'cedric', 'margaret', '0636496341', 'margaret.cedric@gestionpersonnel.com'),
(7, 2, 'rhiannon', 'evelyn', '0695718915', 'evelyn.rhiannon@gestionpersonnel.com'),
(8, 2, 'clark', 'indira', '0618947342', 'indira.clark@gestionpersonnel.com'),
(9, 3, 'tatyana', 'hilary', '0659490797', 'hilary.tatyana@gestionpersonnel.com'),
(10, 2, 'lewis', 'lael', '0676396355', 'lael.lewis@gestionpersonnel.com');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_ibfk_1` FOREIGN KEY (`IDSERVICE`) REFERENCES `service` (`IDSERVICE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
