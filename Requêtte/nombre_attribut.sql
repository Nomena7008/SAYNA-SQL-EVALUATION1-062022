
+++++++++++++++++++ => Nombres attributs  ++++++++++++++++++++++++
----------------------------------------
|         FORMULE GENERALE              |
|                                       |
----------------------------------------

DESCRIBE `biblio`.`nom_table`;

==========> Table adherents::

DESCRIBE `biblio`.`adherents`;

//----RESULTATS----//
Field,Type,Null,Key,Default,Extra
NA,int,NO,PRI,NULL,auto_increment
nom,varchar(30),YES,,NULL,
prenom,varchar(30),YES,,NULL,
adr,varchar(100),YES,,NULL,
tel,char(10),YES,,NULL,


===========> Table emprunter::

DESCRIBE `biblio`.`emprunter`;

//----RESULTATS----//
Field,Type,Null,Key,Default,Extra
livres_NL,int,NO,PRI,NULL,
dateEmp,date,NO,PRI,NULL,
dureeMax,int,NO,,NULL,
dateRet,date,YES,,NULL,
adherents_NA,int,NO,PRI,NULL,


===========> Table livres::

DESCRIBE `biblio`.`livres`;

//----RESULTATS----//
Field,Type,Null,Key,Default,Extra
NL,int,NO,PRI,NULL,auto_increment
editeur,varchar(50),YES,,NULL,
oeuvres_NO,int,NO,PRI,NULL,


===========> Table oeuvres::

DESCRIBE `biblio`.`oeuvres`;

//----RESULTATS----//
Field,Type,Null,Key,Default,Extra
NO,int,NO,PRI,NULL,auto_increment
titre,varchar(150),YES,,NULL,
auteur,varchar(100),YES,,NULL,
anee,int,NO,,NULL,
genre,varchar(30),YES,,NULL,
