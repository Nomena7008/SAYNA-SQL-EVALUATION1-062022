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