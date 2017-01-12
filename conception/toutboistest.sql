-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 12 Janvier 2017 à 15:06
-- Version du serveur :  10.1.16-MariaDB
-- Version de PHP :  5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `toutboistest`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `numeroClient` int(11) NOT NULL,
  `nomEntrepriseClient` varchar(30) NOT NULL,
  `siretClient` varchar(14) NOT NULL,
  `numeroRepresClient` int(11) NOT NULL,
  `nomClient` varchar(30) NOT NULL,
  `prenomClient` varchar(30) NOT NULL,
  `numVoieClient` int(5) NOT NULL,
  `adresseClient` varchar(30) NOT NULL,
  `complementClient` varchar(30) NOT NULL,
  `villeClient` varchar(30) NOT NULL,
  `mailClient` varchar(30) NOT NULL,
  `numeroTelClient` varchar(10) NOT NULL,
  `paysClient` varchar(20) NOT NULL,
  `codePostalClient` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`numeroClient`, `nomEntrepriseClient`, `siretClient`, `numeroRepresClient`, `nomClient`, `prenomClient`, `numVoieClient`, `adresseClient`, `complementClient`, `villeClient`, `mailClient`, `numeroTelClient`, `paysClient`, `codePostalClient`) VALUES
(2, 'Auchan', '12345678901234', 6, 'Bilbo', 'Serge', 54, 'rue de la pays', 'appart 3', 'Roubaix', 'serge@auchan.fr', '0789456123', 'Allemagne', '54000'),
(3, 'Castorama', '12345678961231', 5, 'Durand', 'Paul', 56, 'rue de la gloire', 'boc 6', 'Lille', 'durand@castorama.de', '0782123455', 'France', '59100'),
(8, 'Afpa', '56982365412596', 5, 'Bolide', 'Pierre', 15, 'rue de la gare', '', 'Ath', '', '', 'Belgique', '7805'),
(10, 'lmc rénovation', '12345678965486', 5, 'Moropel', 'Anthony', 14, 'rue du Maréchal Foch', 'étage 7', 'France', '', '0778506518', 'Lille', '59000'),
(11, 'cylande', '12345678965487', 5, 'Flou', 'Jean', 78, 'Rue Puits de Charron', '', 'France', 'flou@free.fr', '0687790544', 'Paris', '75000'),
(12, 'Disney', '89751546542515', 6, 'Dupont', 'Nathalie', 996, 'Place du 11 Novembre', 'Batiment 4', 'Belgique', 'Dupont@Disney.fr', '', 'Bruxelles', '1000'),
(13, 'GB web', '45312457678945', 6, 'Dubois', 'Michel', 415, 'rue Jean Jaures', '', 'Belgique', 'dubois@gbweb.be', '', 'Charleroi', '2500'),
(22, 'National Demolistion', '45678954621078', 6, 'Devillers', 'Pierre', 312, 'Place des Resistants', 'appart 8', 'France', '', '0978451245', 'Douai', '62000'),
(24, 'Oxypro', '78955644254825', 6, 'Decamp', 'Serge', 212, 'Place de la Convention', '', 'France', 'decamp@oxypro.fr', '', 'Houdain', '62000'),
(25, 'a Volute', '46654654564560', 5, 'Deschamps', 'Jacques', 156, 'avenue Aristide Briand', 'étage 5', 'Angleterre', '', '', 'Londres', 'LD788'),
(27, 'Krealid', '12345678965487', 5, 'Amisky', 'Anthony', 127, 'Square de la République', '', 'Allemagne', '', '0789564217', 'Berlin', '1255'),
(30, 'BNP', '89751546542515', 2, 'Lalane', 'Jean', 55, 'Place du 11 Novembre', 'appart 32', 'France', 'lalne@bnp.fr', '0778506518', 'Paris', '95000'),
(40, 'Camaieu', '45312457678945', 2, 'Durand', 'Jacques', 66, 'rue Jean Jaures', '', 'Belgique', '', '0687790544', 'Bruxelles', '1000'),
(57, 'GL Event', '46654654564560', 2, 'Cerf', 'Anthony', 75, 'Place des Resistants', '', 'Belgique', 'cerf@glevent.com', '', 'Charleroi', '2500');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_commande` int(11) NOT NULL,
  `dateCommande` datetime NOT NULL,
  `dateLivraisonCommande` datetime DEFAULT NULL,
  `numeroClient` int(11) DEFAULT NULL,
  `id_EtatCommande` int(11) DEFAULT NULL,
  `idFournisseur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`id_commande`, `dateCommande`, `dateLivraisonCommande`, `numeroClient`, `id_EtatCommande`, `idFournisseur`) VALUES
