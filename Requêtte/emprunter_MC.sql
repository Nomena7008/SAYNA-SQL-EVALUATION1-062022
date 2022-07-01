Livres que Martrine CROZIER veut emprunter 

SELECT * FROM biblio.`livres-oeuvres`;
SELECT * FROM biblio.`livres-oeuvres`
WHERE titre='Au coeur des ténèbres'
OR
(titre='Le rouge et le noir' AND editeur='Hachette' AND NL=23);

//----RESULTATS----//
NO,titre,auteur,anee,genre,editeur,NL
7,"Le Rouge et le Noir",STENDHAL,1830,Roman,HACHETTE,23
17,"Au coeur des ténèbres","Joseph CONRAD",1899,Roman,FOLIO,31
