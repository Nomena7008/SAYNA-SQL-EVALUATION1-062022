Nombre de livres empruntés par éditeur.

Requêtte::
SELECT COUNT(livres_NL) AS NL,editeur FROM biblio.oeuvres_livres_emprunt_adherents GROUP BY editeur;


//-----RESULTATS----//
NL,editeur
13,GF
14,FOLIO
7,HACHETTE
1,GALLIMARD
