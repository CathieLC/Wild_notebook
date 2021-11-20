#REQUETE_02
# Retourne uniquement les noms des équipes complètes (ayant 14 joueurs ou plus, c’est-à- dire 7 joueurs et 7 remplaçants minimum)
# +classés par ordre alphabétique.

SELECT team.`name`, COUNT(*) AS nb_student_in_each_team
FROM team 
JOIN player ON team.id = player.team_id
GROUP BY `name`
HAVING nb_student_in_each_team >= 14 ;