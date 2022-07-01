 ---------------------------------------------------------------------------------------
|                                CREATION DE VUE                                        |
 ---------------------------------------------------------------------------------------

---------Creation de la vue : Adherents_Emprunt----------------------------------------

#-------------------------------/REQUETTE SQL/---------------------------------------#
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `adherents_emprunt` AS
    SELECT 
        `emprunter`.`livres_NL` AS `livres_NL`,
        `adherents`.`NA` AS `NA`,
        `adherents`.`nom` AS `nom`,
        `adherents`.`prenom` AS `prenom`,
        `adherents`.`adr` AS `adr`,
        `adherents`.`tel` AS `tel`,
        `emprunter`.`dateEmp` AS `dateEmp`,
        `emprunter`.`dureeMax` AS `dureeMax`,
        `emprunter`.`dateRet` AS `dateRet`
    FROM
        (`adherents`
        JOIN `emprunter` ON ((`adherents`.`NA` = `emprunter`.`adherents_NA`)))
        
//-----RESULTATS-----//
livres_NL,NA,nom,prenom,adr,tel,dateEmp,dureeMax,dateRet
29,27,Cornu,Sylvain,"22 rue Mouffetard, 75005 Paris",0184927489,2021-05-31,14,NULL
1,26,Touche,Johanna,"14 rue du Bac, 75006 Paris",0619384065,2021-07-15,21,2021-07-16
4,4,Mercier,Claude,"155 avenue Parmentier, 75011 Paris",0136482736,2021-08-11,21,2021-08-24
26,9,Dufour,Jacques,"32 rue des Alouettes, 75003 Paris",0155382940,2021-08-19,21,2021-08-16
25,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2021-08-23,21,2021-09-10
12,7,Crozier,Martine,"88 rue des Portes Blanches, 75018 Paris",0146829384,2021-09-03,21,2018-12-18
20,27,Cornu,Sylvain,"22 rue Mouffetard, 75005 Paris",0184927489,2021-09-20,21,2021-09-21
10,7,Crozier,Martine,"88 rue des Portes Blanches, 75018 Paris",0146829384,2021-09-30,21,2021-10-23
4,12,Raymond,Carole,"35 rue Oberkampf, 75011 Paris",0153829402,2021-11-10,14,2021-11-14
24,26,Touche,Johanna,"14 rue du Bac, 75006 Paris",0619384065,2021-11-16,14,2021-11-22
8,13,Durand,Albert,"4 rue Mandar, 75002 Paris",0642374021,2021-12-11,14,2021-12-29
6,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2021-12-13,14,2021-12-18
10,8,Lebon,Clément,"196 boulevard de Sebastopol, 75001 Paris",0132884739,2022-01-12,14,2022-01-24
1,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2022-01-28,14,2022-02-08
15,10,Dufour,Antoine,"32 rue des Alouettes, 75003 Paris",0155382940,2022-02-04,14,2022-02-12
1,2,Lecoeur,Philippe,"16 rue de la République, 75010 Paris",0145279274,2022-03-16,14,2022-03-21
4,5,Léger,Marc,"90 avenue du Maine, 75014 Paris",0164832947,2022-03-19,14,2022-03-29
18,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2022-04-05,14,2022-04-12
8,18,Mirou,Caroline,"2 square Mirabeau, 75011 Paris",0163827399,2022-04-15,14,2022-04-21
2,4,Mercier,Claude,"155 avenue Parmentier, 75011 Paris",0136482736,2022-05-24,14,2022-06-02
11,22,Rihour,Cécile,"7 rue Montorgueil, 75002 Paris",0166894754,2022-05-31,14,NULL
1,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2022-06-02,14,2022-06-07
20,9,Dufour,Jacques,"32 rue des Alouettes, 75003 Paris",0155382940,2022-06-06,14,2022-06-22
21,14,Wilson,Paul,"12 rue Paul Vaillant Couturier, 92400 Montrouge",0642327407,2022-06-07,14,2022-06-19
3,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2022-06-09,14,2022-06-13
2,28,Frederic,Cyril,"15 rue du Simplon, 75018 Paris",0173625492,2022-06-20,14,NULL
9,28,Frederic,Cyril,"15 rue du Simplon, 75018 Paris",0173625492,2022-06-20,14,NULL
14,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2022-06-21,14,NULL
16,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2022-06-21,14,NULL
5,16,Carre,Stéphane,"51 boulevard Diderot, 75012 Paris",0174693277,2022-06-25,14,NULL
21,20,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463,2022-06-29,14,NULL
31,20,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463,2022-06-29,14,NULL
32,20,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463,2022-06-29,14,NULL



