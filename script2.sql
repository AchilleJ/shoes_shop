USE `chaussure_magasin`;

INSERT INTO marque (nom)
 VALUES
 ('marque1'),
 ('marque2'),
 ('marque3');

INSERT INTO modele (nom)
 VALUES
 ('botte'),
 ('basket'),
 ('talon');

INSERT INTO chaussure (marque_id, modele_id, pointure, couleur, prix)
 VALUES
 (1, 1, '40', 'bleu', 50 ),
 (1, 2, '41', 'noire', 60 ),
 (2, 3, '42', 'rouge', 70 );


INSERT INTO client (nom, prenom, adresse_mail)
 VALUES
 ('delafosse', 'jean', 'jean@gmail.com' ),
 ('bordure', 'jack', 'jack@gmail.com' ),
 ('yakumo', 'yukari', 'yukari@gmail.com');

INSERT INTO commande (client_id, adresse_livraison)
 VALUES
 (1,'20 rue x' ),
 (2,'30 rue y' ),
 (3,'45 rue z' );

 INSERT INTO chaussure_commande (chaussure_id, commande_id)
 VALUES
 (1,2),
 (1,3),
 (2,1);

 select * from client;