# REQUETE1
# Retourne les noms, prénoms, rôle et équipe de tous les joueurs, 
# classés dans l’ordre alphabétique par équipe,
# puis par rôle dans l’équipe,
# puis par nom de famille, puis par prénom


SELECT firstname, lastname, `role`, `name`
FROM wizard
LEFT JOIN player ON player.wizard_id = wizard.id 
LEFT JOIN team ON player.team_id = team.id
WHERE wizard_id IS NOT NULL 		                            	
ORDER BY `name` ASC, `role` ASC, lastname ASC, firstname ASC;