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