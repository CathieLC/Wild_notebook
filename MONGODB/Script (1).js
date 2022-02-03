/*db.restaurants.find({"grades"},{"grade" : "A"})*/

db.restaurants.find().sort({'grades.score':-1});