---------Creation de la vue : Adherents_Livres----------------------------------------

#-------------------------------/REQUETTE SQL/---------------------------------------#
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `adherents_livres` AS
    SELECT 
        `adherents_emprunt`.`livres_NL` AS `livres_NL`,
        `adherents_emprunt`.`NA` AS `NA`,
        `adherents_emprunt`.`nom` AS `nom`,
        `adherents_emprunt`.`prenom` AS `prenom`,
        `adherents_emprunt`.`adr` AS `adr`,
        `adherents_emprunt`.`tel` AS `tel`,
        `emprunt_livres`.`dateEmp` AS `dateEmp`,
        `emprunt_livres`.`dureeMax` AS `dureeMax`,
        `emprunt_livres`.`dateRet` AS `dateRet`,
        `emprunt_livres`.`adherents_NA` AS `adherents_NA`,
        `emprunt_livres`.`editeur` AS `editeur`,
        `emprunt_livres`.`oeuvres_NO` AS `oeuvres_NO`
    FROM
        (`adherents_emprunt`
        JOIN `emprunt_livres` ON ((`adherents_emprunt`.`livres_NL` = `emprunt_livres`.`livres_NL`)))

//-----RESULTATS-----//
livres_NL,NA,nom,prenom,adr,tel,dateEmp,dureeMax,dateRet,adherents_NA,editeur,oeuvres_NO
1,26,Touche,Johanna,"14 rue du Bac, 75006 Paris",0619384065,2021-07-15,21,2021-07-16,26,GF,1
1,26,Touche,Johanna,"14 rue du Bac, 75006 Paris",0619384065,2022-01-28,14,2022-02-08,3,GF,1
1,26,Touche,Johanna,"14 rue du Bac, 75006 Paris",0619384065,2022-03-16,14,2022-03-21,2,GF,1
1,26,Touche,Johanna,"14 rue du Bac, 75006 Paris",0619384065,2022-06-02,14,2022-06-07,1,GF,1
1,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2021-07-15,21,2021-07-16,26,GF,1
1,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2022-01-28,14,2022-02-08,3,GF,1
1,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2022-03-16,14,2022-03-21,2,GF,1
1,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2022-06-02,14,2022-06-07,1,GF,1
1,2,Lecoeur,Philippe,"16 rue de la République, 75010 Paris",0145279274,2021-07-15,21,2021-07-16,26,GF,1
1,2,Lecoeur,Philippe,"16 rue de la République, 75010 Paris",0145279274,2022-01-28,14,2022-02-08,3,GF,1
1,2,Lecoeur,Philippe,"16 rue de la République, 75010 Paris",0145279274,2022-03-16,14,2022-03-21,2,GF,1
1,2,Lecoeur,Philippe,"16 rue de la République, 75010 Paris",0145279274,2022-06-02,14,2022-06-07,1,GF,1
1,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2021-07-15,21,2021-07-16,26,GF,1
1,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2022-01-28,14,2022-02-08,3,GF,1
1,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2022-03-16,14,2022-03-21,2,GF,1
1,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2022-06-02,14,2022-06-07,1,GF,1
2,4,Mercier,Claude,"155 avenue Parmentier, 75011 Paris",0136482736,2022-05-24,14,2022-06-02,4,FOLIO,2
2,4,Mercier,Claude,"155 avenue Parmentier, 75011 Paris",0136482736,2022-06-20,14,NULL,28,FOLIO,2
2,28,Frederic,Cyril,"15 rue du Simplon, 75018 Paris",0173625492,2022-05-24,14,2022-06-02,4,FOLIO,2
2,28,Frederic,Cyril,"15 rue du Simplon, 75018 Paris",0173625492,2022-06-20,14,NULL,28,FOLIO,2
3,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2022-06-09,14,2022-06-13,3,HACHETTE,3
4,4,Mercier,Claude,"155 avenue Parmentier, 75011 Paris",0136482736,2021-08-11,21,2021-08-24,4,GF,4
4,4,Mercier,Claude,"155 avenue Parmentier, 75011 Paris",0136482736,2021-11-10,14,2021-11-14,12,GF,4
4,4,Mercier,Claude,"155 avenue Parmentier, 75011 Paris",0136482736,2022-03-19,14,2022-03-29,5,GF,4
4,12,Raymond,Carole,"35 rue Oberkampf, 75011 Paris",0153829402,2021-08-11,21,2021-08-24,4,GF,4
4,12,Raymond,Carole,"35 rue Oberkampf, 75011 Paris",0153829402,2021-11-10,14,2021-11-14,12,GF,4
4,12,Raymond,Carole,"35 rue Oberkampf, 75011 Paris",0153829402,2022-03-19,14,2022-03-29,5,GF,4
4,5,Léger,Marc,"90 avenue du Maine, 75014 Paris",0164832947,2021-08-11,21,2021-08-24,4,GF,4
4,5,Léger,Marc,"90 avenue du Maine, 75014 Paris",0164832947,2021-11-10,14,2021-11-14,12,GF,4
4,5,Léger,Marc,"90 avenue du Maine, 75014 Paris",0164832947,2022-03-19,14,2022-03-29,5,GF,4
5,16,Carre,Stéphane,"51 boulevard Diderot, 75012 Paris",0174693277,2022-06-25,14,NULL,16,FOLIO,5
6,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2021-12-13,14,2021-12-18,3,FOLIO,6
8,13,Durand,Albert,"4 rue Mandar, 75002 Paris",0642374021,2021-12-11,14,2021-12-29,13,FOLIO,8
8,13,Durand,Albert,"4 rue Mandar, 75002 Paris",0642374021,2022-04-15,14,2022-04-21,18,FOLIO,8
8,18,Mirou,Caroline,"2 square Mirabeau, 75011 Paris",0163827399,2021-12-11,14,2021-12-29,13,FOLIO,8
8,18,Mirou,Caroline,"2 square Mirabeau, 75011 Paris",0163827399,2022-04-15,14,2022-04-21,18,FOLIO,8
9,28,Frederic,Cyril,"15 rue du Simplon, 75018 Paris",0173625492,2022-06-20,14,NULL,28,HACHETTE,9
10,7,Crozier,Martine,"88 rue des Portes Blanches, 75018 Paris",0146829384,2021-09-30,21,2021-10-23,7,GF,10
10,7,Crozier,Martine,"88 rue des Portes Blanches, 75018 Paris",0146829384,2022-01-12,14,2022-01-24,8,GF,10
10,8,Lebon,Clément,"196 boulevard de Sebastopol, 75001 Paris",0132884739,2021-09-30,21,2021-10-23,7,GF,10
10,8,Lebon,Clément,"196 boulevard de Sebastopol, 75001 Paris",0132884739,2022-01-12,14,2022-01-24,8,GF,10
11,22,Rihour,Cécile,"7 rue Montorgueil, 75002 Paris",0166894754,2022-05-31,14,NULL,22,HACHETTE,11
12,7,Crozier,Martine,"88 rue des Portes Blanches, 75018 Paris",0146829384,2021-09-03,21,2018-12-18,7,FOLIO,12
14,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2022-06-21,14,NULL,1,FOLIO,14
15,10,Dufour,Antoine,"32 rue des Alouettes, 75003 Paris",0155382940,2022-02-04,14,2022-02-12,10,HACHETTE,15
16,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2022-06-21,14,NULL,1,HACHETTE,16
18,3,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294,2022-04-05,14,2022-04-12,3,FOLIO,2
20,27,Cornu,Sylvain,"22 rue Mouffetard, 75005 Paris",0184927489,2021-09-20,21,2021-09-21,27,FOLIO,4
20,27,Cornu,Sylvain,"22 rue Mouffetard, 75005 Paris",0184927489,2022-06-06,14,2022-06-22,9,FOLIO,4
20,9,Dufour,Jacques,"32 rue des Alouettes, 75003 Paris",0155382940,2021-09-20,21,2021-09-21,27,FOLIO,4
20,9,Dufour,Jacques,"32 rue des Alouettes, 75003 Paris",0155382940,2022-06-06,14,2022-06-22,9,FOLIO,4
21,14,Wilson,Paul,"12 rue Paul Vaillant Couturier, 92400 Montrouge",0642327407,2022-06-07,14,2022-06-19,14,GF,5
21,14,Wilson,Paul,"12 rue Paul Vaillant Couturier, 92400 Montrouge",0642327407,2022-06-29,14,NULL,20,GF,5
21,20,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463,2022-06-07,14,2022-06-19,14,GF,5
21,20,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463,2022-06-29,14,NULL,20,GF,5
24,26,Touche,Johanna,"14 rue du Bac, 75006 Paris",0619384065,2021-11-16,14,2021-11-22,26,FOLIO,8
25,1,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274,2021-08-23,21,2021-09-10,1,GF,1
26,9,Dufour,Jacques,"32 rue des Alouettes, 75003 Paris",0155382940,2021-08-19,21,2021-08-16,9,HACHETTE,10
29,27,Cornu,Sylvain,"22 rue Mouffetard, 75005 Paris",0184927489,2021-05-31,14,NULL,27,GF,1
31,20,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463,2022-06-29,14,NULL,20,FOLIO,17
32,20,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463,2022-06-29,14,NULL,20,GALLIMARD,18



