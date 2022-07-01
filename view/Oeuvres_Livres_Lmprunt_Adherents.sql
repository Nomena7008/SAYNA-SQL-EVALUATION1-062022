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