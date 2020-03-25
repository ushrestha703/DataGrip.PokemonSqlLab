USE pokemon;
# What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM types INNER JOIN pokemons ON types.id = pokemons.primary_type;
# What is Rufflet's secondary type?
SELECT name, secondary_type FROM pokemons WHERE name = 'Rufflet';
# What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemons.name, pokemon_trainer.trainerID FROM pokemons INNER JOIN pokemon_trainer ON pokemons.id = pokemon_trainer.pokemon_id where trainerID = 303;
# How many pokemon have a secondary type Poison
SELECT COUNT(*) FROM pokemons WHERE secondary_type = 7;
# What are all the primary types and how many pokemon have that type?
SELECT primary_type, COUNT(*) FROM pokemons GROUP BY primary_type;
# How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT trainers.trainername, COUNT(*) FROM pokemon_trainer, trainers WHERE pokelevel = 100 AND pokemon_trainer.trainerID = trainers.trainerID GROUP BY trainers.trainerID;
# How many pokemon only belong to one trainer and no other?
SELECT pokemon_id FROM pokemon_trainer GROUP BY pokemon_id HAVING COUNT(*) = 1;

