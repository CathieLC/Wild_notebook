# Requete02
# Retourne uniquement les prénoms et noms des joueurs ayant le rôle de seeker (attrapeur),
# classés par ordre alphabétique de nom puis prénom

SELECT firstname, lastname
FROM wizard
LEFT JOIN player ON player.wizard_id = wizard.id 
WHERE `role` = "seeker"	
ORDER BY lastname ASC, firstname ASC;