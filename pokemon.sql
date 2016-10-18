CREATE TABLE pokemons (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  trainer_id INTEGER,

  FOREIGN KEY(trainer_id) REFERENCES trainer(id)
);

CREATE TABLE trainers (
  id INTEGER PRIMARY KEY,
  fname VARCHAR(255) NOT NULL,
  town_id INTEGER,

  FOREIGN KEY(town_id) REFERENCES town(id)
);

CREATE TABLE towns (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

INSERT INTO
  towns (id, name)
VALUES
  (1, "Pallet Town"),
  (2, "Pewter City"),
  (3, "Cerulean City");

INSERT INTO
  trainers (id, fname, town_id)
VALUES
  (1, "Ash", 1),
  (2, "Brock", 2),
  (3, "Misty", 3);

INSERT INTO
  pokemons (id, name, trainer_id)
VALUES
  (1, "Pikachu", 1),
  (2, "Squirtle", 1),
  (3, "Bulbasaur", 1),
  (4, "Charmander", 1),
  (5, "Onix", 2),
  (6, "Geodude", 2),
  (7, "Staryu", 3),
  (8, "Starmie", 3),
  (9, "Psyduck", 3),
  (10, "Mew", NULL);
