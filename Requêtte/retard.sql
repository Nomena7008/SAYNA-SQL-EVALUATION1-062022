
Les adherents actuellemnt en retard::

Requêtte::
SELECT * FROM biblio.oeuvres_livres_emprunt_adherents;
SELECT nom,prenom FROM oeuvres_livres_emprunt_adherents 
WHERE dateRet IS NULL;


Les livres en retard::

Requêtte::

SELECT * FROM biblio.oeuvres_livres_emprunt_adherents;
SELECT titre FROM oeuvres_livres_emprunt_adherents 
WHERE dateRet IS NULL;

