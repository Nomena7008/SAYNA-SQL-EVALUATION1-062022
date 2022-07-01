=========> Table adhernts::

SELECT * FROM biblio.adherents;
SELECT COUNT(*) FROM adherents;

//----RESULTATS----//
COUNT(*)
30

===========> Table emprunter::

SELECT * FROM biblio.emprunter;
SELECT COUNT(*) FROM emprunter;

//----RESULTATS----//
COUNT(*)
33

===========> Table livres::

SELECT * FROM biblio.livres;
SELECT COUNT(*) FROM livres;

//----RESULTATS----//
COUNT(*)
32


===========> Table oeuvres::

SELECT * FROM biblio.oeuvres;
SELECT COUNT(*) FROM oeuvres;

//----RESULTATS----//
COUNT(*)
18
----------------------------------------
|         FORMULE GENERALE              |
|                                       |
----------------------------------------

SELECT COUNT(*) FROM `biblio`.`nom_table`;