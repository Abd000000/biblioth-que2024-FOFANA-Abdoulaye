-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 14 nov. 2022 à 08:51
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ap2`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `num` varchar(20) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `adherent`
--

INSERT INTO `adherent` (`num`, `nom`, `prenom`, `email`) VALUES
('1', 'nom1', 'prenom1', 'email1@email.com'),
('2', 'nom2', 'prenom2', 'email2@email.com'),
('3', 'nom3', 'prenom3', 'email3@email.com'),
('4', 'nom4', 'prenom4', 'email4@email.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `num` varchar(20) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`num`, `nom`, `prenom`, `date_naissance`, `description`) VALUES
('1', 'GRAVOUIL', 'BENJAMIN', '2084-11-02', 'Un super prof ! '),
('2', 'nomauteur2', 'prenomauteur2', NULL, 'sans description. blablalbllalbla'),
('3', 'nomauteur3', 'prenomauteur3', NULL, 'sans description. blablalbllalbla'),
('4', 'nomauteur4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `ISBN` varchar(20) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `prix` float DEFAULT NULL,
  `adherent` varchar(20) DEFAULT NULL,
  `auteur` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`ISBN`, `titre`, `prix`, `adherent`, `auteur`) VALUES
('1', 'coder en java', 100, '4', NULL),
('2', 'titre2', 50, NULL, '2'),
('3', 'titre3', 50, NULL, '2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `FK1` (`adherent`),
  ADD KEY `FK2` (`auteur`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`adherent`) REFERENCES `adherent` (`num`),
  ADD CONSTRAINT `FK2` FOREIGN KEY (`auteur`) REFERENCES `auteur` (`num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