---------Creation de la vue : Emprunt_Livres----------------------------------------

#-------------------------------/REQUETTE SQL/---------------------------------------#

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `emprunt_livres` AS
    SELECT 
        `emprunter`.`livres_NL` AS `livres_NL`,
        `emprunter`.`dateEmp` AS `dateEmp`,
        `emprunter`.`dureeMax` AS `dureeMax`,
        `emprunter`.`dateRet` AS `dateRet`,
        `emprunter`.`adherents_NA` AS `adherents_NA`,
        `livres`.`editeur` AS `editeur`,
        `livres`.`oeuvres_NO` AS `oeuvres_NO`
    FROM
        (`emprunter`
        JOIN `livres` ON ((`emprunter`.`livres_NL` = `livres`.`NL`)))

//-----RESULTATS-----//
livres_NL,dateEmp,dureeMax,dateRet,adherents_NA,editeur,oeuvres_NO
29,2021-05-31,14,NULL,27,GF,1
1,2021-07-15,21,2021-07-16,26,GF,1
4,2021-08-11,21,2021-08-24,4,GF,4
26,2021-08-19,21,2021-08-16,9,HACHETTE,10
25,2021-08-23,21,2021-09-10,1,GF,1
12,2021-09-03,21,2018-12-18,7,FOLIO,12
20,2021-09-20,21,2021-09-21,27,FOLIO,4
10,2021-09-30,21,2021-10-23,7,GF,10
4,2021-11-10,14,2021-11-14,12,GF,4
24,2021-11-16,14,2021-11-22,26,FOLIO,8
8,2021-12-11,14,2021-12-29,13,FOLIO,8
6,2021-12-13,14,2021-12-18,3,FOLIO,6
10,2022-01-12,14,2022-01-24,8,GF,10
1,2022-01-28,14,2022-02-08,3,GF,1
15,2022-02-04,14,2022-02-12,10,HACHETTE,15
1,2022-03-16,14,2022-03-21,2,GF,1
4,2022-03-19,14,2022-03-29,5,GF,4
18,2022-04-05,14,2022-04-12,3,FOLIO,2
8,2022-04-15,14,2022-04-21,18,FOLIO,8
2,2022-05-24,14,2022-06-02,4,FOLIO,2
11,2022-05-31,14,NULL,22,HACHETTE,11
1,2022-06-02,14,2022-06-07,1,GF,1
20,2022-06-06,14,2022-06-22,9,FOLIO,4
21,2022-06-07,14,2022-06-19,14,GF,5
3,2022-06-09,14,2022-06-13,3,HACHETTE,3
2,2022-06-20,14,NULL,28,FOLIO,2
9,2022-06-20,14,NULL,28,HACHETTE,9
14,2022-06-21,14,NULL,1,FOLIO,14
16,2022-06-21,14,NULL,1,HACHETTE,16
5,2022-06-25,14,NULL,16,FOLIO,5
21,2022-06-29,14,NULL,20,GF,5
31,2022-06-29,14,NULL,20,FOLIO,17
32,2022-06-29,14,NULL,20,GALLIMARD,18