(1, '2016-12-20 13:56:59', NULL, 2, 1, NULL),
(2, '2016-12-20 14:02:43', NULL, 2, 1, NULL),
(3, '2016-12-20 14:16:11', NULL, 2, 1, NULL),
(4, '2016-12-22 09:06:23', NULL, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE `contenir` (
  `quantite` int(11) NOT NULL,
  `id_commande_contenir` int(11) NOT NULL,
  `codeProduit_contenir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `contenir`
--

INSERT INTO `contenir` (`quantite`, `id_commande_contenir`, `codeProduit_contenir`) VALUES
(5, 1, 1),
(9, 1, 2),
(12, 1, 3),
(5, 2, 21),
(2, 3, 5),
(1, 3, 8),
(85, 4, 18),
(15, 4, 22);

-- --------------------------------------------------------

--
-- Structure de la table `etatcommande`
--

CREATE TABLE `etatcommande` (
  `id_EtatCommande` int(11) NOT NULL,
  `libelle_EtatCommande` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `etatcommande`
--

INSERT INTO `etatcommande` (`id_EtatCommande`, `libelle_EtatCommande`) VALUES
(1, 'Commande validé'),
(2, 'Commande livrée'),
(3, 'Commande perdue'),
(4, 'Commande expédiée');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `idFournisseur` int(11) NOT NULL,
  `nomEntrepriseFournisseur` varchar(50) NOT NULL,
  `siretFournisseur` varchar(14) NOT NULL,
  `nomContactFournisseur` varchar(50) NOT NULL,
  `prenomContactFournisseur` varchar(50) NOT NULL,
  `numVoieFournisseur` int(11) NOT NULL,
  `adresseFournisseur` varchar(50) NOT NULL,
  `complementAdresseFournisseur` varchar(50) NOT NULL,
  `mailFournisseur` varchar(50) NOT NULL,
  `numeroTelFournisseur` varchar(12) NOT NULL,
  `villeFournisseur` varchar(50) NOT NULL,
  `paysFournisseur` varchar(50) NOT NULL,
  `codePostalFournisseur` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `password` varchar(40) NOT NULL,
  `numeroClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `login`
--

INSERT INTO `login` (`password`, `numeroClient`) VALUES
('test', 2);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `codeProduit` int(11) NOT NULL,
  `libelleProduit` varchar(50) NOT NULL,
  `stockProduit` int(11) NOT NULL,
  `prixUnitaireProduit` double NOT NULL,
  `remiseProduit` float DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `id_TVA` int(11) NOT NULL,
  `Id_typeProduit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`codeProduit`, `libelleProduit`, `stockProduit`, `prixUnitaireProduit`, `remiseProduit`, `description`, `Image`, `id_TVA`, `Id_typeProduit`) VALUES
(1, 'Billy', 50, 49, 0, 'Tablettes réglables : à placer selon vos besoins. Un seul élément peut servir de rangement dans un espace retreint, ou servir de base pour une solution de rangement plus importante lorsque les besoins évoluent. ', 'img/article/rangement/rg01.jpg', 1, 2),
(2, 'Billy / Oxberg', 20, 338.5, 0, 'Bibliothèque:\r\nComposants principaux: Panneau de particules, placage frêne, papier, Teinté, vernis acrylique incolor', 'img/article/rangement/rg02.jpg', 2, 2),
(3, 'Billy /Bib''s', 10, 147, 0, 'Composants principaux: Panneau de particules, papier, placage bouleau, vernis acrylique incolore\r\nDos: Panneau de fibres de bois', 'img/article/rangement/rg03.jpg', 2, 2),
(4, 'Billy / biblithèque', 5, 69.9, 0, 'Composants principaux: Panneau de particules, placage chêne, papier, vernis acrylique incolore', 'img/article/rangement/rg04.jpg', 2, 2),
(5, 'BJURSTA  ', 8, 159.9, 0, 'Plateau/ Rallonge/ Pied: Panneau de particules, placage frêne, Teinté, vernis acrylique incolore\nPiètement: Pin massif, placage frêne, Teinté, vernis acrylique incolore\nTraverse/ Tirette: bois massif', 'img/article/table/img1.jpg', 3, 3),
(6, 'Norden', 12, 199, 0, 'Plateau/ Rallonge/ Piètement: bouleau massif, vernis acrylique incolore\nTirette/ Croisillon: bouleau massif', 'img/article/table/img2.jpg', 3, 3),
(7, 'ingatorp', 50, 289, 0, 'Plateau: Panneau de particules, plastique ABS, Teinté, vernis acrylique incolore, placage frêne\nRallonge: Panneau de particules, Plastique, Teinté, vernis acrylique incolore, placage frêne\nPied/ Traverse longitudinale: hêtre massif, Teinté, vernis acryliq', 'img/article/table/img3.jpg', 3, 3),
(8, 'GLIvarp', 48, 179, 0, 'Pied/ Traverse latérale: acier, Chromé\nGuidage: aluminium\nPlateau: Verre trempé\nTraverse: polyacétals\nFixation: polypropylène\nLevier: Polyamide renforcé', 'img/article/table/img4.jpg', 3, 3),
(9, 'stornas', 10, 289, 0, 'Plateau/ Rallonge/ Piètement/ Pied: Pin massif, Teinté, vernis acrylique incolore\nCroisillon: Pin massif\nTirette: bouleau massif', 'img/article/table/img5.jpg', 3, 3),
(10, 'gamleby', 6, 229, 0, 'Plateau/ Traverse longitudinale/ Pied/ Traverse/ Face de tiroir/ Côté de tiroir/ \nArrière de tiroir: Pin massif, Teinté, vernis acrylique incolore\nFond de tiroir: Panneau de fibres de bois', 'img/article/table/img6.jpg', 3, 3),
(11, 'MÖCKELBY', 2, 379, 0, 'Pied/ Traverse latérale: acier, Chromé\nGuidage: aluminium\nPlateau: Verre trempé\nTraverse: polyacétals\nFixation: polypropylène\nLevier: Polyamide renforcé', 'img/article/table/img7.jpg', 3, 3),
(12, 'HENRIKSDAL', 30, 70, 0, 'Pied/ Traverse avant/ Traverse latérale: Chêne massif, Vernis acrylique teinté\r\nDossier: Mousse polyuréthane 25 kg/m3\r\nAssise: rembourrage polyester, Mousse polyuréthane à haute résilience (mousse froide) 35 kg/m3\r\nToile blanche: tissu polypropylène', 'img/article/assise/as01.jpg', 1, 1),
(13, 'INGOLF', 10, 75, 0, 'Chaise: Pin massif, Teinté, vernis acrylique incolore\nRepose-pieds: acier, Revêtement (poudre)', 'img/article/assise/as02.jpg', 1, 1),
(14, 'DALFRED', 5, 39.6, 0, 'Structure: bouleau massif, peinture acrylique\nRepose-pieds/ Plaque de fixation: acier, peinture époxy/polyester en poudre\nColonne à vis: acier, Plastique polyamide', 'img/article/assise/as03.jpg', 1, 1),
(15, 'BOSSE', 10, 35, 0, 'Pied/ Assise: bouleau massif, vernis acrylique incolore\nRepose-pieds: acier, zingué', 'img/article/assise/as04.jpg', 1, 1),
(16, 'STEFAN', 4, 19, 0, 'Pin massif, Teinté, vernis acrylique incolore', 'img/article/assise/as05.jpg', 1, 1),
(17, 'NORRARYD', 7, 69, 0, 'Structure: hêtre massif, Teinté, vernis acrylique incolore\nAssise: Placage bois en lamellé-collé moulé, placage hêtre, Teinté, vernis acrylique incolore\nDossier: Placage bois en lamellé-collé moulé, hêtre massif, Teinté, vernis acrylique incolore', 'img/article/assise/as06.jpg', 1, 1),
(18, 'SÄLLSKAP', 50, 79, 0, 'Composants principaux: Pin massif, Couches moulées de panneau de fibres de bois , Teinté, vernis acrylique incolore\nFond de tiroir: Panneau de fibres de bois, vernis acrylique incolore', 'img/article/assise/as07.jpg', 1, 1),
(19, 'TERJE', 20, 11, 0, 'hêtre massif, Teinté, vernis acrylique incolore', 'img/article/assise/as08.jpg', 1, 1),
(20, 'KALLAX', 10, 55, 0, 'Étagère:\r\nPanneau de particules, Panneau de fibres de bois, peinture acrylique, papier, plastique ABS\r\n\r\nBloc porte:\r\nComposants principaux: Panneau de fibres de bois, Feuille décor\r\nPorte: Panneau de particules, Feuille décor, plastique ABS', 'img/article/rangement/rg05.jpg', 2, 2),
(21, 'LIXHULT', 3, 119, 0, 'acier, peinture époxy/polyester en poudr', 'img/article/rangement/rg06.jpg', 2, 2),
(22, 'Meuble bonjour', 54, 899.99, 10, 'meuble acceuillant ou pas ...', '', 3, 2),
(25, 'Lolipop', 10, 90, 0, 'Petit mobilier de jardin.', 'img\\article\\table\\imgres.jpg', 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `prospect`
--

CREATE TABLE `prospect` (
  `numeroProspect` int(11) NOT NULL,
  `nomProspect` varchar(40) NOT NULL,
  `prenomProspect` varchar(40) NOT NULL,
  `nomEntrepriseProspect` varchar(40) NOT NULL,
  `siretProspect` varchar(14) NOT NULL,
  `numVoieProspect` int(5) NOT NULL,
  `adresseProspect` varchar(40) NOT NULL,
  `complementProspect` varchar(40) NOT NULL,
  `villeProspect` varchar(40) NOT NULL,
  `codePostalProspect` varchar(10) NOT NULL,
  `paysProspect` varchar(40) NOT NULL,
  `mailProspect` varchar(40) NOT NULL,
  `numeroTelProspect` varchar(10) NOT NULL,
  `numeroRepresProspect` int(250) NOT NULL,
  `derniereVisiteProspect` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prospect`
--

INSERT INTO `prospect` (`numeroProspect`, `nomProspect`, `prenomProspect`, `nomEntrepriseProspect`, `siretProspect`, `numVoieProspect`, `adresseProspect`, `complementProspect`, `villeProspect`, `codePostalProspect`, `paysProspect`, `mailProspect`, `numeroTelProspect`, `numeroRepresProspect`, `derniereVisiteProspect`) VALUES
(1, 'ZorG', 'Mikeal', 'WoodYStock', '', 789, 'Avenue de la colombe', '', 'Tournai', '7500', 'Bulgarie', '', '', 2, '2016-10-14'),
(3, 'Blimm', 'Zaif', 'WoodyStak', '', 741, 'allée des Peuplier', '', 'Rouimstruk', '8968796', 'Bulgarie', '', '', 5, '2016-10-16'),
(4, 'Fring', 'Serge', 'Chocolatme', '', 36, 'rue du bas hameau', '', 'Roubaix', '59100', 'France', '', '0789564217', 6, '2015-10-20'),
(5, 'Nop', 'Nathalie', 'CPAM', '12345678965481', 54, 'rue du bas hameau', '', 'Roubaix', '59100', 'France', '', '0778450134', 7, '2016-10-20'),
(6, 'Boons', 'Michel', 'CAF', '12345678965482', 36, 'rue du bas hameau', '', 'Roubaix', '59100', 'France', '', '0578965423', 7, '2016-10-20'),
(7, 'Filass', 'Pierre', 'LDLC', '12345678965483', 87, 'rue du Ha hameau', '', 'Roubaix', '59100', 'France', '', '', 7, '2016-10-20'),
(8, 'Rupeur', 'Serge', 'ID LOG', '12345678965484', 13, 'Boulevard Jean Moulin ', '', 'Lille', '59000', 'France', '', '0756485471', 5, '2016-10-20'),
(9, 'Cellier', 'Jacques', 'NB rénovation', '12345678965485', 18, 'Place de la Mairie', '', 'Lille', '59000', 'France', '', '', 5, '2016-10-20'),
(10, 'Moropel', 'Anthony', 'lmc rénovation', '12345678965486', 14, 'rue du Maréchal Foch', '', 'Lille', '59000', 'France', '', '0965485213', 5, '2016-10-20'),
(11, 'Flou', 'Jean', 'cylande', '12345678965487', 78, 'Rue Puits de Charron', '', 'Paris', '75000', 'France', '', '0778456231', 5, '2016-10-14'),
(12, 'Dupont', 'Nathalie', 'Disney', '89751546542515', 996, 'Place du 11 Novembre', '', 'Bruxelles', '1000', 'Belgique', '', '0645876213', 6, '2016-10-14'),
(13, 'Dubois', 'Michel', 'GB web', '45312457678945', 415, 'rue Jean Jaures', '', 'Charleroi', '2500', 'Belgique', '', '', 6, '2016-10-14'),
(14, 'Devillers', 'Pierre', 'National Demolistion', '45678954621078', 312, 'Place des Resistants', '', 'Douai', '62000', 'France', '', '', 6, '2016-10-14'),
(15, 'Decamp', 'Serge', 'Oxypro', '78955644254825', 212, 'Place de la Convention', '', 'Houdain', '62000', 'France', '', '0978965423', 6, '2016-10-16'),
(16, 'Deschamps', 'Jacques', 'a Volute', '46654654564560', 156, 'avenue Aristide Briand', '', 'Londres', 'LD788', 'Angleterre', '', '', 5, '2016-10-16'),
(17, 'Amisky', 'Anthony', 'Krealid', '12345678965487', 127, 'Square de la République', '', 'Berlin', '1255', 'Allemagne', '', '', 5, '2016-10-16'),
(18, 'Lalane', 'Jean', 'BNP', '89751546542515', 55, 'Place du 11 Novembre', '', 'Paris', '95000', 'France', '', '078945642', 2, '2016-10-16'),
(19, 'Durand', 'Jacques', 'Camaieu', '45312457678945', 66, 'rue Jean Jaures', '', 'Bruxelles', '1000', 'Belgique', '', '079864572', 2, '2016-10-16'),
(20, 'Cerf', 'Anthony', 'GL Event', '46654654564560', 75, 'Place des Resistants', '', 'Charleroi', '2500', 'Belgique', '', '086521384', 2, '2016-10-16');

-- --------------------------------------------------------

--
-- Structure de la table `representants`
--

CREATE TABLE `representants` (
  `numeroRepresentant` int(11) NOT NULL,
  `nomRepresentant` varchar(40) NOT NULL,
  `prenomRepresentant` varchar(40) NOT NULL,
  `numeroVoieRepresentant` int(11) NOT NULL,
  `adresseRepresentant` varchar(70) NOT NULL,
  `complementAdresseRepresentant` varchar(70) NOT NULL,
  `villeRepresentant` varchar(40) NOT NULL,
  `codePostalRepresentant` varchar(10) NOT NULL,
  `paysRepresentant` varchar(40) NOT NULL,
  `mailRepresentant` varchar(40) NOT NULL,
  `numerotelRepresentant` varchar(12) NOT NULL,
  `salaireBrutRepresentant` double NOT NULL,
  `tauxComissionRepresentant` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `representants`
--

INSERT INTO `representants` (`numeroRepresentant`, `nomRepresentant`, `prenomRepresentant`, `numeroVoieRepresentant`, `adresseRepresentant`, `complementAdresseRepresentant`, `villeRepresentant`, `codePostalRepresentant`, `paysRepresentant`, `mailRepresentant`, `numerotelRepresentant`, `salaireBrutRepresentant`, `tauxComissionRepresentant`) VALUES
(1, 'Boons', 'Michel', 36, 'Rue Puits de Charron', '', 'Roubaix', '59100', 'France', 'boons@toutbois.fr', '0778506518 ', 1800, 1),
(2, 'Filass', 'Pierre', 87, 'Place du 11 Novembre', 'appart 8', 'Roubaix', '59100', 'France', 'filass@toutbois.fr', '0687790517 ', 1956, 1.8),
(5, 'Dupond', 'Michel', 78, 'rue seelong', 'appt 31', 'Tournai', '84879', 'Bulgarie', 'dupont@toutbois.fr', '0878787878', 1789, 1.4),
(6, 'lenomasupprime', 'billBoom', 45, 'rue du Luxembourg', 'bloc 4', 'Lille', '4896', 'Estonie', 'Boom@free.fr', '0454545454', 2689, 1.2),
(7, 'Deschamps', 'Matthieu', 75, 'rue de la paix', '', 'Mouscron', '5000', 'Belgique', 'deschamps@toutbois.fr', '0687522166', 1700, 1.7),
(8, 'Nop', 'Nathalie', 54, 'rue du bas hameau', 'Batiment 4', 'Roubaix', '59100', 'France', 'nop@toutbois.fr', '', 2560, 2),
(9, 'Rupeur', 'Serge', 13, 'rue Jean Jaures', '', 'Lille', '59000', 'France', 'rupeur@toutbois.fr', '', 2730, 1.5),
(10, 'Cellier', 'Jacques', 18, 'Place des Resistants', 'étage 5', 'Lille', '59000', 'France', 'cellier@toutbois.fr', '0597450309 ', 2655, 2);

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

CREATE TABLE `tva` (
  `id_TVA` int(11) NOT NULL,
  `tauxTVA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tva`
--

INSERT INTO `tva` (`id_TVA`, `tauxTVA`) VALUES
(1, 15),
(2, 20),
(3, 5),
(4, 18);

-- --------------------------------------------------------

--
-- Structure de la table `type_produit`
--

CREATE TABLE `type_produit` (
  `Id_typeProduit` int(11) NOT NULL,
  `libelleTypeProduit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type_produit`
--

INSERT INTO `type_produit` (`Id_typeProduit`, `libelleTypeProduit`) VALUES
(1, 'assise'),
(2, 'rangement'),
(3, 'table');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`numeroClient`),
  ADD KEY `FK_Clients_numeroRepresClient` (`numeroRepresClient`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `FK_Commandes_numeroClient` (`numeroClient`),
  ADD KEY `FK_Commandes_id_EtatCommande` (`id_EtatCommande`),
  ADD KEY `idFournisseur` (`idFournisseur`);

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`id_commande_contenir`,`codeProduit_contenir`),
  ADD KEY `FK_Contenir_codeProduit` (`codeProduit_contenir`);

--
-- Index pour la table `etatcommande`
--
ALTER TABLE `etatcommande`
  ADD PRIMARY KEY (`id_EtatCommande`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`idFournisseur`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`numeroClient`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`codeProduit`),
  ADD KEY `FK_Produit_id_TVA` (`id_TVA`),
  ADD KEY `FK_Produit_Id_typeProduit` (`Id_typeProduit`);

--
-- Index pour la table `prospect`
--
ALTER TABLE `prospect`
  ADD PRIMARY KEY (`numeroProspect`);

--
-- Index pour la table `representants`
--
ALTER TABLE `representants`
  ADD PRIMARY KEY (`numeroRepresentant`);

--
-- Index pour la table `tva`
--
ALTER TABLE `tva`
  ADD PRIMARY KEY (`id_TVA`);

--
-- Index pour la table `type_produit`
--
ALTER TABLE `type_produit`
  ADD PRIMARY KEY (`Id_typeProduit`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `numeroClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `etatcommande`
--
ALTER TABLE `etatcommande`
  MODIFY `id_EtatCommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `idFournisseur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `codeProduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `prospect`
--
ALTER TABLE `prospect`
  MODIFY `numeroProspect` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `representants`
--
ALTER TABLE `representants`
  MODIFY `numeroRepresentant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `tva`
--
ALTER TABLE `tva`
  MODIFY `id_TVA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `type_produit`
--
ALTER TABLE `type_produit`
  MODIFY `Id_typeProduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `RepresentantClients` FOREIGN KEY (`numeroRepresClient`) REFERENCES `representants` (`numeroRepresentant`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `CommandeClient` FOREIGN KEY (`numeroClient`) REFERENCES `clients` (`numeroClient`),
  ADD CONSTRAINT `CommandeEtatCommande` FOREIGN KEY (`id_EtatCommande`) REFERENCES `etatcommande` (`id_EtatCommande`),
  ADD CONSTRAINT `CommandeFournisseur` FOREIGN KEY (`idFournisseur`) REFERENCES `fournisseur` (`idFournisseur`);

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `contenirCommande` FOREIGN KEY (`id_commande_contenir`) REFERENCES `commandes` (`id_commande`),
  ADD CONSTRAINT `contenirProduit` FOREIGN KEY (`codeProduit_contenir`) REFERENCES `produit` (`codeProduit`);

--
-- Contraintes pour la table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `LoginClient` FOREIGN KEY (`numeroClient`) REFERENCES `clients` (`numeroClient`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produitTVA` FOREIGN KEY (`id_TVA`) REFERENCES `tva` (`id_TVA`),
  ADD CONSTRAINT `produitTypeProduit` FOREIGN KEY (`Id_typeProduit`) REFERENCES `type_produit` (`Id_typeProduit`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
