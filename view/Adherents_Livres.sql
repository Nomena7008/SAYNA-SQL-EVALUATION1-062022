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