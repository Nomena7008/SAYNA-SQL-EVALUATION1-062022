+++++++++++++++ => Mise à jour de la base de donnée +++++++++++++++

Voici la requêtte utilisée pour:

/le nouveau adherents::

SELECT * FROM biblio.adherents;
INSERT INTO `biblio`.`adherents` (`nom`, `prenom`, `adr`, `tel`)
VALUES ('Dupon', 'Olivier', '76 quai de la Loire, 75019 Paris', '0102030405');

