use dataengineer;

SELECT c.last_name, c.first_name, COUNT(r.customer_id) AS "nombre_de_loc", CONCAT(address, " ", postal_code," ", city) as postal_adress, a.latitude, a.longitude 
FROM rental r 
INNER JOIN customer c ON c.customer_id = r.customer_id 
inner join address a on a.address_id = c.address_id
GROUP BY r.customer_id 
ORDER BY nombre_de_loc desc
limit 1;