---------Creation de la vue : Oeuvres_Livres_Emprunt----------------------------------

#-------------------------------/REQUETTE SQL/---------------------------------------#

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `oeuvres_livres_emprunt` AS
    SELECT 
        `oeuvres`.`NO` AS `NO`,
        `oeuvres`.`titre` AS `titre`,
        `oeuvres`.`auteur` AS `auteur`,
        `oeuvres`.`anee` AS `anee`,
        `oeuvres`.`genre` AS `genre`,
        `emprunt_livres`.`livres_NL` AS `livres_NL`,
        `emprunt_livres`.`dateEmp` AS `dateEmp`,
        `emprunt_livres`.`dureeMax` AS `dureeMax`,
        `emprunt_livres`.`dateRet` AS `dateRet`,
        `emprunt_livres`.`adherents_NA` AS `adherents_NA`,
        `emprunt_livres`.`editeur` AS `editeur`
    FROM
        (`oeuvres`
        JOIN `emprunt_livres` ON ((`oeuvres`.`NO` = `emprunt_livres`.`oeuvres_NO`)))

//-----RESULTATS-----//
NO,titre,auteur,anee,genre,livres_NL,dateEmp,dureeMax,dateRet,adherents_NA,editeur
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,29,2021-05-31,14,NULL,27,GF
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,1,2021-07-15,21,2021-07-16,26,GF
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,4,2021-08-11,21,2021-08-24,4,GF
10,"Lettres de Gourgounel","Kenneth WHITE",1979,Récit,26,2021-08-19,21,2021-08-16,9,HACHETTE
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,25,2021-08-23,21,2021-09-10,1,GF
12,"Logique sans peine","Lewis CAROLL",1887,Logique,12,2021-09-03,21,2018-12-18,7,FOLIO
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,20,2021-09-20,21,2021-09-21,27,FOLIO
10,"Lettres de Gourgounel","Kenneth WHITE",1979,Récit,10,2021-09-30,21,2021-10-23,7,GF
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,4,2021-11-10,14,2021-11-14,12,GF
8,Alcibiade,"Jacqueline de ROMILLY",1995,Roman,24,2021-11-16,14,2021-11-22,26,FOLIO
8,Alcibiade,"Jacqueline de ROMILLY",1995,Roman,8,2021-12-11,14,2021-12-29,13,FOLIO
6,"Les possédés","Fedor DOSTOIEVSKI",1872,Roman,6,2021-12-13,14,2021-12-18,3,FOLIO
10,"Lettres de Gourgounel","Kenneth WHITE",1979,Récit,10,2022-01-12,14,2022-01-24,8,GF
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,1,2022-01-28,14,2022-02-08,3,GF
15,"Sens et dénotation","Gottlob FREGE",1892,Philosophie,15,2022-02-04,14,2022-02-12,10,HACHETTE
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,1,2022-03-16,14,2022-03-21,2,GF
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,4,2022-03-19,14,2022-03-29,5,GF
2,Bérénice,"Jean RACINE",1670,Théâtre,18,2022-04-05,14,2022-04-12,3,FOLIO
8,Alcibiade,"Jacqueline de ROMILLY",1995,Roman,8,2022-04-15,14,2022-04-21,18,FOLIO
2,Bérénice,"Jean RACINE",1670,Théâtre,2,2022-05-24,14,2022-06-02,4,FOLIO
11,"Lettres à un jeune poète","Rainer Maria RILKE",1929,Lettre,11,2022-05-31,14,NULL,22,HACHETTE
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,1,2022-06-02,14,2022-06-07,1,GF
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,20,2022-06-06,14,2022-06-22,9,FOLIO
5,"Voyage au bout de la nuit","Louis-Ferdinand CELINE",1932,Roman,21,2022-06-07,14,2022-06-19,14,GF
3,"Prolégomènes à  toute métaphysique future","Emmanuel KANT",1783,Philosophie,3,2022-06-09,14,2022-06-13,3,HACHETTE
2,Bérénice,"Jean RACINE",1670,Théâtre,2,2022-06-20,14,NULL,28,FOLIO
9,"Monsieur Teste","Paul VALERY",1926,Roman,9,2022-06-20,14,NULL,28,HACHETTE
14,"Sur le rêve","Sigmund FREUD",1900,Philosophie,14,2022-06-21,14,NULL,1,FOLIO
16,"Penser la logique","Gilbert HOTTOIS",1989,Philosophie,16,2022-06-21,14,NULL,1,HACHETTE
5,"Voyage au bout de la nuit","Louis-Ferdinand CELINE",1932,Roman,5,2022-06-25,14,NULL,16,FOLIO
5,"Voyage au bout de la nuit","Louis-Ferdinand CELINE",1932,Roman,21,2022-06-29,14,NULL,20,GF
17,"Au coeur des ténèbres","Joseph CONRAD",1899,Roman,31,2022-06-29,14,NULL,20,FOLIO
18,"Jan Karski","Yannick HAENEL",2009,Roman,32,2022-06-29,14,NULL,20,GALLIMARD



