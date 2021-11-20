#REQUETE_03
#L’entraîneur des Gryffondor est superstitieux, son jour préféré est le lundi. 
#Retourne la liste des joueurs de son équipe qui ont été enrôlés un lundi (il souhaite les faire jouer en priorité), 
#et classe les résultats par date d’enrôlement chronologique.

SELECT firstname, lastname, `name` AS name_of_team, enrollment_date AS date_enrollment_is_a_monday
FROM wizard
JOIN player ON wizard.id = player.wizard_id
join team ON player.team_id = team_id
WHERE `name` = 'Gryffindor' AND DAYOFWEEK(enrollment_date) = 2
ORDER BY enrollment_date;