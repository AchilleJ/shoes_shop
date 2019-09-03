
CREATE DATABASE `chaussure_magasin` DEFAULT CHARACTER SET = `utf8`;
USE `chaussure_magasin`;


CREATE TABLE `marque` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `modele` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `chaussure` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `marque_id` int(11) unsigned NOT NULL,
  `modele_id` int(11) unsigned NOT NULL,
  `pointure` int(11) unsigned NOT NULL,
  `couleur` varchar(255) NOT NULL DEFAULT '',
  `prix` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fk_marque` (`marque_id`),
  KEY `fk_modele` (`modele_id`),
  CONSTRAINT `fk_marque` FOREIGN KEY (`marque_id`) REFERENCES `marque` (`id`),
  CONSTRAINT `fk_modele` FOREIGN KEY (`modele_id`) REFERENCES `modele` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `client` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL DEFAULT '',
  `prenom` varchar(255) NOT NULL DEFAULT '',
  `adresse_mail` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `commande` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) unsigned NOT NULL,
  `adresse_livraison` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fk_client` (`client_id`),
  CONSTRAINT `fk_client` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `chaussure_commande` (
  `chaussure_id` int(11) unsigned NOT NULL,
  `commande_id` int(11) unsigned NOT NULL,
  KEY `fk_chaussure` (`chaussure_id`),
  KEY `fk_commande` (`commande_id`),
  CONSTRAINT `fk_chaussure` FOREIGN KEY (`chaussure_id`) REFERENCES `chaussure` (`id`),
  CONSTRAINT `fk_commande` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`),
  PRIMARY KEY (`chaussure_id`, `commande_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