---------Creation de la vue : Oeuvres_Livres_Emprunt_Adherents------------------------

#-------------------------------/REQUETTE SQL/---------------------------------------#

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `oeuvres_livres_emprunt_adherents` AS
    SELECT 
        `oeuvres_livres_emprunt`.`NO` AS `NO`,
        `oeuvres_livres_emprunt`.`titre` AS `titre`,
        `oeuvres_livres_emprunt`.`auteur` AS `auteur`,
        `oeuvres_livres_emprunt`.`anee` AS `anee`,
        `oeuvres_livres_emprunt`.`genre` AS `genre`,
        `oeuvres_livres_emprunt`.`livres_NL` AS `livres_NL`,
        `oeuvres_livres_emprunt`.`dateEmp` AS `dateEmp`,
        `oeuvres_livres_emprunt`.`dureeMax` AS `dureeMax`,
        `oeuvres_livres_emprunt`.`dateRet` AS `dateRet`,
        `oeuvres_livres_emprunt`.`adherents_NA` AS `adherents_NA`,
        `oeuvres_livres_emprunt`.`editeur` AS `editeur`,
        `adherents`.`nom` AS `nom`,
        `adherents`.`prenom` AS `prenom`,
        `adherents`.`adr` AS `adr`,
        `adherents`.`tel` AS `tel`
    FROM
        (`oeuvres_livres_emprunt`
        JOIN `adherents` ON ((`oeuvres_livres_emprunt`.`adherents_NA` = `adherents`.`NA`)))

