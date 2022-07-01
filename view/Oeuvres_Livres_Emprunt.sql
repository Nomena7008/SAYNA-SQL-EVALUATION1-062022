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