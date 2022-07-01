
Durée moyenne des emprunts rendus::

Requêtte::

Durée des emprunts rendus::

SELECT dateEmp,dateRet,dateRet-dateEmp AS Duree,NL From emprunter WHERE dateRet IS NOT NULL ORDER BY Duree;

//-----RESULTATS----//
dateEmp,dateRet,Duree,livres_NL
2021-09-03,2018-12-18,-29685,12
2021-08-19,2021-08-16,-3,26
2021-07-15,2021-07-16,1,1
2021-09-20,2021-09-21,1,20
2021-11-10,2021-11-14,4,4
2022-06-09,2022-06-13,4,3
2021-12-13,2021-12-18,5,6
2022-03-16,2022-03-21,5,1
2022-06-02,2022-06-07,5,1
2021-11-16,2021-11-22,6,24
2022-04-15,2022-04-21,6,8
2022-04-05,2022-04-12,7,18
2022-02-04,2022-02-12,8,15
2022-03-19,2022-03-29,10,4
2022-01-12,2022-01-24,12,10
2022-06-07,2022-06-19,12,21
2021-08-11,2021-08-24,13,4
2022-06-06,2022-06-22,16,20
2021-12-11,2021-12-29,18,8
2022-05-24,2022-06-02,78,2
2022-01-28,2022-02-08,80,1
2022-06-20,2022-07-01,81,2
2022-06-20,2022-07-01,81,9
2021-08-23,2021-09-10,87,25
2021-09-30,2021-10-23,93,10


SELECT AVG(dateRet-dateEmp) AS DureeMoyenne FROM emprunter WHERE dateRet IS NOT NULL AND (dateRet-dateEmp >=0);


//-----RESULTATS----//
DureeMoyenne
27.5217



Durée moyenne des retards pour l’ensemble des emprunts::

Requêtte::

SELECT ROUND(AVG(CASE
WHEN dateRet IS NULL THEN CURRENT_DATE() - dateEmp ELSE dateRet - dateEmp END)) AS Duree_retard FROM emprunter WHERE ((CASE WHEN dateRet IS NULL THEN CURRENT_DATE() - dateEmp ELSE dateRet - dateEmp END) > dureeMax OR (dateRet - dateEmp) <= dureeMax) and (dateRet - dateEmp)>=0;


//-----RESULTATS----//
Duree_retard
28



Durée moyenne des retards parmi les seuls retardataires::

Requêtte::

SELECT ROUND(AVG(CASE
WHEN dateRet IS NULL THEN CURRENT_DATE() - dateEmp ELSE dateRet - dateEmp END)) AS Duree_retard FROM emprunter WHERE (CASE WHEN dateRet IS NULL THEN CURRENT_DATE() - dateEmp ELSE dateRet - dateEmp END) > dureeMax and (dateRet - dateEmp)>=0;


//-----RESULTATS----//
Duree_retard
67
