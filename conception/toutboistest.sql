-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           10.1.16-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win32
-- HeidiSQL Version:             9.3.0.5120
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour toutboistest
CREATE DATABASE IF NOT EXISTS `toutboistest` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `toutboistest`;

-- Export de la structure de la table toutboistest. clients
CREATE TABLE IF NOT EXISTS `clients` (
  `numeroClient` int(11) NOT NULL AUTO_INCREMENT,
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
  `codePostalClient` varchar(50) NOT NULL,
  PRIMARY KEY (`numeroClient`),
  KEY `FK_Clients_numeroRepresClient` (`numeroRepresClient`),
  CONSTRAINT `RepresentantClients` FOREIGN KEY (`numeroRepresClient`) REFERENCES `representants` (`numeroRepresentant`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.clients : ~14 rows (environ)
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
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
	(25, 'aVolute', '46654654564560', 5, 'Deschamps', 'Jacques', 156, 'avenue Aristide Briand', 'étage 5', 'Angleterre', '', '', 'Londres', 'LD788'),
	(27, 'Krealid', '12345678965487', 5, 'Amisky', 'Anthony', 127, 'Square de la République', '', 'Allemagne', '', '0789564217', 'Berlin', '1255'),
	(30, 'BNP', '89751546542515', 2, 'Lalane', 'Jean', 55, 'Place du 11 Novembre', 'appart 32', 'France', 'lalne@bnp.fr', '0778506518', 'Paris', '95000'),
	(40, 'Camaieu', '45312457678945', 2, 'Durand', 'Jacques', 66, 'rue Jean Jaures', '', 'Belgique', '', '0687790544', 'Bruxelles', '1000'),
	(57, 'GL Event', '46654654564560', 2, 'Cerf', 'Anthony', 75, 'Place des Resistants', '', 'Belgique', 'cerf@glevent.com', '', 'Charleroi', '2500');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. commandes
CREATE TABLE IF NOT EXISTS `commandes` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `dateCommande` date NOT NULL,
  `dateLivraisonCommande` date DEFAULT NULL,
  `numeroClient` int(11) DEFAULT NULL,
  `id_EtatCommande` int(11) NOT NULL,
  `numeroFournisseur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `FK_Commandes_numeroClient` (`numeroClient`),
  KEY `FK_Commandes_id_EtatCommande` (`id_EtatCommande`),
  KEY `numeroFournisseur` (`numeroFournisseur`),
  CONSTRAINT `CommandeClient` FOREIGN KEY (`numeroClient`) REFERENCES `clients` (`numeroClient`),
  CONSTRAINT `CommandeEtatCommande` FOREIGN KEY (`id_EtatCommande`) REFERENCES `etatcommande` (`id_EtatCommande`),
  CONSTRAINT `FK_commandes_fournisseur` FOREIGN KEY (`numeroFournisseur`) REFERENCES `fournisseur` (`idFournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.commandes : ~10 rows (environ)
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
INSERT INTO `commandes` (`id_commande`, `dateCommande`, `dateLivraisonCommande`, `numeroClient`, `id_EtatCommande`, `numeroFournisseur`) VALUES
	(1, '2016-12-19', '2016-12-23', 11, 1, NULL),
	(2, '2016-12-19', '2016-12-20', 11, 4, NULL),
	(3, '2016-12-19', '2016-12-27', 13, 4, NULL),
	(10, '2016-12-19', '2016-12-19', 8, 1, NULL),
	(11, '2016-12-19', '2016-12-19', 8, 1, NULL),
	(12, '2016-12-19', '2016-12-19', 8, 1, NULL),
	(13, '2016-12-19', '2016-12-27', 8, 1, NULL),
	(50, '2016-12-19', '2016-12-19', 8, 1, NULL),
	(60, '2016-12-19', '2016-12-27', 8, 1, NULL),
	(61, '2016-12-20', NULL, 11, 1, NULL),
	(62, '2017-01-10', '2017-01-10', NULL, 2, 58),
	(63, '2017-01-10', '2017-01-10', NULL, 1, 58),
	(64, '2017-01-10', '2017-01-10', NULL, 4, 1);
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. contenir
CREATE TABLE IF NOT EXISTS `contenir` (
  `quantite` int(11) NOT NULL,
  `id_commande_Contenir` int(11) NOT NULL,
  `codeProduit_contenir` int(11) NOT NULL,
  PRIMARY KEY (`id_commande_Contenir`,`codeProduit_contenir`),
  KEY `FK_Contenir_codeProduit` (`codeProduit_contenir`),
  CONSTRAINT `contenirCommande` FOREIGN KEY (`id_commande_Contenir`) REFERENCES `commandes` (`id_commande`),
  CONSTRAINT `contenirProduit` FOREIGN KEY (`codeProduit_contenir`) REFERENCES `produit` (`codeProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.contenir : ~9 rows (environ)
/*!40000 ALTER TABLE `contenir` DISABLE KEYS */;
INSERT INTO `contenir` (`quantite`, `id_commande_Contenir`, `codeProduit_contenir`) VALUES
	(10, 1, 1),
	(5, 1, 2),
	(2, 1, 18),
	(10, 2, 7),
	(5, 2, 8),
	(5, 2, 13),
	(8, 3, 2),
	(20, 3, 9),
	(78, 61, 1);
/*!40000 ALTER TABLE `contenir` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. etatcommande
CREATE TABLE IF NOT EXISTS `etatcommande` (
  `id_EtatCommande` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_EtatCommande` varchar(30) NOT NULL,
  PRIMARY KEY (`id_EtatCommande`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.etatcommande : ~4 rows (environ)
/*!40000 ALTER TABLE `etatcommande` DISABLE KEYS */;
INSERT INTO `etatcommande` (`id_EtatCommande`, `libelle_EtatCommande`) VALUES
	(1, 'Commande validée'),
	(2, 'Commande livrée'),
	(3, 'Commande perdue'),
	(4, 'Commande expédiée');
/*!40000 ALTER TABLE `etatcommande` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. fournisseur
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `idFournisseur` int(11) NOT NULL AUTO_INCREMENT,
  `nomEntrepriseFournisseur` varchar(30) NOT NULL DEFAULT '0',
  `siretFournisseur` varchar(14) NOT NULL DEFAULT '0',
  `nomContactFournisseur` varchar(30) DEFAULT 'pas de contact',
  `prenomContactFournisseur` varchar(30) DEFAULT 'pas de contact',
  `numVoieFournisseur` int(5) NOT NULL DEFAULT '0',
  `adresseFournisseur` varchar(50) NOT NULL DEFAULT '0',
  `complementAdresseFournisseur` varchar(50) NOT NULL DEFAULT '0',
  `villeFournisseur` varchar(50) NOT NULL DEFAULT '0',
  `mailFournisseur` varchar(50) DEFAULT 'pas de mail',
  `numeroTelephoneFournisseur` varchar(50) DEFAULT 'pas de numéro de téléphone',
  `paysFournisseur` varchar(30) NOT NULL DEFAULT '0',
  `codePostalFournisseur` varchar(10) NOT NULL DEFAULT '0',
  `login` varchar(50) DEFAULT 'admin',
  `mdp` varchar(50) DEFAULT 'admin',
  PRIMARY KEY (`idFournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.fournisseur : ~1 rows (environ)
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` (`idFournisseur`, `nomEntrepriseFournisseur`, `siretFournisseur`, `nomContactFournisseur`, `prenomContactFournisseur`, `numVoieFournisseur`, `adresseFournisseur`, `complementAdresseFournisseur`, `villeFournisseur`, `mailFournisseur`, `numeroTelephoneFournisseur`, `paysFournisseur`, `codePostalFournisseur`, `login`, `mdp`) VALUES
	(1, 'Auchan', '12345678974125', 'pas de contact', 'pas de contact', 36, 'rue de lapaix', '0', 'Roubaix', 'pas de mail', 'pas de numéro de téléphone', 'France', '59100', 'admin', 'admin'),
	(58, 'Ikea', '12345678963215', 'Petit', 'Pierre', 99, 'boulevard de strasbourg', '0', 'Lille', 'pas de mail', 'pas de numéro de téléphone', 'France', '59000', 'admin', 'admin');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. login
CREATE TABLE IF NOT EXISTS `login` (
  `numeroClient` int(11) NOT NULL,
  `passwordCrypterMD5` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`numeroClient`),
  CONSTRAINT `LoginClient` FOREIGN KEY (`numeroClient`) REFERENCES `clients` (`numeroClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.login : ~14 rows (environ)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`numeroClient`, `passwordCrypterMD5`, `password`) VALUES
	(2, '57a527d8b1d222d8dd37795e1e2c46ab', 'AuRo1509'),
	(3, '9e65c88474006ab8939dff5739e9884e', 'CaLi1310'),
	(8, '85e5eeeed3399ad1d0352a28866c4b6a', 'AfAt1311'),
	(10, '441b79a783013444504991ce093e7382', 'lmFr1118'),
	(11, '11', 'cyFr1435'),
	(12, '2d6bcab50367c9faee9666ef452f4b68', 'DiBe1205'),
	(13, '365a3ee12f306b35ce7ae7b7dccf0fae', 'GBBe1981'),
	(22, '6ec158821f1a3072c3a9a768517b7dc6', 'NaFr1791'),
	(24, '72e63995a9bbbf94fcf4b09167a7a351', 'OxFr1195'),
	(25, '5de19f1a108e04a715f6d4a9f672109f', 'aVAn1585'),
	(27, 'a66cc51524f0a38629bf187362bb1707', 'KrAl1359'),
	(30, '21e9876ec3fb4824eeaab4954e7d2efa', 'BNFr1564'),
	(40, 'f59c1199efa9d07a73ee9878b47d9ef9', 'CaBe1489'),
	(57, '7ebc31b879bc00f110ca7727e2829f44', 'GLBe1220');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. produit
CREATE TABLE IF NOT EXISTS `produit` (
  `codeProduit` int(11) NOT NULL AUTO_INCREMENT,
  `libelleProduit` varchar(50) NOT NULL,
  `stockProduit` int(11) NOT NULL,
  `prixUnitaireProduit` double NOT NULL,
  `remiseProduit` float DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `id_TVA` int(11) NOT NULL,
  `Id_typeProduit` int(11) NOT NULL,
  PRIMARY KEY (`codeProduit`),
  KEY `FK_Produit_id_TVA` (`id_TVA`),
  KEY `FK_Produit_Id_typeProduit` (`Id_typeProduit`),
  CONSTRAINT `produitTVA` FOREIGN KEY (`id_TVA`) REFERENCES `tva` (`id_TVA`),
  CONSTRAINT `produitTypeProduit` FOREIGN KEY (`Id_typeProduit`) REFERENCES `type_produit` (`Id_typeProduit`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.produit : ~21 rows (environ)
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` (`codeProduit`, `libelleProduit`, `stockProduit`, `prixUnitaireProduit`, `remiseProduit`, `description`, `Image`, `id_TVA`, `Id_typeProduit`) VALUES
	(1, 'Billy', 50, 49, 5, 'Tablettes réglables : à placer selon vos besoins. Un seul élément peut servir de rangement dans un espace retreint, ou servir de base pour une solution de rangement plus importante lorsque les besoins évoluent. ', 'img/article/rangement/rg01.jpg', 1, 2),
	(2, 'Billy / Oxberg', 20, 338.5, 0, 'Bibliothèque:\r\nComposants principaux: Panneau de particules, placage frêne, papier, Teinté, vernis acrylique incolor', 'img/article/rangement/rg02.jpg', 2, 2),
	(3, 'Billy /Bib\'s', 10, 147, 2, 'Composants principaux: Panneau de particules, papier, placage bouleau, vernis acrylique incolore\r\nDos: Panneau de fibres de bois', 'img/article/rangement/rg03.jpg', 2, 2),
	(4, 'Billy / bibliothèque', 5, 69.9, 0, 'Composants principaux: Panneau de particules, placage chêne, papier, vernis acrylique incolore', 'img/article/rangement/rg04.jpg', 2, 2),
	(5, 'BJURSTA  ', 8, 159.9, 4, 'Plateau/ Rallonge/ Pied: Panneau de particules, placage frêne, Teinté, vernis acrylique incolore\nPiètement: Pin massif, placage frêne, Teinté, vernis acrylique incolore\nTraverse/ Tirette: bois massif', 'img/article/table/img1.jpg', 3, 3),
	(6, 'Norden', 12, 199, 2.7, 'Plateau/ Rallonge/ Piètement: bouleau massif, vernis acrylique incolore\nTirette/ Croisillon: bouleau massif', 'img/article/table/img2.jpg', 3, 3),
	(7, 'ingatorp', 50, 289, 1, 'Plateau: Panneau de particules, plastique ABS, Teinté, vernis acrylique incolore, placage frêne\nRallonge: Panneau de particules, Plastique, Teinté, vernis acrylique incolore, placage frêne\nPied/ Traverse longitudinale: hêtre massif, Teinté, vernis acryliq', 'img/article/table/img3.jpg', 3, 3),
	(8, 'GLIvarp', 48, 179, 0, 'Pied/ Traverse latérale: acier, Chromé\nGuidage: aluminium\nPlateau: Verre trempé\nTraverse: polyacétals\nFixation: polypropylène\nLevier: Polyamide renforcé', 'img/article/table/img4.jpg', 3, 3),
	(9, 'stornas', 10, 289, 0, 'Plateau/ Rallonge/ Piètement/ Pied: Pin massif, Teinté, vernis acrylique incolore\nCroisillon: Pin massif\nTirette: bouleau massif', 'img/article/table/img5.jpg', 3, 3),
	(10, 'gamleby', 6, 229, 0, 'Plateau/ Traverse longitudinale/ Pied/ Traverse/ Face de tiroir/ Côté de tiroir/ \nArrière de tiroir: Pin massif, Teinté, vernis acrylique incolore\nFond de tiroir: Panneau de fibres de bois', 'img/article/table/img6.jpg', 3, 3),
	(11, 'MÖCKELBY', 2, 379, 4, 'Pied/ Traverse latérale: acier, Chromé\nGuidage: aluminium\nPlateau: Verre trempé\nTraverse: polyacétals\nFixation: polypropylène\nLevier: Polyamide renforcé', 'img/article/table/img7.jpg', 3, 3),
	(12, 'HENRIKSDAL', 30, 100, 10, 'Pied/ Traverse avant/ Traverse latérale: Chêne massif, Vernis acrylique teinté\nDossier: Mousse polyuréthane 25 kg/m3\nAssise: rembourrage polyester, Mousse polyuréthane à haute résilience (mousse froide) 35 kg/m3\nToile blanche: tissu polypropylène', 'img/article/assise/as01.jpg', 1, 1),
	(13, 'INGOLF', 10, 75, 0, 'Chaise: Pin massif, Teinté, vernis acrylique incolore\nRepose-pieds: acier, Revêtement (poudre)', 'img/article/assise/as02.jpg', 1, 1),
	(14, 'DALFRED', 5, 39.6, 0, 'Structure: bouleau massif, peinture acrylique\nRepose-pieds/ Plaque de fixation: acier, peinture époxy/polyester en poudre\nColonne à vis: acier, Plastique polyamide', 'img/article/assise/as03.jpg', 1, 1),
	(15, 'BOSSE', 10, 35, 0, 'Pied/ Assise: bouleau massif, vernis acrylique incolore\nRepose-pieds: acier, zingué', 'img/article/assise/as04.jpg', 1, 1),
	(16, 'STEFAN', 4, 19, 0, 'Pin massif, Teinté, vernis acrylique incolore', 'img/article/assise/as05.jpg', 1, 1),
	(17, 'NORRARYD', 7, 69, 0, 'Structure: hêtre massif, Teinté, vernis acrylique incolore\nAssise: Placage bois en lamellé-collé moulé, placage hêtre, Teinté, vernis acrylique incolore\nDossier: Placage bois en lamellé-collé moulé, hêtre massif, Teinté, vernis acrylique incolore', 'img/article/assise/as06.jpg', 1, 1),
	(18, 'SÄLLSKAP', 50, 79, 0, 'Composants principaux: Pin massif, Couches moulées de panneau de fibres de bois , Teinté, vernis acrylique incolore\nFond de tiroir: Panneau de fibres de bois, vernis acrylique incolore', 'img/article/assise/as07.jpg', 1, 1),
	(19, 'TERJE', 20, 11, 0, 'hêtre massif, Teinté, vernis acrylique incolore', 'img/article/assise/as08.jpg', 1, 1),
	(20, 'KALLAX', 10, 55, 0, 'Étagère:\nPanneau de particules, Panneau de fibres de bois, peinture acrylique, papier, plastique ABS\n\nBloc porte:\nComposants principaux: Panneau de fibres de bois, Feuille décor\nPorte: Panneau de particules, Feuille décor, plastique ABS', 'img/article/rangement/rg05.jpg', 2, 2),
	(121, 'LIXHULT', 3, 119, 2, 'acier, peinture époxy/polyester en poudr', 'img/article/rangement/rg06.jpg', 2, 2);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. prospect
CREATE TABLE IF NOT EXISTS `prospect` (
  `numeroProspect` int(11) NOT NULL AUTO_INCREMENT,
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
  `derniereVisiteProspect` date NOT NULL,
  PRIMARY KEY (`numeroProspect`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.prospect : ~19 rows (environ)
/*!40000 ALTER TABLE `prospect` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `prospect` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. representants
CREATE TABLE IF NOT EXISTS `representants` (
  `numeroRepresentant` int(11) NOT NULL AUTO_INCREMENT,
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
  `tauxComissionRepresentant` double NOT NULL,
  PRIMARY KEY (`numeroRepresentant`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.representants : ~8 rows (environ)
/*!40000 ALTER TABLE `representants` DISABLE KEYS */;
INSERT INTO `representants` (`numeroRepresentant`, `nomRepresentant`, `prenomRepresentant`, `numeroVoieRepresentant`, `adresseRepresentant`, `complementAdresseRepresentant`, `villeRepresentant`, `codePostalRepresentant`, `paysRepresentant`, `mailRepresentant`, `numerotelRepresentant`, `salaireBrutRepresentant`, `tauxComissionRepresentant`) VALUES
	(1, 'Boons', 'Michel', 36, 'Rue Puits de Charron', '', 'Roubaix', '59100', 'France', 'boons@toutbois.fr', '0778506518 ', 1800, 1),
	(2, 'Filass', 'Pierre', 87, 'Place du 11 Novembre', 'appart 8', 'Roubaix', '59100', 'France', 'filass@toutbois.fr', '0687790517 ', 1956, 1.8),
	(5, 'Dupond', 'Michel', 78, 'rue seelong', 'appt 31', 'Tournai', '84879', 'Bulgarie', 'dupont@toutbois.fr', '0878787878', 1789, 1.4),
	(6, 'lenomasupprime', 'billBoom', 45, 'rue du Luxembourg', 'bloc 4', 'Lille', '4896', 'Estonie', 'Boom@free.fr', '0454545454', 2689, 1.2),
	(7, 'Deschamps', 'Matthieu', 75, 'rue de la paix', '', 'Mouscron', '5000', 'Belgique', 'deschamps@toutbois.fr', '0687522166', 1700, 1.7),
	(8, 'Nop', 'Nathalie', 54, 'rue du bas hameau', 'Batiment 4', 'Roubaix', '59100', 'France', 'nop@toutbois.fr', '', 2560, 2),
	(9, 'Rupeur', 'Serge', 13, 'rue Jean Jaures', '', 'Lille', '59000', 'France', 'rupeur@toutbois.fr', '', 2730, 1.5),
	(10, 'Cellier', 'Jacques', 18, 'Place des Resistants', 'étage 5', 'Lille', '59000', 'France', 'cellier@toutbois.fr', '0597450309 ', 2655, 2);
/*!40000 ALTER TABLE `representants` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. tva
CREATE TABLE IF NOT EXISTS `tva` (
  `id_TVA` int(11) NOT NULL AUTO_INCREMENT,
  `tauxTVA` float NOT NULL,
  PRIMARY KEY (`id_TVA`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.tva : ~4 rows (environ)
/*!40000 ALTER TABLE `tva` DISABLE KEYS */;
INSERT INTO `tva` (`id_TVA`, `tauxTVA`) VALUES
	(1, 15),
	(2, 20),
	(3, 5),
	(4, 18);
/*!40000 ALTER TABLE `tva` ENABLE KEYS */;

-- Export de la structure de la table toutboistest. type_produit
CREATE TABLE IF NOT EXISTS `type_produit` (
  `Id_typeProduit` int(11) NOT NULL AUTO_INCREMENT,
  `libelleTypeProduit` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_typeProduit`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Export de données de la table toutboistest.type_produit : ~3 rows (environ)
/*!40000 ALTER TABLE `type_produit` DISABLE KEYS */;
INSERT INTO `type_produit` (`Id_typeProduit`, `libelleTypeProduit`) VALUES
	(1, 'assise'),
	(2, 'rangement'),
	(3, 'table');
/*!40000 ALTER TABLE `type_produit` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
