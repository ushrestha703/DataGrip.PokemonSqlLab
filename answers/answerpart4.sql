# Write a query that returns the following columns:
#
# Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type

USE pokemon;
SELECT p.name AS "Pokemon Name", t.trainername AS "Trainer Name", pt.pokelevel AS "Level",
ptype.name AS "Primary Type", stype.name AS "Secondary Type", (attack + spatk + speed) AS "Attack-Spatk-Speed"
FROM pokemons AS p
JOIN pokemon_trainer AS pt
ON p.id = pt.pokemon_id
JOIN trainers AS t
ON pt.trainerID = t.trainerID
RIGHT JOIN types AS ptype
ON p.primary_type = ptype.id
LEFT JOIN types AS stype
ON p.secondary_type = stype.id
ORDER BY Attack-Spatk-Speed DESC;