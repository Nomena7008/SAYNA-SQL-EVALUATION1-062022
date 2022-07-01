Nombre de livres empruntées par auteur.

Requêtte::
SELECT COUNT(NL) AS NL,auteur FROM biblio.oeuvres_livres_emprunt_adherents GROUP BY auteur;


//-----RESULTATS----//

NL,auteur
6,"Hermann HESSE"
3,"Jean RACINE"
1,"Emmanuel KANT"
5,"Charles BAUDELAIRE"
3,"Louis-Ferdinand CELINE"
1,"Fedor DOSTOIEVSKI"
3,"Jacqueline de ROMILLY"
1,"Paul VALERY"
3,"Kenneth WHITE"
1,"Rainer Maria RILKE"
1,"Lewis CAROLL"
1,"Sigmund FREUD"
1,"Gottlob FREGE"
1,"Gilbert HOTTOIS"
1,STENDHAL
2,"Joseph CONRAD"
1,"Yannick HAENEL"
