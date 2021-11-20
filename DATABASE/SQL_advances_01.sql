#REQUETE_01
#Retourne le nom des équipes + le nombre de joueurs par équipe + # le tout classé par nombre de joueurs par équipe, 
# + de la plus nombreuse à la moins nombreuse. 

SELECT team.`name`, COUNT(*) AS nb_student_in_each_team
FROM team 
JOIN player ON team.id = player.team_id
GROUP BY `name`
ORDER BY nb_student_in_each_team DESC;