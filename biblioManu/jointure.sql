SELECT `Livres`.`Titre`,`Clients`.`Prenom`,`Clients`.`Nom`,`Registre`.`Emprunt`,`Registre`.`Retour` FROM `Registre` INNER JOIN `Livres` ON `Registre`.`id_Livres`=`Livres`.`id` INNER JOIN `Clients` ON `Registre`.`id_Clients`=`Clients`.`id`;

SELECT `Livres`.`Titre`,`Genres`.`Genres`,`Livres`.`PAuteur`,`Livres`.`NAuteur`,`Registre`.`Rendu` FROM `Registre` INNER JOIN `Livres` ON `Registre`.`id_Livres`=`Livres`.`id` INNER JOIN `Genres` ON `Livres`.`id_Genres`=`Genres`.`id`;

SELECT `Genres`.`Genres`,COUNT(`Livres`.`id`) FROM `Genres` INNER JOIN `Livres` ON `Genres`.`id`=`Livres`.`id_Genres` GROUP BY `Genres`.`Genres`;