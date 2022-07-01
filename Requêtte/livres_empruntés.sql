SELECT * FROM biblio.oeuvres_livres_emprunt_adherents;
SELECT titre FROM oeuvres_livres_emprunt_adherents 
WHERE dateRet IS NULL;