#Requête03
#Retourne la liste de tous les sorciers qui ne pratiquent pas le quidditch.

SELECT wizard.id, firstname, lastname
FROM wizard
LEFT JOIN player ON player.wizard_id = wizard.id 
WHERE wizard_id IS NULL 

 