//-----RESULTATS-----//
NO,titre,auteur,anee,genre,livres_NL,dateEmp,dureeMax,dateRet,adherents_NA,editeur,nom,prenom,adr,tel
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,29,2021-05-31,14,NULL,27,GF,Cornu,Sylvain,"22 rue Mouffetard, 75005 Paris",0184927489
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,1,2021-07-15,21,2021-07-16,26,GF,Touche,Johanna,"14 rue du Bac, 75006 Paris",0619384065
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,4,2021-08-11,21,2021-08-24,4,GF,Mercier,Claude,"155 avenue Parmentier, 75011 Paris",0136482736
10,"Lettres de Gourgounel","Kenneth WHITE",1979,Récit,26,2021-08-19,21,2021-08-16,9,HACHETTE,Dufour,Jacques,"32 rue des Alouettes, 75003 Paris",0155382940
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,25,2021-08-23,21,2021-09-10,1,GF,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274
12,"Logique sans peine","Lewis CAROLL",1887,Logique,12,2021-09-03,21,2018-12-18,7,FOLIO,Crozier,Martine,"88 rue des Portes Blanches, 75018 Paris",0146829384
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,20,2021-09-20,21,2021-09-21,27,FOLIO,Cornu,Sylvain,"22 rue Mouffetard, 75005 Paris",0184927489
10,"Lettres de Gourgounel","Kenneth WHITE",1979,Récit,10,2021-09-30,21,2021-10-23,7,GF,Crozier,Martine,"88 rue des Portes Blanches, 75018 Paris",0146829384
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,4,2021-11-10,14,2021-11-14,12,GF,Raymond,Carole,"35 rue Oberkampf, 75011 Paris",0153829402
8,Alcibiade,"Jacqueline de ROMILLY",1995,Roman,24,2021-11-16,14,2021-11-22,26,FOLIO,Touche,Johanna,"14 rue du Bac, 75006 Paris",0619384065
8,Alcibiade,"Jacqueline de ROMILLY",1995,Roman,8,2021-12-11,14,2021-12-29,13,FOLIO,Durand,Albert,"4 rue Mandar, 75002 Paris",0642374021
6,"Les possédés","Fedor DOSTOIEVSKI",1872,Roman,6,2021-12-13,14,2021-12-18,3,FOLIO,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294
10,"Lettres de Gourgounel","Kenneth WHITE",1979,Récit,10,2022-01-12,14,2022-01-24,8,GF,Lebon,Clément,"196 boulevard de Sebastopol, 75001 Paris",0132884739
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,1,2022-01-28,14,2022-02-08,3,GF,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294
15,"Sens et dénotation","Gottlob FREGE",1892,Philosophie,15,2022-02-04,14,2022-02-12,10,HACHETTE,Dufour,Antoine,"32 rue des Alouettes, 75003 Paris",0155382940
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,1,2022-03-16,14,2022-03-21,2,GF,Lecoeur,Philippe,"16 rue de la République, 75010 Paris",0145279274
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,4,2022-03-19,14,2022-03-29,5,GF,Léger,Marc,"90 avenue du Maine, 75014 Paris",0164832947
2,Bérénice,"Jean RACINE",1670,Théâtre,18,2022-04-05,14,2022-04-12,3,FOLIO,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294
8,Alcibiade,"Jacqueline de ROMILLY",1995,Roman,8,2022-04-15,14,2022-04-21,18,FOLIO,Mirou,Caroline,"2 square Mirabeau, 75011 Paris",0163827399
2,Bérénice,"Jean RACINE",1670,Théâtre,2,2022-05-24,14,2022-06-02,4,FOLIO,Mercier,Claude,"155 avenue Parmentier, 75011 Paris",0136482736
11,"Lettres à un jeune poète","Rainer Maria RILKE",1929,Lettre,11,2022-05-31,14,NULL,22,HACHETTE,Rihour,Cécile,"7 rue Montorgueil, 75002 Paris",0166894754
1,"Narcisse et Goldmund","Hermann HESSE",1930,Roman,1,2022-06-02,14,2022-06-07,1,GF,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274
4,"Mon coeur mis à nu","Charles BAUDELAIRE",1887,Journal,20,2022-06-06,14,2022-06-22,9,FOLIO,Dufour,Jacques,"32 rue des Alouettes, 75003 Paris",0155382940
5,"Voyage au bout de la nuit","Louis-Ferdinand CELINE",1932,Roman,21,2022-06-07,14,2022-06-19,14,GF,Wilson,Paul,"12 rue Paul Vaillant Couturier, 92400 Montrouge",0642327407
3,"Prolégomènes à  toute métaphysique future","Emmanuel KANT",1783,Philosophie,3,2022-06-09,14,2022-06-13,3,HACHETTE,Dupont,Yvan,"73 rue Lamarck, 75018 Paris",0163538294
2,Bérénice,"Jean RACINE",1670,Théâtre,2,2022-06-20,14,NULL,28,FOLIO,Frederic,Cyril,"15 rue du Simplon, 75018 Paris",0173625492
9,"Monsieur Teste","Paul VALERY",1926,Roman,9,2022-06-20,14,NULL,28,HACHETTE,Frederic,Cyril,"15 rue du Simplon, 75018 Paris",0173625492
14,"Sur le rêve","Sigmund FREUD",1900,Philosophie,14,2022-06-21,14,NULL,1,FOLIO,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274
16,"Penser la logique","Gilbert HOTTOIS",1989,Philosophie,16,2022-06-21,14,NULL,1,HACHETTE,Lecoeur,Jeanette,"16 rue de la République, 75010 Paris",0145279274
5,"Voyage au bout de la nuit","Louis-Ferdinand CELINE",1932,Roman,5,2022-06-25,14,NULL,16,FOLIO,Carre,Stéphane,"51 boulevard Diderot, 75012 Paris",0174693277
5,"Voyage au bout de la nuit","Louis-Ferdinand CELINE",1932,Roman,21,2022-06-29,14,NULL,20,GF,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463
17,"Au coeur des ténèbres","Joseph CONRAD",1899,Roman,31,2022-06-29,14,NULL,20,FOLIO,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463
18,"Jan Karski","Yannick HAENEL",2009,Roman,32,2022-06-29,14,NULL,20,GALLIMARD,Despentes,Anthony,"56 boulevard de la Villette, 75019 Paris",0133889463


-- --------------------------------------------------------
===>  CREATION DE VUE TERMINEE
-- --------------------------------------------------------