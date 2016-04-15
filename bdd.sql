-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 15 Avril 2016 à 15:51
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `csharptp3`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `link` varchar(200) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `nb_favoris` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created`, `link`, `source`, `nb_favoris`) VALUES
(21, 'ASSISTANT WEB - H/F', 'Entreprise : EVERTRADE est une société de commerce international spécialisée dans la distribution et l''exportation de lunettes optique et solaire de marques prestigieuses.Vous serez amené à :Participer à la mise à jour des opérations WebMarketing (partenariats, e-mailing...)Mise à...', '2016-02-29 09:47:19', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161366826W__________offre-d-emploi-assistant-web-h-f.html?numIdOffre=161366826W&selectedElement=0&sortsType=SCORE&sortsDirection=DESCENDING&nbParPage=', 'apec.fr', 0),
(22, 'Développeur Web H/F', 'Développeur PHP H/FParis 5ème - CDI Vous êtes un(e) développeur(se) passionné(e), vous êtes fier(ère) de vos tests unitaires ;Vous aimez créer de beaux codes élégants et qui fonctionnent bien.Vous aspirez à tester de nouvelles choses. Nous aussi ! Chez The other Store, nous offrons...', '2016-03-10 09:47:21', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161327375W__________offre-d-emploi-developpeur-web-h-f.html?numIdOffre=161327375W&selectedElement=1&sortsType=SCORE&sortsDirection=DESCENDING&nbParPag', 'apec.fr', 0),
(23, 'WEB ANALYST CONFIRMÉ(E) WEB & MOBILE H/F', 'Entreprise publique de premier plan, la FDJ (Française des jeux) détient le réseau de distribution le plus important de France. Nous proposons une offre attractive, récréative et innovante à près de 27 millions de français. Elle se décline en trois grandes catégories de jeux : les...', '2016-02-19 09:47:21', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161390501W__________offre-d-emploi-web-analyst-confirme-e-web-mobile-h-f.html?numIdOffre=161390501W&selectedElement=2&sortsType=SCORE&sortsDirection=D', 'apec.fr', 0),
(24, 'Chef de projet Web H/F', 'Entreprise : L&A Partners est un cabinet spécialisé dans la recherche de cadres et dirigeants en Assurance et Finance d’entreprise. Notre practice Assurance intervient principalement sur l’ensemble des fonctions supports et techniques de ce secteur. Dans le cadre d’un recrutement...', '2016-03-03 09:47:21', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161423645W__________offre-d-emploi-chef-de-projet-web-h-f.html?numIdOffre=161423645W&selectedElement=3&sortsType=SCORE&sortsDirection=DESCENDING&nbPar', 'apec.fr', 1),
(25, 'Web QA Engineer (H/F)', 'Entreprise :Mon client est une entreprise à dimension international spécialisé dans le marketing web et mobile.Aujourd''hui, leader incontesté en France et en Europe cette entreprise voit sa croissance augmenter de plus de 50% /an.Pour soutenir sa croissance, notre client recherche...', '2016-03-11 09:47:21', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161396239W__________offre-d-emploi-web-qa-engineer-h-f-.html?numIdOffre=161396239W&selectedElement=4&sortsType=SCORE&sortsDirection=DESCENDING&nbParPa', 'apec.fr', 0),
(26, 'Chef de Projet Web H/F', 'Chef de Projet Web (H/F)Société :Créé en 2011, notre client, DRONE VOLT, société française cotée en bourse, est un acteur majeur dans le domaine des drones civils. La société est spécialisée dans la fabrication, l’intégration et la vente de drones pour les professionnels. DRONE VOLT...', '2016-03-10 09:47:21', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161400699W__________offre-d-emploi-chef-de-projet-web-h-f.html?numIdOffre=161400699W&selectedElement=5&sortsType=SCORE&sortsDirection=DESCENDING&nbPar', 'apec.fr', 0),
(27, 'H/F Responsable Marketing Web', ' Notre client (concepteur et intégrateur de plateformes de services dédiées au coaching e-santé) recherche un(e) Responsable webmarketing et e-commerce, pour prendre en charge le marketing des programmes commercialisés : communication digitale, augmentation/acquisition de trafic,...', '2016-03-01 09:47:21', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161430964W__________offre-d-emploi-h-f-responsable-marketing-web.html?numIdOffre=161430964W&selectedElement=6&sortsType=SCORE&sortsDirection=DESCENDIN', 'apec.fr', 0),
(28, 'CHEF DE PROJET WEB H/F', 'Entreprise : Le Groupe Henner est un groupe international pionnier et leader dans la conception et la gestion de solutions d’assurance pour les particuliers, les professionnels et les entreprises. Présents en France (siège social à Paris) comme à l’international, le Groupe Henner...', '2016-02-28 09:47:21', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161371405W__________offre-d-emploi-chef-de-projet-web-h-f.html?numIdOffre=161371405W&selectedElement=7&sortsType=SCORE&sortsDirection=DESCENDING&nbPar', 'apec.fr', 0),
(29, 'Assistant Chef de projet Web H/F', 'Gitec, acteur majeur du monde de l’emploi depuis plus de 35 ans, recrute pour une entreprise située dans le département 92 un(e) Assistant Chef de projet Web (H/F)  : MISSIONS :Au sein du Département Publicité, vous serez notamment chargé(e) de :- Animation des sites Internet  (sites...', '2016-03-07 09:47:21', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161412779W__________offre-d-emploi-assistant-chef-de-projet-web-h-f.html?numIdOffre=161412779W&selectedElement=8&sortsType=SCORE&sortsDirection=DESCEN', 'apec.fr', 0),
(30, 'Assistant(e) Chef de Projet Web H/F', 'Qualis Travail Temporaire (Intérim, CDD, CDI) à Montrouge, agence spécialisée sur les secteurs tertiaire et informatique recrute pour l''un de ces clients, un constructeur automobile :Assistant Chef de Projet Web H/FMISSIONS : Au sein du Département Publicité, vous serez notamment...', '2016-03-10 09:47:21', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161409911W__________offre-d-emploi-assistant-e-chef-de-projet-web-h-f.html?numIdOffre=161409911W&selectedElement=9&sortsType=SCORE&sortsDirection=DESC', 'apec.fr', 0),
(31, 'Assistant Chef de Projet Web H/F', 'Entreprise :Recruteam, cabinet de recrutement à dimension humaine proche de votre environnement, recherche pour un de ses clients, un Assistant Chef de Projet Web H/F.Poste et missions : Au sein du Département Publicité, vous serez notamment chargé(e) de :- Animation des sites Internet...', '2016-03-10 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161400145W__________offre-d-emploi-assistant-chef-de-projet-web-h-f.html?numIdOffre=161400145W&selectedElement=10&sortsType=SCORE&sortsDirection=DESCE', 'apec.fr', 1),
(32, 'Chef de projet web expérimenté H/F', 'Fondé et animé depuis plusieurs années par des experts du e-commerce et plus largement du digital, Call to Action est un cabinet qui n’a qu’une seule vocation : mettre au service de ses clients un réseau de compétences et de savoir-faire pour mener à bien leurs projets de mutation...', '2016-03-03 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161419637W__________offre-d-emploi-chef-de-projet-web-experimente-h-f.html?numIdOffre=161419637W&selectedElement=11&sortsType=SCORE&sortsDirection=DES', 'apec.fr', 0),
(33, 'Un(e) Chef de projet Web-Marketing H/F', 'Entreprise :Grand Groupe de Presse spécialisé dans le Secteur Automobile recherche dans le cadre de son développement, « Un(e) Responsable Marketing Editeur H/F » Poste et missions : Rattaché au service Marketing, vous aurez pour missions :• Piloter et optimiser un site internet ;•...', '2016-02-24 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161379423W__________offre-d-emploi-un-e-chef-de-projet-web-marketing-h-f.html?numIdOffre=161379423W&selectedElement=12&sortsType=SCORE&sortsDirection=', 'apec.fr', 0),
(34, 'CHEF DE PROJET WEB FONCTIONNEL (H/F)', 'Entreprise :Aquent est l''agence mondiale de recrutement spécialisée sur les métiers du marketing, de la création et du digital en Europe, aux Etats Unis et en Asie-Pacifique. Elle aide les marques à recruter leurs équipes pour mener leur transformation digitale. Aquent s''appuie sur...', '2016-03-03 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161417603W__________offre-d-emploi-chef-de-projet-web-fonctionnel-h-f-.html?numIdOffre=161417603W&selectedElement=13&sortsType=SCORE&sortsDirection=DE', 'apec.fr', 0),
(35, 'Expert(e) Web LAMP PHP H/F', 'Entreprise :Rejoignez un employeur qui se distingue ! Sogeti France (filiale du groupe Capgemini) a été élu 11ème meilleur employeur du secteur High Tech. Entreprise de Services du Numérique, Sogeti France accompagne la transformation des entreprises dans 4 domaines : Digital, Testing,...', '2016-03-10 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161409575W__________offre-d-emploi-expert-e-web-lamp-php-h-f.html?numIdOffre=161409575W&selectedElement=14&sortsType=SCORE&sortsDirection=DESCENDING&n', 'apec.fr', 0),
(36, 'H/F GESTIONNAIRE WEB- COMMUNITY MANAGER', 'Entreprise :Fabricant et distributeur de produits cosmétiques naturels.Poste :Ce Chef de projet web est le référent web dans l’entreprise. Il recueille à la fois les besoins, évalue la faisabilité technique du projet ainsi que sa pertinence en fonction de l’environnement économique,...', '2016-02-18 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161378206W__________offre-d-emploi-h-f-gestionnaire-web-community-manager.html?numIdOffre=161378206W&selectedElement=15&sortsType=SCORE&sortsDirection', 'apec.fr', 0),
(37, 'H/F Graphiste Webdesigner - Web Marketing', 'L’entrepriseSelectra est une start-up spécialisée dans la comparaison des fournisseurs d’énergie et d’accès à internet.  Avec 12 millions de visiteurs par an sur ses sites Internet et une équipe de 200 collaborateurs dans le monde, Selectra est leader du marché français. La société...', '2016-02-22 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161385940W__________offre-d-emploi-h-f-graphiste-webdesigner-web-marketing.html?numIdOffre=161385940W&selectedElement=16&sortsType=SCORE&sortsDirectio', 'apec.fr', 0),
(38, 'Chef de projet Web - Agence Web E-commerce - CDI - Cachan H/F', 'Chef de projet Web - Agence Web E-commerce - CDI - CachanCompétences : PHP, Javascript, MagentoLocalisation : ParisSalaire : 38/40K€ + Mutuelle + 100% des transports La société :Notre client, Agence web spécialisée dans le e-commerce recherche dans le cadre d''une forte croissance...', '2016-03-01 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161429141W__________offre-d-emploi-chef-de-projet-web-agence-web-e-commerce-cdi-cachan-h-f.html?numIdOffre=161429141W&selectedElement=17&sortsType=SCO', 'apec.fr', 0),
(39, 'Commercial Néerlandais dans le Web - Dutch Sales Rep in Web sector H/F', '(English description at the bottom of the French one) Notre client est une structure internationale spécialisée dans le ecommerce. Ils sont basés au centre de Paris dans de nouveaux locaux très lumineux offrant une très belle terrasse pour les beaux jours.Cette structure se développe...', '2016-03-14 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161404809W__________offre-d-emploi-commercial-neerlandais-dans-le-web-dutch-sales-rep-in-web-sector-h-f.html?numIdOffre=161404809W&selectedElement=18&', 'apec.fr', 0),
(40, 'Commercial Allemand dans le Web - German Sales Rep in Web sector H/F', '(English description at the bottom of the French one) Notre client est une structure internationale spécialisée dans le ecommerce. Ils sont basés au centre de Paris dans de nouveaux locaux très lumineux offrant une très belle terrasse pour les beaux jours.Cette structure se développe...', '2016-03-14 09:47:22', 'https://cadres.apec.fr/offres-emploi-cadres/0_0_0_161404718W__________offre-d-emploi-commercial-allemand-dans-le-web-german-sales-rep-in-web-sector-h-f.html?numIdOffre=161404718W&selectedElement=19&so', 'apec.fr', 0);

-- --------------------------------------------------------

--
-- Structure de la table `custom_tags`
--

CREATE TABLE IF NOT EXISTS `custom_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE IF NOT EXISTS `favoris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_user`,`id_article`),
  KEY `id_user` (`id_user`),
  KEY `id_article` (`id_article`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `favoris`
--

INSERT INTO `favoris` (`id`, `id_user`, `id_article`) VALUES
(4, 4, 24),
(12, 4, 31);

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`id`, `label`) VALUES
(1, 'projet'),
(2, 'webdesigner'),
(4, 'oracle'),
(5, 'php'),
(7, 'c#'),
(8, 'javascript');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `Prenom` varchar(300) NOT NULL,
  `MotDePasse` varchar(300) NOT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Prenom_UNIQUE` (`Prenom`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`Prenom`, `MotDePasse`, `Id`) VALUES
('baptiste', 'CB-E5-E8-21-0C-03-95-6C-5F-F3-AC-E2-1F-6C-69-08', 2),
('clement', '14-5B-22-78-25-5F-20-8A-5B-79-0F-84-F0-DA-60-52', 3),
('test', '56-63-58-BA-13-A6-A0-1D-99-FE-54-92-71-16-9B-98', 4),
('test2', '0B-D1-EA-9D-97-DF-97-CE-A2-C1-51-F1-40-48-C1-AD', 5);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs_has_tags`
--

CREATE TABLE IF NOT EXISTS `utilisateurs_has_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_user`,`id_tag`),
  KEY `id_user` (`id_user`),
  KEY `id_tag` (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `custom_tags`
--
ALTER TABLE `custom_tags`
  ADD CONSTRAINT `custom_tags_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `utilisateurs` (`Id`);

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `favoris_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `utilisateurs` (`Id`),
  ADD CONSTRAINT `favoris_ibfk_2` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`);

--
-- Contraintes pour la table `utilisateurs_has_tags`
--
ALTER TABLE `utilisateurs_has_tags`
  ADD CONSTRAINT `utilisateurs_has_tags_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `utilisateurs` (`Id`),
  ADD CONSTRAINT `utilisateurs_has_tags_ibfk_2` FOREIGN KEY (`id_tag`) REFERENCES `tags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
